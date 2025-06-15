@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Org Management Data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_OrgManagementData
  as select from zhrp1001
{
  key plvar            as Plvar,
  key otype            as Otype,
  key objid            as Objid,
  key relat            as Relat,
      begda            as Begda,
      endda            as Endda,
      rsign            as Rsign,
      sclas            as Sclas,
      sobid            as Sobid,
      locallastchanged as Locallastchanged,
      lastchanged      as Lastchanged,
      createdby        as Createdby,
      changedby        as Changedby
}
