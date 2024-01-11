@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movies'
define root view entity ZI_22_Movie
  as select from zabap_movie_a

  composition [0..*] of ZI_22_Rating      as _Ratings
  association [1..1] to ZI_22_RatingAvg   as _RatingAvg   on $projection.MovieUUID = _RatingAvg.MovieUUID
  association [1..1] to ZI_22_RuntimeText as _RuntimeText on $projection.MovieUUID = _RuntimeText.MovieUUID
{
  key movie_uuid              as MovieUUID,
      title                   as Title,
      genre                   as Genre,
      publishing_year         as PublishingYear,
      runtime_in_min          as RuntimeInMin,
      image_url               as ImageUrl,
      created_at              as CreatedAt,
      created_by              as CreatedBy,
      last_changed_at         as LastChangedAt,
      last_changed_by         as LastChangedBy,


      _Ratings,
      _RatingAvg.RatingAvg    as RatingAvg,
      _RuntimeText.FilmLength as DescriptionFilmLength,

      case when _RatingAvg.RatingAvg > 6.7 then 3
      when _RatingAvg.RatingAvg > 3.4 then 2
      else 1 end              as RatingColor

}
