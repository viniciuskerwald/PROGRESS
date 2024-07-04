DEF VAR rr-customer-first AS ROWID NO-UNDO.
DEF VAR rr-customer-last  AS ROWID NO-UNDO.

FIND FIRST Customer NO-ERROR.
ASSIGN rr-customer-first = ROWID(Customer).

FIND LAST Customer NO-ERROR.
ASSIGN rr-customer-last = ROWID(Customer).

/* DISP STRING(rr-customer-first) FORMAT "X(25)" LABEL "ROWID-first" */
/*      STRING(rr-customer-last) FORMAT "X(25)" LABEL "ROWID-last".  */
     
FIND Customer WHERE ROWID(Customer) = rr-customer-last.

DISP Customer.CustNum Customer.NAME.
     

    

