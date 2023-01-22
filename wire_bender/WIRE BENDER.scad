//!OpenSCAD

difference() {
  for (i = [2.54 : abs(2.54) : 43.18]) {
    translate([0, ((i - 2.54) * 2), 0]){
      difference() {
        cube([i, 5.1, 5], center=false);

        color([0.2,0.2,0.2]) {
          translate([0.2, 0.75, 4]){
            // size is multiplied by 0.75 because openScad font sizes are in points, not pixels
            linear_extrude( height=2, twist=0, center=false){
              text(str((round(i / 2.54))), font = "Roboto";   size = 5*0.75);
            }

          }
        }
        translate([0, 2.5, 0]){
          rotate([0, 90, 0]){
            cylinder(r1=1, r2=1, h=100, center=true);
          }
        }
      }
    }
  }

  color([0.2,0.2,0.2]) {
    translate([15, 50, 4]){
      rotate([0, 0, 90]){
        union(){
          // size is multiplied by 0.75 because openScad font sizes are in points, not pixels
          linear_extrude( height=2, twist=0, center=false){
            text("<[*_*]> LOPE", font = "Roboto";   size = 5.2*0.75);
          }

          translate([0, -5, 0]){
            // size is multiplied by 0.75 because openScad font sizes are in points, not pixels
            linear_extrude( height=2, twist=0, center=false){
              text("MAKESPACE", font = "Roboto";   size = 5*0.75);
            }

          }
        }
      }
    }
  }
  color([0.2,0.2,0.2]) {
    translate([15, 64.5, 7]){
      difference() {
        cube([13, 33, 5], center=true);

        cube([11, 31, 5], center=true);
      }
    }
  }
}