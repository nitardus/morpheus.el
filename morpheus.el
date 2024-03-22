(unless (boundp 'morpheus-path) (warn "morpheus-path is not set!"))
(setq utf8-greek-to-perseus-beta-code-mapping
      '(;;
	;; MAJUSKELN
	;; AKUT + lenis
        (?Ἄ . "*)/a") (?Ἔ . "*)/e") (?Ἤ . "*)/h") (?Ἴ . "*)/i") (?Ὄ . "*)/o") (?Ὤ . "*)/w") ;; (?῎Υ  . "*)/u")
	;; + ASPER
        (?Ἅ . "*(/a") (?Ἕ . "*(/e") (?Ἥ . "*(/h") (?Ἵ . "*(/i") (?Ὅ . "*(/o") (?Ὕ . "*(/u") (?Ὥ . "*(/w")
	;; GRAVIS + LENIS
	(?Ἂ . "*)/a") (?Ἒ . "*)/e") (?Ἢ . "*)/h") (?Ἲ . "*)/i") (?Ὂ . "*)/o") (?Ὢ . "*)/w") ;;(?Υ̓̀ . "*)/u")
	;; ;; + ASPER
	(?Ἃ . "*(/a") (?Ἓ . "*(/e") (?Ἣ . "*(/h") (?Ἳ . "*(/i") (?Ὃ . "*(/o") (?Ὓ . "*(/u") (?Ὣ . "*(/w")
	;;
	;; ;; ZIRKUMFLEX
        ;; (? . "*=a") (?Η͂ . "*=h") (?Ι͂ . "*=i") (?Υ͂ . "*=u") (?Ω͂ . "*=w")
	;; + SPIRITUS LENIS
	(?Ἆ . "*)=a") (?Ἦ . "*)=h") (?Ἶ . "*)=i") (?Ὦ . "*)=w") ;; (? . "*)=u")
	;; + SPIRITUS ASPER
	(?Ἇ . "*(=a") (?Ἧ . "*(=h") (?Ἷ . "*(=i") (?Ὗ . "*(=u") (?Ὧ . "*(=w")
	;;
	;; UNAKZENTUIERTE DIAKRITISCHE ZEICHEN 
	;; SPIRITUS LENIS
        (?Ἀ . "*)a") (?Ἐ . "*)e") (?Ἠ . "*)h") (?Ἰ . "*)i") (?Ὀ . "*)o") (?Ὑ . "*)u") (?Ὠ . "*)w")
	;; SPIRITUS ASPER
        (?Ἁ . "*(a") (?Ἑ . "*(e") (?Ἡ . "*(h") (?Ἱ . "*(i") (?Ὁ . "*(o") (?Ὑ . "*(u") (?Ὡ . "*(w")
	;; Rho
	(?Ῥ . "*(r") 
	;; Einfache Maiuskeln
	(?Α . "*a") (?Β . "*b") (?Γ . "*g") (?Δ . "*d") (?Ε . "*e") (?Ζ . "*z") (?Η . "*h") (?Θ . "*q")
        (?Ι . "*i") (?Κ . "*k") (?Λ . "*l") (?Μ . "*m") (?Ν . "*n") (?Ξ . "*c") (?Ο . "*o") (?Π . "*p")
        (?Ρ . "*r") (?Σ . "*s") (?Τ . "*t") (?Υ . "*u") (?Φ . "*f") (?Χ . "*x") (?Ψ . "*y") (?Ω . "*w")
	;;
	;; MINUSKELN
	;; Einfache Minuskeln
	(?α . "a") (?β . "b") (?γ . "g") (?δ . "d") (?ε . "e") (?ζ . "z") (?η . "h") (?θ . "q")
        (?ι . "i") (?κ . "k") (?λ . "l") (?μ . "m") (?ν . "n") (?ξ . "c") (?ο . "o") (?π . "p")
        (?ρ . "r") (?σ . "s") (?τ . "t") (?υ . "u") (?φ . "f") (?χ . "x") (?ψ . "y") (?ω . "w")
        ;;
	;; BUCHSTABENVARIANTEN
	(?ῥ . "r(") (?ῤ . "r") (?ς . "s")
	;;
	;; AKUT
        (?ά . "a/") (?έ . "e/") (?ή . "h/") (?ί . "i/") (?ό . "o/") (?ύ . "u/") (?ώ . "w/")
	;; + lenis
        (?ἄ . "a)/") (?ἔ . "e)/") (?ἤ . "h)/") (?ἴ . "i)/") (?ὄ . "o)/") (?ὔ . "u)/") (?ὤ . "w)/")
	;; + asper
        (?ἅ . "a(/") (?ἕ . "e(/") (?ἥ . "h(/") (?ἵ . "i(/") (?ὅ . "o(/") (?ὕ . "u(/") (?ὥ . "w(/")
	;; + IOTA 
        (?ᾴ . "a/|") (?ῄ . "h/|") (?ῴ . "w/|")
	;; + IOTA + lenis	    
	(?ᾄ . "a)/|") (?ᾔ . "h)/|") (?ᾤ . "w)/|")
	;; + IOTA + asper
	(?ᾅ . "a(/|") (?ᾕ . "h(/|") (?ᾥ . "w(/|")
	;;
	;; GRAVIS
        (?ὰ . "a/") (?ὲ . "e/") (?ὴ . "h/") (?ὶ . "i/") (?ὸ . "o/") (?ὺ . "u/") (?ὼ . "w/")
	;; + lenis
	(?ἂ . "a)/") (?ἒ . "e)/") (?ἢ . "h)/") (?ἲ . "i)/") (?ὂ . "o)/") (?ὒ . "u)/") (?ὢ . "w)/")
	;; + asper
	(?ἃ . "a(/") (?ἓ . "e(/") (?ἣ . "h(/") (?ἳ . "i(/") (?ὃ . "o(/") (?ὓ . "u(/") (?ὣ . "w(/")
	;; + IOTA 
        (?ᾲ . "a/|") (?ῂ . "h/|") (?ῲ . "w/|")
	;; + IOTA + lenis	    
	(?ᾂ . "a)/|") (?ᾒ . "h)/|") (?ᾢ . "w)/|")
	;; + IOTA + asper
	(?ᾃ . "a(/|") (?ᾓ . "h(/|") (?ᾣ . "w(/|")
	;;
	;; ZIRKUMFLEX
        (?ᾶ . "a=") (?ῆ . "h=") (?ῖ . "i=") (?ῦ . "u=") (?ῶ . "w=")
	;; + Spiritus lenis
	(?ἆ . "a)=") (?ἦ . "h)=") (?ἶ . "i)=") (?ὖ . "u)=") (?ὦ . "w)=")
	;; + Spiritus asper
	(?ἇ . "a(=") (?ἧ . "h(=") (?ἷ . "i(=") (?ὗ . "u(=") (?ὧ . "w(=")
	;; + IOTA
	(?ᾷ . "a=|") (?ῇ . "h=|") (?ῷ . "w=|")
	;; + IOTA + lenis
	(?ᾆ . "a)=|") (?ᾖ . "h)=|") (?ᾦ . "w)=|")
	;; + IOTA + asper
	(?ᾇ . "a(=|") (?ᾗ . "h(=|") (?ᾧ . "w(=|")
	;;
	;; Unakzentuierte diakritische Zeichen 
	;; SPIRITUS LENIS
        (?ἀ . "a)") (?ἐ . "e)") (?ἠ . "h)") (?ἰ . "i)") (?ὀ . "o)") (?ὐ . "u)") (?ὠ . "w)")
	;; SPIRITUS ASPER
        (?ἁ . "a(") (?ἑ . "e(") (?ἡ . "h(") (?ἱ . "i(") (?ὁ . "o(") (?ὑ . "u(") (?ὡ . "w(")
	;; IOTA
        (?ᾳ . "a|") (?ῃ . "h|") (?ῳ . "w|")
	;; + lenis
	(?ᾀ . "a)|") (?ᾐ . "h)|") (?ᾠ . "w)|")
	;; + asper
	(?ᾁ . "a(|") (?ᾑ . "h(|") (?ᾡ . "w(|")	    
	;;
	;; Vokale mit Längungszeichen 
	(?ᾱ . "a+") (?ῑ . "i+") (?ῡ . "u+")
	;; (?ᾱ . "a+") (?ῑ . "i+") (?ῡ . "u+") ; Akut
	;; (?ᾱ . "a+") (?ῑ . "i+") (?ῡ . "u+") ; Akut + lenis
	;; (?ᾱ . "a+") (?ῑ . "i+") (?ῡ . "u+") ; Akut + asper
	;; (?ᾱ . "a+") (?ῑ . "i+") (?ῡ . "u+") ; Gravis
	;; (?ᾱ . "a+") (?ῑ . "i+") (?ῡ . "u+") ; Gravis + lenis
	;; (?ᾱ . "a+") (?ῑ . "i+") (?ῡ . "u+") ; Gravis + asper
	;; Tremata
	(?ϊ . "i") (?ϋ . "u")
	(?᾿ . "'") (?’ . "'")
	))

;; Regulärer Ausdruck: \(\?.+?\) \. \(".+?"\)) → \2 . \1)
;; Hier noch die Längungszeichen aufnehmen!
(setq perseus-beta-code-to-greek-utf8-mapping 
      '(;;
	;; MAJUSKELN
	;; AKUT + lenis
        ("*)/a" . ?Ἄ) ("*)/e" . ?Ἔ) ("*)/h" . ?Ἤ) ("*)/i" . ?Ἴ) ("*)/o" . ?Ὄ) ("*)/w" . ?Ὤ) ;; ("*)/u" . ?῎Υ )
	;; + ASPER
        ("*(/a" . ?Ἅ) ("*(/e" . ?Ἕ) ("*(/h" . ?Ἥ) ("*(/i" . ?Ἵ) ("*(/o" . ?Ὅ) ("*(/u" . ?Ὕ) ("*(/w" . ?Ὥ)
	;; ;; GRAVIS + LENIS
	("*)/a" . ?Ἂ) ("*)/e" . ?Ἒ) ("*)/h" . ?Ἢ) ("*)/i" . ?Ἲ) ("*)/o" . ?Ὂ) ("*)/w" . ?Ὢ) ;;("*)/u" . ?Υ̓̀)
	;; ;; + ASPER
	("*(/a" . ?Ἃ) ("*(/e" . ?Ἓ) ("*(/h" . ?Ἣ) ("*(/i" . ?Ἳ) ("*(/o" . ?Ὃ) ("*(/u" . ?Ὓ) ("*(/w" . ?Ὣ)
	;;
	;; ;; ZIRKUMFLEX
        ;; ("*=h" . ? . "*=a") (?Η͂) ("*=i" . ?Ι͂) ("*=u" . ?Υ͂) ("*=w" . ?Ω͂)
	;; + SPIRITUS LENIS
	("*)=a" . ?Ἆ) ("*)=h" . ?Ἦ) ("*)=i" . ?Ἶ) ("*)=w" . ?Ὦ) ;; (? . "*)=u")
	;; + SPIRITUS ASPER
	("*(=a" . ?Ἇ) ("*(=h" . ?Ἧ) ("*(=i" . ?Ἷ) ("*(=u" . ?Ὗ) ("*(=w" . ?Ὧ)
	;;
	;; UNAKZENTUIERTE DIAKRITISCHE ZEICHEN 
	;; SPIRITUS LENIS
        ("*)a" . ?Ἀ) ("*)e" . ?Ἐ) ("*)h" . ?Ἠ) ("*)i" . ?Ἰ) ("*)o" . ?Ὀ) ("*)u" . ?Ὑ) ("*)w" . ?Ὠ)
	;; SPIRITUS ASPER
        ("*(a" . ?Ἁ) ("*(e" . ?Ἑ) ("*(h" . ?Ἡ) ("*(i" . ?Ἱ) ("*(o" . ?Ὁ) ("*(u" . ?Ὑ) ("*(w" . ?Ὡ)
	;; Rho
	("*(r" . ?Ῥ) 
	;; Einfache Maiuskeln
	("*a" . ?Α) ("*b" . ?Β) ("*g" . ?Γ) ("*d" . ?Δ) ("*e" . ?Ε) ("*z" . ?Ζ) ("*h" . ?Η) ("*q" . ?Θ)
        ("*i" . ?Ι) ("*k" . ?Κ) ("*l" . ?Λ) ("*m" . ?Μ) ("*n" . ?Ν) ("*c" . ?Ξ) ("*o" . ?Ο) ("*p" . ?Π)
        ("*r" . ?Ρ) ("*s" . ?Σ) ("*t" . ?Τ) ("*u" . ?Υ) ("*f" . ?Φ) ("*x" . ?Χ) ("*y" . ?Ψ) ("*w" . ?Ω)	    
	;;
	;; Tremata   
	;; ("i" . ?ϊ) ("u" . ?ϋ)
	;; Vokale mit Längungszeichen 
	;;("a+" . ?ᾱ) ("i+" . ?ῑ) ("u+" . ?ῡ)
	;; ("a+" . ?ᾱ) ("i+" . ?ῑ) ("u+" . ?ῡ) ; Gravis + asper
	;; ("a+" . ?ᾱ) ("i+" . ?ῑ) ("u+" . ?ῡ) ; Gravis + lenis
	;; ("a+" . ?ᾱ) ("i+" . ?ῑ) ("u+" . ?ῡ) ; Gravis
	;; ("a+" . ?ᾱ) ("i+" . ?ῑ) ("u+" . ?ῡ) ; Akut + asper
	;; ("a+" . ?ᾱ) ("i+" . ?ῑ) ("u+" . ?ῡ) ; Akut + lenis
	;; ("a+" . ?ᾱ) ("i+" . ?ῑ) ("u+" . ?ῡ) ; Akut
	;;
	;; Zirkumflex + IOTA + asper
	("a(=|" . ?ᾇ) ("h(=|" . ?ᾗ) ("w(=|" . ?ᾧ)
	;; Zirkumflex + IOTA + lenis
	("a)=|" . ?ᾆ) ("h)=|" . ?ᾖ) ("w)=|" . ?ᾦ)
	;; Zirkumflex + IOTA
	("a=|" . ?ᾷ) ("h=|" . ?ῇ) ("w=|" . ?ῷ)
	;; Zirkumflex + Spiritus asper
	("a(=" . ?ἇ) ("h(=" . ?ἧ) ("i(=" . ?ἷ) ("u(=" . ?ὗ) ("w(=" . ?ὧ)
	;; Zirkumflex + Spiritus lenis
	("a)=" . ?ἆ) ("h)=" . ?ἦ) ("i)=" . ?ἶ) ("u)=" . ?ὖ) ("w)=" . ?ὦ)
	;; Zirkumflex
        ("a=" . ?ᾶ) ("h=" . ?ῆ) ("i=" . ?ῖ) ("u=" . ?ῦ) ("w=" . ?ῶ)
	;; Gravis + IOTA + asper
	("a(\\|" . ?ᾃ) ("h(\\|" . ?ᾓ) ("w(\\|" . ?ᾣ)
	;; Gravis + IOTA + lenis	    
	("a)\\|" . ?ᾂ) ("h)\\|" . ?ᾒ) ("w)\\|" . ?ᾢ)
	;; Gravis + IOTA 
        ("a\\|" . ?ᾲ) ("h\\|" . ?ῂ) ("w\\|" . ?ῲ)
	;; Gravis + asper
	("a(\\" . ?ἃ) ("e(\\" . ?ἓ) ("h(\\" . ?ἣ) ("i(\\" . ?ἳ) ("o(\\" . ?ὃ) ("u(\\" . ?ὓ) ("w(\\" . ?ὣ)
	;; Gravis + lenis
	("a)\\" . ?ἂ) ("e)\\" . ?ἒ) ("h)\\" . ?ἢ) ("i)\\" . ?ἲ) ("o)\\" . ?ὂ) ("u)\\" . ?ὒ) ("w)\\" . ?ὢ)
	;; GRAVIS
        ("a\\" . ?ὰ) ("e\\" . ?ὲ) ("h\\" . ?ὴ) ("i\\" . ?ὶ) ("o\\" . ?ὸ) ("u\\" . ?ὺ) ("w\\" . ?ὼ)
	;;
	;; AKUT + IOTA + asper
	("a(/|" . ?ᾅ) ("h(/|" . ?ᾕ) ("w(/|" . ?ᾥ)
	;; AKUT + IOTA + lenis	    
	("a)/|" . ?ᾄ) ("h)/|" . ?ᾔ) ("w)/|" . ?ᾤ)
	;; AKUT + IOTA 
        ("a/|" . ?ᾴ) ("h/|" . ?ῄ) ("w/|" . ?ῴ)
	;; AKUT + asper
        ("a(/" . ?ἅ) ("e(/" . ?ἕ) ("h(/" . ?ἥ) ("i(/" . ?ἵ) ("o(/" . ?ὅ) ("u(/" . ?ὕ) ("w(/" . ?ὥ)
	;; AKUT + lenis
        ("a)/" . ?ἄ) ("e)/" . ?ἔ) ("h)/" . ?ἤ) ("i)/" . ?ἴ) ("o)/" . ?ὄ) ("u)/" . ?ὔ) ("w)/" . ?ὤ)
	;; AKUT	    
        ("a/" . ?ά) ("e/" . ?έ) ("h/" . ?ή) ("i/" . ?ί) ("o/" . ?ό) ("u/" . ?ύ) ("w/" . ?ώ)
	;; Unakzentuierte diakritische Zeichen 
	;; IOTA + asper
	("a(|" . ?ᾁ) ("h(|" . ?ᾑ) ("w(|" . ?ᾡ)	    
	;; IOTA + lenis
	("a)|" . ?ᾀ) ("h)|" . ?ᾐ) ("w)|" . ?ᾠ)
	;; IOTA
        ("a|" . ?ᾳ) ("h|" . ?ῃ) ("w|" . ?ῳ)
	;; SPIRITUS ASPER
        ("a(" . ?ἁ) ("e(" . ?ἑ) ("h(" . ?ἡ) ("i(" . ?ἱ) ("o(" . ?ὁ) ("u(" . ?ὑ) ("w(" . ?ὡ)
	;; SPIRITUS LENIS
        ("a)" . ?ἀ) ("e)" . ?ἐ) ("h)" . ?ἠ) ("i)" . ?ἰ) ("o)" . ?ὀ) ("u)" . ?ὐ) ("w)" . ?ὠ)
	;; BUCHSTABENVARIANTEN
	("r(" . ?ῥ) ("r)" . ?ῤ) ;("s " . ?ς)
	;;
        ;; MINUSKELN
	("a" . ?α) ("b" . ?β) ("g" . ?γ) ("d" . ?δ) ("e" . ?ε) ("z" . ?ζ) ("h" . ?η) ("q" . ?θ)
        ("i" . ?ι) ("k" . ?κ) ("l" . ?λ) ("m" . ?μ) ("n" . ?ν) ("c" . ?ξ) ("o" . ?ο) ("p" . ?π)
        ("r" . ?ρ) ("s" . ?σ) ("t" . ?τ) ("u" . ?υ) ("f" . ?φ) ("x" . ?χ) ("y" . ?ψ) ("w" . ?ω)
	("'" . ?᾿)
	))

