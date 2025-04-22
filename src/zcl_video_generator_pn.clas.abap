CLASS zcl_video_generator_pn DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_video_generator_pn IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    GET TIME STAMP FIELD DATA(lv_time_stamp).

    DATA itab TYPE TABLE OF ztuto_db_pn.

    TRY.
        itab = VALUE #(
          ( video_uuid = cl_system_uuid=>create_uuid_x16_static(  )
            title = `Let's code ABAP | RESTful Application Programming Model (RAP) | CDS | Virtual Elements`
            url = 'https://www.youtube.com/watch?v=BEbztssJlg8'
            description = 'In this video we build a SAP YouTube Tutorials App with ABAP and the ABAP RESTful Application Programming Model (RAP'
            local_created_by = sy-uname
            local_created_at = lv_time_stamp
            local_last_changed_by = sy-uname
            local_last_changed_at = lv_time_stamp
            last_changed_at = lv_time_stamp
          )
          (
            video_uuid = cl_system_uuid=>create_uuid_x16_static(  )
            title = `Let's code ABAP | ABAP Development Tools (ADT) | Eclipse`
            url = 'https://www.youtube.com/watch?v=2vX0g1j3k4E'
            description = 'In this video we build a SAP YouTube Tutorials App with ABAP and the ABAP Development Tools (ADT) in Eclipse'
            local_created_by = sy-uname
            local_created_at = lv_time_stamp
            local_last_changed_by = sy-uname
            local_last_changed_at = lv_time_stamp
            last_changed_at = lv_time_stamp
          )
        ).
      CATCH cx_uuid_error.
        out->write( |Error creating UUID: { sy-subrc }| ).
    ENDTRY.

    DELETE FROM ztuto_db_pn.
    INSERT ztuto_db_pn FROM TABLE @itab.

    out->write( |{ sy-dbcnt } entries inserted sucessfully.| ).

  ENDMETHOD.
ENDCLASS.
