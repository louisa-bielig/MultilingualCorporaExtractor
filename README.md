MultilingualCorporaExtractor
============================

A Spider for extracting multilingual corpora using Node.io and international bibles. This can be handy for building reasonably sized multilingual corpora for working on low-resoure languages [Henderson 2013] [1], Computational Field Workshop @McGill

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
```bash
line
line
```

* XML
```xml
<xml></xml>
```

* JSON
```json
{}
```

License:
--------

Apache 2.0 


  [1]: http://migmaq.org/wp-content/uploads/2013/04/field_slides.pdf        "Henderson 2013"

Enjoy!
------

