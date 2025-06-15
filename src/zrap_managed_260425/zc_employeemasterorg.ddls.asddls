@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employe Master & Org Data'

@Metadata.allowExtensions: true

@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZC_EmployeeMasterOrg
  as projection on ZI_EmployeeMasterActStat
{
  key Pernr,
      Begda,
      Endaa,
      ActionType,
      EmploymentStatus,
      Locallastchanged,
      Lastchanged,
      Createdby,
      Changedby,
      /* Associations */
      _orga,
      _personal
}
