 clear ; close all; clc
 trainSet("./easy_ham");
 load myTraining.mat;
 sel=randperm(size(X, 1));
 len-=3
 l1=floor(len*0.6)
 l2=l1+floor(len*0.2)
 XTrain=X(sel(1:l1),:);
 XCv=X(sel(l1+1:l2),:);
 XTest=X(sel(l2+1:end),:);
 yTest=ones(size(XTest,1),1);
 [C]=dataset3Params2(XTrain,ones(size(XTrain,1),1), XCv, ones(size(XCv,1),1),1)
 model = svmTrain(XTest,yTest, C, @linearKernel);
 p = svmPredict(model, XTest);
 fprintf('Training Accuracy: %f\n', mean(double(p == yTest)) * 100);