w=25;           //width of panel
h=10;           //height of panel
t=3;            //thickness of panel
nrswholes=3;    // number of switch holes
mtghole=1;      //set to zero for no mounting holes

function getwidth(n)=n*w/(nrswholes+1);

module panel() {        // main panel
    cube([w,h,t]);
}

module switch(n) {      // switch holes
    translate([getwidth(n),h/2,-.1])
        cylinder(h=2*t,r=.5);
}

module mthole(x,y) {    // mounting holes
    translate([x,y,-.1]) cylinder(h=2*t,r=.1);
}

difference() {
//main panel
    panel();
//switch cut outs
    for (i=[1:nrswholes])
        switch(i);
//mounting holes
    if (mtghole==1) {
        for (i=[.3,w-.3], j=[.3,h-.3]) {
            mthole(i,j);
        }
    }
}
