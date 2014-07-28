Bookdoc Drupal 7.x Module
==============================


The main goal of this module is to automate the publishing of book nodes from
a regular document file (.odt, .rtf, .doc, .docx, etc) upload.

This is done converting the 'document' files into html, and then uploaded as
a book.



# Requirements: #

## Ruby ##

Some steps of automation were coded on ruby.

It's spected:

*	Ruby >= 1.9.3
*	`nokogiri` Gem installed


## Unoconv ##

Unoconv is used to convert documents from different formats to HTML, so it's required.

On ubuntu:


`sudo apt-get install unoconv`


## html2book ##


Drupal module html2book should be installed and enabled on your site. html2book is used to split on a specified level of headings, the book chapters from the html file.


With drush:


```
drush dl html2book
drush en -y html2book
```


## Server Configurations ##

www-data was added to `/etc/sudoers` with this line:

```
www-data    ALL=NOPASSWD: /usr/bin/unoconv
www-data    ALL=NOPASSWD: /usr/bin/env
```

On `/etc/passwd` :

At the end of www-data entry  instead of `/bin/sh` put: `/bin/bash`

