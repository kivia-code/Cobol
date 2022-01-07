       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATIVIDADE02.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: ATIVIDADE 2
      *DATA   = 05/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-PROD1 PIC 9(06)V99        VALUE ZEROS.
       77  WRK-PROD2 PIC 9(06)V99        VALUE ZEROS.
       77  WRK-RESULT-ED PIC $ZZZ.ZZ9,99 VALUE ZEROS.
       77  WRK-RESULT PIC 9(06)V99       VALUE ZEROS.


       PROCEDURE DIVISION.
           ACCEPT WRK-PROD1 FROM CONSOLE.
           ACCEPT WRK-PROD2 FROM CONSOLE.


           DISPLAY '============================================='
           DISPLAY 'PRODUTO 1:  ' WRK-PROD1.
           DISPLAY 'PRODUTO 2:  ' WRK-PROD2.


      *******************COMPUTE
           COMPUTE WRK-RESULT = (WRK-PROD1 + WRK-PROD2)/2.
           MOVE WRK-RESULT TO WRK-RESULT-ED.
            DISPLAY 'MEDIA TOTAL DO VALOR DO PRODUTO: ' WRK-RESULT-ED.

           STOP RUN.
