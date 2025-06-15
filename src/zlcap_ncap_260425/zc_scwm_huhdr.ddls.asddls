@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_SCWM_HUHDR
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_SCWM_HUHDR
{
  key GuidHu,
  PmatGuid,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby
  
}
