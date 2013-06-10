MultilingualCorporaExtractor
============================

A spider for extracting multilingual corpora using Node.io and international bibles. This can be handy for building reasonably sized multilingual corpora for working on low-resoure languages [Henderson 2013] [1], Computational Field Workshop @McGill

1. We can easily have a rough translation.
2. The translations are extremely free.
3. Parables are perfect for studying discourse.
4. It comes extremely well-indexed.


Sample Output:
--------------

The end result is an html file which contains that book with multilingual content alligned in three formats.  

* Raw Aligned Text

<pre>

1co:9:6 ᐅᕝᕙᓘ ᐸᕐᓇᐹᓯᓗ ᐅᕙᒍᒃ ᐃᓅᑦᔪᑎᒋᓂᐊᖅᑕᑦᑎᓐᓂᒃ ᐃᖅᑲᓁᔭᖅᑐᑑᔭᕆᐊᖃᖅᐱᓅᒃ? 
1co:9:6 ¿Wa ca tucultique'ex chéen teen yéetel Bernabé unaj c meyaj yéetel áakab? 
1co:9:6 Eller hafver jag och Barnabas allena icke magt sammaledes göra? 
1co:9:6 Or is it only Barnabas and I who have to work to support ourselves?

1co:9:7 ᓇᓪᓕᐊᑦ ᐅᓇᑕᖅᑐᒃᓴᐅᓪᓗᓂ ᐊᑐᕐᖕᓂᐊᖅᑕᒥᓂᒃ ᓇᖕᒥᓂᖅ ᐊᑭᓖᓲᖑᕚ? ᓇᓪᓕᐊᑦ ᕔᓂᒃᓴᓂᒃ ᑲᓐᖓᖅᓱᓚᐅᖅᑕᒥᓂᒃ ᐱᕈᖅᓰᕕᖁᑎᒥᓂᑦ ᐱᕈᖅᑐᓂᒃ ᓂᕆᕙᓐᖏᓛᖅ? ᓇᓪᓕᐊᓪᓗ ᐆᒪᔪᓂᒃ ᑲᒪᔨᐅᔪᖅ ᐆᒪᔪᖁᑎᒥ ᐃᒻᒧᖏᓐᓂᒃ ᐃᒻᒧᒃᑖᖅᕕᖃᖅᐸᓐᖏᓛᖅ?
1co:9:7 ¿Máax cu beetic u soldadoil yéetel cu tojoltic ti' xan ba'ax cu xupic? ¿Máax cu pakic uva cu dzo'ocole' ma' tu jaantic u yich? ¿Máax cu canantic j tamano'ob cu dzo'ocole' ma' tu yukik u kaab u yiim le j tamano'obo'? 
1co:9:7 Ho tjenar till krig på sin egen sold någon tid? Ho planterar en vingård, och icke äter af hans frukt? Eller ho vaktar en hjord, och äter icke af hjordsens mjölk? 
1co:9:7 What soldier has to pay his own expenses? What farmer plants a vineyard and doesn’t have the right to eat some of its fruit? What shepherd cares for a flock of sheep and isn’t allowed to drink some of the milk? 


</pre>

* XML

```xml

<?xml version="1.0" encoding="UTF-8"?>
<xml>
   <book book="1co">
      <chapters>
         <chapter9 chapterNumber="9">
            <verses>
               <verse6 verseNumber="6">
                  <inuktitut>ᐅᕝᕙᓘ ᐸᕐᓇᐹᓯᓗ ᐅᕙᒍᒃ ᐃᓅᑦᔪᑎᒋᓂᐊᖅᑕᑦᑎᓐᓂᒃ ᐃᖅᑲᓁᔭᖅᑐᑑᔭᕆᐊᖃᖅᐱᓅᒃ?</inuktitut>
                  <yucatec>¿Wa ca tucultique'ex chéen teen yéetel Bernabé unaj c meyaj yéetel áakab?</yucatec>
                  <swedish>Eller hafver jag och Barnabas allena icke magt sammaledes göra?</swedish>
                  <english>Or is it only Barnabas and I who have to work to support ourselves?</english>
               </verse6>
               <verse7 verseNumber="7">
                  <inuktitut>ᓇᓪᓕᐊᑦ ᐅᓇᑕᖅᑐᒃᓴᐅᓪᓗᓂ ᐊᑐᕐᖕᓂᐊᖅᑕᒥᓂᒃ ᓇᖕᒥᓂᖅ ᐊᑭᓖᓲᖑᕚ? ᓇᓪᓕᐊᑦ ᕔᓂᒃᓴᓂᒃ ᑲᓐᖓᖅᓱᓚᐅᖅᑕᒥᓂᒃ ᐱᕈᖅᓰᕕᖁᑎᒥᓂᑦ ᐱᕈᖅᑐᓂᒃ ᓂᕆᕙᓐᖏᓛᖅ? ᓇᓪᓕᐊᓪᓗ ᐆᒪᔪᓂᒃ ᑲᒪᔨᐅᔪᖅ ᐆᒪᔪᖁᑎᒥ ᐃᒻᒧᖏᓐᓂᒃ ᐃᒻᒧᒃᑖᖅᕕᖃᖅᐸᓐᖏᓛᖅ?</inuktitut>
                  <yucatec>¿Máax cu beetic u soldadoil yéetel cu tojoltic ti' xan ba'ax cu xupic? ¿Máax cu pakic uva cu dzo'ocole' ma' tu jaantic u yich? ¿Máax cu canantic j tamano'ob cu dzo'ocole' ma' tu yukik u kaab u yiim le j tamano'obo'?</yucatec>
                  <swedish>Ho tjenar till krig på sin egen sold någon tid? Ho planterar en vingård, och icke äter af hans frukt? Eller ho vaktar en hjord, och äter icke af hjordsens mjölk?</swedish>
                  <english>What soldier has to pay his own expenses? What farmer plants a vineyard and doesn’t have the right to eat some of its fruit? What shepherd cares for a flock of sheep and isn’t allowed to drink some of the milk?</english>
               </verse7>
            </verses>
         </chapter9>
      </chapters>
   </book>
</xml>


```

