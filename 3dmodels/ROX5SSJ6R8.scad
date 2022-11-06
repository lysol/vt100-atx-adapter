$fn=32;

length=17.5;
diameter=6.5;
lead_diameter=0.75;
lead_length=3.5;
lead_spacing=24;
curve_distance=2;
lead_below_resistor = 2.54;

module bent_lead() {
  rotate_extrude(angle=90) translate([curve_distance, 0, 0]) circle(d=lead_diameter);
}

rotate([-90, 0, 180]) {
  color("#AAFFFF") cylinder(d=diameter, h=length, center=true);
  color("silver") {
    cylinder(d=lead_diameter, h=lead_spacing - curve_distance * 2, center=true);
    translate([curve_distance, 0, lead_spacing / 2 - curve_distance])
      rotate([0, -90, 90]) bent_lead();
    translate([curve_distance, 0, -lead_spacing / 2 + curve_distance])
      rotate([0, 90, 90]) bent_lead();
    translate([lead_below_resistor + curve_distance / 2 + lead_diameter / 2 - 0.02, 0, -lead_spacing / 2])
      rotate([0, 90, 0])
        cylinder(h=diameter / 2 + lead_below_resistor - curve_distance, d=lead_diameter, center=true);
    translate([lead_below_resistor + curve_distance / 2 + lead_diameter / 2 - 0.02, 0, lead_spacing / 2])
      rotate([0, 90, 0])
        cylinder(h=diameter / 2 + lead_below_resistor - curve_distance, d=lead_diameter, center=true);
  }
}