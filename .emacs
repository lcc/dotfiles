(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
