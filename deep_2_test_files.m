%% i have to go to Test folder and run it after deep_1 codes
% clc;
% clear all;

%%% read files
imagefiles = dir('*.jpg');
n_files = length(imagefiles);% Number of files found
ImageFolder ="C:\Users\HP\Desktop\New folder\New folder\";

test_sample = length(imagefiles);

cell_table_images_label = cell2table(images_label);

sleep_True.W = [];
sleep_True.R = [];
sleep_True.S1 = [];
sleep_True.S2 = [];
sleep_True.S3 = [];
sleep_True.S4 = [];

%% Sleep true
for  m = 1:70

    im_filename = imagefiles(m).name; 

    if cell_table_images_label{1,m} == "R"
        sleep_True.R = [sleep_True.R ; m ];
    end
end


for  m = 71:140

    im_filename = imagefiles(m).name; 

    if cell_table_images_label{1,m} == "S1"
        sleep_True.S1 = [sleep_True.S1 ; m ];
    end
end


for  m =141:210

    im_filename = imagefiles(m).name; 

    if cell_table_images_label{1,m} == "S2"
        sleep_True.S2 = [sleep_True.S2 ; m ];
    end
end

for  m = 211:280

    im_filename = imagefiles(m).name; 

    if cell_table_images_label{1,m} == "S3"
        sleep_True.S3 = [sleep_True.S3 ; m ];
    end
end

for  m = 281:350

    im_filename = imagefiles(m).name; 

    if cell_table_images_label{1,m} == "S4"
        sleep_True.S4 = [sleep_True.S4 ; m ];
    end
end

for  m = 351:420

    im_filename = imagefiles(m).name; 

    if cell_table_images_label{1,m} == "W"
        sleep_True.W = [sleep_True.W ; m ];
    end
end

[row_W,~] = size(sleep_True.W);
[row_S1,~] = size(sleep_True.S1);
[row_S2,~] = size(sleep_True.S2);
[row_S3,~] = size(sleep_True.S3);
[row_S4,~] = size(sleep_True.S4);
[row_R,col] = size(sleep_True.R);

% calculate Test accuracy

test_acc = ((row_R + row_S1 + row_S2 + row_S3 + row_S4 +...
    row_W)/test_sample) * 100

cell_table_images_label1 = rows2vars(cell_table_images_label);
convert_imagefiles_table = struct2table(imagefiles);
cell_table_images_label1.name = [convert_imagefiles_table.name];


% uiimport("Table.mat")
