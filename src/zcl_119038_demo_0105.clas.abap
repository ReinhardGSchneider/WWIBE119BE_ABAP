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
  Data text2 TYPE string value 'Welt'.
  Data text3 TYPE string.

  "Verknüpfung mehrerer Zeichenketten"
  text3 = text && | | && text2 && '!'.
  out->write( text3 ).


    "Verwenden eines Zeichenketten-Templates"
    text3 = |{ text } { text2 }!|.
    out->write( text3 ).


    "Zeichenkettenfunktionen
    SPLIT text3 AT | | into text text2. "Aufteilen
   "Teile text3 bei 'leer' in variable text und text2

   data number_of_characters Type i.
   number_of_characters = strlen( text3 ). "Zeichenkettenlänge
   text3 = to_upper( text3 ). "Umsetzen


    "out->write( |Länge von '    ':{ strlen( '   ' ) } |).


























  ENDMETHOD.
ENDCLASS.
