%% Visualization of functions of 2 variables

%% Initialization
clear; close all; clc

%% Visualizing

[X, Y] = meshgrid(0:.1:5, pi:.01*pi:2*pi);
Z = X.*sin(X.*Y);
% use default colorMap to color the mesh
mesh(X, Y, Z);

pause;

%% use a single colored mesh by specifying the EdgeColor surface property

mesh(X, Y, Z, 'EdgeColor', 'red');

pause;

%% Disable hidden line removal to show the mesh in see through

hidden off;

pause;

%% Color the surface
surf(X, Y, Z);
% specify a color map
colormap hsv;
% add color bar to plot
colorbar;

pause;

%% Make the surface transparent
surf(X, Y, Z);
%specify a color map
colormap hsv;
% specicy transparency value for alpha
alpha(0.4);

pause;

%% Illuminate surface with lights
surf(X, Y, Z, 'FaceColor', 'red', 'EdgeColor', 'none');
camlight left;
lighting phong;

pause;

%% 3D shaded surface with lighting
surfl(X, Y, Z);
shading interp;

pause;

%% 2D contour plot
contour(X, Y, Z);

pause;

%% Combine surface and contour plot
surfc(X, Y, Z);
colormap hsv;
alpha(0.2);

pause;

