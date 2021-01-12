#include "colors.inc"

#include "base.pov"
//camera {
//	location <11,11,-40>
//	look_at <11,11,0>
//	right x up y //Square aspect ratio
//	angle 45
//}
//sphere {
//	<0,0,0> 1
//}


#declare Floppy_Base = difference {
box {<0,0,0> <22,22,0.8>}
box {<0,0,-1> <5,5,1>
	rotate z*45
	translate <22,19,0>
}
box {<0.3,1.5,-1> <1.7,2.6,1>}
box {<20.3,1.5,-1> <21.7,2.6,1>}
}

#declare Floppy_Metal = union{
difference {
	box {<5.5,22.1,-0.1> <16,15,0.9>}
	box {<12,21,-1> <15,16,1>}
}
difference {
	cylinder {<11,11,0.5> <11,11,0.9> 3}
	cylinder {<11,11,0.5> <11,11,1> 0.5}
	box {<0,0,-1> <1.3,2.6,1>
		rotate -z*30
		translate <8.5,11,0>
	}
}
}

#declare Floppy_Label = union{
box{<3,0.2,-0.1> <19,12,0.5>}
}

#declare Floppy = union {
object {
	Floppy_Base 
	pigment{image_map { png "nya_base.png" map_type 0} }
	finish {
		phong 0.2
		diffuse 0.4
	}
}
object {
	Floppy_Metal
	pigment{image_map { png "nya_paw.png" map_type 0} scale 22 translate <16,0.5,0> rotate z*180 }
	finish {
		reflection 0.25
		diffuse 0.4
		phong 1
		ambient .1
		metallic 0.5
	}
}
object {
	Floppy_Label
	pigment{image_map { png "nya_label.png" map_type 0} scale 22 rotate z*180 }
	finish {
	phong 0.2
	}
}
}

object {
	Floppy
	scale 1/22
	translate <-0.5,-0.5,0>
	scale 4
	rotate z*180
	rotate -y*10 + (clock * <0,360,0>)
	translate <0,2.5 + sin(clock*2*pi) * 0.2 ,-2>
}
