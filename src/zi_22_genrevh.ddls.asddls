@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Genre'

define view entity ZI_22_GenreVH
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZABAP_GENRE' )
{
      @UI.hidden: true
  key domain_name,
      @UI.hidden: true
  key value_position,
      @UI.hidden: true
  key language,

      @EndUserText.label: 'Genre'
      @EndUserText.quickInfo: 'Genre'
      value_low as Genre,

      @EndUserText.label: 'Info'
      @EndUserText.quickInfo: 'Info'
      text
}
