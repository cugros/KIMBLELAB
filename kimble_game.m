% location matrix for the pieces. Each column is a player with rows
% corresponding to their four pieces. Values:
%   home = - 1
%   start = 0
%   goal = 28 to 31

% We add some initial values
die = 0;

locations = - ones(4);
player = 0; % index of current player.

% counter for how many times each player has been eaten.
hits = zeros(4, 1);

h = figure;
axis([-1 1 -1 1]);

while true
<<<<<<< HEAD
    player = mod(player, 4) + 1
    die = CastDie(0);
=======
    player = mod(player, 4) + 1;
    die = CastDie(die);
>>>>>>> refs/remotes/origin/master
    locations = UpdateGame(locations, die, player);
    locations
    
    % TODO remove possible eatens and update hits.
    % remove to adjust for 
    
    updateGUI(h, locations);
    % Do we have a winner?
    if min(locations(:, player)> ones(4, 1) * 27) 
        break;
    end
end
