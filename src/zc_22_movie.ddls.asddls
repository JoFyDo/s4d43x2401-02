@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movies'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_22_Movie
  as projection on ZI_22_Movie
{
  key MovieUUID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Title,
      Genre,
      PublishingYear,
      RuntimeInMin,
      ImageUrl,
      @Semantics.systemDateTime.createdAt: true
      CreatedAt,
      @Semantics.user.createdBy: true
      CreatedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      LastChangedBy,
      
      _Ratings : redirected to composition child ZC_22_Rating
     
}
