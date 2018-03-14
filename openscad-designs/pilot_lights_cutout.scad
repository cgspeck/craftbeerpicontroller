include <vars.scad>;
use <lib.scad>;

base_width = 300;
base_height = 30;


number_of_lights = 5;

spacing = base_width / (number_of_lights + 1);

echo("Spacing ", spacing, "mm");

projection() difference() {
    cube([base_width, base_height, thickness]);

    for(i=[1:1:5]) {
        translate([
            spacing * i,
            base_height / 2,
            0
        ]) located_cylinder(9.5, thickness * 2);
    }
}