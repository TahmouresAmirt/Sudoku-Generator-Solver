 function [y1 y2] = PermutationCrossover(x1,x2)

    %nVar = numel(x1);
    a1 = [x1(1),x1(2),x1(3);x1(10),x1(11),x1(12);x1(19),x1(20),x1(21)]';
    b1 = [x1(4),x1(5),x1(6);x1(13),x1(14),x1(15);x1(22),x1(23),x1(24)]';
    c1 = [x1(7),x1(8),x1(9);x1(16),x1(17),x1(18);x1(25),x1(26),x1(27)]';
    d1 = [x1(28),x1(29),x1(30);x1(37),x1(38),x1(39);x1(46),x1(47),x1(48)]';
    e1 = [x1(31),x1(32),x1(33);x1(40),x1(41),x1(42);x1(49),x1(50),x1(51)]';
    f1 = [x1(34),x1(35),x1(36);x1(43),x1(44),x1(45);x1(52),x1(53),x1(54)]';
    g1 = [x1(55),x1(56),x1(57);x1(64),x1(65),x1(66);x1(73),x1(74),x1(75)]';
    h1 = [x1(58),x1(59),x1(60);x1(67),x1(68),x1(69);x1(76),x1(77),x1(78)]';
    i1 = [x1(61),x1(62),x1(63);x1(70),x1(71),x1(72);x1(79),x1(80),x1(81)]';
    
    a2 = [x2(1),x2(2),x2(3);x2(10),x2(11),x2(12);x2(19),x2(20),x2(21)]';
    b2 = [x2(4),x2(5),x2(6);x2(13),x2(14),x2(15);x2(22),x2(23),x2(24)]';
    c2 = [x2(7),x2(8),x2(9);x2(16),x2(17),x2(18);x2(25),x2(26),x2(27)]';
    d2 = [x2(28),x2(29),x2(30);x2(37),x2(38),x2(39);x2(46),x2(47),x2(48)]';
    e2 = [x2(31),x2(32),x2(33);x2(40),x2(41),x2(42);x2(49),x2(50),x2(51)]';
    f2 = [x2(34),x2(35),x2(36);x2(43),x2(44),x2(45);x2(52),x2(53),x2(54)]';
    g2 = [x2(55),x2(56),x2(57);x2(64),x2(65),x2(66);x2(73),x2(74),x2(75)]';
    h2 = [x2(58),x2(59),x2(60);x2(67),x2(68),x2(69);x2(76),x2(77),x2(78)]';
    i2 = [x2(61),x2(62),x2(63);x2(70),x2(71),x2(72);x2(79),x2(80),x2(81)]';
    
    c = randsample(9,1);
    if c ==1
        y1 = [a1,b2,c2;d2,e2,f2;g2,h2,i2]';
        y2 = [a2,b1,c1;d1,e1,f1;g1,h1,i1]';
    end
    
    if c ==2
        y1 = [a1,b1,c2;d2,e2,f2;g2,h2,i2]';
        y2 = [a2,b2,c1;d1,e1,f1;g1,h1,i1]';  
    end
    if c ==3
        y1 = [a1,b1,c1;d2,e2,f2;g2,h2,i2]';
        y2 = [a2,b2,c2;d1,e1,f1;g1,h1,i1]';  
    end
    if c ==4
        y1 = [a1,b1,c1;d1,e2,f2;g2,h2,i2]';
        y2 = [a2,b2,c2;d2,e1,f1;g1,h1,i1]';  
    end
    
    if c ==5
        y1 = [a1,b1,c1;d1,e1,f2;g2,h2,i2]';
        y2 = [a2,b2,c2;d2,e2,f1;g1,h1,i1]';  
    end
    
    if c ==6
        y1 = [a1,b1,c1;d1,e1,f1;g2,h2,i2]';
        y2 = [a2,b2,c2;d2,e2,f2;g1,h1,i1]';  
    end
    
    if c ==7
        y1 = [a1,b1,c1;d1,e1,f1;g1,h2,i2]';
        y2 = [a2,b2,c2;d2,e2,f2;g2,h1,i1]';  
    end
    if c ==8
        y1 = [a1,b1,c1;d1,e1,f1;g1,h1,i2]';
        y2 = [a2,b2,c2;d2,e2,f2;g2,h2,i1]';  
    end
    
    if c ==9
        y1 = [a1,b2,c1;d2,e1,f2;g1,h2,i1]';
        y2 = [a2,b1,c2;d1,e2,f1;g2,h1,i2]';  
    end
 end
