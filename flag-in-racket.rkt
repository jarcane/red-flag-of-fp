#lang racket/gui
;; needed a racket version :)
;; all rights if any exist are assigned to user https://github.com/jarcane 
(require 2htdp/image)
(define width 600) ; 1920
(define height 300) ; 1080
(define ground (rectangle width height "solid" (color 212 0 0)))
(define star-image (star 10 "solid" "yellow"))

 (define text-image
   (text/font "(λ)" 84 "yellow" "menlo" 'swiss 'normal 'normal #f) )

 (define emblem-image  (overlay/align/offset "middle" "bottom" star-image 0 20 text-image ))
(define flag (overlay/align/offset "left" "top" emblem-image 0 0 ground  ))

; (save-svg-image image filename [width height]);

(save-svg-image flag "rflag.svg")
flag
