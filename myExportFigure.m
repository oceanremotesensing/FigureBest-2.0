function myExportFigure(handleMyFigure,name,format)
if nargin==1
    name='myFigureName';
    format='-dpng';
elseif nargin==2
    format='-dpng';
end
%%  �����������ͼƬ
%   �����ΪhandleMyFigure��
%   ͼ�δ���figure��
%   myFigureNmae�����ֱ���,�ļ���ʽpng;
%   ��ѡ��ʽ
%   '-dpdf'	��ҳ����ֲ�ĵ���ʽ (PDF) ��ɫ	.pdf
%   '-deps'	PostScript (EPS) 3 ���ڰ�	.eps
%   '-depsc'	��װ�� PostScript (EPS) 3 ����ɫ	.eps
%   '-deps2'	��װ�� PostScript (EPS) 2 ���ڰ�	.eps
%   '-depsc2'	��װ�� PostScript (EPS) 2 ����ɫ	.eps
%   '-dmeta'	��ǿ��ͼԪ�ļ������� Windows?��.emf
%   '-dsvg'	SVG������������ͼ��	.svg
%   '-dps'	ȫҳ PostScript (PS) 3 ���ڰ�	.ps
%   '-dpsc'	ȫҳ PostScript (PS) 3 ����ɫ	.ps
%   '-dps2'	ȫҳ PostScript (PS) 2 ���ڰ�	.ps
%   '-dpsc2'	ȫҳ PostScript (PS) 2 ����ɫ	.ps
%   �ֱ���600dpi
%   -painters ��������ʸ��ͼ openglλͼ
%%

nameappend=strcat(name,num2str(fix(rand*rand*10000)),...
    num2str(fix(rand*rand*10000)));
print(handleMyFigure,nameappend,'-r800',format,'-opengl');
fid = fopen('name_append.txt','w+');
fprintf(fid,'%s\n',nameappend);
fclose(fid);
end