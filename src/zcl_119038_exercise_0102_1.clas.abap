CLASS zcl_119038_exercise_0102_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0102_1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA num1 TYPE p LENGTH 16 DECIMALS 2 value '3.14'.
  DATA num2 TYPE p LENGTH 16 DECIMALS 2 VALUE   '5.6'.
  DATA result Type p LENGTH 16 DECIMALS 2.
  DATA char TYPE c LENGTH 1 VALUE '*'.




  CASE char.

  when '+'.
  result = num1 + num2.

  when '-'.
  result = num1 - num2.

  when '*'.
  result = num1 * num2.

  when '/'.
  result = num1 / num2.

  when 'm'.
  result = nmin( val1 = num1 val2 =  num2 ).

  WHEN OTHERS.
    out->write( |Fehler: Operation nicht vorhanden| ).

  ENDCASE.

    out->write( |Das Ergebnis ist: | && result ).

  ENDMETHOD.
ENDCLASS.
