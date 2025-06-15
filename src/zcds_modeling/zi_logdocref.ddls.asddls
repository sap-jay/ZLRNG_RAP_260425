@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Logistics Document Referances'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_LogDocRef
  as select from ZI_HandlingUnitHeader as _huref

  association to yekko as _poh on _poh.purchase_id = _huref.sourcedoc
  association to yvbak as _soh on _soh.sales_order = _huref.sourcedoc
{
  key HuId,
      HuItm,
      DeliveryId,
      PackMaterial,
      Weight,
      Unit,
      MaterialId,
      shipto,
      sourcedoc,
      case
      when _poh.purchase_id <> '' then 'IBD'
      when _soh.sales_order <> '' then 'OBS'
      end as deliveryType,
      CreatedBy,
      CreatedOn
}
