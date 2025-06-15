@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SalesOrderHeader
  as select from yvbak as _soh
  left outer join yvbap as _soi on _soh.sales_order = _soi.sales_order
{
  key _soh.sales_order                                                  as SalesOrder,
      _soh.doc_type                                                     as DocType,
      _soh.sales_org                                                    as SalesOrg,
      _soh.distr_channel                                                as DistrChannel,
      _soh.division                                                     as Division,
      _soh.sold_to_party                                                as SoldToParty,
      concat_with_space(_soh.customer_first_name, _soh.cutomer_last_name, 1) as CustomerName,
      _soh.order_date                                                   as OrderDate,
      _soh.created_by                                                   as CreatedBy,
      _soh.created_on                                                   as CreatedOn
}
