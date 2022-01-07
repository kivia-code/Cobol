       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB13.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      *UTILIZAR O PERFORM
      *DATA   = 07/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM      PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) VALUE 1.
       77 WRK-RESULT   PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0002-INICIALIZAR.
           IF WRK-NUM > 0
              PERFORM 0003-PROCESSAR

           END-IF.

           PERFORM 0004-FINALIZAR.

            STOP RUN.

       0002-INICIALIZAR.
           ACCEPT WRK-NUM.



       0003-PROCESSAR.

           PERFORM 10 TIMES

           COMPUTE WRK-RESULT = WRK-NUM * WRK-CONTADOR
            DISPLAY WRK-NUM ' X ' WRK-CONTADOR ' = ' WRK-RESULT
            ADD 1 TO WRK-CONTADOR
           END-PERFORM.

       0004-FINALIZAR.

           DISPLAY'----------------------------------------------------'
           DISPLAY'FINAL DO PROCESSAMENTO.'.
