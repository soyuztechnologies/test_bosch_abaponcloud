@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZBSH_AB_JOIN as select from ZBSH_AB_VOV   as bpa
inner join zbsh_ab_so_hdr as sales
on bpa.BpId = sales.buyer

{

  key bpa.BpId,
  
  key sales.order_id as Orderno,
 bpa.BpRole,
    bpa.CompanyName,
  bpa.Street,
  bpa.Country,
  bpa.Region,
  bpa.City,
  

  sales.buyer as Buyer,
  sales.gross_amount as GrossAmount,
  sales.currency_code as CurrencyCode,
  sales.created_by as CreatedBy,
  sales.created_on as CreatedOn,
  sales.changed_by as ChangedBy,
  sales.changed_on as ChangedOn

}
