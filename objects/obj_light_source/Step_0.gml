/// @description Flicker effect
var flicker = random_range(-0.01, 0.01); //random var
x_radius += flicker;
y_radius += flicker;

x_radius = clamp(x_radius, 0.06, 1.04); // clamp value between these values
y_radius = clamp(y_radius, 0.06, 1.04);