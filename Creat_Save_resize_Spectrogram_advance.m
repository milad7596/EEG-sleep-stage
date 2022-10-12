%% Read Data files and seperate them with stages
%% This codes : save images and then Resize images with 128*128 jpg
ImageFolder ="C:\Users\HP\Desktop\New folder\New folder\";

[row, col] = size(sbj_EEGs_Fpz_Cz.W); 

%5000 50-50  %5261
    
for i = 5001:5050 %row
 
    m = sbj_EEGs_Fpz_Cz.W{i, 1};
    
    
    file_name = sprintf('im resize 128.128 W (%d).jpg', i);
    
    imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 

    pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
        [-20 20],'TimeResolution',1)

    colormap("jet")

    set(colorbar,'visible','off')

    axis off
    title("")

 hFig = gcf;
 hAx  = gca;
 % set the figure to full screen
 set(hFig,'units','normalized','outerposition',[0 0 1 1]);
 % set the axes to full screen
 set(hAx,'Unit','normalized','Position',[0 0 1 1]);
 % hide the toolbar
 set(hFig,'menubar','none')
 % to hide the title
 set(hFig,'NumberTitle','off');

    res = 200;
    print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);

     %im_filename = file_name(i).name; 

     im_read = imread(file_name);

   %% Resize Image

     im_resize = imresize(im_read, [128,128])  ; 
     imshow(im_resize)

     imwrite(im_resize,file_name,'jpg');

  % saveas(gcf, file_name)
  

 
    
end

close(gcf)

for i = 5051:5100 %row
   
    m = sbj_EEGs_Fpz_Cz.W{i, 1};
    
    
    file_name = sprintf('im resize 128.128 W (%d).jpg', i);

    imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 

    pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
        [-20 20],'TimeResolution',1)

    colormap("jet")

    set(colorbar,'visible','off')

    axis off
    title("")

 hFig = gcf;
 hAx  = gca;
 % set the figure to full screen
 set(hFig,'units','normalized','outerposition',[0 0 1 1]);
 % set the axes to full screen
 set(hAx,'Unit','normalized','Position',[0 0 1 1]);
 % hide the toolbar
 set(hFig,'menubar','none')
 % to hide the title
 set(hFig,'NumberTitle','off');

    res = 200;
    print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);

     %im_filename = file_name(i).name; 

     im_read = imread(file_name);

   %% Resize Image

     im_resize = imresize(im_read, [128,128])  ; 
     imshow(im_resize)

     imwrite(im_resize,file_name,'jpg');

  % saveas(gcf, file_name)  
end

close(gcf)

for i = 5101:5150 %row
         
    m = sbj_EEGs_Fpz_Cz.W{i, 1};
    
    
    file_name = sprintf('im resize 128.128 W (%d).jpg', i);

    imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 

    pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
        [-20 20],'TimeResolution',1)

    colormap("jet")

    set(colorbar,'visible','off')

    axis off
    title("")

 hFig = gcf;
 hAx  = gca;
 % set the figure to full screen
 set(hFig,'units','normalized','outerposition',[0 0 1 1]);
 % set the axes to full screen
 set(hAx,'Unit','normalized','Position',[0 0 1 1]);
 % hide the toolbar
 set(hFig,'menubar','none')
 % to hide the title
 set(hFig,'NumberTitle','off');

    res = 200;
    print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);

     %im_filename = file_name(i).name; 

     im_read = imread(file_name);

   %% Resize Image

     im_resize = imresize(im_read, [128,128])  ; 
     imshow(im_resize)

     imwrite(im_resize,file_name,'jpg');

  % saveas(gcf, file_name)  
end

close(gcf)

