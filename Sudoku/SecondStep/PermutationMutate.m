function y = PermutationMutate(x)

    %m = randi([1 3]);
    
    m = 1;
    switch m
        case 1
            y = DoSwap(x);
        case 2
            y = DoInsertion(x);
        case 3
            y = DoReversion(x);
    end 
end


function y = DoSwap(x)

        
        i = randsample(numel(x),2);
        
        y = x;
        y(i(1)) = x(i(2));
        y(i(2)) = x(i(1));
end
