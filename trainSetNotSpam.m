function trainSetNotSpam(n)
  load('spamTrain.mat');
  X2=[];
  len=size(X,1);
  i=1;
  j=1;
  while (i!=len+1 && j!=n+1 ) 
    
    if y(i)==0
      X2=[X2; X(i,:)];
      j++;
    end
    
    i++;
  end;
  save myNotTraining.mat X2;
end;
