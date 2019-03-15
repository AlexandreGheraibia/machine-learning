 clear ; close all; clc
 trainSetSpam("./easy_ham");
 load myTraining.mat;
 trainSetNotSpam(size(X,1));
 load myNotTraining.mat;
 %needs training set not spam here!
 X=[X;X2];
 y=[y;zeros(size(X2,1),1)];
 sel=randperm(size(X, 1))
 len-=3
 l1=floor(len*0.6)
 l2=l1+floor(len*0.2)
 XTrain=X(sel(1:l1),:);
 yTrain=y(sel(1:l1),:);
 XCv=X(sel(l1+1:l2),:);
 yCv=y(sel(l1+1:l2),:);
 XTest=X(sel(l2+1:end),:);
 yTest=y(sel(l2+1:end),:);
 [C]=dataset3Params(XTrain,yTrain, XCv,yCv);
 model = svmTrain(XCv,yCv, C,@linearKernel);
 p = svmPredict(model, XTest);
 fprintf('Training Accuracy: %f\n', mean(double(p == yTest)) * 100);