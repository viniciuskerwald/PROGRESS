DEF VAR dc-nota      AS DEC  FORMAT ">9.9"  NO-UNDO.
DEF VAR ch-resultado AS CHAR FORMAT "X(25)" NO-UNDO.

ASSIGN dc-nota = 0. // Valor inicial da nota

DO WHILE (dc-nota = 0 OR dc-nota > 10):
    UPDATE dc-nota LABEL "Informe a nota".
    
    IF (dc-nota = 0 OR dc-nota > 10) THEN
    DO:
        MESSAGE "Nota inválida!"
            VIEW-AS ALERT-BOX ERROR BUTTONS OK TITLE "Validação".
    END.
END.
    
IF dc-nota < 6 THEN
DO:
    ASSIGN ch-resultado = "Reprovado".    
END.
ELSE 
DO:
    IF dc-nota <= 10 THEN
    DO:
        ASSIGN ch-resultado = "Ótimo".        
    END.
    
    IF dc-nota <= 9 THEN
    DO:
        ASSIGN ch-resultado = "Muito bom".        
    END.
    
    IF dc-nota <= 8 THEN
    DO:
        ASSIGN ch-resultado = "Bom".        
    END.
    
    IF dc-nota <= 7 THEN
    DO:
        ASSIGN ch-resultado = "Suficiente".        
    END.    
END.
    
MESSAGE ch-resultado
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
