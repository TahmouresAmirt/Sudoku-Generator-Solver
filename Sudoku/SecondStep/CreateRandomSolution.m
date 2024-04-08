function [Sol] = CreateRandomSolution(A)
        
        r = numel(A);
        b = randperm(r);
        Sol = A(b);
      


end