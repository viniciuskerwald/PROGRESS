DEF VAR it-dia-semana AS INT  NO-UNDO.
DEF VAR ch-dia-semana AS CHAR NO-UNDO.
DEF VAR dc-valor      AS DEC  NO-UNDO.
DEF VAR dt-dia-semana AS DATE NO-UNDO.

/*
DEF VAR ch-nome AS CHAR NO-UNDO.

ASSIGN ch-nome = IF TRUE THEN IF TRUE THEN "Curso Progress Flexxo 1" ELSE "Curso de Progress Flexxo 2" ELSE "Curso de Progress Flexxo 3".

MESSAGE ch-nome
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/    
    
/*
ASSIGN it-dia-semana = WEEKDAY(TODAY).    

CASE it-dia-semana:
    WHEN 1 THEN
    DO:
       ASSIGN ch-dia-semana = "DOM".        
    END.
    WHEN 2 THEN ASSIGN ch-dia-semana = "SEG".            
    WHEN 3 THEN ASSIGN ch-dia-semana = "TER".      
    WHEN 4 THEN ASSIGN ch-dia-semana = "QUA".        
    WHEN 5 THEN ASSIGN ch-dia-semana = "QUI".        
    WHEN 6 THEN ASSIGN ch-dia-semana = "SEX".        
    // WHEN 7 THEN ASSIGN ch-dia-semana = "SAB".        
    OTHERWISE 
    DO: 
        ASSIGN ch-dia-semana = "SAB".    
    END.
END CASE. // CASE it-dia-semana

MESSAGE ch-dia-semana
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/

/*
ASSIGN ch-dia-semana = "QUA".

CASE ch-dia-semana:
    WHEN "TER" THEN ASSIGN it-dia-semana = 3.    
END CASE.

MESSAGE it-dia-semana
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/

/*
ASSIGN dc-valor = 1.2.

CASE dc-valor:
    WHEN 1.0 THEN ASSIGN ch-dia-semana = "É 1".
    WHEN 1.1 THEN ASSIGN ch-dia-semana = "É 1.1".
    OTHERWISE ASSIGN ch-dia-semana = "É outro valor".        
END CASE.

MESSAGE ch-dia-semana
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/

/*
ASSIGN dt-dia-semana = TODAY - 1.

CASE dt-dia-semana:
    WHEN TODAY THEN ASSIGN ch-dia-semana = "É hoje!".
    OTHERWISE ASSIGN ch-dia-semana = "Não é hoje!".    
END CASE.

MESSAGE ch-dia-semana
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/

/*
ASSIGN it-dia-semana = WEEKDAY(TODAY + 1).

CASE it-dia-semana:
    WHEN 1 OR WHEN 2 OR WHEN 3 THEN ASSIGN ch-dia-semana = "Início da semana".
    OTHERWISE ASSIGN ch-dia-semana = "Fim da semana".    
END CASE.

MESSAGE ch-dia-semana
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.    
*/    

