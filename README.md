DOConversion Drupal 7.x Module

The main goal of this module is to automate the publishing of book nodes from
a regular document file (.odt, .rtf, .doc, .docx, etc) upload.

This is done converting the 'document' files into html, and then uploaded as
a book.*

[*] Still working on this.

To-do: 
Separate chapters accordingly to it's content/tags. (Cut on every h1 ??).
Upload the book content programatically


Requirements:

www-data was added to /etc/sudoers with this line:

  www-data    ALL=NOPASSWD: /usr/bin/unoconv
  www-data    ALL=NOPASSWD: /usr/bin/env

www-data entry in '/etc/passwd' so, at the end, instead of '/bin/sh' was an:
'/bin/bash'

