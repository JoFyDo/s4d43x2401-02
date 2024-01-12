@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Average Rating'

define view entity ZI_22_RatingAvg
  as select from zabap_rating_a
{

  movie_uuid                       as MovieUuid,
  avg(rating as abap.dec( 16, 2 )) as RatingAvg
 
}

group by
  movie_uuid
