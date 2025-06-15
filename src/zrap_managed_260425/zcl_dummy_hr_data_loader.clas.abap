CLASS zcl_dummy_hr_data_loader  DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_dummy_hr_data_loader  IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " Constants
    DATA(lv_today) = sy-datum.

    " === Insert ZPA0000 - Employee Action Data ===
    INSERT zpa0000 FROM TABLE @( value #(
      ( client = sy-mandt pernr = '00000001' begda = lv_today  action_type = '01'  employment_status = '3' createdby = sy-uname ) ) ).

    " === Insert ZPA0001 - Org Assignment ===
    INSERT zpa0001 FROM TABLE @( value #(
      ( client = sy-mandt pernr = '00000001' begda = lv_today endda = '99991231' plans = '00000001' orgeh = '00000010' stell = '00000005' )
    ) ).

    " === Insert ZPA0002 - Personal Data ===
    INSERT zpa0002 FROM TABLE @( value #(
      ( client = sy-mandt pernr = '00000001' begda = lv_today endda = '99991231' nachn = 'Smith' vorna = 'Alice' gesch = 'F' gbdat = '19920301' famst = '1' natio = 'US' sprsl = 'E' createdby = sy-uname  )
    ) ).

    " === Insert ZHRP1001 - Position belongs to Org Unit ===
    INSERT zhrp1001 FROM TABLE @( value #(
      ( client = sy-mandt otype = 'S' objid = '00000001' relat = '003' begda = lv_today endda = '99991231' rsign = 'A' sclas = 'O' sobid = '00000010' createdby = sy-uname )
    ) ).

    out->write( 'Dummy HR data inserted successfully.' ).

  ENDMETHOD.

ENDCLASS.

