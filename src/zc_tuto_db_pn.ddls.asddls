@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_TUTO_DB_PN
  provider contract transactional_query
  as projection on ZR_TUTO_DB_PN
{
  key VideoUuid,
    
  @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIDEO_VIRTUAL_ELEMENTS'
  @EndUserText.label: 'Thumbnail'
  @Semantics.imageUrl: true
  virtual Thumbnail : abap.char(256),
  
  Title,
  Url,
  Description,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
