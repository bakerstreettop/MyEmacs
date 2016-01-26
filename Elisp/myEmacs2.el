;; author: chinazhangjie
;; e-mail: chinajiezhang@gmail.com

;; 指针颜色设置为白色
(set-cursor-color "white")
;; 鼠标颜色设置为白色
(set-mouse-color "white")


;; 从color-theme中获取
;; 网上下载color-theme.el，放到加载路径(／usr/share/emacs/site-lisp )下
;; M-x color-theme-select,鼠标左键选中，回车查看效果
;; d查看信息，将出现如下信息:
;; color-theme-matrix is an interactive Lisp function in `color-theme.el'.
;; (color-theme-matrix)
;; Color theme by walterh@rocketmail.com, created 2003-10-16.
;; 选择(color-theme-blue-mood)即可
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-wheat)

;; 一打开就起用 text 模式。 
(setq default-major-mode 'text-mode)

;; 语法高亮
(global-font-lock-mode t)

;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p) 

;; 显示括号匹配 
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 显示时间，格式如下
(display-time-mode 1) 
(setq display-time-24hr-format t) 
(setq display-time-day-and-date t) 

(transient-mark-mode t) 

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "zhj@%b") 

;; 默认显示 80列就换行 
(setq default-fill-column 80) 

;; 去掉工具栏
(tool-bar-mode nil)

;;去掉菜单栏
(menu-bar-mode nil)

;; 去掉滚动栏
(scroll-bar-mode nil)

;; 设置字体
;; 方法为: emacs->options->Set Default Font->"M-x describe-font"查看当前使用的字体名称、字体大小
(set-default-font " -bitstream-Courier 10 Pitch-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1")

;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)

;; 设置默认tab宽度为2
(setq tab-width 2
indent-tabs-mode t
c-basic-offset 2)

;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; 实现全屏效果，快捷键为f11
(global-set-key [f11] 'my-fullscreen) 
(defun my-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
;; 最大化
(defun my-maximized ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)
;; 启动emacs时窗口最大化
(my-maximized)

;; 启动窗口大小
(setq default-frame-alist
'((height . 35) (width . 125) (menu-bar-lines . 20) (tool-bar-lines . 0)))
复制代码
2011-06-22 update

复制代码
;; author: chinazhangjie
;; e-mail: chinajiezhang@gmail.com

;; 指针颜色设置为白色
(set-cursor-color "white")
;; 鼠标颜色设置为白色
(set-mouse-color "white")


;; 从color-theme中获取
;; 网上下载color-theme.el，放到加载路径(／usr/share/emacs/site-lisp )下
;; M-x color-theme-select,鼠标左键选中，回车查看效果
;; d查看信息，将出现如下信息:
;; color-theme-matrix is an interactive Lisp function in `color-theme.el'.
;; (color-theme-matrix)
;; Color theme by walterh@rocketmail.com, created 2003-10-16.
;; 选择(color-theme-blue-mood)即可
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-vim-colors)

;; 一打开就起用 text 模式。 
(setq default-major-mode 'text-mode)

;; 语法高亮
(global-font-lock-mode t)

;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p) 

;; 显示括号匹配 
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 显示时间，格式如下
(display-time-mode 1) 
(setq display-time-24hr-format t) 
(setq display-time-day-and-date t) 

(transient-mark-mode t) 

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "zhj@%b") 

;; 默认显示 80列就换行 
(setq default-fill-column 80) 

;; 去掉工具栏
(tool-bar-mode nil)

;;去掉菜单栏
;;(menu-bar-mode nil)

;; 去掉滚动栏
(scroll-bar-mode nil)

;; 设置字体
;; 方法为: emacs->options->Set Default Font->"M-x describe-font"查看当前使用的字体名称、字体大小
(set-default-font "-bitstream-Courier 10 Pitch-normal-normal-normal-*-17-*-*-*-m-0-iso10646-1")

;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)

;; 设置缩进
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())
(loop for x downfrom 40 to 1 do
(setq tab-stop-list (cons (* x 4) tab-stop-list)))

(defconst my-c-style
'((c-tab-always-indent . t)
(c-comment-only-line-offset . 4)
(c-hanging-braces-alist . ((substatement-open after)
(brace-list-open)))
(c-hanging-colons-alist . ((member-init-intro before)
(inher-intro)
(case-label after)
(label after)
(access-label after)))
(c-cleanup-list . (scope-operator
empty-defun-braces
defun-close-semi))
(c-offsets-alist . ((arglist-close . c-lineup-arglist)
(substatement-open . 0)
(case-label . 4)
(block-open . 0)
(knr-argdecl-intro . -)))
(c-echo-syntactic-information-p . t)
)
"My C Programming Style")

