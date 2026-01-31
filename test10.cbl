       program-id. test10.

       environment division.
       configuration section.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *01 WK-DATA.
       01 WS-LETTER-TABLE.
          05 WS-LETTERS PIC X(1) OCCURS 5 TIMES.
                 
       01 WS-INDEX     PIC 9(1) VALUE 1.
       
       PROCEDURE DIVISION.
       0000-MAIN.
           MOVE 'A' TO WS-LETTERS(1)
           MOVE 'B' TO WS-LETTERS(2)
           MOVE 'C' TO WS-LETTERS(3)
           MOVE 'D' TO WS-LETTERS(4)
           MOVE 'E' TO WS-LETTERS(5)

           DISPLAY "DISPLAYING THE TABLE CONTENTS:"
           PERFORM VARYING WS-INDEX FROM 1 BY 1 UNTIL WS-INDEX > 5
               DISPLAY "LETTER AT POSITION " WS-INDEX ": " 
                       WS-LETTERS(WS-INDEX)
           END-PERFORM.      
           goback.

       end program test10.
