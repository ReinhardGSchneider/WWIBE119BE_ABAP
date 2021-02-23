CLASS zcl_119038_exercise_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_exercise_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data travels TYPE z119038_travels.
  "data travels Type Table of z119038_travel.

  "travels = VALUE #( BASE travels
   "     ( travel_id = '01234567' description 'Italien 2020' begin_date '20201212' end_date = '20201221' )
    "    ( travel_id = '01276567' description 'Allgäu 2020' begin_date '20201212' end_date = '20201221' )
     "   ( travel_id = '08234567' description 'Berlin 2020' begin_date '20201212' end_date = '20201221' )
      "   ).
  Try.
    travels[ 2 ]-description =  'Spanienn 2021'.
    travels[ travel_id = '08234567' ]-begin_date = '20200101'.
    CATCH cx_sy_itab_line_not_found.
    ENDTRY.

  delete travels where begin_date is initial or end_date IS INITIAL.

  loop at travels into data(travel).
    out->write( |{ travel-travel_id } { travel-description }| ).
  ENDLOOP.
    out->write( |Anzahl Reisen: { lines( travels ) }| ).
    out->write( travels ).



































  ENDMETHOD.
ENDCLASS.
