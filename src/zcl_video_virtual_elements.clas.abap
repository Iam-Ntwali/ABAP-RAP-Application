CLASS zcl_video_virtual_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_sadl_exit .
    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_video_virtual_elements IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.
*  Build Thumbnail URL From Video ID:
*  Example: Thumbnail = 'https://img.youtube.com/vi/<video_id>/hqdefault.jpg'
*  Get video_id from the URL by splitting the string by '/' and taking the last part.
*  Example: 'https://www.youtube.com/watch?v=abcd1234' -> 'abcd1234'

    DATA videos TYPE STANDARD TABLE OF zc_tuto_db_pn WITH DEFAULT KEY.
    videos = CORRESPONDING #( it_original_data ).

    LOOP AT videos ASSIGNING FIELD-SYMBOL(<videos>).

      DATA(video_id) = segment( val = <videos>-Url index = 4 sep = '/' ).
      <videos>-Thumbnail = 'https://img.youtube.com/vi/' && video_id && '/hqdefault.jpg'.

    ENDLOOP.

    ct_calculated_data = CORRESPONDING #( videos ).

  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.
ENDCLASS.
