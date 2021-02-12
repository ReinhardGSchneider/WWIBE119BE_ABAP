CLASS zcl_119038_demo_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_demo_0101 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  out->write( 'Hallo Welt!' ).

  "out->write('Hallo Welt!').
  DATA i1 TYPE i. "ganze Zahl (Bsp: 42)
  data string1 type string. "Zeichenkette dynamischer Länge
  data c1 type c length 6. "Zeichenkette fester länge
  data n1 type n length 7. "nummerische Folge (Bsp: '7182940')
  data d1 type d. "Datum (Bsp: 'yyyymmdd')
  data tq type t. "Zeit (Bsp: '123114')


  ENDMETHOD.


ENDCLASS.
