% making nice figures
both = load('complete_and_radiomics.csv_preds.mat').data;
rads = load('radiomics_only.csv_preds.mat').data;
clin = load('complete_vars_only.csv_preds.mat').data;

ymax = 1.1;
xmax = 65;
    
%best K-Fold

figure(1)
set(gcf,'color','white')

subplot(3,2,1)
k = 4;
stairs(cell2mat(clin(k,3)),cell2mat(clin(k,2)),'-r','LineWidth',1);
hold on
stairs(cell2mat(clin(k,3)),cell2mat(clin(k,1)),'-.b','LineWidth',1);
title('Radiomics + Clinical Data (Best K-Fold)')
xlabel('Numer of Months')
ylabel('Survival Proportion')
legend('Predicted Survival','Actual Survival')
ylim([0,ymax])
xlim([0,xmax])
yticks([0.0, 0.2, 0.4, 0.6, 0.8, 1.0])
hold off

subplot(3,2,2)
k = 1;
stairs(cell2mat(clin(k,3)),cell2mat(clin(k,2)),'-r','LineWidth',1);
hold on
stairs(cell2mat(clin(k,3)),cell2mat(clin(k,1)),'-.b','LineWidth',1);
title('Radiomics + Clinical Data (Worst K-Fold)')
xlabel('Numer of Months')
ylabel('Survival Proportion')
legend('Predicted Survival','Actual Survival')
ylim([0,ymax])
xlim([0,xmax])
yticks([0.0, 0.2, 0.4, 0.6, 0.8, 1.0])
hold off

subplot(3,2,3)
k = 4;
stairs(cell2mat(rads(k,3)),cell2mat(rads(k,2)),'-r','LineWidth',1);
hold on
stairs(cell2mat(rads(k,3)),cell2mat(rads(k,1)),'-.b','LineWidth',1);
title('Radiomics Data Only (Best K-Fold)')
xlabel('Numer of Months')
ylabel('Survival Proportion')
legend('Predicted Survival','Actual Survival')
ylim([0,ymax])
xlim([0,xmax])
yticks([0.0, 0.2, 0.4, 0.6, 0.8, 1.0])
hold off

subplot(3,2,4)
k = 2;
stairs(cell2mat(clin(k,3)),cell2mat(clin(k,2)),'-r','LineWidth',1);
hold on
stairs(cell2mat(clin(k,3)),cell2mat(clin(k,1)),'-.b','LineWidth',1);
title('Radiomics Data Only (Worst K-Fold)')
xlabel('Numer of Months')
ylabel('Survival Proportion')
legend('Predicted Survival','Actual Survival')
ylim([0,ymax])
xlim([0,xmax])
yticks([0.0, 0.2, 0.4, 0.6, 0.8, 1.0])
hold off

subplot(3,2,5)
k = 3;
stairs(cell2mat(both(k,3)),cell2mat(both(k,2)),'-r','LineWidth',1);
hold on
stairs(cell2mat(both(k,3)),cell2mat(both(k,1)),'-.b','LineWidth',1);
title('Clinical Data Only (Best K-Fold)')
xlabel('Numer of Months')
ylabel('Survival Proportion')
legend('Predicted Survival','Actual Survival')
ylim([0,ymax])
xlim([0,xmax])
yticks([0.0, 0.2, 0.4, 0.6, 0.8, 1.0])
hold off

subplot(3,2,6)
k = 1;
stairs(cell2mat(both(k,3)),cell2mat(both(k,2)),'-r','LineWidth',1);
hold on
stairs(cell2mat(both(k,3)),cell2mat(both(k,1)),'-.b','LineWidth',1);
title('Clinical Data Only (Worst K-Fold)')
xlabel('Numer of Months')
ylabel('Survival Proportion')
legend('Predicted Survival','Actual Survival')
ylim([0,ymax])
xlim([0,xmax])
yticks([0.0, 0.2, 0.4, 0.6, 0.8, 1.0])
hold off

sgtitle('Predicted and Actual Survival (Freedom From Local Progression)') 
