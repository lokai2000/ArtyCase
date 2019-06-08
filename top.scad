
union(){
  import("arty_case_top_unsupported.stl");
  translate([-53,50,0]) linear_extrude(height = 2) {
    rotate([180,0,0]) text("ARTY", font="white rabbit", size=10 );
  }
}

