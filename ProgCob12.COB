       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB12.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: PARAGRAFOS
      *SABER A REGRA DOS PARAGRAFOS
      *DATA   = 06/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0002-INICIALIZAR.
           PERFORM 0003-PROCESSAR.
           PERFORM 0004-FINALIZAR.

            STOP RUN.

       0002-INICIALIZAR.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.


       0003-PROCESSAR.


            COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2.
               DISPLAY 'MEDIA: ' WRK-MEDIA.
             IF WRK-MEDIA >= 6
               DISPLAY 'APROVADO'

             ELSE
               IF WRK-MEDIA>= 2
               DISPLAY 'RECUPERACAO'


               ELSE
                 DISPLAY 'RECUPERACAO'
                 END-IF
               END-IF.

       0004-FINALIZAR.

           DISPLAY'----------------------------------------------------'
           DISPLAY'FINAL DO PROCESSAMENTO.'.
