;; -*- coding: utf-8 -*-

;(server-start)
;(load-library "gnuserv")
;(gnuserv-start)
;(setq gnuserv-frame (selected-frame))

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  ;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  ;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  ;; (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
  ;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  )

(require 'cl)
(cl-labels ((add-path (p)
                     (add-to-list 'load-path (concat user-emacs-directory p))))
  (add-path "lisp")
  ;; (add-path "lisp/git/egg")
  )

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
;;(load-library "haskell-mode/haskell-site-file")

;; Loading ghc-mod
;;(setq load-path (cons "c:/emacs/site-lisp/haskell-mode/ghc-mod" load-path))
;;(autoload 'ghc-init "ghc" nil t)
;;(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
;;(require 'intero)

;;(load-library "nhexl-mode")

;(load-library "plsql")
;(autoload 'plsql "plsql" "PL/SQL editing mode 1." t)
;(autoload 'plsql-mode "plsql" "PL/SQL editing mode 2." t)
;(autoload 'sql-mode "sql" "PL/SQL editing mode." t)
;(autoload 'pls-mode "pls-mode" "PL/SQL editing mode." t)
(require 'uniquify)

;; Erlang mode
;;(setq load-path (cons "c:/bin/erl5.7.4/lib/tools-2.6.5/emacs" load-path))
;;(setq erlang-root-dir "c:/bin/erl5.7.4")
;;(setq exec-path (cons "c:/bin/erl5.7.4/bin" exec-path))
;;(require 'erlang-start)


;;(setq load-path (cons "c:/emacs/site-lisp/git/egg" load-path))
;; (require 'egg)
;;(require 'egg-grep)
;;(load-library "egg-grep")
;;(setq load-path (cons "c:/emacs/site-lisp/git" load-path))
;;(require 'git)
;;(require 'git-blame)
;;(setq load-path (cons "c:/emacs/site-lisp/git/gitsum" load-path))
;;(require 'gitsum)

;(setq load-path (cons "c:/emacs/site-lisp/git/magit" load-path))
;(require 'magit)
;(setq load-path (cons "c:/emacs/site-lisp/git/egit" load-path))
;(require 'egit)


(require 'lsp)
(require 'lsp-haskell)
(require 'lsp-java)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Buffer-menu-buffer+size-width 54)
 '(Buffer-menu-mode-width 12)
 '(auto-compression-mode t nil (jka-compr))
 '(auto-revert-remote-files t)
 '(auto-revert-verbose nil)
 '(bookmark-bmenu-file-column 50)
 '(bookmark-save-flag 1)
 '(bookmark-use-annotations t)
 '(c-default-style
   '((java-mode . "java-idea")
     (awk-mode . "awk")
     (other . "gnu")))
 '(c-mode-hook '(set-tab-width-4))
 '(calendar-date-style 'iso)
 '(calendar-week-start-day 1)
 '(change-log-mode-hook '(turn-on-auto-fill))
 '(comment-padding 1)
 '(completion-ignored-extensions
   '("CVS/" ".o" "~" ".bin" ".bak" ".obj" ".map" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".dvi" ".fmt" ".tfm" ".pdf" ".class" ".fas" ".lib" ".x86f" ".sparcf" ".lo" ".la" ".toc" ".log" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".dcu"))
 '(confirm-kill-emacs 'y-or-n-p)
 '(cvs-allow-dir-commit t)
 '(cvs-display-full-path nil)
 '(cvs-force-dir-tag nil)
 '(dap-java-test-additional-args '("--disable-ansi-colors --disable-banner"))
 '(delete-selection-mode t)
 '(delphi-case-label-indent 2)
 '(delphi-compound-block-indent 1)
 '(delphi-indent-level 2)
 '(delphi-newline-always-indents t)
 '(delphi-search-path '("...." "C:/work/HEAD/RSS/RSS_CodeLib..."))
 '(desktop-load-locked-desktop 'ask)
 '(desktop-missing-file-warning nil)
 '(desktop-path '("." "~/.emacs.d/" "~"))
 '(desktop-restore-eager 10)
 '(desktop-save-mode t)
 '(diff-switches "-u")
 '(dired-dwim-target t)
 '(dired-garbage-files-regexp
   "\\.\\(?:log\\|orig\\|rej\\|toc\\|~...\\|dcu\\|keep\\(\\..+\\)\\)\\'")
 '(dired-recursive-copies 'always)
 '(dired-recursive-deletes 'always)
 '(ediff-cmp-program "diff")
 '(ediff-keep-variants nil)
 '(egg-log-graph-chars [9679 124 45 47 92])
 '(egg-mode-key-prefix "C-x g")
 '(egg-patch-command "c:\\bin\\git\\bin\\patch.exe")
 '(egg-quit-window-actions
   '((egg-status-buffer-mode kill restore-windows)
     (egg-commit-buffer-mode kill restore-windows)))
 '(elm-oracle-command "")
 '(exec-path
   '("~/opt/maven/bin" "/home/maax/.cargo/bin" "/home/maax/bin/sqlcl/bin" "/home/maax/.ghcup/bin" "/home/maax/.local/bin" "/home/maax/bin" "/home/maax/.nix-profile/bin" "/nix/var/nix/profiles/default/bin" "/usr/local/sbin" "/usr/local/bin" "/usr/sbin" "/usr/bin" "/sbin" "/bin" "/usr/games" "/usr/local/games" "/snap/bin" "/usr/lib/emacs/26.3/x86_64-linux-gnu"))
 '(fill-column 100)
 '(frame-background-mode 'dark)
 '(global-semantic-highlight-edits-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-show-unmatched-syntax-mode t)
 '(global-semantic-stickyfunc-mode t)
 '(gnus-nntpserver-file "c:/emacs/etc/nntpserver")
 '(gnus-read-active-file nil)
 '(gnus-secondary-select-methods nil)
 '(gnus-select-method '(nntp "news.tomica.ru"))
 '(haskell-check-command "ghc -fno-code")
 '(haskell-doc-chop-off-context nil)
 '(haskell-doc-show-global-types t)
 '(haskell-doc-show-reserved nil)
 '(haskell-doc-show-strategy nil)
 '(haskell-indent-after-keywords
   '(("where" 2 0)
     ("of" 2)
     ("do" 2)
     ("mdo" 2)
     ("rec" 2)
     ("in" 2 0)
     ("{" 2)
     ("if" 2)
     "then" "else" "let"))
 '(haskell-indent-look-past-empty-line nil)
 '(haskell-indent-offset 2)
 '(haskell-mode-hook '(turn-on-haskell-indent turn-on-font-lock lsp-deferred))
 '(imenu-auto-rescan t)
 '(imenu-max-item-length 100)
 '(indent-tabs-mode nil)
 '(inferior-haskell-wait-and-jump t)
 '(inhibit-default-init t)
 '(inhibit-startup-screen t)
 '(initial-frame-alist '((vertical-scroll-bars) (fullscreen . fullboth)))
 '(ispell-dictionary "ru_RU,en_US,en_GB")
 '(ispell-program-name "hunspell")
 '(java-mode-hook '(lsp-deferred yas-minor-mode-on))
 '(js-indent-level 2)
 '(line-move-visual nil)
 '(line-spacing 0.1)
 '(ls-lisp-dirs-first t)
 '(ls-lisp-ignore-case t)
 '(ls-lisp-support-shell-wildcards nil)
 '(lsp-file-watch-threshold 4000)
 '(lsp-java-completion-favorite-static-members
   ["org.junit.Assert.*" "org.junit.Assume.*" "org.junit.jupiter.api.Assertions.*" "org.junit.jupiter.api.Assumptions.*" "org.junit.jupiter.api.DynamicContainer.*" "org.junit.jupiter.api.DynamicTest.*" "org.mockito.Mockito.*" "org.mockito.ArgumentMatchers.*" "org.mockito.Answers.*" "java.util.Objects.*"])
 '(lsp-java-completion-import-order ["" "javax" "java" "#"])
 '(lsp-java-completion-overwrite nil)
 '(lsp-java-eclipse-download-sources t)
 '(lsp-java-format-enabled nil)
 '(lsp-java-format-on-type-enabled nil)
 '(lsp-java-implementations-code-lens-enabled t)
 '(lsp-java-jdt-download-url
   "https://www.eclipse.org/downloads/download.php?file=/jdtls/snapshots/jdt-language-server-latest.tar.gz")
 '(lsp-java-maven-download-sources t)
 '(lsp-java-max-concurrent-builds 5)
 '(lsp-java-project-import-on-first-time-startup "automatic")
 '(lsp-java-vmargs
   '("-XX:+UseParallelGC" "-XX:GCTimeRatio=4" "-XX:AdaptiveSizePolicyWeight=90" "-Dsun.zip.disableMemoryMapping=true" "-Xmx8G" "-Xms512m"))
 '(lsp-keep-workspace-alive nil)
 '(lsp-keymap-prefix "C-c l")
 '(lsp-references-exclude-definition t)
 '(lsp-signature-doc-lines 30)
 '(lsp-ui-doc-delay 1)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-max-height 30)
 '(lsp-ui-doc-show-with-cursor nil)
 '(lsp-xref-force-references t)
 '(mail-user-agent 'message-user-agent)
 '(menu-bar-mode nil)
 '(message-send-mail-function 'smtpmail-send-it)
 '(mode-require-final-newline nil)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount '(4 ((shift) . 1) ((control))))
 '(next-line-add-newlines nil)
 '(nxml-attribute-indent 8)
 '(nxml-child-indent 4)
 '(nxml-heading-element-name-regexp ".*")
 '(nxml-mode-hook '(set-tab-width-2) t)
 '(nxml-outline-child-indent 4)
 '(opascal-case-label-indent 2)
 '(opascal-compound-block-indent 1)
 '(opascal-indent-level 2)
 '(opascal-search-path '("...." "C:/work/HEAD/RSS/RSS_CodeLib..."))
 '(org-agenda-files
   '("~/wrk/ps/bce/rss_bce/my/dev/my/rss_bce.org" "~/Dropbox/org/"))
 '(org-catch-invisible-edits 'error)
 '(org-clock-idle-time 10)
 '(org-drawers '("PROPERTIES" "CLOCK" "LOGBOOK" "HIDDEN"))
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-export-backends '(ascii html md))
 '(org-export-with-sub-superscripts nil)
 '(org-fold-catch-invisible-edits 'error)
 '(org-indirect-buffer-display 'current-window)
 '(org-pandoc-format-extensions '(markdown_github+pipe_tables))
 '(org-pretty-entities t)
 '(org-refile-targets '((org-agenda-files :maxlevel . 5)))
 '(org-startup-indented t)
 '(org-time-stamp-custom-formats '("<%d/%m/%y %a>" . "<%d/%m/%y %a %H:%M>"))
 '(org-use-sub-superscripts '{})
 '(package-selected-packages
   '(ivy-hydra jenkinsfile-mode flycheck-elm dash adoc-mode yasnippet f haskell-mode ht lsp-docker magit-section markdown-mode nix-modeline org-category-capture pfuture reformatter request s visual-fill-column wgrep xterm-color yaml counsel posframe swiper transient lsp-metals scala-mode vlf vc-darcs lsp-java flycheck projectile treemacs typo groovy-mode treemacs-projectile lsp-ivy dap-mode which-key ivy zoom-window eterm-256color vterm typescript-mode google-c-style ggtags projectile-ripgrep rg ag gnuplot gnuplot-mode sqlformat sql-indent transpose-frame yaml-imenu yaml-mode python-mode nix-mode lsp-haskell lsp-treemacs lsp-ui lsp-mode company rust-mode elm-test-runner seq flycheck-ghcmod darcsum rnc-mode telega sqlplus plsql ox-gfm opascal nhexl-mode markdown-mode+ lua-mode kotlin-mode git-blame csv-mode csv asn1-mode))
 '(pascal-case-indent 3)
 '(pascal-toggle-completions t)
 '(perl-tab-to-comment t)
 '(plsql-indent 2)
 '(projectile-darcs-command "darcs show files --quiet -0 . ")
 '(projectile-generic-command "fdfind . -0 --type f --color=never")
 '(projectile-git-use-fd nil)
 '(projectile-mode t nil (projectile))
 '(projectile-per-project-compilation-buffer t)
 '(projectile-project-root-files-bottom-up
   '(".projectile" "_darcs" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" ".pijul"))
 '(projectile-switch-project-action 'projectile-commander)
 '(py-imenu-show-method-args-p t)
 '(py-pdbtrack-do-tracking-p t)
 '(recentf-max-menu-items 25)
 '(recentf-max-saved-items 500)
 '(recentf-mode t nil (recentf))
 '(rng-schema-locating-files
   '("schemas.xml" "~/.emacs.d/nxml/schemas.xml" "/usr/share/emacs/26.3/etc/schema/schemas.xml"))
 '(safe-local-variable-values
   '((projectile-project-test-cmd . "./build-all.develop")
     (projectile-project-install-cmd . "./build-all")
     (projectile-project-compilation-cmd . "./build-all.develop")
     (projectile-project-test-cmd . "build-all.develop")
     (projectile-project-install-cmd . "build-all")
     (projectile-project-compilation-cmd . "build-all.develop")
     (projectile-project-compilation-dir . "User_Part/Source")
     (projectile-project-name . "RSS_ASN")
     (projectile-project-compilation-cmd . "mvn -B clean package -DskipTests")
     (projectile-project-name . "RSS_BCE-db-dev")
     (lsp-auto-guess-root . t)
     (lsp-guess-root-without-session . t)
     (lsp-auto-guess-root)
     (projectile-project-test-cmd . "mvn -B test")
     (projectile-project-install-cmd . "mvn -B clean install")
     (projectile-project-compilation-cmd . "mvn -B clean install -DskipTests")
     (projectile-project-compilation-dir . "dev/build/java/rss-bce-all-in-one-pom")
     (projectile-project-name . "RSS_BCE")))
 '(same-window-buffer-names '("*Buffer List*" "*shell*"))
 '(scroll-bar-mode nil)
 '(semantic-default-submodes
   '(global-semantic-highlight-func-mode global-semantic-decoration-mode global-semantic-stickyfunc-mode global-semantic-idle-completions-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode))
 '(server-mode t)
 '(server-window 'pop-to-buffer)
 '(sgml-basic-offset 3)
 '(sgml-mode-hook '(set-tab-width-3))
 '(sgml-xml-mode t)
 '(show-paren-mode t)
 '(show-paren-style 'mixed)
 '(smtpmail-default-smtp-server "mail.billing.ru")
 '(smtpmail-smtp-server "mail.billing.ru")
 '(speedbar-frame-parameters
   '((minibuffer)
     (width . 60)
     (border-width . 0)
     (menu-bar-lines . 0)
     (tool-bar-lines . 0)
     (unsplittable . t)))
 '(speedbar-supported-extension-expressions
   '(".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" "[Mm]akefile\\(\\.in\\)?" ".sql"))
 '(speedbar-visiting-tag-hook '(speedbar-highlight-one-tag-line speedbar-recenter-to-top))
 '(sql-connection-alist
   '(("docker-rss_bce_3"
      (sql-product 'postgres)
      (sql-user "rss_bce")
      (sql-password "rss_bce")
      (sql-server "localhost")
      (sql-database "rss_bce_3")
      (sql-port 15432))))
 '(sql-interactive-mode-hook '((lambda nil (setq truncate-lines t))))
 '(sql-mode-hook '(sqlind-minor-mode))
 '(sql-mysql-program "mysqlc")
 '(sql-oracle-program "sqlplus")
 '(sql-port 15432)
 '(sql-postgres-login-params
   '((user :default "rss_bce")
     password
     (server :default "localhost")
     (database :default "rss_bce")))
 '(sql-product 'postgres)
 '(sqlplus-html-output-encoding "cp1251")
 '(sqlplus-initial-strings
   '("set sqlnumber off" "set tab off" "set linesize 4000" "set echo off" "set newpage 1" "set space 1" "set feedback 6" "set heading on" "set trimspool off" "set wrap on" "set timing on" "set feedback on" "set sqlblanklines on"))
 '(sqlplus-select-result-max-col-width 100)
 '(telega-chat-title-emoji-use-images t)
 '(telega-chat-use-markdown-version 2)
 '(tool-bar-mode nil)
 '(track-eol t)
 '(uniquify-buffer-name-style 'forward nil (uniquify))
 '(uniquify-trailing-separator-p t)
 '(url-be-asynchronous t)
 '(url-news-server nil)
 '(url-privacy-level '(email cookie))
 '(user-full-name "Maksim Golubev")
 '(user-mail-address "maksim.golubev72@gmail.com")
 '(vc-darcs-program-name "darcs")
 '(vc-handled-backends '(Darcs RCS CVS SVN SCCS SRC Bzr Git Hg))
 '(visible-bell t)
 '(w3-default-homepage "http://mail:10000")
 '(warning-minimum-level :error)
 '(warning-suppress-log-types '(((undo discard-info))))
 '(wdired-always-move-to-filename-beginning 'sometimes)
 '(which-func-modes
   '(emacs-lisp-mode c-mode c++-mode perl-mode cperl-mode makefile-mode sh-mode fortran-mode python-mode plsql-mode))
 '(which-key-mode t)
 '(woman-fill-column 120)
 '(yas-global-mode t)
 '(yas-snippet-dirs
   '("/home/maax/Dropbox/emacs/yasnippets" "/home/maax/.emacs.d/snippets" "/home/maax/.emacs.d/elpa/elm-yasnippets-20160401.524/snippets"))
 '(zoom-window-mode-line-color "LightGreen"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "DarkSlateBlue" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 130 :width normal :foundry "DAMA" :family "Ubuntu Mono"))))
 '(ebrowse-root-class-face ((t (:foreground "light blue" :weight bold))))
 '(egg-diff-add ((((class color) (background dark)) (:foreground "LightGreen"))))
 '(org-hide ((((background dark)) (:foreground "DarkSlateBlue")))))

