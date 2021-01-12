#include "colors.inc"
camera {
	location <0,3,-10>
	look_at <0,0.7,4>
	right x up y //Square aspect ratio
	angle 45
}

box {
	<-3,0,-3>, <3,-0.5,3>
	//pigment { checker White Gray}
	pigment { checker White Gray40}
	rotate y*45
	finish { diffuse 0.75 }
	finish { reflection 0.5 }
	}

light_source{
	<8,8,-12> rgb <1,1,1>
	}
	
