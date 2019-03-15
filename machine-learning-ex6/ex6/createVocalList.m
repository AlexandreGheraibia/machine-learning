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
    n=size(vocabList,1);
    for(j=1:n)
        k=1;
        m=size(vocLis,1);
        while(k<m+1&&strcmp(vocabList(j,:),vocLis(k).str)!=1)
          k++;
        end;
        if(k!=m+1)
          vocLis(k).w++;
        else
          elem.str=vocabList(j,:);
          elem.w=0;
          vocLis=[vocLis;elem];
        end;
    end;
    
  endfor;
  %save myTraining.mat len X y;
  save voc.mat len vocLis;
  n=size(vocLis,1);
  for j=1:n
    if(vocLis(j).w>30)
     vocLis(j).str
     vocLis(j).w
    end;
  end;
end;
