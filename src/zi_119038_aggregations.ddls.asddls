@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 5: Aggregations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119038_Aggregations
  as select from /dmo/flight
{
  key carrier_id                               as CarrierId,
  key connection_id                            as ConnectionId,
      count(*)                                 as Count1,
      count(distinct plane_type_id)            as CountDistinct, //Duplikate werden nicht berücksichtigt
      sum(seats_occupied)                      as Sum1,
      sum(seats_max)                           as Sum2,
      avg(seats_max as abap.dec(16,02))        as AvgMax,
      avg(seats_occupied as abap.dec( 16, 0 )) as AvgOccupied,
      min(seats_occupied)                      as MinSeatOccupied,
      max(seats_occupied)                      as MaxSeatsOccupied

}

group by
  carrier_id,
  connection_id
having
  avg( seats_occupied ) < 150
