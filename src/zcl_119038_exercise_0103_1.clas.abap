CLASS zcl_119038_exercise_0103_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0103_1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA text_old TYPE string VALUE 'Reinhard'.
    DATA text_new TYPE string.


    TRANSLATE text_old TO LOWER CASE.

    text_new = replace( val = text_old sub = 'r' with = '72' occ = 0 ).
    text_new = replace( val = text_new sub = 'e' with = '101' occ = 0 ).
    text_new = replace( val = text_new sub = 'i' with = '105' occ = 0 ).
    text_new = replace( val = text_new sub = 'n' with = '110' occ = 0 ).
    text_new = replace( val = text_new sub = 'h' with = '104' occ = 0 ).
    text_new = replace( val = text_new sub = 'a' with = '97' occ = 0 ).
    text_new = replace( val = text_new sub = 'd' with = '100' occ = 0 ).





    out->write( |alter Text: { text_old }| ).
    out->write( |neuer Text: { text_new }| ).




  ENDMETHOD.

ENDCLASS.
