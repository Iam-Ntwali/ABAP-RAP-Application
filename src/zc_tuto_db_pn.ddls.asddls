@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_TUTO_DB_PN
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_TUTO_DB_PN
{
  key VideoUuid,
  Title,
  Url,
  Description,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
