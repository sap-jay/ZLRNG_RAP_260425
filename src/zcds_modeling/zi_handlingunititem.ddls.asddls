@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Handling unit Item (IM)'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_HandlingUnitItem as select from yvepo
{
    key hu_id as HuId,
    key item_no as ItemNo,
    material_id as MaterialId,
    quantity as Quantity,
    unit as Unit
}
