echo("Работа Полина Максимова");
w_Frame = 65;
d_Frame = 5;
h_Frame = 40;
fitnes_Frame = 4;
thickness_walls =2;
thickness_bottom = 2;
h_wall = 4;

w_back = 60;
h_back = 35;
thickness_back = 1; 

//walls();

//frame1();
//rotate([90, 0, 0])
//translate([0,0,3])
//backlight();
kit_frame();

module kit_frame(){
    bottom();
    color("blue")
    translate([0,0,h_wall/2+thickness_bottom/2]);
    walls();
}
module walls() {
difference(){
        cube([w_back+2*thickness_walls, h_back+2*thickness_walls,h_wall],center=true);
        color("red")
        cube([w_back, h_back,h_wall+1],center=true);
    }
}

module bottom(){
    cube([w_back+2*thickness_walls, h_back+2*thickness_walls,thickness_bottom],center=true);
    }

module backlight(){
    color("lightblue")
    cube([w_back, h_back, thickness_back], center=true);
}

module frame1() {
    difference() {
        cube([w_Frame, d_Frame, h_Frame], center = true);
        color("red") 
        cube([w_Frame - 2 * fitnes_Frame, d_Frame + 2, h_Frame - 2 * fitnes_Frame], center = true);
    }
}
