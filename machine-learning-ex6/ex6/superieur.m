function bool=superieur(s2,s1)
  [val ind]=max(s1>s2);
  [val2 ind2]=max(s1<s2);
  if(val==1)
      if(val2==1)
          if(ind<ind2)
              bool=1;
          else  
                bool= 0;
          end;
      else
          bool=1;
      end;
  else
      bool=0;
  end;
end;