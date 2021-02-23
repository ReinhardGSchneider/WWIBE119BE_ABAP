CLASS zcl_119038_demo_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119038_DEMO_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  "Deklaration interner Tabellen
    Data connections type z119038_Connections. "Type <Tabellentyp>                      "Variable Wird hier Typisiert
    DATA connections2 type table of z119000_connection. "Type table of <Strukturtyp>

    "Einfügen von Datensätzen                        "Variable muss Typisiert sein muss Typisiert sein
    connections = value #(
    ( carrier_id = 'LH' connection_id = '0400' )
    ( carrier_id = 'LH' connection_id = '0401' airport_from_id = 'JFK' airport_to_id = 'FRA' )
    ( carrier_id = 'UA' connection_id = '4517' ) ).


    "Erweitern von internen Tabellen
    data connection type z119038_connection.
    connection-carrier_id = 'LH'.
    connection-connection_id = '0400'.
    connection-airport_from_id = 'FRA'.
    connection-airport_to_id = 'JFK'.
    connections = value #( base connections
    ( carrier_id = 'LH' connection_id = '0402' airport_from_id = 'FRA' )
    ( connection ) ).


    "Lesen eines Einzelsatzes per...
    TRY.
        connection = connections[ 1 ].   "...Index
      CATCH cx_sy_itab_line_not_found INTO data(x).
    ENDTRY.

    IF line_exists( connections[ carrier_id = 'LH' connection_id = '0407' ] ).
    connection = connections[ carrier_id = 'LH' connection_id = '0407' ].  "...Werte
    Else.
      out->write( |Fehler: Zeile existiert nicht| ).
    ENDIF.




    "Lesen mehrerer Datensätze
    LOOP AT connections into connection where carrier_id = 'LH'.
         out->write( | { sy-tabix } - { connection-carrier_id } - { connection-connection_id }| ).
    ENDLOOP.











    "Ändern eines Einzelsatzes per...
    connections[ 1 ]-airport_from_id = 'BER'.   "...Index
    connections[ carrier_id = 'LH' connection_id = '0402' ]-airport_to_id = 'BER'.  "...Werte





    "Ändern mehrerer Datensätze
    DATA connection2 type ref to z119038_connection. "Type REF TO <Strukturtyp>: Referenzvariable
    DATA connection3 type z119038_connection.   "TYPE <Strukturtyp>: Trukturvariable

    LOOP AT connections REFERENCE INTO connection2 WHERE carrier_id = 'LH'.
         connection2->airport_to_id = 'JFK'.
    ENDLOOP.



















  ENDMETHOD.
ENDCLASS.
