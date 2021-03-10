@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 7.1: Travel with Customer'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_119038_TravelWithCustomer 
as select from ZI_119038_Travel_XT as _TravelExtended
    association [1] to /dmo/customer as _Customer on _TravelExtended.CustomerId = _Customer.customer_id
{
    key TravelId,
    Description,
    CustomerId,
    //_Customer.first_name as FirstName,
    //_Customer.last_name as LastName,
    BeginDate,
    EndDate,
    Price,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Status,
    _Customer
    
}
