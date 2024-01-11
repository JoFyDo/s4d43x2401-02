@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ratings'
@Metadata.allowExtensions: true

define view entity ZC_22_Rating
  as projection on ZI_22_Rating
{
  key RatingUUID,
      MovieUUID,
      UserName,
      Rating,
      @Semantics.systemDateTime.createdAt: true
      RatingDate,


      /* Associations */
      _Movie : redirected to parent ZC_22_Movie

}