;; Im Moment gehen hiermit noch die graves verloren
(defun utf8-greek-to-perseus-beta (str)
  "Translate UTF-8 encoded polytonic Greek in the selected region into Perseus-style beta code."
  ()
  (let* ((output 
          (with-output-to-string
            (mapc (lambda (char)
                    (let ((replacement (cdr (assoc char utf8-greek-to-perseus-beta-code-mapping))))
                      (if replacement
                          (princ replacement)
                        (princ (char-to-string char)))))
		  (string-to-list str)))))
    output))

;; Simple, robuste Übersetung
(defun perseus-beta-to-utf8-greek (str)
  "Translate Perseus-style beta code in the selected region into UTF-8 encoded polytonic Greek."
  ()
  (let* ((replacements '(("σ " . "ς ")
			 ("σ\\." . "ς.")
			 ("σ," . "ς,")
			 ("σ·" . "ς·")
			 ("σ;" . "ς;")))
         (output str))
    (dolist (pair perseus-beta-code-to-greek-utf8-mapping output)
      (let ((beta-code (regexp-quote (car pair)))
            (greek-char (char-to-string (cdr pair))))
	(setq output (replace-regexp-in-string beta-code greek-char output))))
    (dolist (pair replacements)
      (let ((regex (car pair))
	    (replacement (cdr pair)))
        (setq output (replace-regexp-in-string regex replacement output))))
    output))

