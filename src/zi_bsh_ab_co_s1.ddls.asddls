@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'sales data'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #FACT

define view entity Zi_bsh_AB_CO_S1 as select from ZI_bsh_ab_Sales
association of many to one Zi_bsh_AB_BPA as _BusinessPartner
on $projection.Buyer = _BusinessPartner.BpId
{
   key ZI_bsh_ab_Sales.OrderId,
   ZI_bsh_ab_Sales.OrderNo,
   ZI_bsh_ab_Sales.Buyer,
   ZI_bsh_ab_Sales.ProductId,
   ZI_bsh_ab_Sales.Amount,
   ZI_bsh_ab_Sales.Currency,
   ZI_bsh_ab_Sales.Quantity,
   ZI_bsh_ab_Sales.Unit,
   _BusinessPartner
}
