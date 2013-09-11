include <config.scad>
use <leg.scad>
use <strut.scad>
use <top.scad>
use <shelf.scad>

//Leg
translate([-table_width/2+leg_timber_width/2,-table_depth/2+leg_timber_width/2,0])
{
    leg(leg_length,lap_depth,leg_timber_width,strut_timber_width,shelf_height);
}

//Leg
translate([table_width/2-leg_timber_width/2,-table_depth/2+leg_timber_width/2,0]){
    rotate([0,0,90]){
        leg(leg_length,lap_depth,leg_timber_width,strut_timber_width,shelf_height);
    }
}

//Leg
translate([-table_width/2+leg_timber_width/2,table_depth/2-leg_timber_width/2,0]){
    rotate([0,0,-90]){
        leg(leg_length,lap_depth,leg_timber_width,strut_timber_width,shelf_height);
    }
}

//Leg
translate([table_width/2-leg_timber_width/2,table_depth/2-leg_timber_width/2,0]){
    rotate([0,0,180]){
        leg(leg_length,lap_depth,leg_timber_width,strut_timber_width,shelf_height);
    }
}


//Back High narrow strut
translate([0,table_depth/2-strut_timber_depth/2,leg_length/2-strut_timber_width/2])
{
    rotate([180,0,0]){
        strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,table_width);
    }
}

//Back low narrow strut
translate([0,table_depth/2-strut_timber_depth/2, shelf_height-leg_length/2+strut_timber_width/2])
{
    rotate([180,0,0]){
        strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,table_width);
    }
}


//Front high narrow strut
translate([0,-table_depth/2+strut_timber_depth/2,leg_length/2-strut_timber_width/2])
{
    rotate([0,0,0]){
        strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,table_width);
    }
}

//Back low narrow strut
translate([0,-table_depth/2+strut_timber_depth/2, shelf_height-leg_length/2+strut_timber_width/2])
{
    rotate([0,0,0]){
        strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,table_width);
    }
}



//Left high narrow strut
translate([-table_width/2+strut_timber_depth/2,0,leg_length/2-strut_timber_width/2])
{
    rotate([180,0,90]){
        strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,table_depth);
    }
}

//Left low narrow strut
translate([-table_width/2+strut_timber_depth/2, 0, shelf_height-leg_length/2+strut_timber_width/2])
{
    rotate([180,0,90]){
        strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,table_depth);
    }
}


//Left high narrow strut
translate([table_width/2-strut_timber_depth/2,0,leg_length/2-strut_timber_width/2])
{
    rotate([0,0,90]){
        strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,table_depth);
    }
}

//Left low narrow strut
translate([table_width/2-strut_timber_depth/2, 0, shelf_height-leg_length/2+strut_timber_width/2])
{
    rotate([0,0,90]){
        strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,table_depth);
    }
}

//Top
translate([0,0,leg_length/2+shelf_thickness/2]){
    top(table_width,table_depth,shelf_thickness,strut_timber_width,strut_timber_depth,leg_timber_width, lap_depth,43);
}

//Top
translate([0,0,shelf_height-leg_length/2+strut_timber_width+shelf_thickness/2]){
    shelf(table_width,table_depth,shelf_thickness,strut_timber_width,strut_timber_depth,leg_timber_width, lap_depth,43);
}
