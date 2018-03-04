/* [Global] */
// Space to add between ridge and top and bottom of screen
screen_extra_spacing = 5;
// Added to screen thickness to allow a seal/gasket
gasket_thickness = 5;
// As measured along M6 bolts
bracket_screw_diameter = 5.87;

/* [Captured Nut] */
do_captured_nuts = true;
nut_width = 9.88;
nut_depth = 5.82;
nut_bury_offset = 3;
detent_arc = 0.5;
detent_width = 2;


/* [Hidden] */
clearance_tight = 0.2;
clearance_loose = 0.4;
pi_screen_depth = 9.12;
pi_screen_height = 110.76;

// M6 bolts
adjusted_bracket_screw_diameter = bracket_screw_diameter + clearance_loose;


adjusted_nut_depth = nut_depth + nut_bury_offset;

adjusted_nut_width = nut_width + clearance_tight;

brace_thickness = adjusted_nut_depth;
brace_width = adjusted_nut_width * 1.5;
ridge_height = adjusted_nut_width * 1.5;

total_brace_depth = pi_screen_depth + brace_thickness + gasket_thickness;
total_brace_y = pi_screen_height + ridge_height * 2 + screen_extra_spacing * 2;
// M3 bolts
pi_screen_screw_diameter = 3;

bracket_screw_radius = adjusted_bracket_screw_diameter / 2; 

pi_screen_screw_radius = pi_screen_screw_diameter / 2;

echo(total_brace_y, " mm length");
echo(total_brace_depth, " mm depth");

module cylinder_outer(height,radius,fn=36){
   fudge = 1/cos(180/fn);
   cylinder(h=height,r=radius*fudge,$fn=fn);}

module DetentRing(radius, arc, width) {
    cylinder_base_radius = 1;
    cylinder_length = radius / 3;
    for(angle = [0:60:300]) {
        x_pos = cos(angle) * radius;
        y_pos = sin(angle) * radius;
        x_rot = 90 - angle;
        translate([x_pos, y_pos, 0]) rotate([x_rot,90,0]) resize([width, 2 * arc, cylinder_length])  cylinder(h=cylinder_length, r1=cylinder_base_radius, r2=cylinder_base_radius, center=true, $fn=36);
    }
}

difference() {
    linear_extrude(brace_width) difference() {
        square([
            total_brace_depth,
            total_brace_y,
            ]
        );
        
        translate([0, ridge_height, 0]) square([
            pi_screen_depth + gasket_thickness,
            pi_screen_height + 2 * screen_extra_spacing
        ]);
    }
    
    // holes for the bracket itself
    translate([-1, ridge_height / 2, brace_width / 2]) rotate([0, 90, 0]) cylinder_outer(total_brace_depth + 2, bracket_screw_radius);
    
    translate([-1, total_brace_y - ridge_height / 2, brace_width / 2]) rotate([0, 90, 0]) cylinder_outer(total_brace_depth + 2, bracket_screw_radius);
    
    if (do_captured_nuts) {
        // area for captured nuts
        translate([total_brace_depth - adjusted_nut_depth, ridge_height / 2, brace_width / 2]) {
            rotate([0, 90, 0]) linear_extrude(adjusted_nut_width) circle(d=adjusted_nut_width, $fn=6);
        }

        translate([total_brace_depth - adjusted_nut_depth, total_brace_y - ridge_height / 2, brace_width / 2]) rotate([0, 90, 0]) linear_extrude(adjusted_nut_width) circle(d=adjusted_nut_width, $fn=6);
    };

    // holes for the screen
    translate([-1, (ridge_height + pi_screen_height + screen_extra_spacing) - 21.58, brace_width / 2]) rotate([0, 90, 0]) cylinder_outer(total_brace_depth + 2, pi_screen_screw_radius);
    
    translate([-1, (ridge_height + pi_screen_height + screen_extra_spacing) - 21.58 - 65.65, brace_width / 2]) rotate([0, 90, 0]) cylinder_outer(total_brace_depth + 2, pi_screen_screw_radius);
}

if (do_captured_nuts) {
    // detents
    translate([total_brace_depth - detent_width / 2, ridge_height / 2, brace_width / 2]) rotate([0, 90, 0]) DetentRing(adjusted_nut_width / 2, detent_arc, detent_width);

    translate([total_brace_depth - detent_width / 2, total_brace_y - ridge_height / 2, brace_width / 2]) rotate([0, 90, 0]) DetentRing(adjusted_nut_width / 2, detent_arc, detent_width);
};
