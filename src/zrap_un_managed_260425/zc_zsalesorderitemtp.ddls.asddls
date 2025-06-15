@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forZSalesOrderItem'
@ObjectModel.semanticKey: [ 'ItemNo' ]
@Search.searchable: true
define view entity ZC_ZSalesOrderItemTP
  as projection on ZR_ZSalesOrderItemTP as ZSalesOrderItem
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key SalesOrder,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key ItemNo,
  MaterialID,
  @Semantics.quantity.unitOfMeasure: 'Unit'
  Quantity,
  @Semantics.unitOfMeasure: true
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_UnitOfMeasure', 
      element: 'UnitOfMeasure'
    }, 
    useForValidation: true
  } ]
  Unit,
  @Semantics.amount.currencyCode: 'Currency'
  NetPrice,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_Currency', 
      element: 'Currency'
    }, 
    useForValidation: true
  } ]
  Currency,
  DeliveryDate,
  ItemCategory,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby,
  _ZSalesOrderHeader : redirected to parent ZC_ZSalesOrderHeader01TP
  
}
