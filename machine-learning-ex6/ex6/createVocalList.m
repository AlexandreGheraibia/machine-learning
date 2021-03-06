function createVocalList(path)
  vocLis=[];
  len=2;
  [list]=dir(path);
  l=length(list);
  if exist("voc.txt")!=0
     load voc.txt;
 end;
  number=20;
  debut=len+1;
  if len+number>l
    len=l;
  else
    len+=number;
  end;
 
  for i=debut:len
    fprintf('%d\r',i);
    list(i).name
    pathFile=[path "/" list(i).name];
    file_contents = readFile(pathFile);
    vocabList = extractVocabularyEmail(file_contents);
    n=size(vocabList,1);
    for(j=1:n)
        tmp=vocabList(j,:);
        [trouve ind]=appartient(vocLis,tmp);
       
        if(trouve==1)
          vocLis(ind).w++;
        else
          elem.str=vocabList(j,:);
          elem.w=1;
          vocLis=[vocLis;elem];
        end;
    end;
    
  endfor;
  
  k=1;
  m=size(vocLis,1);
  while(k<m+1)
      if(vocLis(k).w>3)
      fprintf("%s %d\n",vocLis(k).str,vocLis(k).w);
      end
        k++;
  end;
  %save voc.txt vocLis len;
end;
