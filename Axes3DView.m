function Axes3DView(handleMyAxes)
%�����ӽǡ�������ƽ�е�
%Ŀǰ��Щ������1��ͼ�Ż��Ϻ�
set(handleMyAxes,'View',[45 15]);
handleMyAxes.XLabel.Rotation=-16;
handleMyAxes.YLabel.Rotation=16;
handleMyAxes.ZLabel.Rotation=90;
handleMyAxes.XLabel.HorizontalAlignment='right';
handleMyAxes.YLabel.HorizontalAlignment='left';
handleMyAxes.ZLabel.HorizontalAlignment='center';
handleMyAxes.ZGrid='off';
handleMyAxes.YLabel.VerticalAlignment='bottom';
end
