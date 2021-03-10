CLASS zcl_119038_exercise_0101_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0101_1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA travel_id TYPE /dmo/travel_id.
  DATA travel_description TYPE /dmo/description.
  DATA begin_date TYPE /dmo/begin_date.
  DATA end_date TYPE /dmo/end_date.

    travel_id = '00000001'.
    travel_description = 'afjklöjkalfjkö'.
    begin_date = '20200101'.
    end_date = '20200102'.


  out->write( |Reisenummer:       | && travel_id ).
  out->write( |Reisebeschreibung: | && travel_description ).
  out->write( |Begin der Reise:   | && begin_date ).
  out->write( |Ende der Reise:    | && end_date ).



    DATA geburtsdatum TYPE D VALUE '19900101'.
    DATA heutigesDatum Type D VALUE '20210309'.

    DATA unterrichtsbegin TYPE T VALUE '080000'.
    DATA alter Type I.
    alter = ( heutigesDatum - geburtsdatum ) / 360.

    out->write( |Alter: { alter } |  ).

















  ENDMETHOD.




ENDCLASS.
