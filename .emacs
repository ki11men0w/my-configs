;;; One can load wdired in two ways.
;;
;;; This is the easy way:
;; (require 'wdired)
;; (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
;;; One can load wdired by theese two lines
;;
;; This is recommended way for faster emacs startup time and lower
;; memory consumption, but remind to add these lines before dired.el
;; gets loaded (i.e., near the beginning of your .emacs file):
;;
(autoload 'wdired-change-to-wdired-mode "wdired")
(add-hook 'dired-load-hook
          '(lambda ()
             (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
             (define-key dired-mode-map
               [menu-bar immediate wdired-change-to-wdired-mode]
               '("Edit File Names" . wdired-change-to-wdired-mode))))

(autoload 'python-mode "python-mode" "Python editing mode." t)
(load-library "ls-lisp")
(load-library "~/.emacs_hooks")
(load-library "haskell-mode/haskell-site-file")
(load-library "plsql")
;(autoload 'plsql "plsql" "PL/SQL editing mode 1." t)
;(autoload 'plsql-mode "plsql" "PL/SQL editing mode 2." t)
;(autoload 'sql-mode "sql" "PL/SQL editing mode." t)
;(autoload 'pls-mode "pls-mode" "PL/SQL editing mode." t)
(require 'uniquify)

;; Erlang mode
(setq load-path (cons "c:/bin/erl5.7.4/lib/tools-2.6.5/emacs" load-path))
(setq erlang-root-dir "c:/bin/erl5.7.4")
(setq exec-path (cons "c:/bin/erl5.7.4/bin" exec-path))
(require 'erlang-start)


(setq load-path (cons "c:/emacs/site-lisp/git/egg" load-path))
(require 'egg)
(load-library "egg-grep")
;;(setq load-path (cons "c:/emacs/site-lisp/git" load-path))
;;(require 'git)
(require 'git-blame)
(setq load-path (cons "c:/emacs/site-lisp/git/gitsum" load-path))
;(require 'gitsum)

;(setq load-path (cons "c:/emacs/site-lisp/git/magit" load-path))
;(require 'magit)
;(setq load-path (cons "c:/emacs/site-lisp/git/egit" load-path))
;(require 'egit)



(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(Buffer-menu-buffer+size-width 54)
 '(Buffer-menu-mode-width 12)
 '(auto-compression-mode t nil (jka-compr))
 '(bookmark-bmenu-file-column 50)
 '(bookmark-save-flag 1)
 '(bookmark-use-annotations t)
 '(c-mode-hook (quote (set-tab-width-4)))
 '(calendar-week-start-day 1)
 '(change-log-mode-hook (quote (turn-on-auto-fill)))
 '(completion-ignored-extensions (quote ("CVS/" ".o" "~" ".bin" ".bak" ".obj" ".map" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".dvi" ".fmt" ".tfm" ".pdf" ".class" ".fas" ".lib" ".x86f" ".sparcf" ".lo" ".la" ".toc" ".log" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".dcu")))
 '(confirm-kill-emacs (quote y-or-n-p))
 '(cvs-allow-dir-commit t)
 '(cvs-display-full-path nil)
 '(cvs-force-dir-tag nil)
 '(delphi-case-label-indent 2)
 '(delphi-compound-block-indent 1)
 '(delphi-indent-level 2)
 '(delphi-newline-always-indents t)
 '(delphi-search-path (quote ("...." "C:/work/HEAD/RSS/RSS_CodeLib...")))
 '(desktop-load-locked-desktop (quote ask))
 '(desktop-missing-file-warning nil)
 '(desktop-path (quote ("." "~/.emacs.d/" "~")))
 '(desktop-restore-eager 10)
 '(desktop-save-mode t)
 '(diff-switches "-u")
 '(dired-dwim-target t)
 '(dired-garbage-files-regexp "\\.\\(?:log\\|orig\\|rej\\|toc\\|~...\\|dcu\\|keep\\(\\..+\\)\\)\\'")
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote always))
 '(ediff-cmp-program "diff")
 '(ediff-keep-variants nil)
 '(egg-patch-command "c:\\bin\\git\\bin\\patch.exe")
 '(egg-quit-window-actions (quote ((egg-status-buffer-mode kill restore-windows) (egg-commit-buffer-mode kill restore-windows))))
 '(fill-column 100)
 '(frame-background-mode (quote dark))
 '(global-semantic-highlight-edits-mode t nil (semantic/util-modes))
 '(global-semantic-highlight-func-mode t nil (semantic/util-modes))
 '(global-semantic-show-unmatched-syntax-mode t nil (semantic/util-modes))
 '(global-semantic-stickyfunc-mode t nil (semantic/util-modes))
 '(gnus-nntpserver-file "c:/emacs/etc/nntpserver")
 '(gnus-read-active-file nil)
 '(gnus-secondary-select-methods nil)
 '(gnus-select-method (quote (nntp "news.tomica.ru")))
 '(haskell-check-command "ghc -fno-code")
 '(haskell-doc-chop-off-context nil)
 '(haskell-doc-show-global-types t)
 '(haskell-doc-show-reserved nil)
 '(haskell-doc-show-strategy nil)
 '(haskell-indent-after-keywords (quote (("where" 2 0) ("of" 2) ("do" 2) ("in" 2 0) ("{" 2) "if" "then" "else" "let")))
 '(haskell-indent-look-past-empty-line nil)
 '(haskell-indent-offset 2)
 '(haskell-mode-hook (quote (turn-on-haskell-indent turn-on-haskell-indentation turn-on-font-lock)))
 '(imenu-auto-rescan t)
 '(imenu-max-item-length 100)
 '(indent-tabs-mode nil)
 '(inferior-haskell-wait-and-jump t)
 '(inhibit-default-init t)
 '(inhibit-startup-screen t)
 '(line-move-visual nil)
 '(ls-lisp-dirs-first t)
 '(ls-lisp-ignore-case t)
 '(ls-lisp-support-shell-wildcards nil)
 '(mail-user-agent (quote message-user-agent))
 '(menu-bar-mode nil)
 '(message-send-mail-function (quote smtpmail-send-it))
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (4 ((shift) . 1) ((control)))))
 '(next-line-add-newlines nil)
 '(nxml-attribute-indent 6)
 '(nxml-child-indent 3)
 '(nxml-mode-hook (quote (set-tab-width-3)))
 '(nxml-outline-child-indent 3)
 '(org-drawers (quote ("PROPERTIES" "CLOCK" "LOGBOOK" "HIDDEN")))
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(pascal-case-indent 3)
 '(pascal-toggle-completions t)
 '(perl-tab-to-comment t)
 '(plsql-indent 2)
 '(py-imenu-show-method-args-p t)
 '(py-pdbtrack-do-tracking-p t)
 '(recentf-max-menu-items 25)
 '(recentf-max-saved-items 500)
 '(recentf-mode t nil (recentf))
 '(semantic-default-submodes (quote (global-semantic-highlight-func-mode global-semantic-decoration-mode global-semantic-stickyfunc-mode global-semantic-idle-completions-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode)))
 '(sgml-basic-offset 3)
 '(sgml-mode-hook (quote (set-tab-width-3)))
 '(sgml-xml-mode t)
 '(smtpmail-default-smtp-server "mail.billing.ru")
 '(smtpmail-smtp-server "mail.billing.ru")
 '(speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|.svn\\)\\'")
 '(speedbar-frame-parameters (quote ((minibuffer) (width . 60) (border-width . 0) (menu-bar-lines . 0) (tool-bar-lines . 0) (unsplittable . t))))
 '(speedbar-supported-extension-expressions (quote (".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" "[Mm]akefile\\(\\.in\\)?" ".sql")))
 '(speedbar-visiting-tag-hook (quote (speedbar-highlight-one-tag-line speedbar-recenter-to-top)))
 '(sql-mysql-program "mysqlc")
 '(sql-oracle-program "sqlplus")
 '(tool-bar-mode nil)
 '(track-eol t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(uniquify-trailing-separator-p t)
 '(url-be-asynchronous t)
 '(url-news-server nil)
 '(url-privacy-level (quote (email cookie)))
 '(url-proxy-services (quote (("http" . "proxy.net.billing.ru:3128"))))
 '(user-full-name "Maksim Golubev")
 '(user-mail-address "maksim.golubev72@gmail.com")
 '(visible-bell t)
 '(w3-default-homepage "http://mail:10000")
 '(wdired-always-move-to-filename-beginning (quote sometimes))
 '(which-func-modes (quote (emacs-lisp-mode c-mode c++-mode perl-mode cperl-mode makefile-mode sh-mode fortran-mode python-mode plsql-mode))))

(setq default-indicate-empty-lines 1)

;; Some macros.
(defmacro GNUEmacs (&rest x)
  (list 'if (string-match "GNU Emacs" (version)) (cons 'progn x)))
(defmacro XEmacs (&rest x)
  (list 'if (string-match "XEmacs" (version)) (cons 'progn x)))
;; (defmacro Xlaunch (&rest x)
;;   (list 'if (eq window-system 'x)(cons 'progn x)))
;; (defmacro JustTerm (&rest x)
;;   (list 'if (eq window-system nil)(cons 'progn x)))
(defmacro Xlaunch (&rest x)
  (list 'if (eq window-system 'w32)(cons 'progn x)))
(defmacro JustTerm (&rest x)
  (list 'if (eq window-system nil)(cons 'progn x)))


(GNUEmacs 
 (Xlaunch
     (define-key global-map [(delete)]    "\C-d") 
))



;; My preferences of mode mapping
; I prefer CPerl mode for PERL
(setq interpreter-mode-alist
      (cons '("perl" . cperl-mode)
	    (cons '("perl5" . cperl-mode)
		  (cons '("miniperl" . cperl-mode)
			interpreter-mode-alist))))

;;python-mode
(setq auto-mode-alist
      (cons '("\\.\\(py\\|pyw\\)$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode) interpreter-mode-alist))

(setq auto-mode-alist
      (cons '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode)
	    auto-mode-alist))

(autoload 'delphi-mode "delphi")
(setq auto-mode-alist
      (cons '("\\.\\(pas\\|dpr\\|dpk\\|inc\\)$" . delphi-mode) 
	    auto-mode-alist))
;(load-library "~/.emacs-delphi-mode-my")

;(setq auto-mode-alist
;      (cons '("\\.\\(xml\\|xsl\\|xsd\\|xslt\\|gpx\\)$" . sgml-mode) 
;	    auto-mode-alist))

;; PL/SQL mode
(setq auto-mode-alist
      (cons '("\\.\\(sql\\)$" . plsql-mode) 
	    auto-mode-alist))
;(speedbar-add-supported-extension "sql")

; (autoload 'sqlplus "sqlplus-mode"
;   "Start the interactive SQL*Plus interpreter in a new buffer." t)
; (autoload 'sqlplus-mode "sqlplus-mode"
;   "Mode for editing SQL files and running a SQL*Plus interpretor." t)
; (add-to-list 'auto-mode-alist '("\\.sql\\'" . sqlplus-mode))


;; My prferensies
; (setq interpreter-mode-alist
;       (cons '("Perl" . cperl-mode) 
; 	    (cons '("perl" . cperl-mode) 
; 		  interpreter-mode-alist)))
; (setq auto-mode-alist
;       (cons '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode)
;        auto-mode-alist))

;; Настройки Orgmode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-ci" 'org-indent-mode)
;; Включаем font-lock-mode в буферах с org-mode
;; (закомментировано т.к. font-lock-mode включён у меня глобално, и включать его
;; отдельно нет необходимости)
;(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only


;; MULE
;;;;;(create-fontset-from-fontset-spec "-*-Courier New-normal-r-*-*-13-97-96-96-c-*-iso8859-5")
;(setq w32-use-w32-font-dialog nil)
;;;;; (setq w32-fixed-font-alist
;;;;;       (append w32-fixed-font-alist
;;;;;               '(("Maax1"
;;;;; 		 ("10" "-*-Courier New-normal-r-*-*-13-97-96-96-c-*-iso8859-5")))))

;;;;;(create-fontset-from-fontset-spec "-*-ER Kurier KOI8-normal-r-*-*-*-*-*-*-*-*-koi8-r")
;;;;;(setq w32-fixed-font-alist
;;;;;      (append w32-fixed-font-alist
;;;;;              '(("Maax2"
;;;;;		 ("10" "-*-ER Kurier KOI8-normal-r-*-*-13-97-96-96-c-*-koi8-r")))))

;;(set-default-font "-*-Courier New-normal-r-*-*-13-*-*-*-*-*-iso8859-12")
;; ;(set-default-font "-*-Courier New-normal-r-*-*-13-97-96-96-c-*-iso8859-5")
;; ;(set-default-font "-*-ER Kurier KOI8-normal-r-*-*-13-*-*-*-*-*-koi8-r")

;(setq default-enable-multibyte-characters nil)
(set-language-environment "Cyrillic-KOI8")
;(set-language-environment "UTF-8")
(setq default-input-method "russian-computer")
;(setq default-input-method "cyrillic-jcuken")
;(setq unibyte-display-via-language-environment t)
;(set-terminal-coding-system 'cyrillic-alternativnyj)
;(codepage-setup '1251)
(prefer-coding-system 'koi8-r)
(prefer-coding-system 'cyrillic-alternativnyj)
(prefer-coding-system 'utf-8)
(prefer-coding-system 'cp1251-dos)
;(gnus-mule-add-group "" 'cyrillic-koi8)
;(setq-default sendmail-coding-system 'koi8-r)
;(set-selection-coding-system 'cp1251-dos)
;(set-terminal-coding-system 'cp1251-dos)

;(set-w32-system-coding-system 'cp1251-dos)

;(require 'un-define)

;(prefer-coding-system 'utf-8)
;;(setq-default coding-system-for-read 'cp1251-dos)
;(setq-default coding-system-for-write 'undecided-dos)
;(setq-default coding-system-for-read 'cp1251-dos)
;(setq-default coding-system-for-write 'cp1251-dos)

;; By default we starting in text mode.
;; (setq initial-major-mode
;;       (lambda ()
;;         (text-mode)
;;         (turn-on-auto-fill)
;; 	(font-lock-mode)
;; 	))


(defun set-my-faces(&optional name)
	(cond 
	 ;; Old good for X
	 ((string-equal name "old")
	  (add-to-list 'default-frame-alist '(cursor-color . "red"))
	  (add-to-list 'default-frame-alist '(foreground-color . "black"))
	  (add-to-list 'default-frame-alist '(background-color . "honeydew"))
	  (setq font-lock-use-default-fonts nil)
	  (setq font-lock-use-default-colors nil)
	  (copy-face 'default 'font-lock-string-face)
	  (set-face-foreground 'font-lock-string-face "Sienna")
	  (copy-face 'italic 'font-lock-comment-face)
	  (set-face-foreground 'font-lock-comment-face "Red")
	  (copy-face 'bold 'font-lock-function-name-facee)
	  (set-face-foreground 'font-lock-function-name-facee "MediumBlue")
	  (copy-face 'font-lock-function-name-facee 'font-lock-function-name-face nil)
	  (copy-face 'default 'font-lock-keyword-face)
	  (set-face-foreground 'font-lock-keyword-face "SteelBlue")
	  (copy-face 'default 'font-lock-type-face)
	  (set-face-foreground 'font-lock-type-face "DarkOliveGreen")
	  )
	 ;; BLUE back for X
	 ((string-equal name "blue")
	  (add-to-list 'default-frame-alist '(cursor-color . "red"))
	  (add-to-list 'default-frame-alist '(foreground-color . "white"))
	  (add-to-list 'default-frame-alist '(background-color . "DarkSlateBlue"))

	  (setq font-lock-use-default-fonts nil)
	  (setq font-lock-use-default-colors nil)
	  (copy-face 'default 'font-lock-string-face)
	  (set-face-foreground 'font-lock-string-face "burlywood")
	  (copy-face 'italic 'font-lock-comment-face)
	  (set-face-foreground 'font-lock-comment-face "tomato")
	  (copy-face 'bold 'font-lock-function-name-face)
	  (set-face-foreground 'font-lock-function-name-face "violet")
	  ;(copy-face 'font-lock-function-name-facee 'font-lock-function-name-face nil)
	  (copy-face 'bold 'font-lock-keyword-face)
	  (set-face-foreground 'font-lock-keyword-face "cyan")
	  (copy-face 'default 'font-lock-type-face)
	  (set-face-foreground 'font-lock-type-face "green3")
	  )
	 ;; BLUE back on terminal
	 ((string-equal name "blue-term")
	  (add-to-list 'default-frame-alist '(cursor-color . "red"))
	  (add-to-list 'default-frame-alist '(foreground-color . "white"))
	  (add-to-list 'default-frame-alist '(background-color . "blue"))

	  (setq font-lock-use-default-fonts nil)
	  (setq font-lock-use-default-colors nil)
	  (copy-face 'default 'font-lock-string-face)
	  (set-face-foreground 'font-lock-string-face "burlywood")
	  (copy-face 'italic 'font-lock-comment-face)
	  (set-face-foreground 'font-lock-comment-face "lightred")
	  (copy-face 'bold 'font-lock-function-name-facee)
	  (set-face-foreground 'font-lock-function-name-facee "violet")
	  (copy-face 'font-lock-function-name-facee 'font-lock-function-name-face nil)
	  (copy-face 'default 'font-lock-keyword-face)
	  (set-face-foreground 'font-lock-keyword-face "cyan")
	  (copy-face 'default 'font-lock-type-face)
	  (set-face-foreground 'font-lock-type-face "green3")
	  )
	 ;; BLUE back on terminal with green strings
	 ((string-equal name "blue2-term")
	  (add-to-list 'default-frame-alist '(cursor-color . "red"))
	  (add-to-list 'default-frame-alist '(foreground-color . "white"))
	  (add-to-list 'default-frame-alist '(background-color . "navy"))

	  (setq font-lock-use-default-fonts nil)
	  (setq font-lock-use-default-colors nil)
	  (copy-face 'default 'font-lock-string-face)
	  (set-face-foreground 'font-lock-string-face "green")
	  (copy-face 'italic 'font-lock-comment-face)
	  (set-face-foreground 'font-lock-comment-face "tomato")
	  (copy-face 'bold 'font-lock-function-name-facee)
	  (set-face-foreground 'font-lock-function-name-facee "violet")
	  (copy-face 'font-lock-function-name-facee 'font-lock-function-name-face nil)
	  (copy-face 'default 'font-lock-keyword-face)
	  (set-face-foreground 'font-lock-keyword-face "cyan")
	  (copy-face 'default 'font-lock-type-face)
	  (set-face-foreground 'font-lock-type-face "magenta")
	  )
	 ;; BLACK back for X
	 ((string-equal name "black")
	  (add-to-list 'default-frame-alist '(cursor-color . "red"))
	  (add-to-list 'default-frame-alist '(foreground-color . "white"))
	  (add-to-list 'default-frame-alist '(background-color . "black"))
	 
	  (setq font-lock-use-default-fonts nil)
	  (setq font-lock-use-default-colors nil)
	  (copy-face 'default 'font-lock-string-face)
	  (set-face-foreground 'font-lock-string-face "burlywood")
	  (copy-face 'italic 'font-lock-comment-face)
	  (set-face-foreground 'font-lock-comment-face "tomato")
	  (copy-face 'bold 'font-lock-function-name-facee)
	  (set-face-foreground 'font-lock-function-name-facee "violet")
	  (copy-face 'font-lock-function-name-facee 'font-lock-function-name-face nil)
	  (copy-face 'default 'font-lock-keyword-face)
	  (set-face-foreground 'font-lock-keyword-face "cyan")
	  (copy-face 'default 'font-lock-type-face)
	  (set-face-foreground 'font-lock-type-face "green3")
	  )
	 ;; BLACK back on terminal
	 ((string-equal name "black-term")
	  (add-to-list 'default-frame-alist '(cursor-color . "red"))
	  (add-to-list 'default-frame-alist '(foreground-color . "white"))
	  (add-to-list 'default-frame-alist '(background-color . "black"))

	  (setq font-lock-use-default-fonts nil)
	  (setq font-lock-use-default-colors nil)
	  (copy-face 'default 'font-lock-string-face)
	  (set-face-foreground 'font-lock-string-face "burlywood")
	  (copy-face 'italic 'font-lock-comment-face)
	  (set-face-foreground 'font-lock-comment-face "tomato")
	  (copy-face 'bold 'font-lock-function-name-facee)
	  (set-face-foreground 'font-lock-function-name-facee "violet")
	  (copy-face 'font-lock-function-name-facee 'font-lock-function-name-face nil)
	  (copy-face 'default 'font-lock-keyword-face)
	  (set-face-foreground 'font-lock-keyword-face "cyan")
	  (copy-face 'default 'font-lock-type-face)
	  (set-face-foreground 'font-lock-type-face "green3")
	  )
	 ;; BLACK back on terminal with green strings
	 ((string-equal name "black2-term")
	  (add-to-list 'default-frame-alist '(cursor-color . "red"))
	  (add-to-list 'default-frame-alist '(foreground-color . "white"))
	  (add-to-list 'default-frame-alist '(background-color . "black"))

	  (setq font-lock-use-default-fonts nil)
	  (setq font-lock-use-default-colors nil)
	  (copy-face 'default 'font-lock-string-face)
	  (set-face-foreground 'font-lock-string-face "green")
	  (copy-face 'italic 'font-lock-comment-face)
	  (set-face-foreground 'font-lock-comment-face "burlywood")
	  (copy-face 'bold 'font-lock-function-name-facee)
	  (set-face-foreground 'font-lock-function-name-facee "violet")
	  (copy-face 'font-lock-function-name-facee 'font-lock-function-name-face nil)
	  (copy-face 'default 'font-lock-keyword-face)
	  (set-face-foreground 'font-lock-keyword-face "cyan")
	  (copy-face 'default 'font-lock-type-face)
	  (set-face-foreground 'font-lock-type-face "magenta")
	  )

;; 	 (GNUEmacs
;; 	  (Xlaunch
;; 	   (make-face-bold 'bold-italic)
;; 	   ))

	 ))

(setq default-frame-alist
      '(
;;; Define here the default geometry or via ~/.Xdefaults.
	;;(width . 155) (height . 58)
	(width . 155) (height . 57)
	(top . 0)
	(left . 0)
	;(cursor-type . bar)
	(cursor-type . box)
;; 	(cursor-color . "red")
;; 	(foreground-color . "black")
;; 	(background-color . "honeydew")
	))

(Xlaunch 
 ;(set-my-faces "old")
 (set-my-faces "blue")
 ;(set-my-faces "black")
 )
(JustTerm
 ;(set-my-faces "black-term")
 (set-my-faces "blue-term")
 ;(set-my-faces "blue2-term")
 )

;; (add-to-list 'load-path "~/.emacs.d/color-theme" 'append)
;; (require 'color-theme)
;; (color-theme-initialize)

; Some new Colors for Font-lock. 
(setq font-lock-mode-maximum-decoration t)
(require 'font-lock)

;(set-my-faces)
;(add-hook 'before-make-frame-hook 'set-my-faces)


;(set-face-foreground 'bold-italic "Blue")
(GNUEmacs
(setq transient-mark-mode 't)
 )


;; A small exemples to show how Emacs is powerfull.
; Define function to match a parenthesis otherwise insert a %
(show-paren-mode 1)
(global-set-key "~" 'match-paren)
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; By default turn on colorization.
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode t)
  )

;; More information with the info file (Control-h i)




(put 'narrow-to-region 'disabled nil)

(put 'upcase-region 'disabled nil)

(put 'downcase-region 'disabled nil)


;(desktop-load-default) 
;(desktop-read) 

;; Auto save desktop
(add-hook 'auto-save-hook (lambda () (desktop-save-in-desktop-dir)))

;(setq load-path (cons "c:/emacs/lisp/w3" load-path))
;(require 'w3-auto)

;(setq load-path (cons "c:/emacs/site-lisp/xtla" load-path))
;(require 'xtla)


;My keys
(global-set-key "\377" (quote backward-kill-word))
(global-set-key (quote [end]) (quote end-of-buffer))
(global-set-key (quote [home]) (quote beginning-of-buffer))
;(global-set-key (quote []) (quote recenter 0))
(global-set-key (quote [f12]) (quote imenu))

; (autoload 'sgml-mode "psgml" "Major mode to edit SGML files." t)
; (autoload 'xml-mode "psgml" "Major mode to edit XML files." t)

;(server-start)
(load-library "gnuserv")
(gnuserv-start)
;(setq gnuserv-frame (selected-frame))

(put 'set-goal-column 'disabled nil)

(add-to-list 'same-window-buffer-names '("*Buffer List*"))

; Loading my macros
(load-library "~/.emacs_macros")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ebrowse-root-class-face ((t (:foreground "light blue" :weight bold))))
 '(egg-diff-add ((((class color) (background dark)) (:foreground "LightGreen"))))
 '(org-hide ((((background dark)) (:foreground "DarkSlateBlue")))))



(put 'dired-find-alternate-file 'disabled nil)

(scroll-bar-mode -1)
(put 'scroll-left 'disabled nil)