;; offset customizations not in my-c-style
(setq c-offsets-alist '((member-init-intro . ++)))

;; Customizations for all modes in CC Mode.
(defun my-c-mode-common-hook ()
;; add my personal style and set it for the current buffer
(c-add-style "PERSONAL" my-c-style t)
;; other customizations
(setq tab-width 4
;; this will make sure spaces are used instead of tabs
indent-tabs-mode nil)
;; we like auto-newline and hungry-delete
(c-toggle-auto-hungry-state 1)
;; key bindings for all supported languages. We can put these in
;; c-mode-base-map because c-mode-map, c++-mode-map, objc-mode-map,
;; java-mode-map, idl-mode-map, and pike-mode-map inherit from it.
(define-key c-mode-base-map "\C-m" 'c-context-line-break)
)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook) 
;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; 实现全屏效果，快捷键为f11
(global-set-key [f11] 'my-fullscreen) 
(defun my-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
;; 最大化
(defun my-maximized ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)
;; 启动emacs时窗口最大化
(my-maximized)

;; 启动窗口大小
(setq default-frame-alist
'((height . 35) (width . 125) (menu-bar-lines . 20) (tool-bar-lines . 0)))
复制代码
2011-07-21 update

复制代码
;; author: chinazhangjie
;; e-mail: chinajiezhang@gmail.com

;; 指针颜色设置为白色
(set-cursor-color "white")
;; 鼠标颜色设置为白色
(set-mouse-color "white")


;; 从color-theme中获取
;; 网上下载color-theme.el，放到加载路径(／usr/share/emacs/site-lisp )下
;; M-x color-theme-select,鼠标左键选中，回车查看效果
;; d查看信息，将出现如下信息:
;; color-theme-matrix is an interactive Lisp function in `color-theme.el'.
;; (color-theme-matrix)
;; Color theme by walterh@rocketmail.com, created 2003-10-16.
;; 选择(color-theme-blue-mood)即可
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-dark-blue2)

;; 使用tabbar.el
(require 'tabbar)
(tabbar-mode)
(global-set-key (kbd "") 'tabbar-backward-group)
(global-set-key (kbd "") 'tabbar-forward-group)
(global-set-key (kbd "") 'tabbar-backward)
(global-set-key (kbd "") 'tabbar-forward)


;; 一打开就起用 text 模式。  
(setq default-major-mode 'text-mode)

;; 语法高亮
(global-font-lock-mode t)

;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p) 

;; 显示括号匹配 
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 显示时间，格式如下
(display-time-mode 1)  
(setq display-time-24hr-format t)  
(setq display-time-day-and-date t)  

(transient-mark-mode t) 

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "zhj@%b")  

;; 默认显示 80列就换行 
(setq default-fill-column 80) 

;; 去掉工具栏
(tool-bar-mode nil)

;;去掉菜单栏
;;(menu-bar-mode nil)

;; 去掉滚动栏
(scroll-bar-mode nil)

;; 设置字体
;; 方法为: emacs->options->Set Default Font->"M-x describe-font"查看当前使用的字体名称、字体大小
(set-default-font " -bitstream-Courier 10 Pitch-normal-normal-normal-*-19-*-*-*-m-0-iso10646-1")

;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)

;; 设置缩进
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())
(loop for x downfrom 40 to 1 do
      (setq tab-stop-list (cons (* x 4) tab-stop-list)))

(defconst my-c-style
  '((c-tab-always-indent        . t)
    (c-comment-only-line-offset . 4)
    (c-hanging-braces-alist     . ((substatement-open after)
                                   (brace-list-open)))
    (c-hanging-colons-alist     . ((member-init-intro before)
                                   (inher-intro)
                                   (case-label after)
                                   (label after)
                                   (access-label after)))
    (c-cleanup-list             . (scope-operator
                                   empty-defun-braces
                                   defun-close-semi))
    (c-offsets-alist            . ((arglist-close . c-lineup-arglist)
                                   (substatement-open . 0)
                                   (case-label        . 4)
                                   (block-open        . 0)
                                   (knr-argdecl-intro . -)))
    (c-echo-syntactic-information-p . t)
    )
  "My C Programming Style")

;; offset customizations not in my-c-style
(setq c-offsets-alist '((member-init-intro . ++)))

;; Customizations for all modes in CC Mode.
(defun my-c-mode-common-hook ()
  ;; add my personal style and set it for the current buffer
  (c-add-style "PERSONAL" my-c-style t)
  ;; other customizations
  (setq tab-width 4
        ;; this will make sure spaces are used instead of tabs
        indent-tabs-mode nil)
  ;; we like auto-newline and hungry-delete
  (c-toggle-auto-hungry-state 1)
  ;; key bindings for all supported languages.  We can put these in
  ;; c-mode-base-map because c-mode-map, c++-mode-map, objc-mode-map,
  ;; java-mode-map, idl-mode-map, and pike-mode-map inherit from it.
  (define-key c-mode-base-map "\C-m" 'c-context-line-break)
  )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook) 
;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; 实现全屏效果，快捷键为f11
(global-set-key [f11] 'my-fullscreen) 
(defun my-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
;; 最大化
(defun my-maximized ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)
;; 启动emacs时窗口最大化
(my-maximized)

;; 启动窗口大小
(setq default-frame-alist
      '((height . 35) (width . 125) (menu-bar-lines . 20) (tool-bar-lines . 0))) 