@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ratings'

define view entity ZI_22_Rating
  as select from zabap_rating_a
  association        to parent ZI_22_Movie as _Movie     on $projection.MovieUUID = _Movie.MovieUUID

  association [1..1] to ZI_22_GenreText    as _GenreText on $projection.MovieUUID = _GenreText.MovieUUID
{
  key rating_uuid      as RatingUUID,
      movie_uuid       as MovieUUID,
      user_name        as UserName,
      rating           as Rating,
      rating_date      as RatingDate,


      _Movie,
      _GenreText.Genre as Genre


}
