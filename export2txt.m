function export2txt(filename,data,path)
    fileID=fopen([path filename '.txt'],'W');
    typer='%11s\n';
%     signer=repmat('0',length(data),1);
    data=round(data);
%     for i=1:length(data)
%         if sign(data(i))==1 || sign(data(i))==0
%             signer(i)=' ';
%         else
%             signer(i)='-';
%         end
%     end
%     data=abs(data);
    writer=cellstr(compose("%11d",data'));
    fprintf(fileID,typer,writer{:});
    fclose(fileID);
end