;; Übersetzt nur Griechisch, löscht aber neue Zeilen
;; Längungszeichen: i)_/shn
(defun perseus-beta-to-utf8-greek-morpheus (str)
  "Translate Perseus-style beta code in the selected region into UTF-8 encoded polytonic Greek."
  ()
  (let* ((replacements '(("σ\\([^[:alpha:]]\\)" . "ς\\1")
			 ("σ\\." . "ς.")
			 ("σ," . "ς,")
			 ("σ·" . "ς·")
			 ("σ;" . "ς;")))
         (output "")
         (words (split-string str))
	 ;; In this list, all other greek words without diacritical marks must be included
	 (no-diacritics '("tis" "ti" "tinos" "tini" "tina" "tines" "tinwn" "tisin?" "tinas"
			  "mou" "moi" "me" "sou" "soi" "se"
			  "sfw" "sfeis" "sfewn" "sfisin" "sfas"
			  "nun"
			  "pws" "pou" "pote" "poqen"
			  "te" "ge"))
         (diacritics '("/" "\\" "=" "(" ")" "|" "'")))
    (dolist (word words output)
      (let ((beta-word word))
        (when (or
	       (seq-some (lambda (diacritic) (string-match-p (regexp-quote diacritic) word)) diacritics)
	       (seq-some (lambda (no-diacritic) (string-equal (regexp-quote no-diacritic) word)) no-diacritics))
          (dolist (pair perseus-beta-code-to-greek-utf8-mapping)
            (let ((beta-code (regexp-quote (car pair)))
                  (greek-char (char-to-string (cdr pair))))
              (setq beta-word (replace-regexp-in-string beta-code greek-char beta-word t t)))))
        (setq output (concat output beta-word " "))))
    (dolist (pair replacements)
      (let ((regex (car pair))
	    (replacement (cdr pair)))
        (setq output (replace-regexp-in-string regex replacement output))))   
    output))
   
