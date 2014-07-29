Library.Collections.Library = Backbone.Collection.extend({
    model: Library.Models.Book,
    url: '/books'
});