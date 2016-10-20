%% Meshgrid
% The meshgrid() function transforms the domain specified by a single 
% vector or two vectors x and y into matrices X and Y for use in evaluating
% functions of two variables. The rows of X are copies of the vector x and 
% the columns of Y are copies of the vector y. 
%% Mesh and Surface Plots
% The mesh and surf plotting functions display surfaces in three dimensions.

% mesh() produces wireframe surfaces that color only the lines connecting 
% the defining points. 

% surf() displays both the connecting lines and the 
% faces of the surface in color. 

% The figure colormap and figure properties determine how the surface is 
% colored. 

%% Initialization
clear; close all; clc
%% Visalizing Functions of Two Variables

[X, Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./ R;
% use default colormap to color the mesh
mesh(X, Y, Z);

fprintf('Program paused. Press enter to continue.\n');
pause;

% use a single colored mesh by specifiying the EdgeColor surface property
mesh(X, Y, Z, 'EdgeColor', 'black');

fprintf('Program paused. Press enter to continue.\n');
pause;

% create a mesh with see-through faces by disabling hidden line removal

hidden off

pause;

%% Colored Surface Plots
% A surface plot is similar to a mesh plot except that the rectangular 
% faces of the surface are colored. The color of each face is determined by 
% the values of Z and the colormap, an ordered list of colors

surf(X, Y, Z);
% specify a colormap
colormap hsv
% add a color bar to plot
colorbar

pause;

%% Making Surfaces Transparent
surf(X, Y, Z)
colormap hsv;
% produce a transparent surface with an alpha value of 0.4
% alpha value ranges from 0 to 1
alpha(.4);

pause;

%% Illuminating Surface Plots with Lights

surf(X, Y, Z, 'FaceColor', 'red', 'EdgeColor', 'none');
camlight left;
lighting phong;

pause;

%% 3D Shaded Surface with Lighting
% the surfl() draws a 3D shaded surface with lighting

surfl(X, Y, Z);
shading interp;

pause;

%% Contour Plots
% contour() plots a 2D contour plot of a two variable function

contour(X, Y, Z);

pause;

%% Combine Surface and Contour Plots
% surfc() combines surface and contour plot

surfc(X, Y, Z);
colormap hsv;
alpha(0.2);

pause;


