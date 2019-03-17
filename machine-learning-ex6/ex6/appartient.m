function [ret m]=appartient(tab,elem)
   b=size(tab,1);
   a=1;
   t=0;
    m = 0;
   while (b - a) > 1 && t!=1
      m = floor((a + b) / 2);
      if(superieur(elem,tab(m).str))
         b = m;
      else
         if(strcmp(tab(m).str,elem)==1)
            t=1;
         else
         a = m;
         end;
      end;
   end;
   ret=t;
 end;