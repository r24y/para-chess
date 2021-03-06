include <config.scad>;
use <king.scad>;
use <queen.scad>;
use <bishop.scad>;
use <knight.scad>;
use <rook.scad>;
use <pawn.scad>;

sq = 25.4;

translate([-0.5*sq,0.5*sq,0]) king();
translate([0.5*sq,0.5*sq,0]) queen();

for(x = [-1.5,1.5]) translate([x*sq,0.5*sq,0]) bishop();
for(x = [-2.5,2.5]) translate([x*sq,0.5*sq,0]) knight();
for(x = [-3.5,3.5]) translate([x*sq,0.5*sq,0]) rook();

for(x = [0:7]){
	translate([(x-3.5)*sq,-0.5*sq,0])
		pawn();
}