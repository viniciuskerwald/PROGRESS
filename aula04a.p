DEF VAR it-valor1 AS INT INITIAL 100 NO-UNDO.
DEF VAR it-valor2 AS INT INITIAL 100 NO-UNDO.

ASSIGN it-valor1 = 0
       it-valor2 = IF it-valor1 = 0 THEN 0 ELSE it-valor2 / it-valor1.

DISP it-valor1 it-valor2.
