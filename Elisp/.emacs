;----------------���ø�����Ϣ-----------------
(setq user-full-name "Sherlock Holmes")
(setq user-mail-address "SherlockInChina@gmail.com")
;----------------���û�����Ϣ-----------------
;;�رտ�������
(setq inhibit-startup-message t)
;;�ر��Զ�����ģʽ
(setq auto-save-mode nil)
;;����emacs����
(setq frame-title-format "BakerStreet-Top")
;;����������ɫ
(set-foreground-color "#EFC19F")
;;���ñ�����ɫ
(set-background-color "#0F0303")
;;�����ʾΪ����
(setq-default cursor-type 'bar)
;;û����ʾ����������
(setq ring-bell-function 'ignore)
;;��꿿������ƿ�
(mouse-avoidance-mode 'animate)
;;������textģʽ
(setq default-major-mode 'text-mode)
;;�����о�
(set-default 'line-spacing 5) 
;;��������


;;��minibuffer�������Զ���ȫ�����ͱ���
(icomplete-mode t)
;;���ع�����
(tool-bar-mode -1)
;;���ز˵�
(menu-bar-mode -1)
;;���ع�����
(scroll-bar-mode -1)
;;�Զ���������
(setq auto-save-mode t)
;;��ʾ�к�
(global-linum-mode t)
;;�����кſ��
(setq linum-format "%d" )
;;������ʾϵͳʱ��
(setq display-time-format " %m��%d�� %A %H:%M:%S ")
(display-time)
;;����ʱ��仯Ƶ��
(setq display-time-interval 1)
(display-time-mode 1)
;;����F1Ϊshellģʽ
(global-set-key [f1] 'shell)
;; ��ʾ����ƥ��, ������ƥ�����ݵ�������һ������
(setq show-paren-style 'parentheses)
(show-paren-mode t)
;;������ʾ�к�
(setq column-number-mode t)
;;���ô���Ϣ
(setq initial-scratch-message "")
;;����Ĭ�ϴ�·��
(setq default-directory"F:/Project/Test/")
;;���ù����ɫ
(set-cursor-color "Orchid")
(put 'upcase-region 'disabled nil)
;;����λ�� 
(setq default-frame-alist
             '((vertical-scroll-bars)
               (top . 73)
               (left . 190)
               (width . 87)
               (height . 28)     
               (right-fringe . 16)
               (left-fringe . 8)))
;;����ѡ��ʱ����ɫ
;(set-face-foreground 'region "green")
;(set-face-background 'region "green")
;;�����Զ����(�����Լ�������ע���ʽ����(top . 0)��Բ��ǰ��Ҫ���пո�)
;(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))
;;��������������ͷ
;(set-face-attribute 'fringe nil :foreground (background-color-at-point))
;;;��Ҫ���ɱ����ļ�
;(setq-default make-backup-files nil)
 
;------------���Ի����ַ�������(utf-8)-------------

(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t)
;����shell-mode����,����û����

;-------------------------------------------------

;;����emacs.d
;(load-file "F:/emacs-24.2/.emacs.d/go-mode.el") 
;(require 'go-mode)
;(load-file "F:/emacs-24.2/.emacs.d/go-mode-load.el") 
;(require 'go-mode-load)


;;��������
(if window-system 
     (progn 
       (set-default-font "monospace-13.8") 
       (set-fontset-font (frame-parameter nil 'font) 
                         'han '("Microsoft YaHei" . "unicode-bmp")) 
       (set-fontset-font (frame-parameter nil 'font) 
          'cjk-misc '("Microsoft Yahei" . "unicode-bmp")) 
       (set-fontset-font (frame-parameter nil 'font) 
                         'bopomofo '("Microsoft Yahei" . "unicode-bmp")) 
       (set-fontset-font (frame-parameter nil 'font) 
                         'gb18030 '("Microsoft Yahei". "unicode-bmp")) 
       )) 



;;Ū��͸��
(set-frame-parameter (selected-frame) 'alpha (list 85 50))
(add-to-list 'default-frame-alist (cons 'alpha (list 85 50)))

(setq is-alpha nil)

(defun transform-window (a ab)
  (set-frame-parameter (selected-frame) 'alpha (list a ab))

  (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
)


(global-set-key [(f2)] (lambda()
                         (interactive)
                         (if is-alpha
                             (transform-window 100 100)

                           (transform-window 85 50))
                         (setq is-alpha (not is-alpha))))








;;�����￪ʼ����װ���֧��c++
;(add-to-list 'load-path "~/.emacs.d/plugins")

;(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.3.1/")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete-1.3.1//ac-dict")
;(ac-config-default)


;;����yasnippetģ�岹ȫ����
;;yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;(require 'yasnippet)
;(yas/global-mode 1)


;;����auto-complete-clang ����ʹ��clang���﷨������
;(require 'auto-complete-clang)
;(setq ac-auto-start nil)
;(setq ac-quick-help-delay 0.5)
;(define-key ac-mode-map [(control tab)] 'auto-complete)

;;�����ŶԲ�ȫģʽ�������ã��ڵ�2��������Ҫɨ���ͷ�ļ���·������ȫ��ʱ��������Щ�ļ��еķ��Ž��в�ȫ�������add-hook �������Ҫ����ȥ��
;(defun my-ac-config ()
;(setq ac-clang-flags (split-string "-I/usr/include -I/usr/local/include -I/usr/include/c++/4.6 -I/home/cc/Documents/trunk/tools/x86/cppunit/include -I/home/cc/Documents/trunk/tools/x86/TinyXML -I/home/cc/Documents/trunk/tools/x86/libpcap-1.2.1/build/include -I/home/cc/Documents/trunk/Utility/Header -I/home/cc/Documents/trunk/Comm/Header "))
;(setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
;(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;(add-hook 'css-mode-hook 'ac-css-mode-setup)
;(add-hook 'auto-complete-mode-hook 'ac-common-setup)
;(global-auto-complete-mode t))
;(defun my-ac-cc-mode-setup ()
;(setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
;(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;(my-ac-config)









;(require '~/.emacs.d/auto-complete-1.3.1/auto-complete.el)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete-1.3.1/auto-complete/dict")
;(ac-config-default)
 
;(require 'go-mode-load)
;(require 'go-autocomplete)
;;(require 'auto-complete-config)


;;�����ʾ�������������
;; ���� auto-complete  
;(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete/")  
;(require 'auto-complete)  
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/ac-dict/")  
;(add-to-list 'ac-user-dictionary-files "~/.emacs.d/el-get/auto-complete/dict/guotf.dict")  
;(require 'auto-complete-config)  
;; ����  
  
;; ���� auto-complete-clang  
;(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete-clang/")  
;(require 'auto-complete-clang)    
;;(setq ac-clang-auto-save t)    
;; ���ò��Զ�����  
;(setq ac-auto-start nil)    
;; ������Ӧʱ�� 0.5  
;(setq ac-quick-help-delay 0.5)    
;;(ac-set-trigger-key "TAB")    
;;(define-key ac-mode-map  [(control tab)] 'auto-complete)    
;; ��ʾ��ݼ�Ϊ M-/  
;(define-key ac-mode-map  (kbd "M-/") 'auto-complete)   
;(defun my-ac-config ()    
;  (setq ac-clang-flags    
;        (mapcar(lambda (item)(concat "-I" item))    
;               (split-string    
;                "  
; /usr/include/c++/4.6  
; /usr/include/c++/4.6/i686-linux-gnu/.  
; /usr/include/c++/4.6/backward  
; /usr/lib/gcc/i686-linux-gnu/4.6/include  
; /usr/local/include  
; /usr/lib/gcc/i686-linux-gnu/4.6/include-fixed  
; /usr/include/i386-linux-gnu  
; /usr/include  
;"  
;)))    
;  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))    
;  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)    
;  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)    
;  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)    
;  (add-hook 'css-mode-hook 'ac-css-mode-setup)    
;  (add-hook 'auto-complete-mode-hook 'ac-common-setup)    
;  (global-auto-complete-mode t))    
;(defun my-ac-cc-mode-setup ()    
;  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))    
;(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)    
;;; ac-source-gtags    
;(my-ac-config)    
;(ac-config-default)  
;;; ����  