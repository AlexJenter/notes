---
Title: Vps-asp
Company: hv
Website: https://www.vps-asp.ch
Ticket: https://hinderlingvolkart.atlassian.net/browse/VCMP-46
---

- audio
  - not all clips work on chrome
  - some clips show clicking sounds
    - seems to correlate with client side buffer not holding his
  - volume is all over the place
- javascript
  - issue seems to be due to weird, not resolving promise??
    - NotAllowedError: The request is not allowed by the user agent or the platform in the current context, possibly because the user denied permission.
  - contains eval calls
  - plugins
    - [jquery-hoverIntent](https://github.com/briancherne/jquery-hoverIntent)

[211394 – createMediaElementSource not working](https://bugs.webkit.org/show_bug.cgi?id=211394)
[www.vps-asp.ch.zip - Google Drive](https://drive.google.com/file/d/1Kklkn9pFjG1n6wqQQFfaRx_R7sVi0mID/view)

Starting to think this is due to Safari not autoplaying just about an ols audio, which is in my opinion the way.
the following pen illustrates how this would work today:
[pen](https://codepen.io/AlexJenter/pen/RwoRmZK?editors=1010)
