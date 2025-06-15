@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forZSalesOrderItem'
define view entity ZR_ZSalesOrderItemTP
  as select from YVBAP as ZSalesOrderItem
  association to parent ZR_ZSalesOrderHeader01TP as _ZSalesOrderHeader on $projection.SalesOrder = _ZSalesOrderHeader.SalesOrder
{
  key SALES_ORDER as SalesOrder,
  key ITEM_NO as ItemNo,
  MATERIAL_ID as MaterialID,
  @Semantics.quantity.unitOfMeasure: 'Unit'
  QUANTITY as Quantity,
  UNIT as Unit,
  @Semantics.amount.currencyCode: 'Currency'
  NET_PRICE as NetPrice,
  CURRENCY as Currency,
  DELIVERY_DATE as DeliveryDate,
  ITEM_CATEGORY as ItemCategory,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCALLASTCHANGED as Locallastchanged,
  LASTCHANGED as Lastchanged,
  CREATEDBY as Createdby,
  CHANGEDBY as Changedby,
  _ZSalesOrderHeader
  
}
