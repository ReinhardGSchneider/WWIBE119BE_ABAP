@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 3: Travel Extended'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119038_Travel_XT
  as select from ZI_119038_Travel
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cast(cast(TotalPrice as abap.dec( 16, 2 ) ) - cast(BookingFee as abap.dec(16,2)) as abap.curr(16,2)) as Price,
      BookingFee,
      TotalPrice,

      CurrencyCode,
      Description,      
      case Status
            when  'B' then 'Booked'
            when  'N' then 'New'
            when  'P' then 'Planned'
            else ''
      end                                                                                                  as Status






















      /*
        key travel_id                                                                     as TravelId,
            agency_id                                                                     as AgencyId,
            customer_id                                                                   as CustomerId,
            begin_date                                                                    as BeginDate,
            end_date                                                                      as EndDate,
            @Semantics.amount.currencyCode: 'CurrencyCode'
            booking_fee                                                                   as BookingFee,
            @Semantics.amount.currencyCode: 'CurrencyCode'
            total_price                                                                   as TotalPrice,


            cast(total_price as abap.dec( 16, 2 ) ) - cast(booking_fee as abap.dec(16,2)) as Price,

            currency_code                                                                 as CurrencyCode,
            description                                                                   as Description,
            status                                                                        as Status,
            case status
            when  'B' then 'Booked'
            when  'N' then 'New'
            when  'P' then 'Planned'
            else ''
            end                                                                           as statusText,
            createdby                                                                     as Createdby,
            createdat                                                                     as Createdat,
            lastchangedby                                                                 as Lastchangedby,
            lastchangedat                                                                 as Lastchangedat


      */
}
