@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View 7.2: TravelwithCustomerConsumptions'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_119038_TravelWithCustomer as select from ZI_119038_TravelWithCustomer {
    key TravelId,
    Description,
    CustomerId,
    _Customer.first_name as FirstName,
    _Customer.last_name as LastName,
    BeginDate,
    EndDate,
    Price,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Status
    /* Associations */
}