for i = 5151:5200 %row
         
    m = sbj_EEGs_Fpz_Cz.W{i, 1};
    
    
    file_name = sprintf('im resize 128.128 W (%d).jpg', i);

    imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 

    pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
        [-20 20],'TimeResolution',1)

    colormap("jet")

    set(colorbar,'visible','off')

    axis off
    title("")

 hFig = gcf;
 hAx  = gca;
 % set the figure to full screen
 set(hFig,'units','normalized','outerposition',[0 0 1 1]);
 % set the axes to full screen
 set(hAx,'Unit','normalized','Position',[0 0 1 1]);
 % hide the toolbar
 set(hFig,'menubar','none')
 % to hide the title
 set(hFig,'NumberTitle','off');

    res = 200;
    print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);

     %im_filename = file_name(i).name; 

     im_read = imread(file_name);

   %% Resize Image

     im_resize = imresize(im_read, [128,128])  ; 
     imshow(im_resize)

     imwrite(im_resize,file_name,'jpg');

  % saveas(gcf, file_name)  
end

close(gcf)

for i = 5201:5250 %row
   
    m = sbj_EEGs_Fpz_Cz.W{i, 1};
    
    
    file_name = sprintf('im resize 128.128 W (%d).jpg', i);
    
    imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 

    pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
        [-20 20],'TimeResolution',1)

    colormap("jet")

    set(colorbar,'visible','off')

    axis off
    title("")

 hFig = gcf;
 hAx  = gca;
 % set the figure to full screen
 set(hFig,'units','normalized','outerposition',[0 0 1 1]);
 % set the axes to full screen
 set(hAx,'Unit','normalized','Position',[0 0 1 1]);
 % hide the toolbar
 set(hFig,'menubar','none')
 % to hide the title
 set(hFig,'NumberTitle','off');

    res = 200;
    print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);

     %im_filename = file_name(i).name; 

     im_read = imread(file_name);

   %% Resize Image

     im_resize = imresize(im_read, [128,128])  ; 
     imshow(im_resize)

     imwrite(im_resize,file_name,'jpg');

  % saveas(gcf, file_name)  
end

close(gcf)

for i = 5250:5261 %row
    
    m = sbj_EEGs_Fpz_Cz.W{i, 1};
    
    
    file_name = sprintf('im resize 128.128 W (%d).jpg', i);
   
    imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 

    pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
        [-20 20],'TimeResolution',1)

    colormap("jet")

    set(colorbar,'visible','off')

    axis off
    title("")

 hFig = gcf;
 hAx  = gca;
 % set the figure to full screen
 set(hFig,'units','normalized','outerposition',[0 0 1 1]);
 % set the axes to full screen
 set(hAx,'Unit','normalized','Position',[0 0 1 1]);
 % hide the toolbar
 set(hFig,'menubar','none')
 % to hide the title
 set(hFig,'NumberTitle','off');

    res = 200;
    print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);

     %im_filename = file_name(i).name; 

     im_read = imread(file_name);

   %% Resize Image

     im_resize = imresize(im_read, [128,128])  ; 
     imshow(im_resize)

     imwrite(im_resize,file_name,'jpg');

  % saveas(gcf, file_name)  
end


%% advance programimg

