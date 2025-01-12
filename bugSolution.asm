mov ecx, [array_size] ; get the size of the array

; Check if ecx is a valid index before accessing memory. It should be >=0 and < array_size

cmp ecx, 0
jge check_upper_bound
; handle the out-of-bound index
;... add the error handling here

check_upper_bound:
cmp ecx, [array_size]
jl access_memory
; handle the out-of-bound index
;... add the error handling here

access_memory:
mov eax, [ebx+ecx*4] ; safe array access

mov ecx, [array_size] ; get the size of the array

; Check if ecx is a valid index before accessing memory

cmp ecx, 0
jge check_upper_bound2
; handle the out-of-bound index
;... add the error handling here

check_upper_bound2:
cmp ecx, [array_size]
jl access_memory2
; handle the out-of-bound index
;... add the error handling here

access_memory2:
mov eax, [ebx+ecx*8] ; safe array access