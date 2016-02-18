for(i=[0:2:10])
    for(j=[0,1]) echo(i+j);

for(i=[0:2:10],j=[0,1])
    echo(i+j);

for(i=[0:2:10],j=[0,1],k=[0,0.1,0.2])
    echo(i+j+k);

for(length=[1:5], width=[1:5]) {
    translate([0,0,length]) cube([length,width,0.5]);
}
