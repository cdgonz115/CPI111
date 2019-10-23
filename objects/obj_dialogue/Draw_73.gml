/// @description draw dialogue

text_count += text_speed
text_visible = string_copy(text[text_page],0,text_count)
var xx = (x-view_xport[0])*display_scale
var yy = (y-view_yport[0])*display_scale
draw_self()
draw_text_ext_transformed(xx+margin, yy+margin, text_visible, -1, width-(margin*3),.5,.5,0)