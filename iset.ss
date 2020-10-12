;;; -*- Gerbil -*-

(export
  ;; bit-vectors
  make-bit-vector integer->bit-vector bit-vector-copy
  bit-vector? bit-vector-empty? bit-vector-full?
  bit-vector-ref bit-vector-set bit-vector-set!
  bit-vector-count bit-vector-length bit-vector-shift bit-vector-shift!
  bit-vector-and bit-vector-and! bit-vector-ior bit-vector-ior!
  bit-vector-xor bit-vector-xor! bit-vector-eqv bit-vector-eqv!
  bit-vector-nand bit-vector-nand! bit-vector-nor bit-vector-nor!
  ;; isets
  make-iset iset iset? iset-copy list->iset list->iset! iset->list
  iset= iset<= iset>= iset-start iset-end iset-bits iset-left iset-right
  set-iset-start! set-iset-end! set-iset-bits! set-iset-left! set-iset-right!
  iset-empty? iset-contains? iset-adjoin iset-adjoin! iset-delete iset-delete!
  iset-cursor iset-ref iset-cursor-next end-of-iset?
  iset-fold iset-unfold iset-unfold! iset-for-each iset-map
  iset-filter iset-filter! iset-every iset-any iset-size
  iset-union! iset-union iset-intersection! iset-intersection
  iset-difference! iset-difference iset-xor! iset-xor
  iset-diff+intersection! iset-diff+intersection
  ;; low-level utilities
  %make-iset iset-dump iset-write-code
  iset-balance iset-balance! iset-optimize iset-optimize!)

;; chicken base    ->
;; chicken port    ->
;; chicken fixnum  -> :std/srfi/143
;; chicken bitwise -> :gerbil/gambit/bits
;; chicken format  -> :std/format
;; srfi-4          -> :gerbil/gambit/hvectors
(import :std/srfi/143
        :gerbil/gambit/bits
        :std/format
        :gerbil/gambit/hvectors)

(include "iset.scm")
