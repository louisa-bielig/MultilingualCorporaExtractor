
var book = 'Genesis';
var chapters = [];

$('body').find('.language').each(function() {

  var languagecode = this.getAttribute('id');

  $(this).children('.chapter').each(function() {
    try {
     var chapter = $(this).children('.label')[0].innerHTML;
    } catch (err) {
      alert('This chapter did not download correctly.');
    }



    (function(chapterNumber, chapterDiv, langCode) {

      $(chapterDiv).find('.verse').each(function() {

        try {
          var vsn = $(this).find('.label')[0].innerHTML;
          console.log('working: ' , this);
        } catch (err) {
          console.log('not working: ' , this);
        }

        chapters[chapterNumber] = chapters[chapterNumber] || {};
        chapters[chapterNumber].vs = chapters[chapterNumber].vs || [];
        chapters[chapterNumber].vs[vsn] = chapters[chapterNumber].vs[vsn] || {};

        chapters[chapterNumber].vs[vsn][langCode] = $(this).find('.content').html();

        chapters[chapterNumber].vs[vsn].verseNumber = vsn;

      });

    })(chapter, this, languagecode);

  });

});

//for (verse in vs){
//  console.log(vs[verse].verseNumber + ":" + vs[verse].en + "\n" + vs[verse].iu )
//}
