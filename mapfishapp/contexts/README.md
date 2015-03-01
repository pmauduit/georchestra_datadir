Mapfishapp context repository
=================================

Each WMC present in this directory would be listed by calling:
http://host/mapfishapp/ws/contexts

Avoid space or special characters in the filename, since it would be used as a
key javascript-side.

you can put an image in the images/ subdirectory, but it has to be in PNG
format, and named like the context, else a fallback on images/default.png will
be used. Also keep in mind that on several filesystems, filenames are case
sensitive.

The description presented by the Mapfishapp webservice will be extracted from
the XML (General/Title xpath).

contexts and GEOR\_custom.js
================================

contexts can be set in the GEOR\_custom.js file with the following syntax

```json
CONTEXTS: [ {
    label: "label",
    thumbnail: "thumbnail URL",
    wmc: "WMC URL",
    tip: "tip",
    keywords: ["key1", "key2", ... ]
  }, ...
]
```

In fact the `/mapfishapp/ws/contexts` does basically the CONTEXTS variable
construction automatically, parsing the WMC files for information:

- label corresponds to the `/ViewContext/General/Title/text()` xpath, or the
  filename without the ".wmc" extension if not present / empty.

- thumbnail corresponds to an URL where a picture image can be downloaded, to
  illustrates the context, (or a default one, if the image file is not present,
  following the previously explained convention).

- WMC corrsponds to an URL where the file can be downloaded

- tip corresponds to the `/ViewContext/General/Abstract/text()` xpath, or the
  filename without extension if unavailable.

- keywords is made of the available keywords in the context
  `/ViewContext/General/KeywordList/Keyword/text()`, plus the filename without
  the extension.


