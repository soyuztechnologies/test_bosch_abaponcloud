CLASS lhc_booking DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS calculateTotalPrice FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Booking~calculateTotalPrice.

ENDCLASS.

CLASS lhc_booking IMPLEMENTATION.

  METHOD calculateTotalPrice.

      "Call the internal action which you created as reusable action
      MODIFY ENTITIES OF ZBSH_AB_travel IN LOCAL MODE
        ENTITY travel
            EXECUTE reCalcTotalPrice
            FROM CORRESPONDING #( keys ).


  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
