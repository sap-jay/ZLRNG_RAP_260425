@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forZSalesOrderHeader'
define root view entity ZR_ZSalesOrderHeader01TP
  as select from yvbak as ZSalesOrderHeader
  composition [0..*] of ZR_ZSalesOrderItemTP as _ZSalesOrderItem
{
  key sales_order         as SalesOrder,
      doc_type            as DocType,
      sales_org           as SalesOrg,
      distr_channel       as DistrChannel,
      division            as Division,
      sold_to_party       as SoldToParty,
      customer_first_name as CustomerFirstName,
      cutomer_last_name   as CutomerLastName,
      order_date          as OrderDate,
      created_on          as CreatedOn,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locallastchanged    as Locallastchanged,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchanged         as Lastchanged,
      @Semantics.user.createdBy: true
      createdby           as Createdby,
      @Semantics.user.lastChangedBy: true
      changedby           as Changedby,
      _ZSalesOrderItem

}
