function [iColorOrder,iColorMap]=colorchange(figNum,iColorOrder,iColorMap)
%% ������ɫ����
if nargin==2
    iColorMap=iColorOrder;
elseif nargin==1
    iColorOrder=42;
    iColorMap=42;
end
figHandle=fignum2handle(figNum);
axesHandles=findall(figHandle,'Type','axes');
myColorOrder=colorlist(iColorOrder);
myColorMap=colorlist(iColorMap);
for iaxesHandles=1:length(axesHandles)
    axesHandles(iaxesHandles).ColorOrder=repmat(myColorOrder,20,1);
    axesHandles(iaxesHandles).Colormap=repmat(myColorMap,20,1);
end%�����������ѭ��
shg
end