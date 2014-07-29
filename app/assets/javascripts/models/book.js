
Library.Models.Book = Backbone.Model.extend({
    defaults: {
        coverImage: 'placeholder.png',
        title: 'No title',
        author: 'Unknown',
        releaseDate: 'Unknown',
        keywords: 'None'
    },

    urlRoot: '/books'
});