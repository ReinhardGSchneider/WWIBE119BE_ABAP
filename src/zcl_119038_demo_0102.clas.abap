CLASS zcl_119038_demo_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119038_DEMO_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA i1 TYPE i. "ganze Zahl (Bsp: 42)
  data string1 type string. "Zeichenkette dynamischer Länge
  data c1 type c length 6. "Zeichenkette fester länge
  data n1 type n length 7. "nummerische Folge (Bsp: '7182940')
  data d1 type d. "Datum (Bsp: 'yyyymmdd')
  data t1 type t. "Zeit (Bsp: '123114')
  data p1 TYPE p LENGTH 16 DECIMALS 2. "gepackte Zahl (Bsp: 734.23)
  data b1 TYPE c LENGTH 1. "Boolscher Wahrheitswert (Bsp: 'X')


  "Deklaration variabler Datenobjekte per...
  Data carrier_id TYPE c LENGTH 3. "...ABAP-Standardtyp
  DATA carrier_id2 TYPE /dmo/carrier_id. "...Datenelement


  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

  "Wertzuweisung per...
  carrier_id = 'LH'. "Zuweisungsoperator
  DATA connection_id TYPE /dmo/connection_id VALUE '0400'. "...statische Zuweisung
  data(flight_date) = '20210202'.       "...Inlinedeklaration


  CLEAR carrier_id. "Initialisierung

  "Deklaration fixer Datenobjekte
  CONSTANTS co_pi TYPE p LENGTH 2 DECIMALS 2 VALUE '3.14'.



  Data result TYPE p LENGTH 16 DECIMALS 2.





  result = 5 + 3. out->write( |Addition: | && result ). "Addition
  result = 5 - 3. out->write( |Addition: | && result ). "Addition
  result = 5 * 3. out->write( |Addition: | && result ). "Addition
  result = 5 / 3. out->write( |Addition: | && result ). "Addition
  result = 5 DIV 3. out->write( |Addition: | && result ). "Division
  result = 5 MOD 3. out->write( |Addition: | && result ). "Divisionsrest




    result += 1. out->write( |ZWO Addition| && result ). " Zuweisungsoperator für die Addition
    result -= 1. out->write( |ZWO Subtraktion|  && result ). " Zuweisungsoperator für die sub
    result *= 1. out->write( |ZWO Multi|  && result ). " Zuweisungsoperator für die multi
    result /= 1. out->write( |ZWO Divi|  && result ). " Zuweisungsoperator für die divi


    ADD -1 TO result. "Inkrementieren/Dekrementieren

    "Numerische Funktionen
    result = abs( -3 ). out->write( |Betrag: | && result ).
    result = ipow( base = 5 exp = 3 ).   out->write( |Potenz:|  && result ). "



































  ENDMETHOD.
ENDCLASS.
