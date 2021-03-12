CLASS zcl_119038_exercise_0201_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0201_1 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


    "Attribute
    DATA carrier_id TYPE /dmo/carrier_id VALUE 'LH'.
    DATA flight_date TYPE /dmo/flight_date VALUE '20210104'.
    DATA asdf TYPE /dmo/flight_date.

    DATA result TYPE string.
    DATA result2 TYPE string.

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Länge einer Zeichenkette
result = strlen( flight_date ).
out->write( result ).

"Suchen innerhalb einer Zeichenkette
result = find( val = flight_date sub = '1' ).
out->write( result ).

"Ersetzen von Zeichen innerhalb einer Zeichenkette
result = replace( val = flight_date sub = '2' with = 'Hier stand eine zwei' occ = 0 ).
out->write( result ).

"To upper funktion
result = to_lower( carrier_id ).
out->write( result ).






  ENDMETHOD.

ENDCLASS.
