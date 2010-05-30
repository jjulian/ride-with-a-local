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
    console.log('Got it! '+position.coords.latitude + ', ' + position.coords.longitude);
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
    console.log('submit!');
    var geo = getGeo();
    if (geo) {
      $('.spinner').fadeIn(150);
      geo.getCurrentPosition(handlePosition, function(error) {
        $('.spinner').fadeOut(150);
        console.log('error getting geolocation ('+error.message+') code: '+error.code);
        alert("Sorry. I can't figure out where you are because an error occurred ("+error.code+").");
      });
    } else {
      console.log('no geo :-(');
    }
    return false;
  });

});
