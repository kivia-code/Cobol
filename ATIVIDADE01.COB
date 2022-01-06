       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATIVIDADE01.
      **********************************************
      *AREA DE COMENTARIOS - REMARKS
      *AUTHOR = KIVIA(ALURA) KIVIAAL
      *OBJETIVO: RECEBER NOME E CPF DE PESSOA FISICA
      *IMPRIMIR FORMATADO
      *DATA   = 05/01/22
      **********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WRK-NOME PIC X(20) VALUE SPACES.
       77 WRK-CPF PIC 9(11) VALUE ZEROS.
       77 WRK-CPF-ED PIC *********/99 VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           ACCEPT WRK-CPF FROM CONSOLE.

      ****************MOSTRA DADOS

           DISPLAY 'NOME: ' WRK-NOME.
           MOVE WRK-CPF TO WRK-CPF-ED.
           DISPLAY 'CPF: ' WRK-CPF-ED.

           MAIN-PROCEDURE.
                STOP RUN.
