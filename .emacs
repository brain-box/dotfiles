;;日本語のデフォルトエンコーディングをUTF-8に
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(set-language-environment "Japanese")

;;共通設定(?)
(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4          ;;タブ幅4
               indent-tabs-mode nil)  ;;インデントをタブでするかスペースでするか

;; C++ style
(defun add-c++-mode-conf ()
  (c-set-style "stroustrup")  ;;スタイルはストラウストラップ
  (show-paren-mode t))        ;;カッコを強調表示する
(add-hook 'c++-mode-hook 'add-c++-mode-conf)

;; C style
(defun add-c-mode-common-conf ()
  (c-set-style "stroustrup")                  ;;スタイルはストラウストラップ
  (show-paren-mode t)                         ;;カッコを強調表示する
  )
(add-hook 'c-mode-common-hook 'add-c-mode-common-conf)

(setq auto-mode-alist
      ;;; 拡張子とモードの対応
      (append
       '(("\\.c$" . c-mode))
       '(("\\.h$" . c-mode))
       '(("\\.cpp$" . c++-mode))
       auto-mode-alist))

