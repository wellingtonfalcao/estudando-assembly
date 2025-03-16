SEGMENT .DATA
    LF          equ 0xA ; Pular linha
    NULL        equ 0xD ; Final da string
    SYS_CALL    equ 0x80 ; Envia informação ao SO   
    
    ; COMANDOS DO EAX (Registradores x86 de 32bits)
    SYS_EXIT    equ 0x1 ; Código de chamada para finalizar
    SYS_READ    equ 0x3 ; Operação de leitura
    SYS_WRITE   equ 0x4 ; Operação de escrita
    
    ; COMANDOS DO EBX (Registradores x86 de 32bits)
    RET_EXIT    equ 0x0 ; Operação realizada com sucesso
    STD_IN      equ 0x0 ; Entrada padrão
    STD_OUT     equ 0x1 ; Saída padrão

SECTION .DATA
    msg db "Entre com seu nome:", LF, NULL ;String com quebra de linha e nulo de encerramento de comando
    tam equ $- msg ; Referencia o tamanho do string passado

SECTION .BSS
    msg db "Entre com seu nome:", LF, NULL
    tam equ $- msg