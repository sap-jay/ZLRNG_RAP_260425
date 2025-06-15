@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Master Actions & Status'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_EmployeeMasterActStat
  as select from zpa0000
  association [0..1] to ZI_EmployeePersonalData as _personal on $projection.Pernr = _personal.Pernr
  association [0..1] to ZI_OrgAssignment        as _orga     on $projection.Pernr = _orga.Pernr
{
  key pernr             as Pernr,
      begda             as Begda,
      endaa             as Endaa,
      action_type       as ActionType,
      employment_status as EmploymentStatus,
      locallastchanged  as Locallastchanged,
      lastchanged       as Lastchanged,
      createdby         as Createdby,
      changedby         as Changedby,

      _personal,
      _orga

}

where
  employment_status = '3';
