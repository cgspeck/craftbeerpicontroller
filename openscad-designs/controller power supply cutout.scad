include <vars.scad>;
use <lib.scad>;

// all from spec sheet

pwr_width =  129;
pwr_length = 98;

module base() {
    cube([pwr_width, pwr_length, thickness]);
}

projection() difference() {
    base();
    translate([78, 34, -1]) cylinder(h = thickness + 2, r1 = 0.5, r2 = 0.5);
    translate([78, 34 + 33, -1]) cylinder(h = thickness + 2, r1 = 0.5, r2 = 0.5);
}