(defun utf8-greek-to-perseus-beta-interactive (start end)
  "Translate UTF-8 encoded polytonic Greek in the selected region into Perseus-style beta code."
  ()
  (interactive "r")
  (let* ((str (buffer-substring start end)))
    (setq transformed (utf8-greek-to-perseus-beta str))
    (delete-region start end)
    (insert transformed)))

(defun perseus-beta-to-utf8-greek-interactive (start end)
  "Translate Perseus-style beta code in the selected region into UTF-8 encoded polytonic Greek."
  (interactive "r")
  (let* ((str (buffer-substring start end)))
    (setq transformed (perseus-beta-to-utf8-greek str))
    (delete-region start end)
    (insert transformed)))

;; NICHT ERKANNT: Klammern in eigene Zeile εἰδῆσαι
(defun morpheus-latin (start end)
  "Process a latin text with morpheus and format the output.
Works on active region."
  (interactive "r")
  (let* ((translated (buffer-substring start end))
	 ;; Replacements of characters that would confuse morpheus
	 (translated (replace-regexp-in-string "·" ":" translated))
	 ;; Remove leading and trailing parenthesis 
	 (translated (replace-regexp-in-string "(" "( " translated))
	 (translated (replace-regexp-in-string ")" " )" translated))
         (words (split-string translated)))
    (delete-region start end)
    (dolist (word words)
      (let* ((morpheus-output
	      (shell-command-to-string
	       (concat "echo \"" word "\" | MORPHLIB=" morpheus-path "/stemlib " morpheus-path "/bin/cruncher -L 2> /dev/null")))
             ;; Replace \t+ with " | "
             (morpheus-output (replace-regexp-in-string "\t+" " | " morpheus-output))
	     ;; replace </NL> with <ENDNL>, so / gets not confused with a beta code acute
	     (morpheus-output (replace-regexp-in-string "</NL><NL>" "<NEXTNL>" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "</NL>" "<ENDNL>" morpheus-output))
	     ;; commata with spaces
	     (morpheus-output (replace-regexp-in-string "\\([[:alnum:]]\\),\\([[:alnum:]]\\)" "\\1 \\2" morpheus-output))
	     ;; formating
	     (morpheus-output (replace-regexp-in-string ":" "·" morpheus-output))
	     ;; (morpheus-output (replace-regexp-in-string "<NL>" "\t" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "<NEXTNL>" "\n\t\t" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "<ENDNL>" "" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "^ " "" morpheus-output))
	     ;; Split the output into the word and the analysis
             (morpheus-parts (split-string morpheus-output "<NL>" nil)))
	;; Insert the word and indent
	(insert (string-trim (car morpheus-parts)))
	(if (> (length morpheus-parts) 1)
	    (progn
              (indent-to 16 3)   
              (insert (cadr morpheus-parts)))
	  (newline))))))