* JSON

```json
{
   "book":{
      "_book":"1co",
      "chapters":{
         "chapter9":{
            "_chapterNumber":"9",
            "verses":{
               "verse6":{
                  "_verseNumber":"6",
                  "inuktitut":"ᐅᕝᕙᓘ ᐸᕐᓇᐹᓯᓗ ᐅᕙᒍᒃ ᐃᓅᑦᔪᑎᒋᓂᐊᖅᑕᑦᑎᓐᓂᒃ ᐃᖅᑲᓁᔭᖅᑐᑑᔭᕆᐊᖃᖅᐱᓅᒃ? ",
                  "yucatec":"¿Wa ca tucultique'ex chéen teen yéetel Bernabé unaj c meyaj yéetel áakab? ",
                  "swedish":"Eller hafver jag och Barnabas allena icke magt sammaledes göra? ",
                  "english":"Or is it only Barnabas and I who have to work to support ourselves?"
               },
               "verse7":{
                  "_verseNumber":"7",
                  "inuktitut":"ᓇᓪᓕᐊᑦ ᐅᓇᑕᖅᑐᒃᓴᐅᓪᓗᓂ ᐊᑐᕐᖕᓂᐊᖅᑕᒥᓂᒃ ᓇᖕᒥᓂᖅ ᐊᑭᓖᓲᖑᕚ? ᓇᓪᓕᐊᑦ ᕔᓂᒃᓴᓂᒃ ᑲᓐᖓᖅᓱᓚᐅᖅᑕᒥᓂᒃ ᐱᕈᖅᓰᕕᖁᑎᒥᓂᑦ ᐱᕈᖅᑐᓂᒃ ᓂᕆᕙᓐᖏᓛᖅ? ᓇᓪᓕᐊᓪᓗ ᐆᒪᔪᓂᒃ ᑲᒪᔨᐅᔪᖅ ᐆᒪᔪᖁᑎᒥ ᐃᒻᒧᖏᓐᓂᒃ ᐃᒻᒧᒃᑖᖅᕕᖃᖅᐸᓐᖏᓛᖅ?",
                  "yucatec":"¿Máax cu beetic u soldadoil yéetel cu tojoltic ti' xan ba'ax cu xupic? ¿Máax cu pakic uva cu dzo'ocole' ma' tu jaantic u yich? ¿Máax cu canantic j tamano'ob cu dzo'ocole' ma' tu yukik u kaab u yiim le j tamano'obo'? ",
                  "swedish":"Ho tjenar till krig på sin egen sold någon tid? Ho planterar en vingård, och icke äter af hans frukt? Eller ho vaktar en hjord, och äter icke af hjordsens mjölk? ",
                  "english":"What soldier has to pay his own expenses? What farmer plants a vineyard and doesn’t have the right to eat some of its fruit? What shepherd cares for a flock of sheep and isn’t allowed to drink some of the milk? "
               }
            }
         }
      }
   }
}
```



Install:
--------

1. Download [Node.js](http://nodejs.org/) if you don't already have it
2. Then download this project

```bash
$ wget https://github.com/louisa-bielig/MultilingualCorporaExtractor/archive/master.zip
$ unzip master.zip
$ cd MultilingualCorporaExtractor
$ npm install 
```


Usage: 
------
Here is a sample use of the interactive script:

<pre>

$ ./createdata.sh
Enter the three character code for the book you want to use for your corpus
e.g. gen for Genesis and press [ENTER]: 1co
Enter the starting chapter number for 1co and press [ENTER]: 9
Enter the ending chapter number for 1co and press [ENTER]: 9

Enter the language number code and press [ENTER]: 455
Enter the language text code and press [ENTER]: inuktitut
Working...
9 9 1co 455 inuktitut 1co-9-9-1370897837.html
Chapter 9 downloaded.
Finished!

Enter the language number code and press [ENTER]: 455
Enter the language text code and press [ENTER]: inuktitut
Working...
9 9 1co 455 inuktitut 1co-9-9-1370897837.html
Chapter 9 downloaded.
Finished!

Enter the language number code and press [ENTER]: 324
Enter the language text code and press [ENTER]: yucatec
Working...
9 9 1co 324 yucatec 1co-9-9-1370897837.html
Chapter 9 downloaded.
Finished!

Enter the language number code and press [ENTER]: 161
Enter the language text code and press [ENTER]: swedish
Working...
9 9 1co 161 swedish 1co-9-9-1370897938.html
Chapter 9 downloaded.
Finished!

Enter the language number code and press [ENTER]: 116
Enter the language text code and press [ENTER]: english
Working...
9 9 1co 116 english 1co-9-9-1370897938.html
Chapter 9 downloaded.
Finished!

Enter the language number code and press [ENTER]: exit
$

</pre>


License:
--------

Apache 2.0 


  [1]: http://migmaq.org/wp-content/uploads/2013/04/field_slides.pdf        "Henderson 2013"

Enjoy!
------

