function createVocalList(path)
  vocLis=[];
  len=2;
  [list]=dir(path);
  l=length(list);
  if exist("voc.mat")!=0
     load voc.mat;
 end;
  debut=len+1;
  if len+20>l
    len=l;
  else
    len+=20;
  end;
 
  for i=debut:len
    fprintf('%d\r',i);
    pathFile=[path "/" list(i).name];
    file_contents = readFile(pathFile);
    vocabList = extractVocabularyEmail(file_contents);
    vocLis=[vocLis;vocabList];
  endfor;
  %save myTraining.mat len X y;
  vocLis
  vocLis=unique(vocLis,"rows")
  save voc.mat len vocLis;
end;
