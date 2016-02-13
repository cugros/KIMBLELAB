function [ nextFace ] = CastDie( previousFace )
%CastDie Return a biased random value from 1-6
% Accepts 0 as previous face for uniform distribution
% Else returns values biased by Pop-o-matic, as specified in
% http://kvantti.ayy.fi/blog/wp-content/uploads/2014/04/2013_3.pdf
% on page 25
    if (previousFace == 0)
        nextFace = randi([1, 6], 1);
    else
        X=rand;
        if (X<0.08)
            nextFace= previousFace;
        elseif (X<0.40)
            nextFace = 7 - previousFace;
    % We calculate the adjacent faces 
        elseif (X<0.55)
            nextFace = abs(7-2*previousFace);
        elseif (X<0.70)
            nextFace = 7 - abs(7-2*previousFace);
        elseif (X<0.85)
            nextFace = abs(7-2*abs(7-2*previousFace));
        else
            nextFace = 7- abs(7-2*abs(7-2*previousFace));
                
        end
    end
end

