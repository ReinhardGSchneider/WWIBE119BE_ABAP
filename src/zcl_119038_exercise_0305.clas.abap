CLASS zcl_119038_exercise_0305 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0305 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data travels TYPE TABLE OF ZC_119038_TravelWithCustomer.

    select from ZC_119038_TravelWithCustomer
    FIELDS *
    where CustomerId = '000001'
    into table @travels.
    if sy-subrc <> 0.
      out->write( |Keine Daten gefunden| ).
      RETURN.
    endif.

    loop AT travels into data(travel).
        out->write( |{ travel-BeginDate } - { travel-EndDate } - { travel-Description }    | ).
    ENDLOOP.







































      endmethod.
ENDCLASS.
