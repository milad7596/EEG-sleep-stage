
% imagefiles = dir('*.jpg');
% n_files = length(imagefiles);% Number of files found

%% Dictionary for labeling Images

pre_label.label = [];

for s = 1:n_files 
        im_filename = imagefiles(s).name(25:26);
        pre_label.label = [pre_label.label ; {im_filename}] ;
end

%%% Convert (pre_label.label) to categorical , because it should be...
%%% Same with (probability.EEG_predict) for Label
con_pre_label = categorical(pre_label.label);


[matris,order] = confusionmat(con_pre_label,probability.EEG_predict);

% figure
% cm = confusionchart(matris,order,"Title","50 Images (Pz-Oz)");

figure
cm = confusionchart(con_pre_label,probability.EEG_predict ,...
    'Title','70 Images (Pz-Oz) V10', ...
    'RowSummary','absolute', ...
    'ColumnSummary','absolute');

file_name = sprintf('Pz-Oz matrix (700 = 630+70) V10.jpg');

saveas(gcf, file_name)

figure
cm = confusionchart(con_pre_label,probability.EEG_predict ,...
    'Title','70 Images (Pz-Oz) V10', ...
    'RowSummary','row-normalized', ...
    'ColumnSummary','column-normalized');

file_name = sprintf('Pz-Oz matrix (700 = 630+70) V101.jpg');

saveas(gcf, file_name)

save('Pz_Oz_matris_700_V10.mat','matris');


% cm.NormalizedValues
% cm.ClassLabels