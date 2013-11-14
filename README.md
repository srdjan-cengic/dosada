Dosada
======

Bootstrap 3, http://getbootstrap.com/

bootstrap.min.css -> vendor/assets/stylesheets
bootstrap.min.js  -> vendor/assets/javascript
fonts -> vendor/assets

Inside application.css
 *= require bootstrap.min
 *= require_tree .
 *= require_self // loading application.css after the core Bootstrap CSS.

Inside application.js
 //= require jquery
 //= require jquery_ujs
 //= require bootstrap.min
 //= require turbolinks
 //= require_tree .
