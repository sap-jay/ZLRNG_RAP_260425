@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Handling unit Header (IM)'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_HandlingUnitHeader
  as select from yvekp               as _huhdr
    join         ZI_HandlingUnitItem as _huitm on _huhdr.hu_id = _huitm.HuId

  association to ylikp as _delh on _huhdr.delivery_id = _delh.delivery_id
{
  key _huhdr.hu_id         as HuId,
      _huitm.ItemNo        as HuItm,
      _huhdr.delivery_id   as DeliveryId,
      _huhdr.pack_material as PackMaterial,
      _huhdr.weight        as Weight,
      _huitm.Unit          as Unit,
      _huitm.MaterialId    as MaterialId,


      _delh.ship_to_party  as shipto,
      _delh.source_doc_id  as sourcedoc,

      _huhdr.created_by    as CreatedBy,
      _huhdr.created_on    as CreatedOn
}
