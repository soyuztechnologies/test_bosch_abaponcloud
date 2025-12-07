@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZBSH_AB_Association as select from ZBSH_AB_VOV   as bpa
association of one to many zbsh_ab_so_hdr as _sales
on $projection.bpkey = _sales.buyer

{
  key bpa.BpId  as bpkey,  
  //key _sales.order_id as Orderno,
 key bpa.BpRole,
    bpa.CompanyName,
  bpa.Street,
  bpa.Country,
  bpa.Region,
  bpa.City,
  _sales
  


}
