window.Library = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    alert('Hello from Backbone!');
   	new Library.Views.LibraryView();
    
    
  }
};

$(document).ready(function(){
  Library.initialize();
});
