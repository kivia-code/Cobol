       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: USO DO SINAL
      *DATA   = 05/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1      PIC 9(02)   VALUE ZEROS.
       77  WRK-NUM2      PIC 9(02)   VALUE ZEROS.
       77  WRK-RESULT    PIC S9(03)  VALUE ZEROS.
       77  WRK-RESULT-ED PIC -ZZ9    VALUE ZEROS.



       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.


           DISPLAY '============================================='
           DISPLAY 'NUMERO1:  ' WRK-NUM1.
           DISPLAY 'NUMERO2:  ' WRK-NUM2.


      *******************SUBTRAÇÃO

           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESULT
           MOVE WRK-RESULT TO WRK-RESULT-ED.
           DISPLAY 'SUBTRACAO: ' WRK-RESULT-ED.

           STOP RUN.
