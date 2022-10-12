%% Table for Precision, Recall, F1-Score, Accuracy

% 300 Sample test

Classes = ["R";"S1";"S2";"S3";"S4";"W";"Avv"];

precision = [Precision_R;
    Precision_S1;
    Precision_S2;
     Precision_S3;
     Precision_S4;
     Precision_W;
     Avv_Precision];

recall = [Recall_R;
    Recall_S1;
    Recall_S2;
     Recall_S3;
     Recall_S4;
     Recall_W;
     Avv_Recall];

f1_Score = [F1_Score_R;
        F1_Score_S1;
        F1_Score_S2;
        F1_Score_S3;
        F1_Score_S4;
        F1_Score_W;
        Avv_F1];


acc = [Acc_R;
    Acc_S1;
    Acc_S2;
     Acc_S3;
     Acc_S4;
     Acc_W;
     Avv_Acc];




Pz_Oz_Table_binery_class_700_V20 = table(Classes,precision,recall...
    ,f1_Score,acc)


save Pz_Oz_Table_binery_class_700_V10

%  save ("Pz_Oz_Table_binery_class_700_V10.mat", ...
%     "Pz_Oz_Table_binery_class_700_V10")
