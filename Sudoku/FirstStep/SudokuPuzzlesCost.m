function z = SudokuPuzzlesCost(sol)

    global NFE;
    if isempty(NFE)
        NFE = 0;
    end
    NFE = NFE + 1;
   
   
   Cost1 = 0;
   Cost2 = 0;
   z = 0;
            
   
               
            
   
            for ii = 1:size(sol,1)
                a = sol(:,ii);
                a = sort(a);
                if a(1) == 1
                    z1 = 0;
                else
                    z1 = 1;
                end
                if a(2) == 2
                    z2 = 0;
                else
                    z2 = 1;
                end
                if a(3) == 3
                    z3 = 0;
                else
                    z3 = 1;
                end
                if a(4) == 4
                    z4 = 0;
                else
                    z4 = 1;
                end
                if a(5) == 5
                    z5 = 0;
                else
                    z5 = 1;
                end
                if a(6) == 6
                    z6 = 0;
                else
                    z6 = 1;
                end
                if a(7) == 7
                    z7 = 0;
                else
                    z7 = 1;
                end
                if a(8) == 8
                    z8 = 0;
                else
                    z8 = 1;
                end
                if a(9) == 9
                    z9 = 0;
                else
                    z9 = 1;
                end
                Cost1 = Cost1 + z1 + z2 +z3 + z4 + z5 + z6 + z7 + z8 + z9;
            end
            
            for ii = 1:size(sol,1)
                a = sol(ii,:);
                a = sort(a);
                if a(1) == 1
                    z1 = 0;
                else
                    z1 = 1;
                end
                if a(2) == 2
                    z2 = 0;
                else
                    z2 = 1;
                end
                if a(3) == 3
                    z3 = 0;
                else
                    z3 = 1;
                end
                if a(4) == 4
                    z4 = 0;
                else
                    z4 = 1;
                end
                if a(5) == 5
                    z5 = 0;
                else
                    z5 = 1;
                end
                if a(6) == 6
                    z6 = 0;
                else
                    z6 = 1;
                end
                if a(7) == 7
                    z7 = 0;
                else
                    z7 = 1;
                end
                if a(8) == 8
                    z8 = 0;
                else
                    z8 = 1;
                end
                if a(9) == 9
                    z9 = 0;
                else
                    z9 = 1;
                end
                Cost2 = Cost2 + z1 + z2 +z3 + z4 + z5 + z6 + z7 + z8 + z9;
            end
            
            z = Cost1+ Cost2;
           
   end
  
    