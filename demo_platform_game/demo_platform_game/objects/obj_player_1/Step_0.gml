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



// Falling



}
// MOVE THE PLAYER

// OUTSIDE THE ROOM
