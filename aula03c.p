/*
OPERADORES LÒGICOS
------------------
    EQ (equals), = (igual)
    NE (not equal), <> (diferente)
    GT (greather than), > (maior)
    GE (greather or equal), >= (maior ou igual)
    LT (less than), < (menor)
    LE (less or equal), <= (menor ou igual)
*/

DEF VAR it-num1 AS INT NO-UNDO.
DEF VAR it-num2 AS CHAR NO-UNDO.
DEF VAR ch-mensagem AS CHAR NO-UNDO.

ASSIGN it-num1 = 4
       it-num2 = "05".
       
IF STRING(it-num1) EQ it-num2 THEN
DO:
    ASSIGN ch-mensagem = "Igual".    
END.
ELSE 
DO:
    IF STRING(it-num1) GT it-num2 THEN
    DO:
        ASSIGN ch-mensagem = "Maior".        
    END.
    
    IF STRING(it-num1) LT it-num2 THEN
    DO:
        ASSIGN ch-mensagem = "Menor".
    END.    
END.
       
MESSAGE ch-mensagem
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       
       
