function [ new_locations ] = UpdateGame( locations, die_value, player )
%UpdateGame changes the location for player by die_value
    [~ , piece] = min(locations(:, player));
    move = [ 0
             0
             0
             0 ];
    
    move(piece) = 1;
     
    
    locations(:, player) = locations(:, player) + die_value * move;
    new_locations = locations;
end

