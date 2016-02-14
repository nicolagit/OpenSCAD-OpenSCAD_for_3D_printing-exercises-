union() {
//one weight
    translate([-10,0,0])
        difference() {  // cut weight in half
            sphere(r=5);
%           translate([0,-5,-5]) cube(10);
        }
// bar
    rotate([0,90,0]) cylinder(r=2,h=20, center=true);
// other weight
    translate([10,0,0])
        difference() { // cut weight in half in other direction
            sphere(r=5);
                translate([-10,-5,-5]) cube(10);
        }
} 
