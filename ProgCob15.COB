       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: RECEBER UM NUMERO DE VENDAS E DAR UM LIMITE
      *UTILIZAR O UNTIL
      *DATA   = 07/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
             COPY 'BOOK.COB'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0002-INICIALIZAR.
           IF WRK-VENDAS > 0

           PERFORM 0003-PROCESSAR UNTIL WRK-VENDAS = 0

           END-IF.

           PERFORM 0004-FINALIZAR.

            STOP RUN.

       0002-INICIALIZAR.
           ACCEPT WRK-VENDAS.



       0003-PROCESSAR.

           ADD 1 TO WRK-QTD.
           ADD WRK-VENDAS TO WRK-ACUM.
           ACCEPT WRK-VENDAS.



       0004-FINALIZAR.

           DISPLAY'----------------------------------------------------'
           DISPLAY'ACUMULADO DE VENDAS:  .' WRK-ACUM.
           DISPLAY'ACUMULADO EM QUANTIDADE: .' WRK-QTD.
           DISPLAY'FINAL DO PROCESSAMENTO.'.
