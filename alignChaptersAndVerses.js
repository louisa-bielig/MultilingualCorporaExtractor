
var book = document.body.getAttribute('id');
var chapters = {};

function isNumber(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}

$('body').find('.language').each(function() {

  var languagecode = this.getAttribute('id');

  $(this).children('.chapter').each(function() {
    try {
     var chapter = $(this).children('.label')[0].innerHTML;
   } catch (err) {
    alert('This chapter did not download correctly.');
  }

  (function(chapterNum, chapterDiv, langCode) {
    chapterNumber = 'chapter' + chapterNum;
    chapters[chapterNumber] = chapters[chapterNumber] || {};
    chapters[chapterNumber]._chapterNumber = chapterNum;
    chapters[chapterNumber].verses = chapters[chapterNumber].verses || {};

    $(chapterDiv).find('.verse').each(function() {

      try {
        var verseNum = $(this).find('.label')[0].innerHTML;
        verseNumber = 'verse' + verseNum;
        console.log('working: ' , this);
        chapters[chapterNumber].verses[verseNumber] = chapters[chapterNumber].verses[verseNumber] || {};
        chapters[chapterNumber].verses[verseNumber]._verseNumber = verseNum;
        chapters[chapterNumber].verses[verseNumber][langCode] = $(this).find('.content').html();
      } catch (err) {
        console.log('verse not working: ' , this);
      }
    });

  })(chapter, this, languagecode);

});

});

var asRawText = '';
for (chapter in chapters) {
  for (verse in chapters[chapter].verses) {
    var metadata = book + ':' + chapter + ':' + chapters[chapter].verses[verse]._verseNumber;
    for (language in chapters[chapter].verses[verse]) {
      if (isNumber(chapters[chapter].verses[verse][language])) {
        continue;
      } else {
        var thisline = metadata + ' ' + chapters[chapter].verses[verse][language] + '\n';
        console.log(thisline);
        asRawText += thisline;
      }
    }
    asRawText += '\n';
  }
}

var X2JS = new X2JS();
var finalJSON = '{"book" : {"_book":"' + book + '", "chapters":' + JSON.stringify(chapters) + '}}';
var xmlDocStr = X2JS.json2xml_str(JSON.parse(finalJSON));

$('body').prepend('<label class="json-label">JSON</label><textarea class="json">' + finalJSON + '</textarea>');
$('body').prepend('<label class="xml-label">XML</label><textarea class="xml"><?xml version="1.0" encoding="UTF-8"?><xml>' + xmlDocStr + '</xml></textarea>');
$('body').prepend('<label class="rawtext-label">Text</label><textarea class="rawtext">' + asRawText + '</textarea>');
