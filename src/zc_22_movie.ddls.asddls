@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movies'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_22_Movie
  provider contract transactional_query
  as projection on ZI_22_Movie
{
  key MovieUUID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Title,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_22_GenreVH', element: 'Genre' } }]
      Genre,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_22_PublishingYearVH', element: 'PublishingYear' } }]
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
      RatingAvg,
      DescriptionFilmLength,
      RatingColor,
      
      
      _Ratings : redirected to composition child ZC_22_Rating
     
}
