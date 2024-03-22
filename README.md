morpheus.el
===========

morpheus.el is a rudimentary elisp interface for the Classical Greek
and Latin parser utility morpheus by the Perseus project. It can be
used to parse a string of Greek and Latin in a practial plaintext
format. It achieves this by translating utf8 encoded Greek to Perseus
beta code and piping it to the morpheus command line utility. For it
to work, you first have to download and build morpheus. There are
several git repositories which all should work, but morpheus.el is
primarily tested with the [fork by the Perseids
project](https://github.com/perseids-tools/morpheus).


Installation
------------

After sucessfully building and installing morpheus, you have to copy
the morpheus.el file somewhere in your Emacs load path, e.g.
~/.emacs.d/elisp/. To do this, you would type

	cp morpheus.el ~/.emacs.d/elisp/
	
in the command line and then add

	(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
	
to your .emacs or init.el.

Then, add the following to lines to your .emacs / init.el:

	(setq morpheus-path "/absolute/path/to/morpheus/") ; adapt!
	(require 'morpheus)


Usage
-----
The primary functions are 

  * M-x morpheus-greek
  * M-x morpheus-latin
  
In addition to this, morpheus.el provides you with two interactive
functions to convert text between Perseus Betacode and utf8-encoded greek:

  * M-x utf8-greek-to-perseus-beta-interactive
  * M-x perseus-beta-to-utf8-greek-interactive
  
All functions work only on the active region, replacing it.
