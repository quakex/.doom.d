;;; cnsunyour/irc/config.el -*- lexical-binding: t; -*-

;; irc client for weechat relay server
(use-package! weechat
  :defer t
  :commands (weechat-switch-buffer)
  :bind
  ("C-c C-b" . #'weechat-switch-buffer)
  :init
  (setq weechat-host-default "googlecloud.sunyour.org"
        weechat-port-default 29009
        weechat-mode-default 'ssl
        weechat-auto-monitor-buffers t)
  :hook
  ('weechat-mode . #'toggle-truncate-lines)
  :config
  (when (internet-up-p weechat-host-default)
    (weechat-connect))
  (after! all-the-icons
    (add-to-list 'all-the-icons-mode-icon-alist
                 '(weechat-mode all-the-icons-fileicon "circle-ci"
                                    :heigt 1.0
                                    :v-adjust -0.2)))
  (add-to-list 'weechat-modules 'weechat-image t))
