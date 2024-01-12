@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Publishing Year'

define view entity ZI_22_PublishingYearVH
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZABAP_PUBLISHING_YEAR' )
{
      @UI.hidden: true
  key domain_name,
      @UI.hidden: true
  key value_position,
      @UI.hidden: true
  key language,

      @EndUserText.label: 'Publishing Year'
      @EndUserText.quickInfo: 'Publishing Year'
      value_low as PublishingYear,

      @EndUserText.label: 'Info'
      @EndUserText.quickInfo: 'Info'
      text
}
