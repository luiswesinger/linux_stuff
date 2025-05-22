# png++ Cheatsheet

`#include <png++/png.hpp>`                  ~ Include png++ header  
`png::image<png::rgb_pixel> img(w, h);`     ~ Create RGB image  
`img[y][x] = png::rgb_pixel(255,0,0);`      ~ Set pixel to red  
`img.write("out.png");`                     ~ Save image to file  
`png::image<png::rgb_pixel> img("in.png");` ~ Load image from file  
`auto px = img[y][x];`                      ~ Access pixel at (x,y)  
`px.red / px.green / px.blue`               ~ Access RGB channels  
`img.get_width()`                           ~ Get image width  
`img.get_height()`                          ~ Get image height  
`png::rgba_pixel(0,255,0,128)`              ~ Semi-transparent green pixel  

