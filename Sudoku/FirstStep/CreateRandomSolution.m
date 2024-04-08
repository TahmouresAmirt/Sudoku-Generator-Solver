function sol = CreateRandomSolution(nVar)

    n = nVar;
   
    a = randperm(n);
     a = reshape(a,[3,3]);
     
    b = randperm(n);
     b = reshape(b,[3,3]);
     
    c = randperm(n);
     c = reshape(c,[3,3]);
     
    d = randperm(n);
     d = reshape(d,[3,3]);
     
    e = randperm(n);
     e = reshape(e,[3,3]);
     
    f = randperm(n);
     f = reshape(f,[3,3]);
     
    g = randperm(n);
     g = reshape(g,[3,3]);
     
    h = randperm(n);
     h = reshape(h,[3,3]);
     
    i = randperm(n);
     i = reshape(i,[3,3]);
     
    sol = [a,b,c;d,e,f;g,h,i];
    
end
