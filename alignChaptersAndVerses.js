
var book = 'Genesis';
var chapters = [];

$('#english').children('.chapter').each(function(){
  var chapter = $(this).children('.label')[0].innerHTML;

  (function(chapterNumber){

    $(this).find('.verse').each(function(){

      var vsn = $(this).find('.label').html()

      chapters[chapterNumber].vs = chapters[chapterNumber].vs || [];
      chapters[chapterNumber].vs[vsn] = vs[vsn] || {}

      chapters[chapterNumber].vs[vsn].en = $(this).find('.content').html()

      chapters[chapterNumber].vs[vsn].verseNumber = vsn

    })

  })(chapter);
    
})

$('#inuktitut').children('.chapter').each(function(){
  var chapter = $(this).children('.label')[0].innerHTML;

  (function(chapterNumber){

    $(this).find('.verse').each(function(){

      var vsn = $(this).find('.label').html()

      chapters[chapterNumber].vs = chapters[chapterNumber].vs || [];
      chapters[chapterNumber].vs[vsn] = vs[vsn] || {}

      chapters[chapterNumber].vs[vsn].iu = $(this).find('.content').html()

    })

  })(chapter);
    
})

for (verse in vs){
  console.log(vs[verse].verseNumber + ":" + vs[verse].en + "\n" + vs[verse].iu )
}
