# [fit] Working Smarter
# [fit] _**@jamesdabbs | james@theironyard.com**_

---

# __*The Request-Response Loop*__

1. User makes a request (via clicking on a link, submitting a form)
2. ???
3. Server sends back a response
4. There is no step 4

---

### Background workers allow you to perform work _outside the request-response loop_

---

# __*Common Uses*__

* Sending email
* Sending email
* Periodic cleanups
* [Anything that's slow](https://github.com/resque/resque#jobs)

---

^ Look at and understand the starting app
^ Add sidekiq
^ Port to ActiveJobs

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
