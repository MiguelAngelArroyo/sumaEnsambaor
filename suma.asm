name 'suma de dos numeros'
include  'emu8086.inc'
org 100h

.data           
suma db 2 dup (?)

.code
Sumas proc
    printn " "
    print "Introduce el primer numero : "
    call scan_num
    mov suma[0],cl
    printn " "
    print "Introduce el segundo numero : "
    call scan_num
    mov suma[1],cl
    xor ax,ax
    add al,suma[0]
    add al,suma[1]
    printn " "
    print "El Resultado de la suma es : "
    call print_num
Sumas endp

exit:
    printn " "
    printn " "
    
    int 16h
    ret
define_print_string
define_print_num
define_print_num_uns
define_scan_num
end