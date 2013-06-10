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
# On your first time using this utility, don't forget to do the following
# from the working folder as the download script relies on the node.io package:

$ npm install
```

```bash
# Then, execute the createdata.sh script and follow the prompts
# for required information.

$ ./createdata.sh
```

Sample Output:
--------------

The end result is an html file which contains that book with multilingual content alligned in three formats.  

* Raw Aligned Text
<pre>
1sa:chapter17:55 As Saul watched David go out to fight the Philistine, he asked Abner, the commander of his army, “Abner, whose son is this young man?”
1sa:chapter17:55 ᓴᐅᓕᓕ ᑍᕕᑎᒥᒃ ᑕᑯᓐᓇᕋᒥ ᐱᓕᔅᑍᓂᒧᑦ ᐂᓕᖅᑎᓪᓗᒍ, ᐋᑉᓄᒧᑦ ᐅᖃᖅᐳᖅ, ᐅᓇᑕᖅᑐᒃᓴᓄᑦ ᐊᖓᔪᖅᑲᐅᔪᒧᑦ, “ᐋᑉᓅ ᑭᐊᖑᓇ ᐃᕐᖕᓂᖓ ᐃᓅᓱᒃᑐᖅ?”
</pre>
<pre>
1sa:chapter17:56 “Well, find out who he is!” the king told him.
1sa:chapter17:56 ᐊᖓᔪᖅᑳᖅᔪᐊᖅ ᐅᖃᖅᐳᖅ, “ᐊᑏ ᖃᐅᔨᒋᐊᓕᕆᑦ ᑭᓇᒧᑦ ᑖᓐᓇ ᐃᕐᖕᓂᕆᔭᐅᖕᒪᖔᑦ ᐃᓅᓱᒃᑐᖅ.”
</pre>
<pre>
1sa:chapter17:57 As soon as David returned from killing Goliath, Abner brought him to Saul with the Philistine’s head still in his hand. 
1sa:chapter17:57 ᑍᕕᑎᓗ ᐅᑎᕐᖕᒪᑦ ᑐᖁᑦᓯᓚᐅᖅᓗᓂ ᐱᓕᔅᑍᓂᒥᐅᒥᒃ, ᐋᑉᓅᑉ ᓴᐅᓕᒧᐊᕈᑎᕚ, ᐱᓕᔅᑍᒥᐅᑕᐅᑉ ᓂᐊᖁᐊᓂᒃ ᑎᒍᒥᐊᖅᑎᓪᓗᒍ. 
</pre>
<pre>
1sa:chapter17:58 “Tell me about your father, young man,” Saul said.
1sa:chapter17:58 ᓴᐅᓕᐅᓪᓗ ᐅᖃᐅᑎᕚ, “ᐃᓅᓱᒃᑑᖅ, ᑭᐊ ᐃᕐᖕᓂᕆᕚᑎᑦ?”
</pre>

* XML
```xml
<?xml version="1.0" encoding="UTF-8"?>
<xml>
   <book book="1sa">
      <chapters>
         <chapter17 chapterNumber="17">
            <verses>
               <verse55 verseNumber="55">
                  <nlt>As Saul watched David go out to fight the Philistine, he asked Abner, the commander of his army, “Abner, whose son is this young man?”</nlt>
                  <eabi>ᓴᐅᓕᓕ ᑍᕕᑎᒥᒃ ᑕᑯᓐᓇᕋᒥ ᐱᓕᔅᑍᓂᒧᑦ ᐂᓕᖅᑎᓪᓗᒍ, ᐋᑉᓄᒧᑦ ᐅᖃᖅᐳᖅ, ᐅᓇᑕᖅᑐᒃᓴᓄᑦ ᐊᖓᔪᖅᑲᐅᔪᒧᑦ, “ᐋᑉᓅ ᑭᐊᖑᓇ ᐃᕐᖕᓂᖓ ᐃᓅᓱᒃᑐᖅ?”</eabi>
               </verse55>
               <verse56 verseNumber="56">
                  <nlt>“Well, find out who he is!” the king told him.</nlt>
                  <eabi>ᐊᖓᔪᖅᑳᖅᔪᐊᖅ ᐅᖃᖅᐳᖅ, “ᐊᑏ ᖃᐅᔨᒋᐊᓕᕆᑦ ᑭᓇᒧᑦ ᑖᓐᓇ ᐃᕐᖕᓂᕆᔭᐅᖕᒪᖔᑦ ᐃᓅᓱᒃᑐᖅ.”</eabi>
               </verse56>
               <verse57 verseNumber="57">
                  <nlt>As soon as David returned from killing Goliath, Abner brought him to Saul with the Philistine’s head still in his hand.</nlt>
                  <eabi>ᑍᕕᑎᓗ ᐅᑎᕐᖕᒪᑦ ᑐᖁᑦᓯᓚᐅᖅᓗᓂ ᐱᓕᔅᑍᓂᒥᐅᒥᒃ, ᐋᑉᓅᑉ ᓴᐅᓕᒧᐊᕈᑎᕚ, ᐱᓕᔅᑍᒥᐅᑕᐅᑉ ᓂᐊᖁᐊᓂᒃ ᑎᒍᒥᐊᖅᑎᓪᓗᒍ.</eabi>
               </verse57>
               <verse58 verseNumber="58">
                  <nlt>“Tell me about your father, young man,” Saul said.</nlt>
                  <eabi>ᓴᐅᓕᐅᓪᓗ ᐅᖃᐅᑎᕚ, “ᐃᓅᓱᒃᑑᖅ, ᑭᐊ ᐃᕐᖕᓂᕆᕚᑎᑦ?”</eabi>
               </verse58>
            </verses>
         </chapter17>
      </chapters>
   </book>