(defun morpheus-greek (start end)
  "Process a utf8 encoded Greek text with morpheus and format the output.
Works on active region."
  (interactive "r")
  (let* ((translated (buffer-substring start end))
	 ;; Replacements of characters that would confuse morpheus
	 (translated (replace-regexp-in-string "·" ":" translated))
	 ;; Remove leading and trailing parenthesis 
	 (translated (replace-regexp-in-string "(" "( " translated))
	 (translated (replace-regexp-in-string ")" " )" translated))
	 (translated (utf8-greek-to-perseus-beta translated))
         (words (split-string translated)))
    (delete-region start end)
    (dolist (word words)
      (let* ((morpheus-output
	      (shell-command-to-string
	       (concat "echo \"" word "\" | MORPHLIB=" morpheus-path "/stemlib " morpheus-path "/bin/cruncher -S 2> /dev/null")))
             ;; Replace \t+ with " | "
             (morpheus-output (replace-regexp-in-string "\t+" " | " morpheus-output))
	     ;; replace </NL> with <ENDNL>, so / gets not confused with a beta code acute
	     (morpheus-output (replace-regexp-in-string "</NL><NL>" "<NEXTNL>" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "</NL>" "<ENDNL>" morpheus-output))
	     ;; commata with spaces
	     (morpheus-output (replace-regexp-in-string "\\([[:alnum:]]\\),\\([[:alnum:]]\\)" "\\1 \\2" morpheus-output))
	     ;; Translate from beta code to UTF-8 Greek
             (morpheus-output (perseus-beta-to-utf8-greek-morpheus morpheus-output))
	     ;; Reverting false replacements
	     (morpheus-output (replace-regexp-in-string "\\<νομ\\>" "nom" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "\\<vοξ\\>" "voc" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "\\<αξξ\\>" "acc" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "\\<μασξ\\>" "mask" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "\\<φεμ\\>" "fem" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "\\<νευτ\\>" "neut" morpheus-output))
	     ;; Long vovels
	     (morpheus-output (replace-regexp-in-string "α_/" "́ᾱ" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "ι_/" "́ῑ" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "υ_/" "́ῡ" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "α_" "ᾱ" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "ι_" "ῑ" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "υ_" "ῡ" morpheus-output))
	     ;; Additional reversions    
	     (morpheus-output (replace-regexp-in-string "evw_" "ευω_" morpheus-output))
    	     (morpheus-output (replace-regexp-in-string "ev_" "ευ_" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "ew_" "εω_" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "w_" "ω_" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "a_" "α_" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "e_" "ε_" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "o_" "ο_" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "os_ou" "ος_ου" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "h_hs" "η_ης" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "os_h_on" "ος_η_ον" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "os_on" "ος_ον" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "hs_eos" "ης_εως" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "_mi" "_μι" morpheus-output))
	     ;; other formating
	     (morpheus-output (replace-regexp-in-string ":" "·" morpheus-output))
	     ;; (morpheus-output (replace-regexp-in-string "<NL>" "\t" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "<NEXTNL>" "\n\t\t" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "<ENDNL>" "\n" morpheus-output))
	     (morpheus-output (replace-regexp-in-string "^ " "" morpheus-output))
	     ;; Split the output into the word and the analysis
             (morpheus-parts (split-string morpheus-output "<NL>" nil)))
	;; Insert the word and indent
	(insert (car morpheus-parts))
	(if (> (length morpheus-parts) 1)
	    (progn
              (indent-to 16 3)   
              (insert (cadr morpheus-parts)))
	  (newline))))))

(provide 'morpheus)
