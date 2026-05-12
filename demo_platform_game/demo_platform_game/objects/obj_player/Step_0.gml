// INPUT - DETECT CONTROL KEYS
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;
var jump_pressed = keyboard_check_pressed(vk_space); // var makes this a local variable

// COLLISION CHECKS
// Check if standing on the ground
is_grounded = place_meeting(x, y+2, ground_object)

// Check if touching ladder
is_climbing = place_meeting(x, y, ladder_object);

// MOVEMENT - ACTUALLY MOVE PIXELS
// Climbing
if (is_climbing) {
	move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
	move_y *= climb_speed;
}
else {
// Gravity & Jumping
	if (is_grounded && jump_pressed) {
	move_y=jump_speed
	}
// Falling
	else if (move_y < max_fall_speed) { // make sure it doesn't fall too fast
		move_y+= gravity_force;		// if falling, move at gravity acceleration	}
	}
}
// MOVE THE PLAYER
move_and_collide(move_x, move_y, ground_object); // the one line that actually moves the object

// OUTSIDE THE ROOM
if (x < -20 || x> room_width + 20 || y> room_height + 20 || y < -200) {
	room_restart(); // restart the room if object goes out of the boundaries
}
// GET KEY
if place_meeting(x, y, obj_key) {
	got_key=true
	instance_destroy(obj_key)
}
// DOOR 
if place_meeting(x, y, obj_door) {
	if (got_key) {
		room_goto_next();
	}
}