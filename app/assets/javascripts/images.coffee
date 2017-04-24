# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $(function() {

#   $(".preview_image").change(function() {
#     readURL(this);
#   });

#   $(".remove_image").click(function() {
#     removeURL(this, $(".preview_image"));
#   });
# });

# #To show image preview
# readURL = function(input) {
#   var reader;
#   if (input.files && input.files[0]) {
#     reader = new FileReader();
#     reader.readAsDataURL(input.files[0]);
#     reader.onload = function(e) {
#       $("#img_prev").attr("src", e.target.result)
#       .width(200).height(150)
#       .css({
#         display: "block"
#       });
#       $('.remove_image').css({
#         display: "block"
#       });
#     };
#   }
# };

# #To remove image preview and image from file field.

# removeURL = function(remove_button, input) {
#   $(input).val('');
#   $("#img_prev").css({
#     display: "none"
#   });
#   return $(remove_button).css({
#     display: "none"
#   });
# };