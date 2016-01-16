function [ nextFace ] = CastDie( previousFace )
%CastDie Return a random value from 1-6
%   TODO: add error
    if (previousFace == 0)
        nextFace = randi([1, 6], 1);
    end
end

