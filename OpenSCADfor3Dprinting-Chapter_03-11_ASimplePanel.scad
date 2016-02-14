panelWidth=125;
panelHeight=50;
panelThick=2;

difference() {
    cube([panelWidth,panelHeight,panelThick]);
    for (i=[1:4]) {
        translate([panelWidth/5*i,panelHeight/2,panelThick/2]) {
            cylinder(h=panelThick*2,r=5,center=true);
        }
    }
    // bolt holes #6
    translate([8,8,panelThick/2])
        cylinder(h=panelThick*2,r=0.1495*25.4,center=true);
    translate([8,panelHeight-8,panelThick/2])
        cylinder(h=panelThick*2,r=0.1495*25.4,center=true);
    translate([panelWidth-8,8,panelThick/2])
        cylinder(h=panelThick*2,r=0.1495*25.4,center=true);
    translate([panelWidth-8,panelHeight-8,panelThick/2])
        cylinder(h=panelThick*2,r=0.1495*25.4,center=true);
}
