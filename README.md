<h3>Bootstrap 3</h3> http://getbootstrap.com/ <br>
              
bootstrap.min.css => vendor/assets/stylesheets<br>
bootstrap.min.js  => vendor/assets/javascript<br>
fonts => vendor/assets<br>

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

<h3> Stuff </h3>
<b> helper_method </b>
The method helper_method is to explicitly share some methods defined in the controller to make them available for the view.
This is used for any method that you need to access from both controllers and helpers/views. 
Standard helper methods are not available in controllers. Common use in application controller.
