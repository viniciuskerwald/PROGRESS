DEF TEMP-TABLE tt-alunos NO-UNDO
    FIELD Codigo LIKE Estoque.Codigo
    FIELD Nome AS CHAR FORMAT
    INDEX ix-codigo IS UNIQUE PRIMARY Codigo ASCENDING.    
    
CREATE tt-alunos.
ASSIGN tt-alunos.Codigo = 1
       tt-alunos.Nome = "Raquel".
       
CREATE tt-alunos.
ASSIGN tt-alunos.Codigo = 2
       tt-alunos.Nome = "Marcelo".       
       
FOR EACH tt-alunos:
    DISP Codigo
         Nome.
END.
    
    
    
    
