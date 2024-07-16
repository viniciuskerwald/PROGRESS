DEF VAR i-loop  AS INT     NO-UNDO.
DEF VAR dt-loop AS DATE    NO-UNDO.
DEF VAR dc-loop AS DECIMAL NO-UNDO.

/*
DO i = 1 TO 10 BY 1:
    DISP i WITH FRAME f-loop1 10 DOWN.
    DOWN WITH FRAME f-loop1.    
END.
*/

/*
DO i = 10 TO 1 BY -1:
    DISP i WITH FRAME f-loop2 10 DOWN.
    DOWN WITH FRAME f-loop2.    
END.
*/

/*
DO dt-loop = TODAY TO TODAY + 7:
    DISP dt-loop WITH FRAME f-loop3 8 DOWN.    
    DOWN WITH FRAME f-loop3.    
END.
*/

/*
DO dt-loop = TODAY + 7 TO TODAY BY -1:
    DISP dt-loop WITH FRAME f-loop3 8 DOWN.    
    DOWN WITH FRAME f-loop3.    
END.
*/

/*
DO dc-loop = 1.0 TO 2.0 BY 0.1:
    DISP dc-loop WITH FRAME f-loop4 11 DOWN.
    DOWN WITH FRAME f-loop4.    
END.
*/

/*
DO dc-loop = 2.0 TO 1.0 BY -0.1:
    DISP dc-loop WITH FRAME f-loop4 11 DOWN.
    DOWN WITH FRAME f-loop4.    
END.
*/

/*
ASSIGN i-loop = 10. // Valor inicial

DO WHILE i-loop >= 1: // Condição de parada
    DISP i-loop WITH FRAME f-loop5 10 DOWN.
    DOWN WITH FRAME f-loop5.        
    
    ASSIGN i-loop = i-loop - 1. // Incremento (by)
END.
*/

/*
ASSIGN i-loop = 1. // Valor inicial

REPEAT:
    DISP i-loop WITH FRAME f-loop6 10 DOWN.
    DOWN WITH FRAME f-loop6.        
    
    IF i-loop = 10 THEN LEAVE. // Condição de parada     
    ASSIGN i-loop = i-loop + 1. // Incremento (by)           
END.
*/


