x_suret = 0
y_suret += 0.07

if keyboard_check(vk_left){
	x_suret = -1
}

if keyboard_check(vk_right){
	x_suret = +1
}
if place_meeting(x,y+1,Oblock){
	y_suret = 0
	if keyboard_check(vk_up){
		y_suret = -2
	}
}

move_and_collide(x_suret,y_suret,Oblock)


if place_meeting(x,y,Ospike){
	room_restart()
}
if place_meeting(x,y,Oflag){
	room_goto_next()
}