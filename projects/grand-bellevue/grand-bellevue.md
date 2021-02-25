---
Title: Grand Bellevue
Company: hv
---

project manager
: [isabel sieber](mailto:isi@hinderlingvolkart.com)

repository
: [bitbucket](https://bitbucket.org/hinderlingvolkart/grand-bellevue-frontend/src/master/)

## Markup Changes

```html
<!-- before -->
<a href="#" class="NewsBadge">
  <div class="NewsBadge--media">...</div>
  <div class="NewsBadge--text">
    <p>...</p>
  </div>
</a>

<!-- after -->
<a href="#" class="NewsBadge">
  <div class="NewsBadge--media">...</div>
  <div class="NewsBadge--text">
    <!-- repeat per item -->
    <h3 class="NewsBadge--heading">...</h3>
    <p class="NewsBadge--paragraph">...</p>
    <!-- /END repeat per item -->
    ...
  </div>
</a>
```
