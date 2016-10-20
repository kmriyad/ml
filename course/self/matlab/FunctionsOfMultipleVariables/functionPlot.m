%% plot3()
% Function plot3() produces a 3D line or scatter plot. It is a straightforward generalization of the
% plot() function (for 2D) and has all the same properties, except you enter three parameters: x, y and z.
% The additional arguments (line, symbol, color specification etc.) works exactly the same way as in simple
% plot(). 

t = 0:pi/50:10*pi;
plot3(sin(t), cos(t), t);
xlabel('sin(t)');
ylabel('cos(t)');
zlabel('t');
grid on
axis square;

fprintf('Program paused. Press enter to continue.\n');
pause;