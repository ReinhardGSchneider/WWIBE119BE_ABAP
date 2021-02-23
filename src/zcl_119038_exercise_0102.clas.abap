CLASS zcl_119038_exercise_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119038_EXERCISE_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data operand1 type p length 16 decimals 2 value '3.14'.
    data operator type c LENGTH 1 VALUE 'm'.
    data operand2 type p length 16 DECIMALS 2 VALUE '5.6'.

    data result TYPE p LENGTH 16 DECIMALS 2.

    case operator.

        when '+'.
        result = operand1 + operand2.
        when '-'.
        result = operand1 - operand2.
        when '*'.
        result = operand1 * operand2.
        when '/'.
        result = operand1 / operand2.
        WHEN 'm' or 'M'.
        result = nmin( val1 = operand1 val2 = operand2 ).
        when OTHERS.
            out->write( |Fehler: ungültiger Operator| ).

    ENDCASE.

    out->write( |Ergebnis: | && result ).











  ENDMETHOD.
ENDCLASS.
