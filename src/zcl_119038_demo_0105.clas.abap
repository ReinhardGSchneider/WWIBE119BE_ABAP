CLASS zcl_119038_demo_0105 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_demo_0105 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  Data text TYPE string value 'Hallo'.
  Data text2 TYPE string value ' Welt'.
  Data text3 TYPE string.

  "Verknüpfung mehrerer Zeichenketten"
  text3 = text && | | && text2 && '!'.
  out->write( text3 ).


    "Verwenden eines Zeichenketten-Templates"
    text3 = |{ text } { text2 }!|.




























  ENDMETHOD.
ENDCLASS.