</xml>
```

* JSON
```json
{
  "book": {
    "_book": "1sa",
    "chapters": {
      "chapter17": {
        "_chapterNumber": "17",
        "verses": {
          "verse55": {
            "_verseNumber": "55",
            "nlt": "As Saul watched David go out to fight the Philistine, he asked Abner, the commander of his army, “Abner, whose son is this young man?”",
            "eabi": "ᓴᐅᓕᓕ ᑍᕕᑎᒥᒃ ᑕᑯᓐᓇᕋᒥ ᐱᓕᔅᑍᓂᒧᑦ ᐂᓕᖅᑎᓪᓗᒍ, ᐋᑉᓄᒧᑦ ᐅᖃᖅᐳᖅ, ᐅᓇᑕᖅᑐᒃᓴᓄᑦ ᐊᖓᔪᖅᑲᐅᔪᒧᑦ, “ᐋᑉᓅ ᑭᐊᖑᓇ ᐃᕐᖕᓂᖓ ᐃᓅᓱᒃᑐᖅ?”"
          },
          "verse56": {
            "_verseNumber": "56",
            "nlt": "“Well, find out who he is!” the king told him.",
            "eabi": "ᐊᖓᔪᖅᑳᖅᔪᐊᖅ ᐅᖃᖅᐳᖅ, “ᐊᑏ ᖃᐅᔨᒋᐊᓕᕆᑦ ᑭᓇᒧᑦ ᑖᓐᓇ ᐃᕐᖕᓂᕆᔭᐅᖕᒪᖔᑦ ᐃᓅᓱᒃᑐᖅ.”"
          },
          "verse57": {
            "_verseNumber": "57",
            "nlt": "As soon as David returned from killing Goliath, Abner brought him to Saul with the Philistine’s head still in his hand. ",
            "eabi": "ᑍᕕᑎᓗ ᐅᑎᕐᖕᒪᑦ ᑐᖁᑦᓯᓚᐅᖅᓗᓂ ᐱᓕᔅᑍᓂᒥᐅᒥᒃ, ᐋᑉᓅᑉ ᓴᐅᓕᒧᐊᕈᑎᕚ, ᐱᓕᔅᑍᒥᐅᑕᐅᑉ ᓂᐊᖁᐊᓂᒃ ᑎᒍᒥᐊᖅᑎᓪᓗᒍ. "
          },
          "verse58": {
            "_verseNumber": "58",
            "nlt": "“Tell me about your father, young man,” Saul said.",
            "eabi": "ᓴᐅᓕᐅᓪᓗ ᐅᖃᐅᑎᕚ, “ᐃᓅᓱᒃᑑᖅ, ᑭᐊ ᐃᕐᖕᓂᕆᕚᑎᑦ?”"
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

