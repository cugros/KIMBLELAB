function [ output_args ] = updateGUI(h, locations)

figure(h);

piece_radius = 0.1;
player_colors = 'rgbm';

point_x = zeros(31,4);
point_y = zeros(31,4);

% Regular locations first
for i=1:27
    x = cos(2*pi*i/28);
    y = sin(2*pi*i/28);
    
    for j = 1:4
        loc = mod(i+7*(j-1),28)+1;
        point_x(loc,j) = x;
        point_y(loc,j) = y;
    end
end

% Goals
point_x(29,1) = 0.8;
point_x(30,1) = 0.6;
point_x(31,1) = 0.4;
point_x(32,1) = 0.2;

point_y(29:32,1) = 0;

point_y(29,2) = -0.8;
point_y(30,2) = -0.6;
point_y(31,2) = -0.4;
point_y(32,2) = -0.2;

point_x(29:32,2) = 0;

point_x(29,3) = -0.8;
point_x(30,3) = -0.6;
point_x(31,3) = -0.4;
point_x(32,3) = -0.2;

point_y(29:32,3) = 0;

point_y(29,4) = 0.8;
point_y(30,4) = 0.6;
point_y(31,4) = 0.4;
point_y(32,4) = 0.2;

point_x(29:32,4) = 0;



hold off
    plot(point_x,point_y,'ok')
hold on
axis([-1 1 -1 1]);


for player = 1:4
    for piece = 1:4
        if locations(piece, player) == -1 % Home
            x = 1;
            y = 1;
        else
            if locations(piece, player) > 30 % Outside the game area
                x = 0;
                y = 0;                
            else % Regular locations
                x = point_x(locations(piece, player)+1,player);
                y = point_y(locations(piece, player)+1,player);
            end
        end
        
       plot(x,y,['*' player_colors(player)])
       
    end
end

pause(0.1)


end
