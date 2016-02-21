for (length=[1:5], width=[1:5])
    {
//    index=width/5; //will not work
    assign(index=width/5)
    translate([0,0,length]) cube([length,width,index]);
    }