% close(gcf)
% 
% for i = 4801:4850 %row
%     
%     m = sbj_EEGs_Fpz_Cz.W{i, 1};
%     
%     
%     file_name = sprintf('im resize 128.128 W (%d).jpg', i);
%    
%     imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 
% 
%     pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
%         [-20 20],'TimeResolution',1)
% 
%     colormap("jet")
% 
%     set(colorbar,'visible','off')
% 
%     axis off
%     title("")
% 
%  hFig = gcf;
%  hAx  = gca;
%  % set the figure to full screen
%  set(hFig,'units','normalized','outerposition',[0 0 1 1]);
%  % set the axes to full screen
%  set(hAx,'Unit','normalized','Position',[0 0 1 1]);
%  % hide the toolbar
%  set(hFig,'menubar','none')
%  % to hide the title
%  set(hFig,'NumberTitle','off');
% 
%     res = 200;
%     print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);
% 
%      %im_filename = file_name(i).name; 
% 
%      im_read = imread(file_name);
% 
%    %% Resize Image
% 
%      im_resize = imresize(im_read, [128,128])  ; 
%      imshow(im_resize)
% 
%      imwrite(im_resize,file_name,'jpg');
% 
%   % saveas(gcf, file_name)  
% end
% 
% close(gcf)
% 
% for i = 4851:4900 %row
%     
%     m = sbj_EEGs_Fpz_Cz.W{i, 1};
%     
%     
%     file_name = sprintf('im resize 128.128 W (%d).jpg', i);
%    
%     imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 
% 
%     pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
%         [-20 20],'TimeResolution',1)
% 
%     colormap("jet")
% 
%     set(colorbar,'visible','off')
% 
%     axis off
%     title("")
% 
%  hFig = gcf;
%  hAx  = gca;
%  % set the figure to full screen
%  set(hFig,'units','normalized','outerposition',[0 0 1 1]);
%  % set the axes to full screen
%  set(hAx,'Unit','normalized','Position',[0 0 1 1]);
%  % hide the toolbar
%  set(hFig,'menubar','none')
%  % to hide the title
%  set(hFig,'NumberTitle','off');
% 
%     res = 200;
%     print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);
% 
%      %im_filename = file_name(i).name; 
% 
%      im_read = imread(file_name);
% 
%    %% Resize Image
% 
%      im_resize = imresize(im_read, [128,128])  ; 
%      imshow(im_resize)
% 
%      imwrite(im_resize,file_name,'jpg');
% 
%   % saveas(gcf, file_name)  
% end
% 
% close(gcf)
% 
% for i = 4901:4950 %row
% 
%     m = sbj_EEGs_Fpz_Cz.W{i, 1};
%     
%     
%     file_name = sprintf('im resize 128.128 W (%d).jpg', i);
% 
%     imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 
% 
%     pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
%         [-20 20],'TimeResolution',1)
% 
%     colormap("jet")
% 
%     set(colorbar,'visible','off')
% 
%     axis off
%     title("")
% 
%  hFig = gcf;
%  hAx  = gca;
%  % set the figure to full screen
%  set(hFig,'units','normalized','outerposition',[0 0 1 1]);
%  % set the axes to full screen
%  set(hAx,'Unit','normalized','Position',[0 0 1 1]);
%  % hide the toolbar
%  set(hFig,'menubar','none')
%  % to hide the title
%  set(hFig,'NumberTitle','off');
% 
%     res = 200;
%     print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);
% 
%      %im_filename = file_name(i).name; 
% 
%      im_read = imread(file_name);
% 
%    %% Resize Image
% 
%      im_resize = imresize(im_read, [128,128])  ; 
%      imshow(im_resize)
% 
%      imwrite(im_resize,file_name,'jpg');
% 
%   % saveas(gcf, file_name)  
% end
% 
% close(gcf)
% 
% for i = 4951:5000 %row
%     
%     m = sbj_EEGs_Fpz_Cz.W{i, 1};
%     
%     
%     file_name = sprintf('im resize 128.128 W (%d).jpg', i);
%    
%     imgName = [ImageFolder,'\Image_',num2str(i),'jpg']; 
% 
%     pspectrum(m,100,'spectrogram',"TwoSided",true,'FrequencyLimits', ...
%         [-20 20],'TimeResolution',1)
% 
%     colormap("jet")
% 
%     set(colorbar,'visible','off')
% 
%     axis off
%     title("")
% 
%  hFig = gcf;
%  hAx  = gca;
%  % set the figure to full screen
%  set(hFig,'units','normalized','outerposition',[0 0 1 1]);
%  % set the axes to full screen
%  set(hAx,'Unit','normalized','Position',[0 0 1 1]);
%  % hide the toolbar
%  set(hFig,'menubar','none')
%  % to hide the title
%  set(hFig,'NumberTitle','off');
% 
%     res = 200;
%     print(file_name,'-djpeg',['-r' sprintf('%.0f',res)]);
% 
%      %im_filename = file_name(i).name; 
% 
%      im_read = imread(file_name);
% 
%    %% Resize Image
% 
%      im_resize = imresize(im_read, [128,128])  ; 
%      imshow(im_resize)
% 
%      imwrite(im_resize,file_name,'jpg');
% 
%   % saveas(gcf, file_name)  
% end
%     






  