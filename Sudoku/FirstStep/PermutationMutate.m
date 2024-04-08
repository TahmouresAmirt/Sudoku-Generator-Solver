function y = PermutationMutate(x1)
        

        
    a1 = [x1(1),x1(2),x1(3);x1(10),x1(11),x1(12);x1(19),x1(20),x1(21)]';
    b1 = [x1(4),x1(5),x1(6);x1(13),x1(14),x1(15);x1(22),x1(23),x1(24)]';
    c1 = [x1(7),x1(8),x1(9);x1(16),x1(17),x1(18);x1(25),x1(26),x1(27)]';
    d1 = [x1(28),x1(29),x1(30);x1(37),x1(38),x1(39);x1(46),x1(47),x1(48)]';
    e1 = [x1(31),x1(32),x1(33);x1(40),x1(41),x1(42);x1(49),x1(50),x1(51)]';
    f1 = [x1(34),x1(35),x1(36);x1(43),x1(44),x1(45);x1(52),x1(53),x1(54)]';
    g1 = [x1(55),x1(56),x1(57);x1(64),x1(65),x1(66);x1(73),x1(74),x1(75)]';
    h1 = [x1(58),x1(59),x1(60);x1(67),x1(68),x1(69);x1(76),x1(77),x1(78)]';
    i1 = [x1(61),x1(62),x1(63);x1(70),x1(71),x1(72);x1(79),x1(80),x1(81)]';
  
    
    %{
    q = zeros(3,1);
    w1 = zeros(3,1);
    
    for JJ = 1:3
       for II = 1:9
        
          q = find(x1(:,JJ)==II);
          if numel(q)>1
            w1(JJ,1) = x1(q(1),JJ);
          end
          
       end
    end  
    
    
    if nnz(w1)~=0
        c = randsample(3,1);
    end
    
    for JJ = 4:6
       for II = 1:9
        
          q = find(x1(:,JJ)==II);
          if numel(q)>1
            w1(JJ,1) = x1(q(1),JJ);
          end
          
       end
    end  
    
    
    if nnz(w1)~=0
        c = randsample([4,5,6],1);
    end
    
    for JJ = 7:9
       for II = 1:9
        
          q = find(x1(:,JJ)==II);
          if numel(q)>1
            w1(JJ,1) = x1(q(1),JJ);
          end
          
       end
    end  
    
    
    if nnz(w1)~=0
        c = randsample([7,8,9],1);
    end
  
    if nnz(w1)<1
        c = randsample(9,1);
    end
    %}
    c = randsample(9,1);
    if c ==1
        x1 = a1;
    end
    
    if c ==2
       x1 = b1; 
    end
    if c ==3
        x1 = c1; 
    end
    if c ==4
        x1 = d1;
    end
    
    if c ==5
       x1 = e1;
    end
    
    if c ==6
        x1 = f1;
    end
    
    if c ==7
        x1 = g1;
    end
    if c ==8
        x1 = h1;
    end
    
    if c ==9
        x1 = i1;
    end
    

    %pSwap = 0.3;
    %pReversion = 0.45;
    %pInsertion = 1 - pSwap - pReversion;
    %m = RoulettWheelSelection([pSwap pReversion pInsertion]);
    m  = 1;
    switch m
        case 1
            y = DoSwap(x1);
        case 2
            y = DoReversion(x1);
        case 3
            y = DoSwap(x1);
    end
    
    
    
    
    if c ==1
        y = [y,b1,c1;d1,e1,f1;g1,h1,i1]';
    end
    
    if c ==2
       y = [a1,y,c1;d1,e1,f1;g1,h1,i1]';
    end
    if c ==3
        y = [a1,b1,y;d1,e1,f1;g1,h1,i1]'; 
    end
    if c ==4
        y = [a1,b1,c1;y,e1,f1;g1,h1,i1]'; 
    end
    
    if c ==5
       y = [a1,b1,c1;d1,y,f1;g1,h1,i1]'; 
    end
    
    if c ==6
       y = [a1,b1,c1;d1,e1,y;g1,h1,i1]'; 
    end
    
    if c ==7
        y = [a1,b1,c1;d1,e1,f1;y,h1,i1]'; 
    end
    if c ==8
        y = [a1,b1,c1;d1,e1,f1;g1,y,i1]'; 
    end
    
    if c ==9
         y = [a1,b1,c1;d1,e1,f1;g1,h1,y]'; 
    end
   end


function y = DoSwap(x1)

        n = numel(x1);
        w = randsample(n,2) ;
       % if nnz(w1)<1
        %    w1 = randsample(9,2);
        %end
        %w = sort(w1);
        %w1 = w(2);
        %w2 = w(3);
        w1 = w(1);
        w2 = w(2);
       
      
        
        y = x1;
        y(w1) = x1(w2);
        y(w2) = x1(w1);
      
       
       
       
end


