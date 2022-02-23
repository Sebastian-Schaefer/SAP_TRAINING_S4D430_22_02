@AbapCatalog.sqlViewName: 'ZI01BOOKINGTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transactional Interface View: Booking'
@VDM.viewType: #TRANSACTIONAL
define view ZI_01_BOOKINGTP
  as select from ZI_01_BOOKING2
{
  key Carrid,
  key Connid,
  key Fldate,
  key Bookid,
      Class,
      OrderDate,
      Customid
}
