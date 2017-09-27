function News() {
    this.title = '';
    this.author = '';
    this.date = '07-05';
    this.time = +new Date();
    this.images = [];
    this.text = '';
};
News.prototype = {
    init: function () {
        this._bindDetail();
        this._bindImages();
        console.log('init');
    },
    _bindDetail: function () {
        console.log('bindDetail');
        $('main .top .title').html(this.title);
        $('.newsInfo .authorName').html(this.author);
        $('.newsInfo .date').html(this.date);
    },
    _bindImages: function () {
        console.log('bindImages');
        for (var i = 0; i < this.images.length; i++) {
            var element = this.images[i];
            var img = $('<img>')
            img[0].src = element;
            $('main .content .text').before(img);
        };

    }
}