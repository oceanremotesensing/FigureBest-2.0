function handleMyFigure=controlFigure(iNumber,iColumn)
%% ȱʡ����
%function handleMyFigure=controlFigure(iNumber)
if nargin==0
    iNumber=get(gcf,'Number');
    iColumn=1;
elseif nargin==1
    iColumn=1;
end

handleMyFigure=findobj('Type', 'figure','Number',iNumber);

if isempty(handleMyFigure)
    iNumberCell=inputdlg('����������ȷ��figure���֣�һ��һ������','�������',[1 50]) ;
    if ~isempty(iNumberCell)
    iNumber=str2num(iNumberCell{1});
    else
        return
    end
    handleMyFigure=findobj('Type', 'figure','Number',iNumber);
    if isempty(handleMyFigure)
        clc;
        [IconData,IconCMap]=imread('tutu.jpg');
        msgbox('����������󣬳����Զ��˳��������߹��ںţ�tutongdao��','error','custom',IconData,IconCMap);pause(1);
        return
    end
end

%% figure��������
%   ����:figure���,Ĭ�ϵ�ǰgcf
%   ���أ��޸ĺ��figure���
handleMyFigure.Name='ͼͼ�Ļ�ͼ��ʽ';
handleMyFigure.Units='centimeters';     %��Ϊ����Ϊ��λ
%��ӡ���� ��ͼƬ�������
handleMyFigure.PaperUnits='centimeters';
if iColumn==1
    %����ͼƬ�Ĵ�С��˫��ѡ��[10, 10, 9, 6.75]cm��[���λ�� ��ȸ߶�]
    handleMyFigure.Position=[10, 4, 19, 14.25];
    handleMyFigure.PaperPosition=[10, 4, 19, 14.25];
else
    handleMyFigure.Position=[10, 10, 9, 6.75];
    handleMyFigure.PaperPosition=[10, 10, 9, 6.75];
end

handleMyFigure.Resize='off';
handleMyFigure.Color='w';               %��ͼ�α�������Ϊ��ɫ

handleMyFigure.InvertHardcopy='off';%����ͼ�����걳��ɫ
end