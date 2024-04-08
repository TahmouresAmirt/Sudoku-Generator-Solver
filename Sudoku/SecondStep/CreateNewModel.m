function [A,Amir] = CreateNewModel

    Amir = load('Amir.mat');
    Amir = Amir.Amir;
    Amir1 = Amir;
    Amir2 = Amir;
    A = zeros(1,81);
    m = 1;
    for ii = 1:9
        for jj = 1:9
        c = find(Amir(:,ii)==jj);
        if numel(c)>1
            for kk = 1:numel(c)
           % A(m) = Amir(c(kk),ii);
            Amir1(c(kk),ii) = 0;
            
           % m = m+1;
            end
        end
        end
    end
    
    for ii = 1:9
        
        for jj = 1:9
        c = find(Amir(ii,:)==jj);
        if numel(c)>1
            for kk = 1:numel(c)
           % A(m) = Amir(ii,c(kk));
            Amir2(ii,c(kk)) = 0;
            
          %  m = m+1;
            end
        end
        end   
    end
    %%
   Amir3 = Crosses(Amir);
   AA = find(Amir1==0);
   BB = find(Amir2==0);
   CC = find(Amir3==0);
   Amir(AA) = 0;
   Amir(BB) = 0;
   Amir(CC) = 0;
   
    %%
    One = numel(find (Amir==1));
    One = 9 - One;
    if One<0
        One = 9;
    end
    
    Two = numel(find (Amir==2));
    Two = 9 - Two;
    if Two<0
        Two = 9;
    end
    
    
    Three = numel(find (Amir==3));
    Three = 9 - Three;
    if Three<0
        Three = 9;
    end
    
    
    Four = numel(find (Amir==4));
    Four = 9 - Four;
    if Four<0
        Four = 9;
    end
    
    
    Five  = numel(find (Amir==5));
    Five = 9 - Five;
    if Five<0
        Five = 9;
    end
    
    Six  = numel(find (Amir==6));
    Six = 9 - Six;
    if Six<0
        Six = 9;
    end
    
    Seven  = numel(find (Amir==7));
    Seven = 9 - Seven;
    if Seven<0
        Seven = 9;
    end
    Eight  = numel(find (Amir==8));
    Eight = 9 - Eight;
    if Eight<0
        Eight = 9;
    end
    Nine  = numel(find (Amir==9));
    Nine = 9 - Nine;
    if Nine<0
        Nine = 9;
    end
    a = 1 * ones(1,One);
    b = 2 * ones(1,Two);
    c = 3 * ones(1,Three);
    d = 4 * ones(1,Four);
    e = 5 * ones(1,Five);
    f = 6 * ones(1,Six);
    g = 7 * ones(1,Seven);
    h = 8 * ones(1,Eight);
    i = 9 * ones(1,Nine);
    A = [a,b,c,d,e,f,g,h,i];
    B = find(A~=0);
    A = A(B);
end