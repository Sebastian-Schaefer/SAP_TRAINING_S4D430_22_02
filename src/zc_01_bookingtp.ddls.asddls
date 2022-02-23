@AbapCatalog.sqlViewName: 'ZC01BOOKINGTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Consumption-View: Booking'
@VDM.viewType: #CONSUMPTION
define view ZC_01_BOOKINGTP
  as select from ZI_01_BOOKINGTP
  association [1..1] to ZC_01_CUSTOMERTP as _Customer on _Customer.ID = ZI_01_BOOKINGTP.Bookid
{
  key Carrid,
  key Connid,
  key Fldate,
  key Bookid,
      Class,
      OrderDate,
      Customid,
      _Customer
}
