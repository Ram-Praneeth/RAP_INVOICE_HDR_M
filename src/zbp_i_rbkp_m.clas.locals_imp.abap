CLASS lhc_ZI_RBKP_M DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR zi_rbkp_m RESULT result.

    METHODS park FOR MODIFY
      IMPORTING keys FOR ACTION zi_rbkp_m~park RESULT result.

    METHODS post FOR MODIFY
      IMPORTING keys FOR ACTION zi_rbkp_m~post RESULT result.

    METHODS saveComplete FOR MODIFY
      IMPORTING keys FOR ACTION zi_rbkp_m~saveComplete RESULT result.

ENDCLASS.

CLASS lhc_ZI_RBKP_M IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD park.
  ENDMETHOD.

  METHOD post.
  ENDMETHOD.

  METHOD saveComplete.
  ENDMETHOD.

ENDCLASS.
