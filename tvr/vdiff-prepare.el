(load-library "vdiff-autoloads")
(eval-after-load "vdiff-autoloads"
(progn
(define-key vdiff-mode-map (kbd "C-c") vdiff-mode-prefix-map)
(setq vdiff-only-highlight-refinements t)
(setq vdiff-auto-refine t)
))
