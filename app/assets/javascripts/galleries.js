$(document).ready(function(){
    var thumbnails = $(".img-responsive.img-square.col-lg-2.no-padding");
    var aTags = $(".img-link");

    var imgListUL = $('.portfolio-list').empty();
      var wrapper = $('.overflow');
      for (var i = 0; i < thumbnails.length; i++) {

        $(aTags[i]).attr('href', '#img'+i);

        var lightbox = $('<a class="lightbox" href="#_">').attr('id', 'img'+i);
        lightbox.append('<div class="prev" id='+""+ i +'><img src="/gallery/images/carousel-previous.png"></div>').append($('<img class="gallery-large">').attr('src', $(thumbnails[i]).attr('src'))).append('<div class="next" id='+""+ i +'><img src="/gallery/images/carousel-next.png"></div>');
        wrapper.append(lightbox);
      };

    $('.overflow').on('click', '.prev', function(e){
    e.preventDefault();
    var prev = parseInt(this.id)>0? parseInt(this.id) - 1: parseInt(this.id);
    window.location = "#img" + prev;
  });


    $('.overflow').on('click', '.next', function(e){
    e.preventDefault();
    var next = parseInt(this.id) + 1;
    window.location = "#img" + next;
  });

  })