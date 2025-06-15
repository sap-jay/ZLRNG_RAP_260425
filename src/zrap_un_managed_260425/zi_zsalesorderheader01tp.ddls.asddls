@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forZSalesOrderHeader'
define root view entity ZI_ZSalesOrderHeader01TP
  provider contract TRANSACTIONAL_INTERFACE
  as projection on ZR_ZSalesOrderHeader01TP as ZSalesOrderHeader
{
  key SalesOrder,
  DocType,
  SalesOrg,
  DistrChannel,
  Division,
  SoldToParty,
  CustomerFirstName,
  CutomerLastName,
  OrderDate,
  CreatedOn,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby,
  _ZSalesOrderItem : redirected to composition child ZI_ZSalesOrderItemTP
  
}
