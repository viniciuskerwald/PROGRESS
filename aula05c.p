DEF TEMP-TABLE tt-estoque NO-UNDO LIKE Estoque.    

FOR EACH Estoque NO-LOCK:    
    CREATE tt-estoque.
    BUFFER-COPY Estoque TO tt-estoque.      
END.

FOR EACH Estoque EXCLUSIVE-LOCK:
    DELETE Estoque.
END.

FOR EACH tt-estoque NO-LOCK:    
    CREATE Estoque.
    BUFFER-COPY tt-estoque TO Estoque.      
END.

FOR EACH Estoque:
    DISP Estoque.Codigo Estoque.Descricao
        WITH 1 COLUMN WIDTH 200.
END.





