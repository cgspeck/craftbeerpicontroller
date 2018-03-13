include <vars.scad>;
use <lib.scad>;

base_width = 58;
base_length = 90;

module base() {
    cube([base_width, base_length, thickness]);
}

module switched_inlet_cutout() {
    // this is given on the spec sheet
    cube([28, 47.5, thickness - 1]);
}

module iec320_c14_outlet_719W_00_03() {
    // cut outs from spec sheet
    hole_centers = 36;
    screw_diameters = 3.5 + CLEARANCE_LOOSE_FIT;
    screw_radius = screw_diameters / 2;
    height = 31.4;
    
    compartment_width = 27.3 + CLEARANCE_LOOSE_FIT;
        
    translate([0, height / 2, 0]) cylinder(r1=screw_radius, r2=screw_radius, h=thickness*2);
    translate([
        (hole_centers - compartment_width) / 2,
        0,
        0
    ]) cube([compartment_width, 31.4, thickness * 2]);
    translate([hole_centers, height / 2, 0]) cylinder(r1=screw_radius, r2=screw_radius, h=thickness*2);
    
}


inlet_x = 0;

difference() {
    
    union() {
        base();

        translate([inlet_x, 28 + 10, thickness]) rotate([0, 0, 270]) switched_inlet_cutout();

        translate([inlet_x, (28 + 10) * 2 + 5, thickness]) rotate([0, 0, 270]) switched_inlet_cutout();
    }
    
    translate([base_width - 26, 6, 0]) rotate([0, 0, 90]) iec320_c14_outlet_719W_00_03();

    translate([base_width - 11, 49, 0]) rotate([0, 0, 90]) iec320_c14_outlet_719W_00_03();
}