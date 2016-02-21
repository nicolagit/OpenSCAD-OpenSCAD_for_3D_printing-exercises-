module steps(z) {
    if (z<=50) {
        translate([0,0,1.1*z]) cube([z,z,z], center=true);
        steps(z+10);
    }
}

steps(5);
