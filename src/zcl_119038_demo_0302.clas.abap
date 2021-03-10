CLASS zcl_119038_demo_0302 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_demo_0302 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA connection TYPE z119038_connection.


    SELECT SINGLE FROM ZI_119038_Connection
    FIELDS CarrierId, ConnectionId, AirportFromId, AirportToId
    WHERE CarrierId = 'LH' AND ConnectionID = '0400'
    INTO @Connection.
    IF sy-subrc <> 0.
      "TODO: Fehlerbehandlung
    ENDIF.



    "Inlinedeklaration
    SELECT SINGLE FROM ZI_119038_Connection
    FIELDS CarrierId, ConnectionId, AirportFromId, AirportToId
    WHERE CarrierId = 'LH' AND ConnectionID = '0400'
    INTO @Data(connection2).
    IF sy-subrc <> 0.
      "TODO: Fehlerbehandlung
    ENDIF.







  ENDMETHOD.
ENDCLASS.
