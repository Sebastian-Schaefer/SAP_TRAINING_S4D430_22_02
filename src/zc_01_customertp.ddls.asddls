@AbapCatalog.sqlViewName: 'ZC01CUSTOMERTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Consumption-View: Customer'
@VDM.viewType: #CONSUMPTION
define view ZC_01_CUSTOMERTP
  as select from ZI_01_CustomerTP
  association [0..*] to ZC_01_BOOKINGTP as _Bookings on  _Bookings.Bookid    = ZI_01_CustomerTP.ID
{
  key ID,
      Name,
      Street,
      Postcode,
      City,
      Country,
      Discount,
      _Bookings
}
