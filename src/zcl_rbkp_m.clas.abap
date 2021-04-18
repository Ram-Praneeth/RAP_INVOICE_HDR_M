CLASS zcl_rbkp_m DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    CLASS-METHODS : get_data FOR TABLE FUNCTION zdevl_rbkp_tabf_m.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rbkp_m IMPLEMENTATION.
  METHOD get_data
  BY DATABASE FUNCTION
   FOR HDB LANGUAGE
  SQLSCRIPT OPTIONS READ-ONLY USING zrbkp.

    itab =   select client, belnr ,gjahr ,blart,  bldat
             , budat, usnam, tcode, cpudt, cputm,
              xblnr,  lifnr, waers, kursf, wmwst1, mwskz1, zterm,rbstat
              FROM zrbkp;

    RETURN SELECT client, belnr, gjahr, ( concat ( belnr, gjahr ) ) as objid, blart,  bldat
             , budat, tcode, usnam, cpudt, cputm,
              xblnr,  lifnr, waers, kursf, wmwst1,
            ( kursf * wmwst1 ) as dmbtr,mwskz1, zterm,rbstat,
             CASE rbstat
             WHEN 'A' THEN 'Parked'
             WHEN '5' THEN 'Posted'
             WHEN '2' THEN 'Deleted'
             WHEN 'B' THEN 'Parked and completed'
             ELSE ''
             END as docst
             FROM :itab;

  ENDMETHOD.

ENDCLASS.
