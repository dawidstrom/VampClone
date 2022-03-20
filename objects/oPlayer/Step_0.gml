/// @description Insert description here
// You can write your code in this editor

var move_left = keyboard_check(ord("A"));
var move_right = keyboard_check(ord("D"));
var move_up = keyboard_check(ord("W"));
var move_down = keyboard_check(ord("S"));

var move_x = move_right - move_left;
var move_y = move_down - move_up;

self.hspeed = move_x * self.move_speed;
self.vspeed = move_y * self.move_speed;