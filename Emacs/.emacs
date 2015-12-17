;----------------设置个人信息-----------------
(setq user-full-name "Sherlock Holmes")
(setq user-mail-address "SherlockInChina@gmail.com")
;----------------设置基本信息-----------------
;;关闭开机画面
(setq inhibit-startup-message t)
;;关闭自动保存模式
(setq auto-save-mode nil)
;;设置emacs标题
(setq frame-title-format "BakerStreet-Top")
;;设置字体颜色
(set-foreground-color "#EFC19F")
;;设置背景颜色
(set-background-color "#0F0303")
;;光标显示为竖线
(setq-default cursor-type 'bar)
;;没有提示音，不闪屏
(setq ring-bell-function 'ignore)
;;光标靠近鼠标移开
(mouse-avoidance-mode 'animate)
;;打开启用text模式
(setq default-major-mode 'text-mode)
;;设置行距
(set-default 'line-spacing 5) 
;;设置字体


;;在minibuffer里启用自动补全函数和变量
(icomplete-mode t)
;;隐藏工具栏
(tool-bar-mode -1)
;;隐藏菜单
(menu-bar-mode -1)
;;隐藏滚动条
(scroll-bar-mode -1)
;;自动保存设置
(setq auto-save-mode t)
;;显示行号
(global-linum-mode t)
;;设置行号宽度
(setq linum-format "%d" )
;;设置显示系统时间
(setq display-time-format " %m月%d日 %A %H:%M:%S ")
(display-time)
;;设置时间变化频率
(setq display-time-interval 1)
(display-time-mode 1)
;;设置F1为shell模式
(global-set-key [f1] 'shell)
;; 显示括号匹配, 而不是匹配后短暂的跳到另一个括号
(setq show-paren-style 'parentheses)
(show-paren-mode t)
;;设置显示列号
(setq column-number-mode t)
;;设置打开信息
(setq initial-scratch-message "")
;;设置默认打开路径
(setq default-directory"F:/Project/Test/")
;;设置光标颜色
(set-cursor-color "Orchid")
(put 'upcase-region 'disabled nil)
;;启动位置 
(setq default-frame-alist
             '((vertical-scroll-bars)
               (top . 73)
               (left . 190)
               (width . 87)
               (height . 28)     
               (right-fringe . 16)
               (left-fringe . 8)))
;;设置选中时的颜色
;(set-face-foreground 'region "green")
;(set-face-background 'region "green")
;;启动自动最大化(数据自己调整，注意格式，如(top . 0)，圆点前后都要留有空格)
;(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))
;;设置折行弯曲箭头
;(set-face-attribute 'fringe nil :foreground (background-color-at-point))
;;;不要生成备份文件
;(setq-default make-backup-files nil)
 
;------------语言环境字符集设置(utf-8)-------------

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
;处理shell-mode乱码,好像没作用

;-------------------------------------------------

;;关联emacs.d
;(load-file "F:/emacs-24.2/.emacs.d/go-mode.el") 
;(require 'go-mode)
;(load-file "F:/emacs-24.2/.emacs.d/go-mode-load.el") 
;(require 'go-mode-load)


;;设置字体
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



;;弄成透明
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








;;从这里开始试着装插件支持c++
;(add-to-list 'load-path "~/.emacs.d/plugins")

;(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.3.1/")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete-1.3.1//ac-dict")
;(ac-config-default)


;;载入yasnippet模板补全工具
;;yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;(require 'yasnippet)
;(yas/global-mode 1)


;;载入auto-complete-clang 可以使用clang做语法解释器
;(require 'auto-complete-clang)
;(setq ac-auto-start nil)
;(setq ac-quick-help-delay 0.5)
;(define-key ac-mode-map [(control tab)] 'auto-complete)

;;紧接着对补全模式进行配置，在第2行配置了要扫描的头文件的路径，补全的时候会根据这些文件中的符号进行补全，下面的add-hook 如果不需要可以去掉
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


;;添加提示插件！！！！→
;; 开启 auto-complete  
;(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete/")  
;(require 'auto-complete)  
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/ac-dict/")  
;(add-to-list 'ac-user-dictionary-files "~/.emacs.d/el-get/auto-complete/dict/guotf.dict")  
;(require 'auto-complete-config)  
;; 结束  
  
;; 开启 auto-complete-clang  
;(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete-clang/")  
;(require 'auto-complete-clang)    
;;(setq ac-clang-auto-save t)    
;; 设置不自动启动  
;(setq ac-auto-start nil)    
;; 设置响应时间 0.5  
;(setq ac-quick-help-delay 0.5)    
;;(ac-set-trigger-key "TAB")    
;;(define-key ac-mode-map  [(control tab)] 'auto-complete)    
;; 提示快捷键为 M-/  
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
;;; 结束  