@EndUserText.label: 'Invoice header Interface view'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_RBKP_M
  as select from ZDEVL_RBKP_TABF_M
{
  key belnr,
  key gjahr,
      objid,
      blart,
      bldat,
      budat,
      tcode,
      usnam,
      cpudt,
      cputm,
      xblnr,
      lifnr,
      waers,
      kursf,
      wmwst1,
      dmbtr,
      mwskz1,
      zterm,
      rbstat,
      docst,
      @Semantics.text: true
      case when rbstat = '5' then 3
         when rbstat = 'A' then 1
         when rbstat = '2' then 5
         when rbstat = 'B' then 2 else 0 end as StatusCriticality
}
