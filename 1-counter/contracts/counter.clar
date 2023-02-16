
;; title: counter
;; version: 1.0
;; summary: a simple counter app

;; data vars
(define-data-var counter uint u0)

;; public functions
;; increment counter
(define-public (increment (step uint))
    (begin
        (asserts! (> step u0) (err "error: step must be greater than 0"))
        (var-set counter (+ (var-get counter) step))
        (ok (var-get counter))))

;; read only functions
;; return value of counter
(define-read-only (read-counter)
    (ok (var-get counter)))
