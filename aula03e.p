DEF VAR i-pergunta AS INT NO-UNDO.
DEF VAR dt-pergunta AS DATE FORMAT "99/99/9999" NO-UNDO.

/*
DO WHILE i-pergunta = 0:
    UPDATE i-pergunta.
END.

MESSAGE i-pergunta
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/

DO WHILE dt-pergunta = ?:
    UPDATE dt-pergunta.
END.

MESSAGE dt-pergunta
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.

