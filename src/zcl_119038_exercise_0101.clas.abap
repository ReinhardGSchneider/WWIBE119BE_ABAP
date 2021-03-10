CLASS zcl_119038_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119038_EXERCISE_0101 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

 DATA travel_id TYPE /dmo/travel_id.
 DATA description TYPE /dmo/description.
 DATA begin_date TYPE /dmo/begin_date.
 DATA end_date TYPE /dmo/end_date.

 travel_id = '00000001'.
 description = 'Reise nach China'.
 begin_date = '20200101'.
 end_date = '20200202'.


 out->write( |Reisenummer:  | && travel_id ).
 out->write( |Reisebeschreibung: | && description ).
 out->write( |Begin der Reise: | && begin_date ).
 out->write( |Ende der Reise:| && end_date ).












  ENDMETHOD.
ENDCLASS.
