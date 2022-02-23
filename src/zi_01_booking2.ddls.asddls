@AbapCatalog.sqlViewName: 'ZI01BOOKING2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic Interface View: Booking'
@VDM.viewType: #BASIC
define view ZI_01_BOOKING2
  as select from sbook
{
  key carrid     as Carrid,
  key connid     as Connid,
  key fldate     as Fldate,
  key bookid     as Bookid,
      class      as Class,
      order_date as OrderDate,
      customid   as Customid
}
