CLASS zcl_eml_demo_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES   if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_eml_demo_class IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    "READ

    READ ENTITIES OF zr_scwm_huhdr
    ENTITY huhdr
    FROM VALUE #( ( GuidHu = 'F2BA35A5B4531FE08AA0943C4C35D647' ) )
    RESULT DATA(huhdr)
    FAILED DATA(Failed)
    REPORTED DATA(repoered).

    "   READ ENTITIES OF ZI_EmployeeMasterActStat
    "ENTITY ZI_EmployeeMasterActStat by \_personal
    "FROM VALUE #( ( GuidHu = 'F2BA35A5B4531FE08AA0943C4C35D647' ) )
    "RESULT DATA(huhdr)
    "FAILED DATA(Failed)
    "REPORTED DATA(repoered).

    "out->write( huhdr ).

    "Modify - update

    "MODIFY ENTITIES OF ZR_SCWM_HUHDR
    "ENTITY HUHDR
    "UPDATE
    "SET FIELDS WITH VALUE #( (
    "GUIDHU = '8E83722DB4851FD08FD18444643600C5'
    "PMATGUID = '2BA35A5B4531FE08AA0943C4C35D6480' ) )
    "FAILED DATA(FAILED1)
    "REPORTED DATA(REPOERED1).

    "MODIFY ENTITIES OF zr_scwm_huhdr
    "ENTITY huhdr
    "CREATE
    "SET FIELDS WITH VALUE
    "#( ( %cid = 'CreaeOpp_2'
    "     GuidHu = '8E83722DB4851FD08FD18444643600C7'
    "     PmatGuid = '2BA35A5B4531FE08AA0943C4C35D6460' ) )
    "MAPPED DATA(mapped)
    "FAILED DATA(failed1)
    "REPORTED DATA(repoered1).

    MODIFY ENTITIES OF zr_scwm_huhdr
    ENTITY huhdr
    DELETE FROM
    VALUE
    #( ( GuidHu = 'F2BA35A5B4531FE08AA0943C4C35D647' ) )
    FAILED DATA(failed1)
    REPORTED DATA(repoered1).



    COMMIT ENTITIES
    RESPONSE OF zr_scwm_huhdr
    FAILED DATA(lt_com_failed)
    REPORTED  DATA(lt_com_reported).

    "out->write( mapped ).
    out->write( failed1 ).
    out->write( repoered1 ).


  ENDMETHOD.
ENDCLASS.
