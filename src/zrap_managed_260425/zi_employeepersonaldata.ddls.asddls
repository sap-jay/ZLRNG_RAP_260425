@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Personal Data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_EmployeePersonalData
  as select from zpa0002
{
  key pernr            as Pernr,
      begda            as Begda,
      endda            as Endda,
      gesch            as Gesch,
      gbdat            as Gbdat,
      famst            as Famst,
      vorna            as Vorna,
      nachn            as Nachn,
      natio            as Natio,
      sprsl            as Sprsl,
      locallastchanged as Locallastchanged,
      lastchanged      as Lastchanged,
      createdby        as Createdby,
      changedby        as Changedby
}
