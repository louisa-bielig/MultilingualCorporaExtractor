MultilingualCorporaExtractor
============================

A spider for extracting multilingual corpora using Node.io and international bibles. This can be handy for building reasonably sized multilingual corpora for working on low-resoure languages [Henderson 2013] [1], Computational Field Workshop @McGill

1. We can easily have a rough translation.
2. The translations are extremely free.
3. Parables are perfect for studying discourse.
4. It comes extremely well-indexed.

Usage: 
------

```bash
$ download.sh 1 20 gen 455 #download chapters 1 - 20 from Genesis in version 455 (Inuktitut).
$ download.sh 3 3 gen 116 #download chapter 3 from Genesis in version 116 (NLT New Living Translation English).
```


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
                  <eaib>ᐅᕝᕙᓘ ᐸᕐᓇᐹᓯᓗ ᐅᕙᒍᒃ ᐃᓅᑦᔪᑎᒋᓂᐊᖅᑕᑦᑎᓐᓂᒃ ᐃᖅᑲᓁᔭᖅᑐᑑᔭᕆᐊᖃᖅᐱᓅᒃ?</eaib>
                  <mayabi>¿Wa ca tucultique'ex chéen teen yéetel Bernabé unaj c meyaj yéetel áakab?</mayabi>
                  <w234>Eller hafver jag och Barnabas allena icke magt sammaledes göra?</w234>
                  <nlt>Or is it only Barnabas and I who have to work to support ourselves?</nlt>
               </verse6>
               <verse7 verseNumber="7">
                  <eaib>ᓇᓪᓕᐊᑦ ᐅᓇᑕᖅᑐᒃᓴᐅᓪᓗᓂ ᐊᑐᕐᖕᓂᐊᖅᑕᒥᓂᒃ ᓇᖕᒥᓂᖅ ᐊᑭᓖᓲᖑᕚ? ᓇᓪᓕᐊᑦ ᕔᓂᒃᓴᓂᒃ ᑲᓐᖓᖅᓱᓚᐅᖅᑕᒥᓂᒃ ᐱᕈᖅᓰᕕᖁᑎᒥᓂᑦ ᐱᕈᖅᑐᓂᒃ ᓂᕆᕙᓐᖏᓛᖅ? ᓇᓪᓕᐊᓪᓗ ᐆᒪᔪᓂᒃ ᑲᒪᔨᐅᔪᖅ ᐆᒪᔪᖁᑎᒥ ᐃᒻᒧᖏᓐᓂᒃ ᐃᒻᒧᒃᑖᖅᕕᖃᖅᐸᓐᖏᓛᖅ?</eaib>
                  <mayabi>¿Máax cu beetic u soldadoil yéetel cu tojoltic ti' xan ba'ax cu xupic? ¿Máax cu pakic uva cu dzo'ocole' ma' tu jaantic u yich? ¿Máax cu canantic j tamano'ob cu dzo'ocole' ma' tu yukik u kaab u yiim le j tamano'obo'?</mayabi>
                  <w234>Ho tjenar till krig på sin egen sold någon tid? Ho planterar en vingård, och icke äter af hans frukt? Eller ho vaktar en hjord, och äter icke af hjordsens mjölk?</w234>
                  <nlt>What soldier has to pay his own expenses? What farmer plants a vineyard and doesn’t have the right to eat some of its fruit? What shepherd cares for a flock of sheep and isn’t allowed to drink some of the milk?</nlt>
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
                  "eaib":"ᐅᕝᕙᓘ ᐸᕐᓇᐹᓯᓗ ᐅᕙᒍᒃ ᐃᓅᑦᔪᑎᒋᓂᐊᖅᑕᑦᑎᓐᓂᒃ ᐃᖅᑲᓁᔭᖅᑐᑑᔭᕆᐊᖃᖅᐱᓅᒃ? ",
                  "mayabi":"¿Wa ca tucultique'ex chéen teen yéetel Bernabé unaj c meyaj yéetel áakab? ",
                  "w234":"Eller hafver jag och Barnabas allena icke magt sammaledes göra? ",
                  "nlt":"Or is it only Barnabas and I who have to work to support ourselves?"
               },
               "verse7":{
                  "_verseNumber":"7",
                  "eaib":"ᓇᓪᓕᐊᑦ ᐅᓇᑕᖅᑐᒃᓴᐅᓪᓗᓂ ᐊᑐᕐᖕᓂᐊᖅᑕᒥᓂᒃ ᓇᖕᒥᓂᖅ ᐊᑭᓖᓲᖑᕚ? ᓇᓪᓕᐊᑦ ᕔᓂᒃᓴᓂᒃ ᑲᓐᖓᖅᓱᓚᐅᖅᑕᒥᓂᒃ ᐱᕈᖅᓰᕕᖁᑎᒥᓂᑦ ᐱᕈᖅᑐᓂᒃ ᓂᕆᕙᓐᖏᓛᖅ? ᓇᓪᓕᐊᓪᓗ ᐆᒪᔪᓂᒃ ᑲᒪᔨᐅᔪᖅ ᐆᒪᔪᖁᑎᒥ ᐃᒻᒧᖏᓐᓂᒃ ᐃᒻᒧᒃᑖᖅᕕᖃᖅᐸᓐᖏᓛᖅ?",
                  "mayabi":"¿Máax cu beetic u soldadoil yéetel cu tojoltic ti' xan ba'ax cu xupic? ¿Máax cu pakic uva cu dzo'ocole' ma' tu jaantic u yich? ¿Máax cu canantic j tamano'ob cu dzo'ocole' ma' tu yukik u kaab u yiim le j tamano'obo'? ",
                  "w234":"Ho tjenar till krig på sin egen sold någon tid? Ho planterar en vingård, och icke äter af hans frukt? Eller ho vaktar en hjord, och äter icke af hjordsens mjölk? ",
                  "nlt":"What soldier has to pay his own expenses? What farmer plants a vineyard and doesn’t have the right to eat some of its fruit? What shepherd cares for a flock of sheep and isn’t allowed to drink some of the milk? "
               }
            }
         }
      }
   }
}
```

License:
--------

Apache 2.0 


  [1]: http://migmaq.org/wp-content/uploads/2013/04/field_slides.pdf        "Henderson 2013"

Enjoy!
------

