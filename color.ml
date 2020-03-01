(*
                              CS51 Lab 7
                          Modules & Functors

                 A module for colors and color names

The representation for colors in this implementation is really obscure
and arguably unnecessarily so. By the way, it also has some bugs so it
doesn't pass all the unit tests. No need to debug it though. You'll be
replacing it wholesale with a simpler implementation. *)

(* 8-bit RGB channel colors *)
type color = {red : int ; green : int; blue : int} ;;

(* Some standard color names *)
type color_name =
  | Red
  | Green
  | Blue
  | Orange
  | Yellow
  | Indigo
  | Violet ;;

(* to_color r g b -- Returns the color corresponding to the RGB
   values given by r, g, and b *)
let to_color (r : int) (g : int) (b : int) : color =
  {red = r; green = g; blue = b} ;;

(* red c -- Returns the red channel value for the color c *)
let red (c : color) : int =
  c.red  ;;

(* green c -- Returns the green channel value for the color c *)
let green (c : color) : int =
  c.green ;;

(* blue c -- Returns the blue channel value for the color c *)
let blue (c : color) : int =
   c.blue ;;

(* color_named name -- Returns the color (as RGB representation)
   corresponding to the color name *)
let color_named (name : color_name) : color =
  match name with
  | Red ->    {red = 255; green = 0; blue = 0}
  | Green ->  {red = 0; green = 255; blue = 0}
  | Blue ->   {red = 0; green = 0; blue = 255}
  | Orange -> {red = 255; green = 165; blue = 0}
  | Yellow -> {red = 255; green = 255; blue = 0}
  | Indigo -> {red = 75; green = 0; blue = 130}
  | Violet -> {red = 240; green = 130; blue = 240};;

 