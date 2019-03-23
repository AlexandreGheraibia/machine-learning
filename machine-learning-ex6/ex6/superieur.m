function bool=superieur(s2,s1)
  l1=size(s1,2);
  l2=size(s2,2);
  bool= 0;
  if(l1>l2)
    s2(:,l2+1:l1)='0';
  else
    s1(:,l1+1:l2)='0';
  end
  
  [val ind]=max(s1>s2);
  [val2 ind2]=max(s1<s2);
  if(val==1)
      if(val2==1)
          if(ind<ind2)
              bool=1;
          end;
      else
          bool=1;
      end; 
end;
