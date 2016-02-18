module move_to_x(x) {
// use child() if children doesn't work
    translate([x,5,0]) children();
}
move_to_x(10) sphere(x);
