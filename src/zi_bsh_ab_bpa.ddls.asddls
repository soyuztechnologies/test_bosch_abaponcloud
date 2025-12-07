@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'business partne'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
define view entity Zi_bsh_AB_BPA as select from zbsh_ab_bpa1
{
   key bp_id as BpId,
   key bp_role as BpRole,
   company_name as CompanyName,
   street as Street,
   country as Country,
   region as Region,
   city as City 
}
