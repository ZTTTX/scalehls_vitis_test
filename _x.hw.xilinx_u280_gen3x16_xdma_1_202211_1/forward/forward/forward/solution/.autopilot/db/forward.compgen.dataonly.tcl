# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_ctrl {
v25 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
v26 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
v27 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict ctrl $port_ctrl


