@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 6: Association'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119038_Associations
  as select from /dmo/connection as _Connection
  association [*] /*Kardinalität*/ to /dmo/flight as _Flights on  _Connection.carrier_id    = _Flights.carrier_id
                                                              and _Connection.connection_id = _Flights.connection_id
{


  key carrier_id      as CarrierId,
  key connection_id   as ConnectionId,
      airport_from_id as AirportFromId,
      airport_to_id   as AirportToId,
      departure_time  as DepartureTime,
      arrival_time    as ArrivalTime,
      distance        as Distance,
      distance_unit   as DistanceUnit,
      _Flights /*exponieren*/

}






/*
define view entity ZI_119038_Associations
  as select from /dmo/connection
    inner join   /dmo/flight on  /dmo/connection.carrier_id    = /dmo/flight.carrier_id
                             and /dmo/connection.connection_id = /dmo/flight.connection_id
{

  key /dmo/connection.carrier_id as CarrierId,
  key /dmo/connection.connection_id as ConnectionId,
  key /dmo/flight.flight_date as FlightDate,
  /dmo/connection.airport_from_id as AirportFromId,
  /dmo/connection.airport_to_id as AirportToId,
  /dmo/connection.departure_time as DepartureTime,
  /dmo/connection.arrival_time as ArrivalTime,
  /dmo/connection.distance as Distance,
  /dmo/connection.distance_unit as DistanceUnit,
  /dmo/flight.price as Price,
  /dmo/flight.currency_code as CurrencyCode,
  /dmo/flight.plane_type_id as PlaneTypeId,
  /dmo/flight.seats_max as SeatsMax,
  /dmo/flight.seats_occupied as SeatsOccupied

}*/
