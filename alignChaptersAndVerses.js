////
//
// Javascript file to align and display information downloaded
// from youversion.com with our creatadata.sh and download.sh scripts.
//
////


var book = document.body.getAttribute('id');
var chapters = {};

// check if a value is a number
function isNumber(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}

// main function that starts with the entire document
// and finds each language in the document
$('body').find('.language').each(function() {

  var languagecode = this.getAttribute('id');

  // verify if all chapters for each language have the same number of verses
  $(this).children('.chapter').each(function() {
    try {
     var chapter = $(this).children('.label')[0].innerHTML;
   } catch (err) {
    alert('This chapter did not download correctly.');
  }

  // cycle through each chapter to find all of the verses.
  // For each of these verses, save the number and the text for this verse
  // and creates aligned verse groups.
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
        chapters[chapterNumber].verses[verseNumber][langCode] = $(this).find('.content').html().replace(/\n/g,"").replace(/  */g," ");
      } catch (err) {
        console.log('verse not working: ' , this);
      }
    });
  })(chapter, this, languagecode);

});

});

// Now that our "chapters" object is created and contains all of our aligned data, 
// we will cycle through it to display the text information for the user in the browser
var asRawText = '';
for (chapter in chapters) {
  for (verse in chapters[chapter].verses) {
    var metadata = book + ':' + chapter.replace("chapter","") + ':' + chapters[chapter].verses[verse]._verseNumber;
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

// For useful data export, we will also convert our "chapters" object into XML and JSON.
var X2JS = new X2JS();
var finalJSON = '{"book" : {"_book":"' + book + '", "chapters":' + JSON.stringify(chapters) + '}}';
var xmlDocStr = X2JS.json2xml_str(JSON.parse(finalJSON));

$('body').prepend('<label class="json-label">JSON</label><textarea class="json">' + finalJSON + '</textarea>');
$('body').prepend('<label class="xml-label">XML</label><textarea class="xml"><?xml version="1.0" encoding="UTF-8"?><xml>' + xmlDocStr + '</xml></textarea>');
$('body').prepend('<label class="rawtext-label">Text</label><textarea class="rawtext">' + asRawText + '</textarea>');
