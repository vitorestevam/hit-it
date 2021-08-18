depth = -100
// Create Particle System
global.particles        = part_system_create();
 part_system_automatic_draw(global.particles ,false);
// Create Confetti Particle Type
global.partTypeConfetti = part_type_create();
 
// Set random (randomizes image_index) to TRUE here
part_type_sprite(global.partTypeConfetti, s_part_confetti, false, false, true); 
 
// Add some image_angle wiggle (45)
part_type_orientation(global.partTypeConfetti, 0, 360, 0, 45, 0);
// Depending on case of usage, add downwards gravity
// Change values for wind or top-down camera
part_type_gravity(global.partTypeConfetti, 0.3, 270);
// Spread, spread it wide. Some direction wiggle doesn't hurt too.
// Our rectangles are wiggly after all.
part_type_direction(global.partTypeConfetti, 0, 360, 0, 30);
// Movement speed and deceleration 
part_type_speed(global.partTypeConfetti, 6, 7, -0.3, 0);
 
part_type_size(global.partTypeConfetti, 0.5, 1, 0, 0);
part_type_life(global.partTypeConfetti, 150, 180);


global.partTypeMoreConfetti = part_type_create();
part_type_sprite(global.partTypeMoreConfetti, s_part_confetti, false, false, true);
part_type_size(global.partTypeMoreConfetti, 0.1, 0.2, 0, 0);
part_type_speed(global.partTypeMoreConfetti, 7, 8, -0.3, 0);
part_type_direction(global.partTypeMoreConfetti, 0, 360, 0, 30);
part_type_gravity(global.partTypeMoreConfetti, 0.3, 270);
part_type_orientation(global.partTypeMoreConfetti, 0, 360, 0, 30, 0);
part_type_life(global.partTypeMoreConfetti, 130, 150);
