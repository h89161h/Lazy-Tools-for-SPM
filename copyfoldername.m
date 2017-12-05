% In SPM preprocessing
% We make some folders to store the steps of data processing
% For example, There ara a lot of subfolders (e.g. Sub001,Sub002,....) under FolderToCloned(e.g. Rawdata)
% And then I want to create a NewFolder(e.g. Preprocesing) with a lot of empty subfolders which have the same names as those in FolderToCloned

%-----Depend on you needs-----%
FolderToCloned ='E:\Rawdata'; %%the folder to be cloned
NewFolder = 'E:\Preprocessing'; %%the folder to be created

%-----Main code-----%
files = dir(FolderToCloned);
filenames = {files.name};% get the name of subfolders in FolderToCloned

for i = 3 : length(filenames)
      new =strcat(NewFolder,'\',filenames{i});
      mkdir (new); cd(new);
      %mkdir('001');mkdir('002');%create sub-subfolders
end

display('done');
