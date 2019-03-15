function trainSet(path)
  X=[];
  len=2;
  y=ones(len-2,1);
  [list]=dir(path);
  l=length(list);
  if exist("myTraining.mat")!=0
  load myTraining.mat;
  end;
  debut=len+1;
  if len+10>l
    len=l;
  else
    len+=10;
  end;
  
  for i=debut:len
    fprintf('%d\r',i);
    pathFile=[path "/" list(i).name];
    file_contents = readFile(pathFile);
    word_indices  = processEmail(file_contents);
    features      = emailFeatures(word_indices);
    X=[X;features'];
    y=[y;1];
  endfor;
  save myTraining.mat len X y;
end;
