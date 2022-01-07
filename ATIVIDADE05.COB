       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATIVIDADE05.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: SIMULACAO DE INVESTIMENTO
      *UTILIZAR O VARYING E UNTIL
      *DATA   = 07/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR       PIC 9(08)      VALUE ZEROS.
       77 WRK-MESES       PIC 9(02)      VALUE ZEROS.
       77 WRK-TAXA-MES    PIC 9(02)      VALUE ZEROS.
       77 WRK-VALOR-ED    PIC $ZZZ.ZZ9,99 VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0002-INICIALIZAR.

           PERFORM 0003-PROCESSAR.

           PERFORM 0004-FINALIZAR.

            STOP RUN.

       0002-INICIALIZAR.

           DISPLAY 'VALOR INVESTIDO'
           ACCEPT WRK-VALOR

           DISPLAY 'MESES DE APLICACAO'
           ACCEPT WRK-MESES

           DISPLAY 'TAXA MENSAL'
           ACCEPT WRK-TAXA-MES.



       0003-PROCESSAR.

           PERFORM WRK-MESES TIMES

           COMPUTE WRK-VALOR = WRK-VALOR * ( WRK-TAXA-MES / 100 + 1)
           END-PERFORM.



       0004-FINALIZAR.

           DISPLAY'----------------------------------------------------'
           MOVE  WRK-VALOR TO WRK-VALOR-ED
           DISPLAY'VALOR CORRIGIDO : ' WRK-VALOR-ED .
           DISPLAY'FINAL DO PROCESSAMENTO.'.
