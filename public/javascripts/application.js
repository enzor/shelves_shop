// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function($) {
  $('a[rel*=facebox]').facebox() 
})


function addEmptyProduct() {
	var box = $('.container_box').clone();
	box.removeClass("container_box").fadeIn('slow').appendTo('.empty_container');
}