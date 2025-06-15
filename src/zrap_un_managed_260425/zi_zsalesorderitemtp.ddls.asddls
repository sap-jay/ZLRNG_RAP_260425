@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forZSalesOrderItem'
define view entity ZI_ZSalesOrderItemTP
  as projection on ZR_ZSalesOrderItemTP as ZSalesOrderItem
{
  key SalesOrder,
  key ItemNo,
  MaterialID,
  Quantity,
  Unit,
  NetPrice,
  Currency,
  DeliveryDate,
  ItemCategory,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby,
  _ZSalesOrderHeader : redirected to parent ZI_ZSalesOrderHeader01TP
  
}
