DEF VAR rw-customer1 AS ROWID NO-UNDO.
DEF VAR rc-customer1 AS RECID NO-UNDO.

// FOR EACH Customer NO-LOCK WHERE CustNum <= 10:
    // DISP AVAIL(Customer). 
// END.


/*
FOR EACH Customer WHERE NAME MATCHES "*Ana*":
    DISP CustNum NAME.
END.
*/


/*
FIND FIRST Customer NO-LOCK USE-INDEX NAME.

REPEAT:
    DISP CustNum NAME.
    FIND NEXT Customer NO-LOCK USE-INDEX NAME.
END.
*/

/*
MESSAGE CAN-FIND(Customer NO-LOCK WHERE CustNum <= 10)
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/

/*
FOR EACH Customer WHERE CustNum <= 10:
    ASSIGN NAME = "Curso PROGRESS 4GL " + STRING(CustNum).
    DISP CustNum NAME.
END.
*/

/*
FOR EACH Customer NO-LOCK:
    DISP STRING(ROWID(Customer)) FORMAT "X(25)" LABEL "ROWID" 
         CustNum 
         NAME.
END.
*/

/*
FIND FIRST Customer NO-LOCK.
ASSIGN rw-customer1 = ROWID(Customer).


FIND Customer NO-LOCK WHERE ROWID(Customer) = rw-customer1.
DISP STRING(rw-customer1) FORMAT "X(25)" CustNum.
*/

/*
FIND Customer NO-LOCK WHERE CustNum = 10 NO-ERROR.

IF AVAIL(Customer) THEN
DO:
    FIND CURRENT Customer EXCLUSIVE-LOCK.
    
    ASSIGN Customer.NAME = "Raquel".
    
    DISP Custnum NAME.
END.
*/

/*
FIND FIRST Customer NO-LOCK.
ASSIGN rc-customer1 = RECID(Customer).
ASSIGN rw-customer1 = ROWID(Customer).
     
    FIND Customer NO-LOCK WHERE RECID(Customer) = rc-customer1.
    DISP STRING(rw-customer1) FORMAT "X(25)" LABEL "ROWID"
     rc-customer1 LABEL "RECID"
     Custnum.
*/

/*
FIND LAST Customer NO-LOCK.

MESSAGE AVAIL(Customer)
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
RELEASE Customer.

MESSAGE AVAIL(Customer)
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
*/

/*
FIND LAST Customer EXCLUSIVE-LOCK.

ASSIGN Customer.NAME = "Ultimo registro".

RELEASE Customer.
*/


/*
FIND Customer EXCLUSIVE-LOCK WHERE CustNum = 10.

// UPDATE Customer.NAME Customer.Contact.

DISP Customer.NAME Customer.Contact.

RELEASE Customer.
*/

/*
FIND Customer EXCLUSIVE-LOCK WHERE CustNum = 10.

// UPDATE Customer.NAME Customer.Contact.
PROMPT-FOR Customer.NAME Customer.Contact.
// DISP Customer.NAME Customer.Contact.

RELEASE Customer.
*/

DEF BUFFER bf-customer1 FOR Customer.
DEF BUFFER bf-customer2 FOR Customer.

FIND Customer WHERE Customer.CustNum = 10.
FIND bf-customer1 WHERE bf-customer1.CustNum = 1.
FIND bf-customer2 WHERE bf-customer2.CustNum = 3.


DISP Customer.CustNum Customer.NAME
     SKIP
     bf-customer1.CustNum bf-customer1.NAME
     SKIP
     bf-customer2.CustNum bf-customer2.NAME.
     

























