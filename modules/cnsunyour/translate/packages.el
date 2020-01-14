;; -*- no-byte-compile: t; -*-
;;; cnsunyour/translate/packages.el


(package! company-english-helper :disable t
  :recipe (:host github :repo "manateelazycat/company-english-helper"))
(package! insert-translated-name
  :recipe (:host github :repo "manateelazycat/insert-translated-name"))
(package! sdcv
  :recipe (:host github :repo "manateelazycat/sdcv"))
(package! youdao-dictionary
  :recipe (:host github :repo "xuchunyang/youdao-dictionary.el" :fork "cnsunyour/youdao-dictionary.el"))
(package! google-translate)
