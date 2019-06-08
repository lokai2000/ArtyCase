module chriss_cross(){
  difference(){
    union(){
      for (i=[-20:1:20])
       translate([i*10-70,-76,0]) rotate([0,0,45]) cube([200,1.2,5]);
      for (i=[-20:1:20])
       translate([i*10-70,70,0]) rotate([0,0,-45]) cube([200,1.2,5]);
    }
    import("arty_case_base_legmask.stl");
  }
};

union(){
  intersection(){
    chriss_cross();
    translate([0,0,-1.3]) import("arty_case_base_intersect.stl");
  }
  import("arty_case_base_unsupported.stl");
}