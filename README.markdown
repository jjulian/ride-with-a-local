# Ride-With-A-Local

Basically a taxi-tracking app.

## Plan of attack

### User actions

Get main site. This will be a full-page google map. On the map will be pins for each taxi. There will also be a button that shows/hides information about the site and a button the shows/hides schedule info.

The map will hit a JSON URL to update taxi info once every 30s. Taxis will be displayed as a pin with a polyline "trail" of the past few locations to show their direction and speed.

Clicking on a marker will show the drivers name, license number, and a picture of their car.

### Driver actions

A driver can go to:

/taxis/:api_key/location

This is an HTML page that uses the browser's native geocoder to update their location every 30s. It also displays a map with a pin on where the driver was detected the last time their location was updated.

### Admin actions

Administration via HTML is overkill. We'll do all the admin on the console. We need to setup taxis for people and generate API keys for them. Then we'll send them their API-key location URL so they can just click on it on their phone to start updating.

We will store car pictures in the public dir so we can just store a URL on the model and avoid using paperclip+s3 so it will work on heroku. Not too dynamic but it's not a big deal.

