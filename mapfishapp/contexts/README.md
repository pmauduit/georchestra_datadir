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

