       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: RECEBER E IMPRIMIR UMA STRING A PARTIR DE UMA VARIÁVEL
      *DATA   = 05/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME PIC X(20) VALUE SPACES.

       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'NOME...' WRK-NOME(1:10).
           STOP RUN.
