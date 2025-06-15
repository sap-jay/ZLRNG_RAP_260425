@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_SCWM_HUHDR
  as select from ZSCWM_HUHDR as huhdr
{
  key guid_hu as GuidHu,
  pmat_guid as PmatGuid,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchanged as Locallastchanged,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchanged as Lastchanged,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.lastChangedBy: true
  changedby as Changedby
  
}
