var Stats = Widget.extend({
    init: function(s) {
        this._super(s);
    },
    
    onLoad: function() {        
        this.data.load_average = 0;
        this.data.memory_usage = 0;
    },
    
    receive: function(data) {
        this.data = data;
        this.render();
    }
});
