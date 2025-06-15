@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forZSalesOrderHeader'
@ObjectModel.semanticKey: [ 'SalesOrder' ]
@Search.searchable: true
define root view entity ZC_ZSalesOrderHeader01TP
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ZSalesOrderHeader01TP as ZSalesOrderHeader
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
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
  _ZSalesOrderItem : redirected to composition child ZC_ZSalesOrderItemTP
  
}
