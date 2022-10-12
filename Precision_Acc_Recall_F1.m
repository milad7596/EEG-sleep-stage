%% To find Precision , Recall, F1-Score, Accuracy, Avv
% will be Run after deep_3_creat_matrix
%% R
TP_R = matris(1,1); %TP_R
TN_R = sum(matris(2:end, 2:end),"all"); %TN_R
FP_R = sum(matris(2:end,1),"all"); %FP_R
FN_R = sum(matris(1,2:end),"all"); %FN_R



%% S1
TP_S1 = matris(2,2);  % TP_S1
TN_S1 = matris(1,1) + sum(matris(1,3:end),"all") +...
    sum(matris(3:end,1),"all")+ sum(matris(3:end,3:end),"all"); %TN_S1

FP_S1 = sum(matris(:,2),"all") - TP_S1; %FP_S1 
FN_S1 = sum(matris(2,:),"all") - TP_S1; %FN_S1 

%% S2
TP_S2 = matris(3,3); %TP_S2
TN_S2 = sum(matris(1:2,1:2),"all") + sum(matris(1:2,4:end),"all")+...
   sum(matris(4:end,1:2),"all") + sum(matris(4:end,4:end),"all"); %TN_S2
 
FP_S2 = sum(matris(:,3),"all") - TP_S2; %FP_S2
FN_S2 = sum(matris(3,:),"all") - TP_S2; %FN_S2

%% S3
TP_S3 = matris(4,4); %TP_S3
TN_S3 = sum(matris(1:3,1:3),"all") + sum(matris(1:3,5:end),"all")+...
  sum(matris(5:end,1:3),"all") + sum(matris(5:end,5:end),"all"); %TN_S3

FP_S3 = sum(matris(:,4),"all") - TP_S3;  %FP_S3
FN_S3 = sum(matris(4,:),"all") - TP_S3;  %FN_S3

%% S4
TP_S4 = matris(5,5); %TP_S4
TN_S4 = sum(matris(1:4,1:4),"all") + sum(matris(1:4,end),"all")+...
    sum(matris(end,1:4),"all") + sum(matris(end,end)); %TN_S4

FP_S4 = sum(matris(:,5),"all") - TP_S4; %FP_S4
FN_S4 = sum(matris(5,:),"all") - TP_S4; %FN_S4


%% W
TP_W = matris(6,6); %TP_W
TN_W = sum(matris(1:5, 1:5),"all"); %TN_W
FP_W = sum(matris(:,6),"all") - TP_W; %FP_W
FN_W = sum(matris(6,:),"all") - TP_W; %FN_W


%% Precision 

Precision_R  = TP_R / (TP_R + FP_R); % R
Precision_S1 = TP_S1 / (TP_S1 + FP_S1); % S1
Precision_S2 = TP_S2 / (TP_S2 + FP_S2); % S2
Precision_S3 = TP_S3 / (TP_S3 + FP_S3); % S3
Precision_S4 = TP_S4 / (TP_S4 + FP_S4); % S4
Precision_W  = TP_W / (TP_W + FP_W); % W

Avv_Precision = (Precision_W + Precision_S1 + Precision_S2+...
    Precision_S3 + Precision_S4 + Precision_R) /6  % Avv-Precision


%% Recall 

Recall_R = TP_R / (TP_R + FN_R); % R
Recall_S1 = TP_S1 / (TP_S1 + FN_S1); % S1
Recall_S2 = TP_S2 / (TP_S2 + FN_S2); % S2
Recall_S3 = TP_S3 / (TP_S3 + FN_S3); % S3
Recall_S4 = TP_S4 / (TP_S4 + FN_S4); % S4
Recall_W = TP_W / (TP_W + FN_W);  % W

Avv_Recall = (Recall_W + Recall_S1 + Recall_S2 + Recall_S3+...
    Recall_S4 + Recall_R) /6 % Avv-Recall

%% F1-Score 

F1_Score_R = (2*Precision_R * Recall_R) / (Precision_R + Recall_R);%R
F1_Score_S1 = (2*Precision_S1 * Recall_S1) / (Precision_S1 + Recall_S1);%S1
F1_Score_S2 = (2*Precision_S2 * Recall_S2) / (Precision_S2 + Recall_S2);%S2
F1_Score_S3 = (2*Precision_S3 * Recall_S3) / (Precision_S3 + Recall_S3);%S3
F1_Score_S4 = (2*Precision_S4 * Recall_S4) / (Precision_S4 + Recall_S4);%S4
F1_Score_W = (2*Precision_W * Recall_W) / (Precision_W + Recall_W); % W

Avv_F1 = (F1_Score_W + F1_Score_S1 + F1_Score_S2+...
    F1_Score_S3 + F1_Score_S4 + F1_Score_R) /6  % Avv-F1

%% Accuracy 

Acc_R = (TP_R + TN_R) / (TP_R + TN_R+ FP_R + FN_R); % R
Acc_S1 = (TP_S1 + TN_S1) / (TP_S1 + TN_S1 + FP_S1 + FN_S1); % S1
Acc_S2 = (TP_S2 + TN_S2) / (TP_S2 + TN_S2 + FP_S2 + FN_S2); % S2
Acc_S3 = (TP_S3 + TN_S3) / (TP_S3 + TN_S3 + FP_S3 + FN_S3); % S3
Acc_S4 = (TP_S4 + TN_S4) / (TP_S4 + TN_S4 + FP_S4 + FN_S4); % S4
Acc_W = (TP_W + TN_W) / (TP_W + TN_W + FP_W + FN_W); % W

Avv_Acc = (Acc_W + Acc_S1 + Acc_S2 + Acc_S3 + Acc_S4 + Acc_R)/6  % Avv-Acc


balance_acc_R = ((TP_R/70)+(TP_S1/70))/2





% (TP_R + TN_R+TP_S1 + TN_S1+TP_S2 + TN_S2+TP_S3 + TN_S3+...
%     TP_S4 + TN_S4+TP_W + TN_W) / (TP_R + TN_R+ FP_R + FN_R +...
% TP_S1 + TN_S1 + FP_S1 + FN_S1 + TP_S2 + TN_S2 + FP_S2 + FN_S2+...
% TP_S3 + TN_S3 + FP_S3 + FN_S3+TP_S4 + TN_S4 + FP_S4 + FN_S4+...
% TP_W + TN_W + FP_W + FN_W)


