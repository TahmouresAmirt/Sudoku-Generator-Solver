function Amir = Crosses(A)
        
    x1 = A;

    a1 = [x1(1),x1(2),x1(3);x1(10),x1(11),x1(12);x1(19),x1(20),x1(21)]';
    b1 = [x1(4),x1(5),x1(6);x1(13),x1(14),x1(15);x1(22),x1(23),x1(24)]';
    c1 = [x1(7),x1(8),x1(9);x1(16),x1(17),x1(18);x1(25),x1(26),x1(27)]';
    d1 = [x1(28),x1(29),x1(30);x1(37),x1(38),x1(39);x1(46),x1(47),x1(48)]';
    e1 = [x1(31),x1(32),x1(33);x1(40),x1(41),x1(42);x1(49),x1(50),x1(51)]';
    f1 = [x1(34),x1(35),x1(36);x1(43),x1(44),x1(45);x1(52),x1(53),x1(54)]';
    g1 = [x1(55),x1(56),x1(57);x1(64),x1(65),x1(66);x1(73),x1(74),x1(75)]';
    h1 = [x1(58),x1(59),x1(60);x1(67),x1(68),x1(69);x1(76),x1(77),x1(78)]';
    i1 = [x1(61),x1(62),x1(63);x1(70),x1(71),x1(72);x1(79),x1(80),x1(81)]';
    
    for jj = 1:9
        c = find(a1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            a1(c(kk)) = 0;
            end
        end
    end
       for jj = 1:9
        c = find(b1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            b1(c(kk)) = 0;
            end
        end
       end 
    for jj = 1:9
        c = find(c1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            c1(c(kk)) = 0;
            end
        end
    end
    for jj = 1:9
        c = find(d1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            d1(c(kk)) = 0;
            end
        end
    end
    for jj = 1:9
        c = find(e1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            e1(c(kk)) = 0;
            end
        end
    end
    for jj = 1:9
        c = find(f1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            f1(c(kk)) = 0;
            end
        end
    end
    for jj = 1:9
        c = find(g1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            g1(c(kk)) = 0;
            end
        end
    end
    for jj = 1:9
        c = find(h1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            h1(c(kk)) = 0;
            end
        end
    end
    for jj = 1:9
        c = find(i1==jj);
        if numel(c)>1
            for kk = 1:numel(c)
            i1(c(kk)) = 0;
            end
        end
    end
       Amir = [a1,d1,g1;b1,e1,h1;c1,f1,i1];
end