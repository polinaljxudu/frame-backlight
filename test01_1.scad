echo("Работа Полина Максимова");
w_Frame = 65;
d_Frame = 5;
h_Frame = 40;
fitnes_Frame = 4;

w_back = 60;
h_back = 35;
thickness_back = 1; 

//frame1();
rotate([90, 0, 0])
backlight();

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
