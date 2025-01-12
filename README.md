# Potential Buffer Overflow in Assembly Code

This repository demonstrates a potential buffer overflow vulnerability in a short assembly code snippet. The vulnerability arises from the use of scaled addressing modes without proper bounds checking, which can lead to accessing memory outside the allocated buffer.

## Vulnerability

The `bug.asm` file shows the vulnerable code, which uses `ecx` as an index into an array pointed to by `ebx`.  If `ecx` is larger than what is allowed by the size of the array, it can cause a buffer overflow. 

## Solution

The `bugSolution.asm` file illustrates a corrected version of the code which incorporates a check before accessing memory.  This approach prevents buffer overflows by only accessing memory within the boundaries of the allocated array.

## How to Reproduce

1.  Assemble both `bug.asm` and `bugSolution.asm` using a suitable assembler (like NASM).
2.  Run both executables (if applicable). 
3.  The `bug.asm` executable might trigger errors or cause unexpected behavior due to the buffer overflow, while the corrected version in `bugSolution.asm` is more robust.

## Mitigation

Always validate and check array indices before using them in array access operations.   Employ bounds checking, use safe array functions, and consider using other protective methods to prevent this kind of vulnerability.