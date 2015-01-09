^ What follows are the slides from the talk, presented with [Deckset](http://www.decksetapp.com)
^ Note that this app itself does assume it's running locally on OSX, but can be tweaked by changing
^   the gif-opening logic in `cats.rb`

# [fit] Working Smarter
# [fit] _**@jamesdabbs | james@theironyard.com**_

---

# __*The Request-Response Cycle*__

1. User makes a request (via clicking on a link, submitting a form)
2. ???
3. Server sends back a response
4. There is no step 4

---

### Background workers allow you to perform work _outside the request-response cycle_

---

# __*Common Uses*__

* Sending email
* Sending email
* Periodic cleanups
* [Anything that's slow](https://github.com/resque/resque#jobs)

---

^ Look at and understand the starting app
^ Add sidekiq and sidekiq web
^ Port to ActiveJobs
^ See the `solutions` branch for my implementation

# [fit] Live
# [fit] Coding

![](http://www.eonline.com/eol_images/Entire_Site/2013719/rs_600x398-130819150912-live1.jpg)

---

# __*Considerations*__

* Triggering work (scheduled or periodic jobs)
* Threads vs processes
* Queue backend
* Retry and failure handling
* Admin tools

---

# [fit] FIN
# [fit] *github.com/jamesdabbs/dcrug-workers*
