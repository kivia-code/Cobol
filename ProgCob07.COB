       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: RECEBER DUAS NOTAS, MEDIA E IMPRIMIR
      *UTILIZAR COMANDOS IF/ELSE/ENDIF
      *DATA   = 06/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
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


           STOP RUN.
