CLASS zcl_119038_demo_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119038_demo_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "data carrier_id TYPE /dmo/carrier_id.
  "data connection_id TYPE /dmo/connection_id.
  "data airport_from_id Type /dmo/airport_from_id.
  "data airport_to_id TYPE /dmo/airport_to_id.

  data connection type Z119038_CONNECTION.



  connection-carrier_id = 'LH'.
  connection-connection_id = '0400'.
  connection-airport_from_id = 'FRA'.
  connection-airport_to_id = 'JFK'.


  out->write( |Kürzel der Gluggesellschaft: { connection-carrier_id }| ).
  out->write( |Verbindungsnummer { connection-connection_id }| ).

  "Kopieren
  Data  flight type  z119038_flight.
  flight-carrier_id = 'LH'.
  flight-connection_id = '0400'.
  flight-flight_date = cl_abap_context_info=>get_system_date(  ).
  flight-price = 500.
  flight-currency_code = 'EUR'.
  flight-plane_type_id = 'A340-400'.

    DATA flight_xt Type Z119038_FLIGHT_EXTENDED.
    flight_xt = connection.

































  ENDMETHOD.
ENDCLASS.
