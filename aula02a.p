/* MESSAGE "Ol� mundo!".         */
/*                               */
/* DISPLAY "Ol� mundo!".         */
/*                               */
/* DISP "Outro ol� mundo!"       */
/*      SKIP(3)                  */
/*      "Segunda linha"          */
/*      SKIP (2) "jsadhjasdhsa". */     

// Coment�rio de uma �nica linha.

/*  
    Coment�rio de m�ltiplas linhas.
*/

/* DEF VAR lg-resposta AS LOG INITIAL NO NO-UNDO.                                        */
/*                                                                                       */
/* MESSAGE "Deseja realmente excluir?"                                                   */
/*     VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO TITLE "Confirma��o" UPDATE lg-resposta. */
    
/*                                                                                             */
/* IF lg-resposta = FALSE THEN                                                                 */
/* DO:                                                                                         */
/*                                                                                             */
/* END.                                                                                        */
/* ELSE                                                                                        */
/* DO:                                                                                         */
/*                                                                                             */
/* END.                                                                                        */

/* CURRENT-VALUE(seq-primeira) = 6.        */
/* CURRENT-VALUE(seq-primeira) = 7.        */
/* CURRENT-VALUE(seq-primeira) = 8.        */
/*                                         */
/* ASSIGN CURRENT-VALUE(seq-primeira) = 6. */
/* ASSIGN CURRENT-VALUE(seq-primeira) = 7. */
/* ASSIGN CURRENT-VALUE(seq-primeira) = 8. */
/*                                         */
/* ASSIGN CURRENT-VALUE(seq-primeira) = 6  */
/*        CURRENT-VALUE(seq-primeira) = 7  */
/*        CURRENT-VALUE(seq-primeira) = 8. */
       
/* ASSIGN CURRENT-VALUE(seq-primeira) = 9. */

/* MESSAGE "O valor atual da sequence �" */
/*         CURRENT-VALUE(seq-primeira)   */
/*     VIEW-AS ALERT-BOX INFORMATION.    */


/* ASSIGN lg-resposta = ?.                               */
/*                                                       */
/* IF lg-resposta = ? THEN                               */
/* DO:                                                   */
/*     MESSAGE "IGUAL A INTERROGACAO"                    */
/*             VIEW-AS ALERT-BOX INFORMATION BUTTONS OK. */
/* END.                                                  */
/* ELSE                                                  */
/* DO:                                                   */
/*     MESSAGE "DIFERENTE"                               */
/*         VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.     */
/* END.                                                  */  

CURRENT-WINDOW:WIDTH = 150.

DISPLAY "Aula de Progress" WITH WIDTH 140. // M�ximo de 599.






    
