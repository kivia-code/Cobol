       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: OPERADORES ARITMETICOS
      *DATA   = 05/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77  WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77  WRK-RESULT-ED PIC ZZZZ VALUE ZEROS.
       77  WRK-RESULT PIC 9(04) VALUE ZEROS.



       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.


           DISPLAY '============================================='
           DISPLAY 'NUMERO1:  ' WRK-NUM1.
           DISPLAY 'NUMERO2:  ' WRK-NUM2.

      ******************** SOMA
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULT.
           MOVE WRK-RESULT TO WRK-RESULT-ED.
           DISPLAY 'SOMA: ' WRK-RESULT-ED.

      *******************SUBTRAÇÃO

           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULT
           MOVE WRK-RESULT TO WRK-RESULT-ED.
           DISPLAY 'SUBTRACAO: ' WRK-RESULT-ED.

      *******************DIVISÃO
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.

            MOVE WRK-RESULT TO WRK-RESULT-ED.
            DISPLAY 'DIVISAO: ' WRK-RESULT-ED.


      *******************MULTIPLICAÇÃO
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.
           MOVE WRK-RESULT TO WRK-RESULT-ED.
            DISPLAY 'MULTIPLICACAO: ' WRK-RESULT-ED.

      *******************COMPUTE
           COMPUTE WRK-RESULT = (WRK-NUM1 + WRK-NUM2)/2.
           MOVE WRK-RESULT TO WRK-RESULT-ED.
            DISPLAY 'MEDIA: ' WRK-RESULT-ED.

           STOP RUN.
