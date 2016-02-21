w=25;
h=10;
t=3;

mtghole=1; // set to zero for no mounting holes

difference() {
// main panel
    cube([w,h,t]);
// switch cut outs
    translate([w/4,h/2,-.1]) cylinder(h=2*t,r=.5);
    translate([2*w/4,h/2,-.1]) cylinder(h=2*t,r=.5);
    translate([3*w/4,h/2,-.1]) cylinder(h=2*t,r=.5);
// mounting holes
    if (mtghole==1) {
        translate([.3,.3,-.1]) cylinder(h=2*t,r=.1);
        translate([w-.3,h-.3,-.1]) cylinder(h=2*t,r=.1);
        translate([.3,h-.3,-.1]) cylinder(h=2*t,r=.1);
        translate([w-.3,.3,-.1]) cylinder(h=2*t,r=.1);
    }
}
