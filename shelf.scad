
module shelf(table_width,table_depth,shelf_thickness,strut_timber_width,strut_timber_depth,leg_timber_width, lap_depth,brace_length)
{
    difference()
    {
      cube([table_width,table_depth,shelf_thickness],true);
    	
    	//Corner cutouts
    	//Back Right
    	translate([table_width/2-leg_timber_width/2,
    						 table_depth/2-leg_timber_width/2,
    						 0])
    	{
    		#cube([leg_timber_width,leg_timber_width,shelf_thickness],true);
    	}

    	//Back Left    	
    	translate([(table_width/2-leg_timber_width/2)*-1,
    							table_depth/2-leg_timber_width/2,
    							0])
    	{
    		#cube([leg_timber_width,leg_timber_width,shelf_thickness],true);
    	}    
    	
    	//Front Right
    	translate([table_width/2-leg_timber_width/2,
    						 (table_depth/2-leg_timber_width/2)*-1,
    						 0])
    	{
    		#cube([leg_timber_width,leg_timber_width,shelf_thickness],true);
    	}    	

    	//Front Left
    	translate([(table_width/2-leg_timber_width/2)*-1,
    						 (table_depth/2-leg_timber_width/2)*-1,0])
    	{
    		#cube([leg_timber_width,leg_timber_width,shelf_thickness],true);
    	}
    	
    	//Back Right - x-parallel
    	translate([table_width/2 - brace_length/2 - leg_timber_width,
    						table_depth/2 - strut_timber_depth/2 - strut_timber_depth,
    						-shelf_thickness/2 + shelf_thickness/4/2])
    	{
				cube([brace_length,strut_timber_depth,shelf_thickness/4],true);
			}
			
			//Back right y-parallel
		  translate([table_width/2 - strut_timber_depth/2 - strut_timber_depth,
    						table_depth/2 - brace_length/2 - leg_timber_width,
    						-shelf_thickness/2 + shelf_thickness/4/2])
    	{
				cube([strut_timber_depth,brace_length,shelf_thickness/4],true);
			}
			
			
			//Back Left - x-parallel
    	translate([(table_width/2 - brace_length/2 - leg_timber_width)*-1,
    						table_depth/2 - strut_timber_depth/2 - strut_timber_depth,
    						-shelf_thickness/2 + shelf_thickness/4/2])
    	{
				cube([brace_length,strut_timber_depth,shelf_thickness/4],true);
			}
			
			//Back Left y-parallel
		  translate([(table_width/2 - strut_timber_depth/2 - strut_timber_depth)*-1,
    						table_depth/2 - brace_length/2 - leg_timber_width,
    						-shelf_thickness/2 + shelf_thickness/4/2])
    	{
				cube([strut_timber_depth,brace_length,shelf_thickness/4],true);
			}
			
			
			//Front Right - x-parallel
    	translate([table_width/2 - brace_length/2 - leg_timber_width,
    						(table_depth/2 - strut_timber_depth/2 - strut_timber_depth)*-1,
    						-shelf_thickness/2 + shelf_thickness/4/2])
    	{
				cube([brace_length,strut_timber_depth,shelf_thickness/4],true);
			}
			
			//Back right y-parallel
		  translate([table_width/2 - strut_timber_depth/2 - strut_timber_depth,
    						(table_depth/2 - brace_length/2 - leg_timber_width)*-1,
    						-shelf_thickness/2 + shelf_thickness/4/2])
    	{
				cube([strut_timber_depth,brace_length,shelf_thickness/4],true);
			}
			
			
			//Front Left - x-parallel
    	translate([(table_width/2 - brace_length/2 - leg_timber_width)*-1,
    						(table_depth/2 - strut_timber_depth/2 - strut_timber_depth)*-1,
    						-shelf_thickness/2 + shelf_thickness/4/2])
    	{
				cube([brace_length,strut_timber_depth,shelf_thickness/4],true);
			}
			
			//Front Left y-parallel
		  translate([(table_width/2 - strut_timber_depth/2 - strut_timber_depth)*-1,
    						(table_depth/2 - brace_length/2 - leg_timber_width)*-1,
    						-shelf_thickness/2 + shelf_thickness/4/2])
    	{
				cube([strut_timber_depth,brace_length,shelf_thickness/4],true);
			}

		}
		
		//Back Right x-parallel
		translate([table_width/2 - brace_length/2 - leg_timber_width,
    						table_depth/2 - strut_timber_depth/2 - strut_timber_depth,
    						-strut_timber_width/2-shelf_thickness/4])
    {
			cube([brace_length,strut_timber_depth,strut_timber_width],true);
		}
		
		// Back right y-parallel
		translate([table_width/2 - strut_timber_depth/2 - strut_timber_depth,
    						table_depth/2 - brace_length/2 - leg_timber_width,
    						-strut_timber_width/2-shelf_thickness/4])
    {
			cube([strut_timber_depth,brace_length,strut_timber_width],true);
		}
		
		//Back Left x-parallel
		translate([(table_width/2 - brace_length/2 - leg_timber_width)*-1,
    						table_depth/2 - strut_timber_depth/2 - strut_timber_depth,
    						-strut_timber_width/2-shelf_thickness/4])
    {
			cube([brace_length,strut_timber_depth,strut_timber_width],true);
		}
		
		// Back Left y-parallel
		translate([(table_width/2 - strut_timber_depth/2 - strut_timber_depth)*-1,
    						table_depth/2 - brace_length/2 - leg_timber_width,
    						-strut_timber_width/2-shelf_thickness/4])
    {
			cube([strut_timber_depth,brace_length,strut_timber_width],true);
		}
		
		
		//Front Right x-parallel
		translate([table_width/2 - brace_length/2 - leg_timber_width,
    						(table_depth/2 - strut_timber_depth/2 - strut_timber_depth)*-1,
    						-strut_timber_width/2-shelf_thickness/4])
    {
			cube([brace_length,strut_timber_depth,strut_timber_width],true);
		}
		
		// Front right y-parallel
		translate([table_width/2 - strut_timber_depth/2 - strut_timber_depth,
    						(table_depth/2 - brace_length/2 - leg_timber_width)*-1,
    						-strut_timber_width/2-shelf_thickness/4])
    {
			cube([strut_timber_depth,brace_length,strut_timber_width],true);
		}
		
		//Front Left x-parallel
		translate([(table_width/2 - brace_length/2 - leg_timber_width)*-1,
    						(table_depth/2 - strut_timber_depth/2 - strut_timber_depth)*-1,
    						-strut_timber_width/2-shelf_thickness/4])
    {
			cube([brace_length,strut_timber_depth,strut_timber_width],true);
		}
		
		//Front Left y-parallel
		translate([(table_width/2 - strut_timber_depth/2 - strut_timber_depth)*-1,
    						(table_depth/2 - brace_length/2 - leg_timber_width)*-1,
    						-strut_timber_width/2-shelf_thickness/4])
    {
			cube([strut_timber_depth,brace_length,strut_timber_width],true);
		}
}
top(500,300,12,43,17,43,15,43);

