@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for Runtime'

define view entity ZI_22_RuntimeText
  as select from zabap_movie_a
{
  movie_uuid             as MovieUUID,

  case when runtime_in_min > 150 then 'Überlänge'
  when runtime_in_min < 30 then 'Kurzfilm'
  else 'Normallänge' end as FilmLength

}
