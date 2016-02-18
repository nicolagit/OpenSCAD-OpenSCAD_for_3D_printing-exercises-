holer=2;
thick=6;

function half(n) = n/2;

module hole(x,y) {
// try this
// holer=20;
    translate([x,y,0]) cylinder(r=holer,height=thick);
}

cube([30,30,thick],center=true);
hole(10,half(20));
// this will override holer=2 above
// for both calls to hole
holer=6;
hole(-10,half(20));
