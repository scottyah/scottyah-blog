---
title: "Setup"
date: 2022-07-31T15:02:27-07:00
draft: false
---

Here you are:
![bluster_pic](/img/bluster_pic.jpg)

I have six Raspberry Pi's networked together with a shared NAS. That Coral chip is mostly for manual fun for now, but expect an interactive site later.

Blog Stack:
Hugo on NGINX Docker container, with cloudfare DDoS prevention and caching.


### Future Improvements
- use self hosted gitlab for CI/CD
- get site running on k3s
- TLS
- interactive gitlab project so people can edit this site for fun
- Family photo site w/ secured logins
- ability to email "observations" and have the site update itself



---
Updates:
You still look the same, but some major changes have happened:

Blog Stack: same as before, except container is running on k3s, replicated with it's own service and does have TLS support

Notes on future improvements:
- I did the self-hosted gitlab for a bit, it's just too heavy for my little pi's. After about a month the logs filled up my memory card and at the time they were very against using a mounted volume.
- site is on k3s!
- TLS achieved! 
- I had it with my gitlab and pipelines, but again I decided to not redo gitlab. some kind of interactivity needs to happen though
- family site would still be fun. some kind of app too
- still a great idea, turns out email on kubernetes is not trivial at the moment...