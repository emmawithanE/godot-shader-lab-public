shader_type spatial;

instance uniform float chopped : hint_range(0.0, 1.0, 0.2) = 0.0;

void vertex() {
	if (COLOR.r < chopped) {
		VERTEX.xz = VERTEX.xz * (1.0 - COLOR.r);
	}
}

void fragment() {
	// Called for every pixel the material is visible on.
}

//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
