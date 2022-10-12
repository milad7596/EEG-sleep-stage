%% i have to go to (Test) folder and run it first

% deepNetworkDesigner -> need to change and replace Fully connected & 
% Classification (Fully conected shoul be 6 output size)

% clc;
% clear all;

% 
% imds = imageDatastore("C:/Users/HP/Desktop/Sleep stages/" + ...
%     "/Test 128/",...
%     'IncludeSubfolders',true, ...
%     'LabelSource','foldernames');
% 
% 
% [imdsTrain,imdsValidation] = splitEachLabel(imds,(0.7),'randomize');

imagefiles = dir('*.jpg');      
n_files = length(imagefiles);% Number of files found
ImageFolder ="C:\Users\HP\Desktop\New folder\New folder\";

test_label.W = [];
test_label.R = [];
test_label.S1 = [];
test_label.S2 = [];
test_label.S3 = [];
test_label.S4 = [];

probability.EEG_predict = [];

%% read images test

for i = 1:n_files

    im_filename = imagefiles(i).name; 
    im_read = imread(im_filename);
    %im_read = imresize(im_read, [128 128 3]);

    %%% classify with test images with Traning trainedNetwork_1
    %%% or     Fpz_Cz_trainedNetwork_xxx_Vxx
    [EEG_pred,probs] = classify(trainedNetwork_1,im_read);

    %%% to find and creat matrix with (pre_label) for...
    %  True Classes(deep_3_martix)
    probability.EEG_predict = [probability.EEG_predict ; EEG_pred];

    imshow(im_read)
    label = EEG_pred;
    % To show how many percent are similar with training and Test
    title(string(label) + ", " + num2str(100*max(probs),3) + "%");
    images_label{i} = label;
    
    
        if label == "W"
            test_label.W = [test_label.W ; label];
             
        elseif label == "R"
            test_label.R = [test_label.R ; label];
            
        elseif label == "S1"
            test_label.S1 = [test_label.S1 ; label];

        elseif label == "S2"
            test_label.S2 = [test_label.S2 ; label];

        elseif label == "S3"
            test_label.S3 = [test_label.S3 ; label];

        elseif label == "S4"
            test_label.S4 = [test_label.S4 ; label];
        end
   
end

save('Pz_Oz_trainNetwork_700_V10.mat','trainedNetwork_1');
save('Pz_Oz_trainInfoStruct_700_V10.mat','trainInfoStruct_1');

% linspace(300,30,6)

% f = trainInfoStruct_1.TrainingAccuracy(1,end)

