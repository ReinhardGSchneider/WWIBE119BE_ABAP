@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 1: Annotations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@UI.headerInfo:{
    typeName: 'Flight',
    typeNamePlural: 'Flights'
}
@Metadata.allowExtensions: true
define view entity ZI_119038_Annotations
  as select from /dmo/flight
{

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
  key carrier_id     as CarrierId,

  key connection_id  as ConnectionId,

  key flight_date    as FlightDate,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      price          as Price,
      @UI.hidden: true

      currency_code  as CurrencyCode,
      
      plane_type_id  as PlaneTypeId,
     
      seats_max      as SeatsMax,
 
      seats_occupied as SeatsOccupied
}
