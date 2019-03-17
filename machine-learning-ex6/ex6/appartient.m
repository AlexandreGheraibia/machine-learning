function [trouve m]=appartient(tab,elem)
   b=size(tab);
   a=1;
   trouve=0;
   m = floor((a + b) / 2);
   while (b - a) > 0 && !trouve
      m = floor((a + b) / 2);
      if(superior(elem,tab(m).str))
         b = m;
      else
         if(strcmp(tab(m).str,elem)==1)
            trouve=1;
         else
         a = m;
         end;
      end;
   end;
 end;