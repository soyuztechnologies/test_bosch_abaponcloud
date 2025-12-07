CLASS zcl_bsg_ab_first_class DEFINITION
 PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_BSG_AB_FIRST_CLASS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  select * from ZBSH_AB_CDS_ENT( p_ctry = 'IN' )  into TABLE  @data(lt_Data).

out->write( lt_data ).
  ENDMETHOD.
ENDCLASS.
