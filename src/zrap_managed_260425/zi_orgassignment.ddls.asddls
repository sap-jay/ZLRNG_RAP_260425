@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Org Assignment'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_OrgAssignment
  as select from zpa0001 as _orga
  association [0..*] to ZI_OrgManagementData as _orgm on $projection.Plans = _orgm.Objid
{
  key pernr            as Pernr,
      begda            as Begda,
      endda            as Endda,
      burks            as Burks,
      werks            as Werks,
      persg            as Persg,
      persk            as Persk,
      orgeh            as Orgeh,
      plans            as Plans,
      stell            as Stell,
      locallastchanged as Locallastchanged,
      lastchanged      as Lastchanged,
      createdby        as Createdby,
      changedby        as Changedby,
      
      _orgm
}
