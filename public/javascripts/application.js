$(document).ready(function() {

  function getGeo() {
    if (navigator.geolocation) {
      return navigator.geolocation; //iPhone Safari, FF3.5
    }
    if (window.google && google.gears) {
      return google.gears.factory.create('beta.geolocation'); //Android, any gears installation
    } else {
      alert('This browser is not location-aware. Install Google Gears.');
    }
    return undefined;
  }

  function handlePosition(position) {
    $.ajax({
      url: '/locations.json',
      type: 'POST',
      data: {
        location: {
          taxi_id: $('#taxi_id').attr('value'),
          lat: position.coords.latitude,
          lon: position.coords.longitude
        }
      },
      success: function(data, textStatus, xhr) {
        $('.spinner').fadeOut(150, function() {
          $('.message').html('Your location was updated to ' + position.coords.latitude + ', ' + position.coords.longitude).fadeIn(150);
        });
      },
      error: function(xhr, textStatus) {
        $('.spinner').fadeOut(150, function() {
          $('.message').html('An error occurred - location not updated: ' + textStatus).fadeIn(150);
        });
      }
    });
  }

  $('#location_submit').click(function() {
    var geo = getGeo();
    if (geo) {
      $('.spinner').fadeIn(150);
      geo.getCurrentPosition(handlePosition, function(error) {
        $('.spinner').fadeOut(150);
        alert("Sorry. I can't figure out where you are because an error occurred ("+error.code+").");
      });
    } 
    return false;
  });

  var markers = []

  function updateTaxis() {
    $.ajax({
      url: '/taxis.json',
      type: 'GET',
      success: function(data, textStatus, xhr) {
        $.each(data.taxis, function(i) {
          var taxi = data.taxis[i];
          $.each(markers, function(i) { markers[i].setMap(null) })
          var marker = new google.maps.Marker({
            position: new google.maps.LatLng(taxi.locations[0].lat, taxi.locations[0].lon),
            title: taxi.name,
            map: map
          });
          markers.push(marker);
          var infowindow = new google.maps.InfoWindow({
            content: 
            "<h3>"+taxi.name+"</h3>"+
            "<p>"+taxi.description+"</p>"
          });
          google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map,marker);
          });
        })
      }
    });
  }

  var map = new google.maps.Map(
    document.getElementById("map-container"), {
      zoom: 10,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      disableDefaultUI: true
  });
  map.setCenter(new google.maps.LatLng(39.232253,-76.674271));
  updateTaxis()
  setInterval(updateTaxis, 30000);

});
