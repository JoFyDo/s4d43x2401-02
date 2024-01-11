@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for Genre'

/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity ZI_22_GenreText
  as select from zabap_movie_a
{
  genre as Genre

}
