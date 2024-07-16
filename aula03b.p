DEF VAR c-txt1 AS CHAR NO-UNDO.
DEF VAR c-txt2 AS CHAR. 

ASSIGN c-txt1 = "A"
       c-txt2 = "A".
       
MESSAGE "c-txt1 => " c-txt1
        SKIP
        "c-txt2 => " c-txt2        
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.    

DO TRANSACTION:
    ASSIGN c-txt1 = "B" 
           c-txt2 = "B".               
           
    MESSAGE "Deseja realmente desfazer a transação?" 
        VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO TITLE "Confirmação" UPDATE lg-resposta AS LOGICAL.    
        
    IF lg-resposta THEN        
    DO:
        UNDO.
    END.    
END.

MESSAGE "c-txt1 => " c-txt1
        SKIP
        "c-txt2 => " c-txt2        
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.           
