
Library.Views.BookView = Backbone.View.extend({
tagName: 'div',
className: 'bookContainer',
template: JST['books/show'],

    events: {
    	'click .delete' : 'deleteBook'
    },

    render: function() {
        this.$el.html( this.template( this.model.attributes ) );

        return this;
    },

    deleteBook: function(){
    	this.model.destroy();
    	this.remove();
    }
});