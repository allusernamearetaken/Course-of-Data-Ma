clc;clear;close all;
num_ZRBHQ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\���Ҽ���Ȼ����������(��).xls', 'B5:N35');
num_ZRBHQ_s=sum(num_ZRBHQ);
num_GYWRTZ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\��ҵ��Ⱦ�������Ͷ��(��Ԫ).xls', 'B5:N35');
num_GYWRTZ_s=sum(num_GYWRTZ);
num_LYTZ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\��ҵͶ��(��Ԫ).xls', 'B5:N35');
num_LYTZ_s=sum(num_LYTZ);
num_RGLMJ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\�˹������(����).xls', 'B5:N35');
num_RGLMJ_s=sum(num_RGLMJ);
num_SLFGL=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\ɭ�ָ�����(%).xls', 'B5:N35');
num_SLFGL_s=sum(num_SLFGL);
num_SLMJ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\ɭ�����(����).xls', 'B5:N35');
num_SLMJ_s=sum(num_SLMJ);
num_SZYZL=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\ˮ��Դ����(��������).xls', 'B5:N35');
num_SZYZL_s=sum(num_SZYZL);
num_ZLZMJ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\���������(ǧ����).xls', 'B5:N35');
num_ZLZMJ_s=sum(num_ZLZMJ);
num_ZLFQXMWCTZ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\���������Ŀ���Ͷ��(��Ԫ).xls', 'B5:N35');
num_ZLFQXMWCTZ_s=sum(num_ZLFQXMWCTZ);
num_ZLFSXMWCTZ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\�����ˮ��Ŀ���Ͷ��(��Ԫ).xls', 'B5:N35');
num_ZLFSXMWCTZ_s=sum(num_ZLFSXMWCTZ);
num_ZLGTFWWCTZ_1=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\������������Ŀ���Ͷ��(��Ԫ).xls', 'B5:N35');
num_ZLGTFWWCTZ_s=sum(num_ZLGTFWWCTZ_1);
num_ZRBHQGS=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\��Ȼ����������(��).xls', 'B5:N35');
num_ZRBHQGS_s=sum(num_ZRBHQGS);
num_ZRBHQMJ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\��Ȼ���������(����).xls', 'B5:N35');
num_ZRBHQMJ_s=sum(num_ZRBHQMJ);
num_GDP=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\�˾�GDP.xls', 'C4:O4');
num_GDP_DQ=xlsread('C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\����������ֵ.xls', 'B5:N35');

num_clsss_TR=num_GYWRTZ+num_LYTZ+num_ZLFQXMWCTZ+num_ZLFSXMWCTZ;

FM=num_GDP_DQ;
out=zeros(31,13);
for i=1:13
    year=2018-i;
    str=num2str(year);
    name=['C:\Users\wangt\Documents\UCAS\�γ���Դ\���ݹ���\lesson4\data\out\',str,'.xlsx'];
    out=num_clsss_TR(:,i)./num_GDP_DQ(:,i);
    xlswrite(name,out);
end















