@EndUserText.label: 'Invoice header Interface view'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_RBKP_M as select from ZDEVL_RBKP_TABF_M {
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
    docst
}
