%%%%%%%%%%%%% FINAL VERSION OF hyper volume calculation for OUR INDICATOR
%%%%%%%%%%%%% includes rankSUM TEST(STATISTICAL TEST), Obtaining BEST AND avg RUN
for obj=  2:2:10
   
objective = obj

Result=cell(7,1);

for p=  1:7
problem = p;

run = 30; 

%-----------------------------------------------------------------------------------------     
C = [ ];

for i = 1:30
    
    eval(['load D:\ARCHIVE-BASED\org-K-G-B-NSGA-III\DTLZfiles\KnEA_D\KnEA-ENSD','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
end
for i = 1:30
    
    eval(['load D:\ARCHIVE-BASED\org-K-G-B-NSGA-III\DTLZfiles\BiGE_D\BiGE_D','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
end
for i = 1:30   
    
    eval(['load D:\OUR_CODES\two_archive\two-archiv-me-dtlz-new\Two_Ar-DTLZ-diffpop\Two-Archive2','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
   
    C = [ C ; FunctionValue ];
   
end

for i = 1:30   
    
    eval(['load D:\OUR_CODES\MOEA-D\RES-MOEA-D\MOEAD-d\MOEAD_dtlz','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end

for i = 1:30   
    
    eval(['load D:\OUR_CODES\AGE-II\AGE-II-DTLZ\RES-AGE-II_DTLZ-org\AGE-II-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end

for i = 1:30
    
    eval(['load D:\ARCHIVE-BASED\org-K-G-B-NSGA-III\DTLZfiles\GrEA_D\GrEA_D','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
end



for i = 1:30
    
    eval(['load D:\ARCHIVE-BASED\org-K-G-B-NSGA-III\files_of_NSGAIII\NSGAIII_D\NSGAIII-ENSD','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end
for i = 1:30
    
    eval(['load D:\CODES-OUR-ALGORITHMS\SPEA-2+SDE-OUR\SPEA2+SDE-our-DTLZ\SPEA2+SDE-our-DTLZ\SPEA2+SDE-our-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end
for i = 1:30   
    
    eval(['load D:\OUR_CODES\SRA\SRA-DTLZ\RES-SRA-DTLZ-org\SRA-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end
for i = 1:30   
    
    eval(['load D:\OUR_CODES\HYPE\HYPE-DTLZ\RES-HYPE-DTLZ-org\HYPE-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end



for i = 1:30   
    
    eval(['load D:\OUR_CODES\IBEA\IBEA-DTLZ\RES-IBEA-DTLZ-org\IBEA-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end


for i = 1:30   
    
    eval(['load D:\OUR_CODES\our_indicator\DTLZ\DTLZ-ISDE+_sir\DTLZ-ISDE+','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end
for i = 1:30   
    
    eval(['load D:\OUR_CODES\ISDE+-with_random5Weights\DTLZ\code-for_sortingondiffobj_isde+\sort-oN_OBJ_isde+\DTLZ-ISDE+','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    C = [ C ; FunctionValue ];
    
end

 S = F_output(C);
 Point  = max(S,[],1);
 
 V1 = zeros(1,30);
 V2 = zeros(1,30);
 V3 = zeros(1,30);
 V4 = zeros(1,30);
 V5 = zeros(1,30);
 V6 = zeros(1,30);
 V7 = zeros(1,30);
 V8 = zeros(1,30);
 V9 = zeros(1,30);
 V10 = zeros(1,30);
 V11 = zeros(1,30);
 V12 = zeros(1,30);
  V13 = zeros(1,30);

    
 for i = 1:30
    
    eval(['load D:\ARCHIVE-BASED\org-K-G-B-NSGA-III\DTLZfiles\KnEA_D\KnEA-ENSD','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V1(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end

for i = 1:30
    
    eval(['load D:\ARCHIVE-BASED\org-K-G-B-NSGA-III\DTLZfiles\BiGE_D\BiGE_D','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V2(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end

for i = 1:30
    
    eval(['load D:\OUR_CODES\two_archive\two-archiv-me-dtlz-new\Two_Ar-DTLZ-diffpop\Two-Archive2','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V3(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end

for i = 1:30
    
    eval(['load D:\OUR_CODES\MOEA-D\RES-MOEA-D\MOEAD-d\MOEAD_dtlz','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V4(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end
for i = 1:30
    
    eval(['load D:\OUR_CODES\AGE-II\AGE-II-DTLZ\RES-AGE-II_DTLZ-org\AGE-II-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V5(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end
for i = 1:30
    
    eval(['load D:\ARCHIVE-BASED\org-K-G-B-NSGA-III\DTLZfiles\GrEA_D\GrEA_D','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V6(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end



for i = 1:30
    
    eval(['load D:\ARCHIVE-BASED\org-K-G-B-NSGA-III\files_of_NSGAIII\NSGAIII_D\NSGAIII-ENSD','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V7(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end
for i = 1:30
    
    eval(['load D:\CODES-OUR-ALGORITHMS\SPEA-2+SDE-OUR\SPEA2+SDE-our-DTLZ\SPEA2+SDE-our-DTLZ\SPEA2+SDE-our-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V8(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end
for i = 1:30
    
    eval(['load D:\OUR_CODES\SRA\SRA-DTLZ\RES-SRA-DTLZ-org\SRA-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V9(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end
for i = 1:30
    
    eval(['load D:\OUR_CODES\HYPE\HYPE-DTLZ\RES-HYPE-DTLZ-org\HYPE-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V10(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end

for i = 1:30
    
    eval(['load D:\OUR_CODES\IBEA\IBEA-DTLZ\RES-IBEA-DTLZ-org\IBEA-DTLZ','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V11(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end



for i = 1:30
    
    eval(['load D:\OUR_CODES\our_indicator\DTLZ\DTLZ-ISDE+_sir\DTLZ-ISDE+','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V12(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end
for i = 1:30
    
    eval(['load D:\OUR_CODES\ISDE+-with_random5Weights\DTLZ\code-for_sortingondiffobj_isde+\sort-oN_OBJ_isde+\DTLZ-ISDE+','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
    
    V13(i) = Hypervolume(FunctionValue,Point.*ones(1,size(FunctionValue,2)),1000);
    
end

Result{p} = [mean(V1),std(V1);mean(V2),std(V2);mean(V3),std(V3);mean(V4),std(V4);mean(V5),std(V5);mean(V6),std(V6);mean(V7),std(V7);...
             mean(V8),std(V8);mean(V9),std(V9);mean(V10),std(V10);mean(V11),std(V11);mean(V12),std(V12);mean(V13),std(V13)];

disp(Result{p})
fprintf('\n');
    %% statistical test
[~,a1] = ranksum(V1,V13);
[~,a2] = ranksum(V2,V13);
[~,a3] = ranksum(V3,V13);
[~,a4] = ranksum(V4,V13);
[~,a5] = ranksum(V5,V13);
[~,a6] = ranksum(V6,V13);
[~,a7] = ranksum(V7,V13);
[~,a8] = ranksum(V8,V13);
[~,a9] = ranksum(V9,V13);
[~,a10] = ranksum(V10,V13);
[~,a11] = ranksum(V11,V13);
[~,a12] = ranksum(V12,V13);

ST=[a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12]
%% best run

[~,r1] = sort(V1);x1=r1(30);m1=r1(15);
[~,r2] = sort(V2);x2=r2(30);m2=r2(15);
[~,r3] = sort(V3);x3=r3(30);m3=r3(15);
[~,r4] = sort(V4);x4=r4(30);m4=r4(15);
[~,r5] = sort(V5);x5=r5(30);m5=r5(15);
[~,r6] = sort(V6);x6=r6(30);m6=r6(15);
[~,r7] = sort(V7);x7=r7(30);m7=r7(15);
[~,r8] = sort(V8);x8=r8(30);m8=r8(15);
[~,r9] = sort(V9);x9=r9(30);m9=r9(15);
[~,r10] = sort(V10);x10=r10(30);m10=r10(15);
[~,r11] = sort(V11);x11=r11(30);m11=r11(15);
[~,r12] = sort(V12);x12=r12(30);m12=r12(15);
[~,r13] = sort(V13);x13=r13(30);m13=r13(15);

best =[x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13]
avgrun =[m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13]
% 
%%
clear C;

end

end