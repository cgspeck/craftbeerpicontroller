include <vars.scad>;
use <lib.scad>;

base_width = 70;
base_length = 200;

module base() {
    cube([base_width, base_length, thickness]);
}

module switched_inlet() {
    cube([30.5, 50, 5]);
    translate([
        (30.5 - 27) / 2,
        (50 - 46.4) / 2,
        -28.4]) cube([27, 46.4, 28.4]);
}

module switched_inlet_cutout() {
    // this is given on the spec sheet
    cube([28, 47.5, thickness + 2]);
}


module outlet_cutout() {
    // this is given on the spec sheet
    cube([32.5, 24.8, thickness + 2]);
}

inlet_x = (base_width - 47.5) / 2;
outlet_x = (base_width - 32.5) / 2;

projection() difference() {
    base();

    translate([inlet_x, 28 + 10, 0]) rotate([0, 0, 270]) switched_inlet_cutout();

    translate([inlet_x, (28 + 10) * 2 + 5, 0]) rotate([0, 0, 270]) switched_inlet_cutout();
    
    translate([outlet_x, base_length - (10 + 24.8), 0]) outlet_cutout();
    translate([outlet_x, base_length - (10 + 24.8) * 2, 0]) outlet_cutout();
    translate([outlet_x, base_length - (10 + 24.8) * 3, 0]) outlet_cutout();
}
//switched_inlet_cutout();
//outlet_cutout();