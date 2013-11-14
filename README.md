Dosada
======

Bootstrap 3: http://getbootstrap.com/ <br>
              
bootstrap.min.css -> vendor/assets/stylesheets<br>
bootstrap.min.js  -> vendor/assets/javascript<br>
fonts -> vendor/assets<br>

<blockquote>@font-face {<br>
  font-family: 'Glyphicons Halflings';<br>
  src: url('../assets/glyphicons-halflings-regular.eot');<br>
  src: url('../assets/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), <br>
       url('../assets/glyphicons-halflings-regular.woff') format('woff'), <br>
       url('../assets/glyphicons-halflings-regular.ttf') format('truetype'), <br>
       url('../assets/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');<br>
}</blockquote>

<b>Inside application.css<br></b>
<blockquote>
 *= require bootstrap.min<br>
 *= require_tree .<br>
 *= require_self // loading application.css after the core Bootstrap CSS.<br>
 </blockquote>

<b>Inside application.js</b><br>
<blockquote>
 //= require jquery<br>
 //= require jquery_ujs<br>
 //= require bootstrap.min<br>
 //= require turbolinks<br>
 //= require_tree .<br>
</blockquote>