;; Включение haskell-server ???
;;(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(setq default-indicate-empty-lines 1)

;; Some macros.
(defmacro GNUEmacs (&rest x)
  (list 'if (string-match "GNU Emacs" (version)) (cons 'progn x)))
(defmacro XEmacs (&rest x)
  (list 'if (string-match "XEmacs" (version)) (cons 'progn x)))
(defmacro Xlaunch (&rest x)
  (list 'if (not (eq window-system nil))(cons 'progn x)))
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

;;(autoload 'delphi-mode "delphi")
(setq auto-mode-alist
      (cons '("\\.\\(pas\\|dpr\\|dpk\\|inc\\)$" . delphi-mode) 
	    auto-mode-alist))
;(load-library "~/.emacs-delphi-mode-my")

;(setq auto-mode-alist
;      (cons '("\\.\\(xml\\|xsl\\|xsd\\|xslt\\|gpx\\)$" . sgml-mode) 
;	    auto-mode-alist))

;; PL/SQL mode
;; (when (require 'plsql nil t)
;;   (setq auto-mode-alist
;;         (cons '("\\.\\(sql\\)\\'$" . plsql-mode) 
;;               auto-mode-alist)))

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
;; (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)
;; (global-set-key "\C-cb" 'org-iswitchb)
;; (global-set-key "\C-ci" 'org-indent-mode)

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
;(set-language-environment "Cyrillic-KOI8")
(set-language-environment "UTF-8")
(setq default-input-method "russian-computer")
;(setq default-input-method "cyrillic-jcuken")
;(setq unibyte-display-via-language-environment t)
;(set-terminal-coding-system 'cyrillic-alternativnyj)
;(codepage-setup '1251)
(prefer-coding-system 'koi8-r)
(prefer-coding-system 'cyrillic-alternativnyj)
(prefer-coding-system 'cp1251-dos)
(prefer-coding-system 'utf-8)
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
	  (add-to-list 'window-system-default-frame-alist '(nil . ((background-color . "black"))))
	  (add-to-list 'window-system-default-frame-alist '(pc . ((background-color . "black"))))

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
	  (add-to-list 'default-frame-alist '(background-color . "navy"))
	  (add-to-list 'window-system-default-frame-alist '(x . ((background-color . "DarkSlateBlue"))))
	  (add-to-list 'window-system-default-frame-alist '(w32 . ((background-color . "DarkSlateBlue"))))

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
          (set-face-attribute 'region nil :background "black" :foreground "white")
	  )
	 ;; BLUE back on terminal with green strings
	 ((string-equal name "blue2-term")
	  (add-to-list 'default-frame-alist '(cursor-color . "red"))
	  (add-to-list 'default-frame-alist '(foreground-color . "white"))
	  (add-to-list 'default-frame-alist '(background-color . "navy"))
	  (add-to-list 'window-system-default-frame-alist '(x . ((background-color . "DarkSlateBlue"))))
	  (add-to-list 'window-system-default-frame-alist '(w32 . ((background-color . "DarkSlateBlue"))))

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
          (set-face-attribute 'region nil :background "black" :foreground "white")
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
	  ;; (set-face-foreground 'font-lock-string-face "green")
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
	;; (width . 190) (height . 63)
	;; (top . 0)
	;; (left . 130)
        (fullscreen . maximized)
	;(cursor-type . bar)
	(cursor-type . box)
;; 	(cursor-color . "red")
;; 	(foreground-color . "black")
;; 	(background-color . "honeydew")
	))

(set-my-faces "blue")
;; (Xlaunch 
;;  ;(set-my-faces "old")
;;  (set-my-faces "blue")
;;  ;(set-my-faces "black")
;;  )
;; (JustTerm
;;  ;; (set-my-faces "black-term")
;;  ;; (set-my-faces "blue-term")
;;  (set-my-faces "blue2-term")
;;  )

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


(put 'set-goal-column 'disabled nil)

(put 'dired-find-alternate-file 'disabled nil)

(scroll-bar-mode -1)
(put 'scroll-left 'disabled nil)


; Loading my macros
(load-library "~/.emacs_macros")


;(require 'plsql)
;;(require 'sqlplus)
(add-to-list 'auto-mode-alist '("\\.sqp\\'" . sqlplus-mode))

(require 'hamlet-mode)
;;(require 'mmm-vars)
;;(require 'mmm-auto)
;; (setq mmm-global-mode 'maybe)
;; (mmm-add-classes
;;  '((hamlet-quasiquote
;;     :submode hamlet-mode
;;     :delimiter-mode nil
;;     :front "\\[[xsw]?hamlet|"
;;     :back "|\\]")))
;; (mmm-add-mode-ext-class 'haskell-mode nil 'hamlet-quasiquote)

;; (mmm-add-classes
;;  '((sql-quasiquote
;;     :submode sql-mode
;;     :delimiter-mode nil
;;     :front "\\[sql|"
;;     :back "|\\]")))
;; (mmm-add-mode-ext-class 'haskell-mode nil 'sql-quasiquote)

;; (mmm-add-classes
;;  '((julius-quasiquote
;;     :submode js-mode
;;     :delimiter-mode nil
;;     :front "\\[julius|"
;;     :back "|\\]")))
;; (mmm-add-mode-ext-class 'haskell-mode nil 'julius-quasiquote)

;; (mmm-add-classes
;;  '((lucius-quasiquote
;;     :submode css-mode
;;     :delimiter-mode nil
;;     :front "\\[lucius|"
;;     :back "|\\]")))
;; (mmm-add-mode-ext-class 'haskell-mode nil 'lucius-quasiquote)

;; (require 'package)
;; (add-to-list 'package-archives
;;   '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (when (< emacs-major-version 24)
;;   (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;; (package-initialize)

;;
;; Setup for ediff.
;;

;; (require 'ediff)

;; (defvar ediff-after-quit-hooks nil
;;   "* Hooks to run after ediff or emerge is quit.")

;; (defadvice ediff-quit (after edit-after-quit-hooks activate)
;;   (run-hooks 'ediff-after-quit-hooks))

;; (setq git-mergetool-emacsclient-ediff-active nil)

;; (defun local-ediff-frame-maximize ()
;;   (let* ((bounds (display-usable-bounds))
;;      (x (nth 0 bounds))
;;      (y (nth 1 bounds))
;;      (width (/ (nth 2 bounds) (frame-char-width)))
;;      (height (/ (nth 3 bounds) (frame-char-height))))
;;     (set-frame-width (selected-frame) width)
;;     (set-frame-height (selected-frame) height)
;;     (set-frame-position (selected-frame) x y)))

;; (setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; (setq ediff-split-window-function 'split-window-horizontally)

;; (defun local-ediff-before-setup-hook ()
;;   (setq local-ediff-saved-frame-configuration (current-frame-configuration))
;;   (setq local-ediff-saved-window-configuration (current-window-configuration))
;;   (local-ediff-frame-maximize)
;;   (if git-mergetool-emacsclient-ediff-active
;;       (raise-frame)))

;; (defun local-ediff-quit-hook ()
;;   (set-frame-configuration local-ediff-saved-frame-configuration)
;;   (set-window-configuration local-ediff-saved-window-configuration))

;; (defun local-ediff-suspend-hook ()
;;   (set-frame-configuration local-ediff-saved-frame-configuration)
;;   (set-window-configuration local-ediff-saved-window-configuration))

;; (add-hook 'ediff-before-setup-hook 'local-ediff-before-setup-hook)
;; (add-hook 'ediff-quit-hook 'local-ediff-quit-hook 'append)
;; (add-hook 'ediff-suspend-hook 'local-ediff-suspend-hook 'append)

;; ;; Useful for ediff merge from emacsclient.
;; (defun git-mergetool-emacsclient-ediff (local remote base merged)
;;   (setq git-mergetool-emacsclient-ediff-active t)
;;   (if (file-readable-p base)
;;       (ediff-merge-files-with-ancestor local remote base nil merged)
;;     (ediff-merge-files local remote nil merged))
;;   (recursive-edit))

;; (defun git-mergetool-emacsclient-ediff-after-quit-hook ()
;;   (exit-recursive-edit))

;; (add-hook 'ediff-after-quit-hooks 'git-mergetool-emacsclient-ediff-after-quit-hook 'append)

;;; Переместить текущий буфер в отдельный фрэйм.
(defun delete-window-and-open-in-new-frame ()
  (interactive)
  (let (buffer (current-buffer))
    (delete-window)
    (switch-to-buffer-other-frame buffer)))

(global-set-key (kbd "C-x 5 5") 'delete-window-and-open-in-new-frame)
(global-set-key (kbd "C-c $") 'toggle-truncate-lines)
(global-set-key (kbd "C-x /") 'transpose-frame)
(global-set-key (kbd "C-M->") 'end-of-buffer-other-window)
(global-set-key (kbd "C-M-<") 'beginning-of-buffer-other-window)

(setq sqlformat-command 'pgformatter)
(with-eval-after-load "sql"
  (define-key sql-mode-map (kbd "C-c C-f") 'sqlformat)
  (sql-set-product-feature 'postgres :prompt-regexp "^[[:alnum:]_@/]*=[*!]?[#>] ")
  (sql-set-product-feature 'postgres :prompt-cont-regexp "^[[:alnum:]_@/]*-[*!]?[#>] ")
  ;; (sql-set-product-feature 'postgres :prompt-length 11)
)

;; (require 'projectile)
(with-eval-after-load "projectile"
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p h") 'projectile-project-info))

(with-eval-after-load "ispell"
  (ispell-set-spellchecker-params)
  (ispell-hunspell-add-multi-dic "ru_RU,en_US,en_GB")
  )

(require 'lsp-mode)
(with-eval-after-load 'lsp-mode
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  (define-key lsp-mode-map [remap xref-find-definitions] #'lsp-find-definition)
  (define-key lsp-mode-map [remap xref-find-references] #'lsp-find-references)
  (define-key lsp-mode-map (kbd "<S-f6>") #'lsp-rename)
  (define-key lsp-mode-map (kbd "C-c l e") #'list-flycheck-errors)
  (define-key lsp-mode-map (kbd "C-c l f") #'lsp-ivy-workspace-symbol)
  )

(require 'lsp-ui)
(with-eval-after-load 'lsp-ui
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-find-definition)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-find-references)
  (define-key lsp-ui-mode-map (kbd "C-?") #'lsp-ui-peek-find-references)
  (define-key lsp-ui-mode-map (kbd "C->") #'lsp-ui-find-next-reference)
  (define-key lsp-ui-mode-map (kbd "C-<") #'lsp-ui-find-prev-reference)
  (define-key lsp-ui-mode-map (kbd "C-<down>") #'lsp-ui-find-next-reference)
  (define-key lsp-ui-mode-map (kbd "C-<up>") #'lsp-ui-find-prev-reference)
  (define-key lsp-ui-mode-map (kbd "M-<down>") #'lsp-ui-find-next-reference)
  (define-key lsp-ui-mode-map (kbd "M-<up>") #'lsp-ui-find-prev-reference)
  )

(require 'lsp-java)
(with-eval-after-load 'lsp-java
  (define-key lsp-mode-map (kbd "C-c l j I") #'lsp-java-organize-imports)
  (define-key lsp-mode-map (kbd "C-c l j i") #'lsp-java-add-import)
  (define-key lsp-mode-map (kbd "C-c l j s") #'lsp-java-convert-to-static-import)
  (define-key lsp-mode-map (kbd "C-c l j s") #'lsp-java-convert-to-static-import)
  (define-key lsp-mode-map (kbd "C-c l j h") #'lsp-java-type-hierarchy)
  )


(require 'zoom-window)
(with-eval-after-load 'zoom-window
  (global-set-key (kbd "C-x C-z") 'zoom-window-zoom))

(with-eval-after-load 'org
  (setq org-tags-exclude-from-inheritance (quote ("crypt")))
  )

(require 'org-crypt)
(with-eval-after-load 'org-crypt
  (org-crypt-use-before-save-magic)
  )

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c o") 'org-store-link)
(global-set-key (kbd "C-c b") 'org-switchb)

(global-set-key (kbd "C-x C-S-f") 'recentf-open-files)

(require 'dap-java)
(with-eval-after-load 'dap-mode
  (define-key dap-mode-map (kbd "C-c l j t m") #'dap-java-run-test-method)
  (define-key dap-mode-map (kbd "C-c l j t c") #'dap-java-run-test-class)
  (define-key dap-mode-map (kbd "C-c l j t l") #'dap-java-run-last-test)
  (define-key dap-mode-map (kbd "C-c l j t d") #'dap-java-debug-test-method)
  (define-key dap-mode-map (kbd "C-S-<up>") #'lsp-java-open-super-implementation)
  (define-key dap-mode-map (kbd "<f7>") #'dap-step-in)
  (define-key dap-mode-map (kbd "<f8>") #'dap-next)
  (define-key dap-mode-map (kbd "S-<f8>") #'dap-step-out)
  (define-key dap-mode-map (kbd "<f9>") #'dap-continue)
  (define-key dap-mode-map (kbd "<f5>") #'dap-breakpoint-toggle)
  (define-key dap-mode-map (kbd "C-M-?") #'lsp-ui-doc-mode)
  )

(with-eval-after-load 'treemacs
  (global-set-key (kbd "C-x t") 'treemacs)
  )

(global-set-key (kbd "C-c r") 'revert-buffer)

;; hide/show tag content in nxml-mode
(require 'hideshow)
(require 'sgml-mode)
(require 'nxml-mode)
(add-to-list 'hs-special-modes-alist
             '(nxml-mode
               "<!--\\|<\\('[^']*'\\|\"[^\"]*\"\\|[^/>]\\)*>"
               "-->\\|</[^/>]*[^/]>"

               "<!--"
               sgml-skip-tag-forward
               nil))
(with-eval-after-load 'treemacs
  (add-hook 'nxml-mode-hook 'hs-minor-mode)
  (define-key nxml-mode-map (kbd "C-c h") 'hs-toggle-hiding)
  )

;; Display ansi colors on region
(defun display-ansi-colors ()
  (interactive)
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))

(push '(fullscreen . fullboth) default-frame-alist)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; cc-mode java style like in IntellyJ IDEA
;;
(require 'cc-mode)

(defun message-point (&optional header)
  (if header
      (message (concat header ": " (number-to-string (point))))
      (message (number-to-string (point)))))

(defun c-idea-extract-last-syntax-part (full-syntax)
  (car (last full-syntax)))

(defun previous-non-empty-line ()
  (previous-line)
  (beginning-of-line)
  (while (and (looking-at "\\=[ \t]*$")
              (> (point) 1))
    (previous-line)
    (back-to-indentation)))

(defun next-non-empty-line ()
  (next-line)
  (beginning-of-line)
  (while (and (looking-at "\\=[ \t]*$")
              (> (point) 1))
    (next-line)
    (back-to-indentation)))

(defun c-jump-comments-up ()
  (while (and (> (point) 1)
              (equal 'comment-intro (car (c-idea-extract-last-syntax-part (c-guess-basic-syntax)))))
    (previous-non-empty-line)))

(defun c-jump-parenthesis-up ()
  (move-end-of-line 1)
  (skip-chars-backward " \t")
  (when (looking-back ")\\=")
    (backward-list))
  (back-to-indentation))

(defun c-idea-prev-other-line-sytax (syntax)
  (save-excursion
    (while (and (or t (> (point) 1))
               (equal syntax (c-idea-extract-last-syntax-part (c-guess-basic-syntax))))
      (previous-non-empty-line)
      (c-jump-comments-up))
    (c-guess-basic-syntax)))

(defun c-idea-lineup-cont (langelem)
  (save-excursion
    (back-to-indentation)
    (let ((pattern "\\=\\(\\.\\|\\?\\|:\\|[|][|]\\|&&\\)"))
      (when (looking-at pattern)
        (let ((anchor (buffer-substring-no-properties (match-beginning 0)
                                                      (match-end 0))))
          (previous-non-empty-line)
          (back-to-indentation)
          (move-end-of-line 1)
          (c-jump-comments-up)
          (c-jump-parenthesis-up)
          ;; (skip-chars-backward " \t")
          (back-to-indentation)
          (if (and (looking-at pattern)
                   (let ((prev-anchor (buffer-substring-no-properties (match-beginning 0)
                                                                      (match-end 0))))
                     (or (string= anchor prev-anchor)
                         (and (string= "?" prev-anchor)
                              (string= ":" anchor))
                         (and (or (string= "||" prev-anchor) (string= "&&" prev-anchor))
                              (or (string= "?" anchor) (string= ":" anchor)))
                     )))
              (progn
                (vector (current-column)))
            (progn
              ;; (goto-char (c-langelem-pos (car c-syntactic-context)))
              ;; (message (number-to-string (point)))
              (vector
               (+ (current-column)
                  (* 2 c-basic-offset))))))))))
    
(defun c-idea-lineup-cont2 (langelem) 
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (move-end-of-line 1)
    (skip-chars-backward " \t")
    (when (looking-back "=\\=")
      (goto-char (c-langelem-pos langelem))
      (vector
       (+ (current-column) (* 2 c-basic-offset))))))

(defun c-idea-lineup-cont3 (langelem) 
  (save-excursion
    (back-to-indentation)
    (when (looking-at "\\=\\.")
      (c-jump-comments-up)
      (c-jump-parenthesis-up)
      (previous-non-empty-line)
      (move-end-of-line 1)
      (skip-chars-backward " \t")
      (when (looking-back ")\\=")
        (goto-char (c-langelem-pos langelem))
        (move-end-of-line 1)
        (skip-chars-backward " \t")
        (when (looking-back "=\\=")
          (goto-char (c-langelem-pos langelem))
          (vector (+ (current-column) (* 4 c-basic-offset))))))))

(defun c-idea-lineup-cont4 (langelem) 
  (save-excursion
    (back-to-indentation)
    (when (looking-at "\\=\\.")
      (c-jump-comments-up)
      (c-jump-parenthesis-up)
      (previous-non-empty-line)
      (move-end-of-line 1)
      (skip-chars-backward " \t")
      (when (looking-back ")\\=")
        (backward-list)
        (back-to-indentation)
        (when (= (point) (c-langelem-pos langelem))
          (c-idea-double-offset langelem))))))

(defun c-idea-lineup-cont5 (langelem)
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (when (looking-at "\\=\\breturn\\b")
      (vector
       (+ (current-column) (* 2 c-basic-offset))))))

(defun c-idea-lineup-cont6 (langelem)
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (when (search-forward "(" (line-end-position) t)
      (backward-char))
    (move-end-of-line 1)
    (when (looking-back "\\.\\=")
      (back-to-indentation)
      (vector (+ (current-column) (* 2 c-basic-offset))))))

(defun c-idea-lineup-cont7 (langelem)
  (save-excursion
    (previous-non-empty-line)
    (end-of-line)
    (when (looking-back "->[ \t]*\\=")
      (goto-char (c-langelem-pos langelem))
      (c-idea-double-offset langelem))))

(defun c-idea-arglist-cont-1 (langelem)
  (save-excursion
    (previous-non-empty-line)
    (beginning-of-line)
    (when (looking-at "\\=[ \t]*\\([?:]\\)[ \t]*$")
      (goto-char (match-beginning 1))
      (vector (current-column)))))

(defun c-idea-arglist-cont-2 (langelem)
  (save-excursion
    (back-to-indentation)
    (when (looking-at "\\=:")
      (goto-char (c-langelem-pos langelem))
      (vector (+ (current-column) (* 2 c-basic-offset))))))

(defun c-idea-arg-list-cont-nonempty (langelem)
  (save-excursion
    (let* ((prev-syntax (c-idea-prev-other-line-sytax (c-idea-extract-last-syntax-part c-syntactic-context)))
           (prev-syntax-sym (c-langelem-sym (c-idea-extract-last-syntax-part prev-syntax))))
      (when (not (or (equal 'topmost-intro prev-syntax-sym)
                     (equal 'annotation-top-cont prev-syntax-sym)))
        (let ((pos (if (c-langelem-2nd-pos langelem)
                       (c-langelem-2nd-pos langelem)
                     (c-langelem-pos langelem))))
          (goto-char pos)
          (move-end-of-line 1)
          (skip-chars-backward " \t")
          (c-idea-double-offset langelem))))))

(defun c-idea-double-offset (langelem)
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (vector
     (+ (current-column) (* 2 c-basic-offset)))))

(defun c-idea-single-offset (langelem)
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (vector
     (+ (current-column) c-basic-offset))))

(defun c-idea-zero-offset (langelem)
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (vector (current-column))))

(defun c-idea-block-close-1 (langelem)
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (search-forward-regexp "\\=[?:->=|&%!, \t]+" (point-at-eol) t)
    (vector (current-column))))

(defun c-idea-block-close-2 (langelem)
  (save-excursion
    (back-to-indentation)
    (when (eq ?} (char-after))
      (forward-char)
      (backward-list)
      (when (eq ?{ (char-after))
        (back-to-indentation)
        (search-forward-regexp"\\=[?:->=|&%!, \t]*" (point-at-eol) t)
        (vector (current-column))))))
        
(defun c-idea-comment-intro-after-comment-intro (langelem)
  (save-excursion
    (when (eq 'comment-intro (c-langelem-sym langelem))
      (previous-line)
      (when (eq 'comment-intro (c-langelem-sym (c-idea-extract-last-syntax-part (c-guess-basic-syntax))))
        (back-to-indentation)
        (vector (current-column))))))

(defun c-idea-comment-intro-1 (langelem)
  (save-excursion
    (when (eq 'comment-intro (c-langelem-sym langelem))
      (next-non-empty-line)
      (back-to-indentation)
      (when (equal 'statement-cont (car (c-idea-extract-last-syntax-part (c-guess-basic-syntax))))
        (vector (current-column))))))
    
(defun c-idea-comment-intro (langelem)
  (when (eq 'comment-intro (c-langelem-sym langelem))
    (let ((parent-langelem (nth (- (length c-syntactic-context) 2) c-syntactic-context)))
      (when parent-langelem
        (save-excursion
          (previous-non-empty-line)
          ;; (goto-char (c-langelem-pos parent-langelem))
          (move-end-of-line 1)
          (skip-chars-backward " \t")
          (when (not (looking-back "[;{},]\\="))
            (goto-char (c-langelem-pos parent-langelem))
            (vector (+ (current-column) (* 2 c-basic-offset)))))))))

(defun c-idea-arglist-close (langelem)
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (vector (current-column))))


(defun c-idea-intro-shifted (langelem)
  (save-excursion
    (goto-char (c-langelem-pos langelem))
    (let ((prev-syntax-sym (car (c-idea-extract-last-syntax-part (c-guess-basic-syntax)))))
      (when (or (equal 'statement-cont prev-syntax-sym)
                (equal 'arglist-cont-nonempty prev-syntax-sym))
        (vector (+ (current-column) (* 4 c-basic-offset)))))))

(defun c-idea-statement-block-intro (langelem)
  (save-excursion
    (search-backward-regexp "[{]" (c-langelem-pos langelem)  t)
    (while (eq 'comment-intro (car (c-idea-extract-last-syntax-part (c-guess-basic-syntax))))
      (c-jump-comments-up)
      (move-end-of-line 1)
      (search-backward-regexp "[{]" (c-langelem-pos langelem)  t))
    (when (eq ?{ (char-after))
      (back-to-indentation)
      (search-forward-regexp"\\=[?:->=|&%!, \t]*" (point-at-eol) t)
      (vector (+ (current-column) c-basic-offset)))))
  

(defun register-java-idea-style ()
  ;; remove old if exists
  (let ((old (assoc "java-idea" c-style-alist)))
    (when old
      (setq c-style-alist (delete old c-style-alist))))
  ;; add new
  (add-to-list 'c-style-alist
               '("java-idea"
                 (c-basic-offset . 4)
                 (c-offsets-alist . ((arglist-cont . (c-idea-arglist-cont-1
                                                      c-idea-arglist-cont-2
                                                      c-idea-lineup-cont
                                                      c-lineup-gcc-asm-reg
                                                      0))
                                     (statement-cont . (
                                                        c-idea-lineup-cont7
                                                        c-idea-lineup-cont7
                                                        c-idea-lineup-cont4
                                                        c-idea-lineup-cont6
                                                        c-idea-lineup-cont3
                                                        c-idea-lineup-cont2
                                                        c-idea-lineup-cont
                                                        c-idea-lineup-cont5
                                                        +))
                                     (brace-list-entry . (
                                                          c-idea-lineup-cont7
                                                          +))
                                     (arglist-intro . (;;c-idea-intro-shifted
                                                       c-idea-double-offset
                                                       c-lineup-arglist-intro-after-paren))
                                     (arglist-cont-nonempty . (c-idea-lineup-cont
                                                               c-idea-arg-list-cont-nonempty
                                                               c-lineup-gcc-asm-reg c-lineup-arglist))
                                     (statement-block-intro . (
                                                               c-idea-statement-block-intro
                                                               c-idea-single-offset
                                                               +))
                                     (block-close . (;;c-idea-block-close-2
                                                     c-idea-block-close-1
                                                     c-idea-zero-offset
                                                     0))
                                     (comment-intro . (c-idea-comment-intro-after-comment-intro
                                                       c-idea-comment-intro-1
                                                       c-idea-comment-intro
                                                       c-lineup-knr-region-comment
                                                       c-lineup-comment))
                                     (annotation-var-cont . (c-idea-zero-offset +))
                                     (case-label . +)
                                     (arglist-close . (c-idea-arglist-close +))
                                     )))))

(with-eval-after-load 'cc-mode
  (register-java-idea-style))

;;
;;; cc-mode java style like in IntellyJ IDEA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
