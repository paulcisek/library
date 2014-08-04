
	Library.Views.LibraryView = Backbone.View.extend({
    el: '#books',

    events:{
        'click #add' : 'addBook'
    },

    initialize: function( ) {
        this.collection = new Library.Collections.Library( );
        this.collection.fetch({reset: true})
        this.render();
        this.listenTo(this.collection, 'add', this.renderBook);
        this.listenTo(this.collection, 'reset', this.render);
    },

    render: function() {
        this.collection.each(function( item ) {
            this.renderBook( item );
        }, this );
    },

    renderBook: function( item ) {
        var bookView = new Library.Views.BookView({
            model: item
        });
        this.$el.append( bookView.render().el );
    },

    addBook: function(e) {
        e.preventDefault();

        var formData = {};

        $('#addBook div').children('input').each(function(i, el){
            if ($(el).val() != '')
            {
                if ( el.id === 'keywords'){
                    formData[el.id] = [];
                    _.each($(el).val().split(' '), function(keyword){
                        formData[el.id].push( keyword );
                    });
                } else if (el.id === 'releaseDate'){
                    formData[el.id] = $('#releaseDate').datepicker('getDate');
                    console.log(formData[el.id]);
                } else {
                    formData[el.id]=$(el).val();
                }
            }
            $(el).val('');
        });
        
        this.collection.create(formData);
    }
});