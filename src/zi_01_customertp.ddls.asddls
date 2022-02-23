@AbapCatalog.sqlViewName: 'ZI01CUSTOMERTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Interface-View: Customer'
@VDM.viewType: #TRANSACTIONAL
define view ZI_01_CustomerTP
  as select from ZI_01_CUSTOMER2
{
  key ID       as ID,
      Name     as Name,
      Street   as Street,
      Postcode as Postcode,
      City     as City,
      Country  as Country,
      Discount as Discount
}
