/* 
LOGICAL/LOG -> yes/no/?

CHARACTER/CHAR -> padrão FORMAT "X(8)"

INTEGER/INT -> 32 bits -> Limites: –2.147.483.648 até 2.147.483.647. -> padrão FORMAT "->,>>>,>>9"
INT64/INT64 -> 64 bits -> padrão FORMAT "->,>>>,>>9"

DECIMAL/DEC -> Até 50 dígitos no total. De 1 a 10 casas decimais. -> padrão FORMAT "->>,>>9.99"

DATE/DATE -> padrão FORMAT "99/99/99" -> Limites: 01/01/32.768 A.C. até 31/12/32.767 D.C.
DATETIME/DATETIME -> padrão FORMAT "99/99/9999 HH:MM:SS.SSS"
DATETIME-TZ -> padrão FORMAT "99/99/9999 HH:MM:SS.SSS+HH:MM"
*/

DEF VAR lg-resposta AS LOG                 NO-UNDO.
DEF VAR ch-nome     AS CHAR FORMAT "X(40)" NO-UNDO.
DEF VAR it-numero1  AS INT                 NO-UNDO.
DEF VAR it-numero2  AS INT64               NO-UNDO.
DEF VAR dc-numero   AS DEC                 NO-UNDO.
DEF VAR dd-atual    AS DATE                NO-UNDO.
DEF VAR dt-atual    AS DATETIME            NO-UNDO.  
DEF VAR dtz-atual   AS DATETIME-TZ         NO-UNDO.

DEF VAR it-numero-e AS INT                 NO-UNDO.

/* DISP lg-resposta    */
/*      ch-nome        */
/*      it-numero1     */
/*      it-numero2     */
/*      dc-numero      */
/*      dd-atual       */
/*      dt-atual       */
/*      dtz-atual      */
/*      WITH 1 COLUMN. */
        
ASSIGN lg-resposta = ?
       ch-nome = ?
       it-numero1 = ?
       it-numero2 = ?
       dc-numero = ?
       dd-atual = ?
       dt-atual = ?
       dtz-atual = ?.

ASSIGN lg-resposta = YES
       ch-nome = "CURSO DE PROGRESS"
       it-numero1 = 123
       it-numero2 = 123
       dc-numero = 123123.45
       dd-atual = NOW
       dt-atual = NOW
       dtz-atual = NOW.
       
/* ASSIGN it-numero-e = 1234567890123457. */
       
/* DISP lg-resposta                  */
/*      ch-nome                      */
/*      it-numero1                   */
/*      it-numero2                   */
/*      dc-numero                    */
/*      dd-atual FORMAT "99/99/9999" */
/*      dt-atual                     */
/*      dtz-atual                    */
/*      WITH 1 COLUMN.               */

ASSIGN lg-resposta = LOGICAL("yes")
       lg-resposta = LOGICAL("no")
       lg-resposta = LOGICAL(?)
       lg-resposta = LOGICAL("TRUE")
       lg-resposta = LOGICAL("FALSE")
       lg-resposta = LOGICAL(1)
       lg-resposta = LOGICAL(0)
       lg-resposta = LOGICAL(-1)
       
       ch-nome = STRING(YES)
       ch-nome = STRING(NO)
       ch-nome = STRING(?)
       
       ch-nome = STRING(1.4)
       ch-nome = String(DATE(07, 04, 2024))
       ch-nome = String(DATETIME(07, 04, 2024, 15, 14, 33))
       ch-nome = String(DATETIME-TZ(07, 04, 2024, 15, 14, 33, 010, -180))
       
       dc-numero = DEC("1234,56").
    
       it-numero1 = INT("456").
       it-numero2 = INT64("789").

DISP it-numero1 it-numero2.





