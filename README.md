# Project 3 - Field Trip Reservation Web Application

---

### Project Team Members

* Stefan Hartmann
* Gaby Hernandez
* Seiji Mendoza
* Michael Woo

___

### Description
As a parent, a teacher, or a school, booking a field trip is a time consuming and analog process. You're either filling out a form and waiting for a response, sending an email and waiting for a response, or leaving a voicemail and waiting for a response. In some cases, you even have to physically go to a location to wait for a response.

With tripED, we remove all the headaches, and streamline the process. 

No more waiting. 

Simply - Click. Book. Trip.

---

### Technology Used
The following technologies were used for this web application:

* HTML
* CSS
* Materialize
* Javascript
* jQuery
* Ruby
* Ruby on Rails
* PostgreSQL 
* Redis
* bcrypt
* Google Oauth
* API - Google Maps Geocoding 
* API - Google Places Web Services
* API - Google Maps Directions

The following Ruby gems were used for this web application:

* bcrypt
* faker
* httparty
* pry
* omniauth-linkedin-oauth2
* simple_form
* materialize-sass
* jquery-turbolinks
* redis-rails
* redis-namespace
* twilio-ruby

---

### User Stories
1. As a user, you can create a login account in order to access the site
2. As a user, you can search for locations in order to find a field trip that matches your criteria
3. As a user, you can reserve a trip date and time in order to complete transaction
4. As a user, you can check your saved upcoming trips and receive directions from your school
5. As a location, you can manage your content and available trips
6. As a location, you can create, delete, or modify trip dates for users to reserve

---

### Pseudocode
**Minimal Viable Product:**

Without an account:

* You can create a new user account
* All paths without login will return back to the main login screen

User Account:

* From a single login screen you can login and will be redirected correctly
* The user will get redirected to the main search page and can search by keywords
* The search page will also show all locations pinned on a Google-based map
* You can click on a search result and get more information about the location
* You can check for dates and times available to reserve
* Booked reservations will show up on your user account page
* The user account page will show directions from your address to the trip address

Location Account:

* From a single login screen you can login and will be redirected correctly
* The location user will get redirected to the main location page
* The location user can update their information
* The location user can create, modify, and destroy trips 

---

### Wireframes

![Wireframe](http://i.imgur.com/s0uPxVG.png)
![Wireframe](http://i.imgur.com/TGA3f4D.png)
![Wireframe](http://i.imgur.com/ih02LWS.png)
![Wireframe](http://i.imgur.com/flvlZ5B.png)

---

### Issues & Resolutions

* Authentication: sessions, bcrypt, oauth
* Mapping & Directions: multi-location simultaneous mapping and multi-modal directions
* Rails ERB Logic: logic-based nomenclature to show specific content
* Routing & Paths: correct RESTful paths and proper routing
* Search Capabilities: partial search words and parameters

---

### Sources

* [Google Geocoding API](https://developers.google.com/maps/documentation/javascript/geocoding)
* [Google Javascript Maps](https://developers.google.com/maps/documentation/javascript/)
* [Google Maps Embed API](https://developers.google.com/maps/documentation/embed/)
* [Google Oauth](https://developers.google.com/identity/protocols/OAuth2)
* [Google Places API](https://developers.google.com/places/)
* [Heroku Documentation](https://devcenter.heroku.com/)
* [httparty](https://github.com/jnunemaker/httparty)
* [jQuery API](http://api.jquery.com/)
* [Materialize](http://materializecss.com/)
* [Mozilla Developers Network](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
* [PostgreSQL](https://www.postgresql.org/docs/)
* [Rails Guide](http://guides.rubyonrails.org/)
* [Redis](https://github.com/redis-store/redis-rails)
* [Ruby bcrypt](https://github.com/codahale/bcrypt-ruby)
* [Twilio Ruby](https://github.com/twilio/twilio-ruby)

