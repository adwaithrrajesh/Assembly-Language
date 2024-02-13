DATA SEGMENT USE16
    MESG DB 'Hello world','$'
DATA ENDS

STACK SEGMENT STACK
          DW 128 DUP(?)
STACK ENDS

CODE SEGMENT USE16
         ASSUME CS:CODE, DS:DATA, SS:STACK

    BEG: 
    
         MOV    AX,DATA
         MOV    DS,AX
         MOV    AH,9
         MOV    DX, OFFSET MESG
         INT    21H
         MOV    AH,4CH
         INT    21H

CODE ENDS
END BEG
