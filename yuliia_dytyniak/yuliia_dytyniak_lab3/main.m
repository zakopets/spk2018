%% ����� ������� ��������
%% ������ 3
%% �����������: �������
%% �������: �������� ��������

% ������: ������ ����������� �������,
% ���� ��������� ����� ����� ���� �� ������ ����

% ����� ������ � ����������� ������ ���
% �������� ���� �� ������ �������������
% � ������� ��������� ���� ������� ���

% ��� ������� � 5 ��� ������� ������ 5! = 120 ����� ������� ������
% ���� ����� ��������� ������� ����� ������� ��� (5)

startPopulation = [
    1, 2, 3, 4, 5;
    2, 3, 4, 5, 1;
    3, 4, 5, 1, 2;
    4, 5, 1, 2, 3;
    5, 1, 2, 3, 4
];

options = gaoptimset(...
    'EliteCount', 0, ...
    'PopulationSize', 5, ...
    'InitialPopulation', startPopulation, ...
    'MutationFcn', @MutationFcn, ...
    'CrossoverFcn', @CrossoverFcn, ...
    'TimeLimit', 3 ...
);


[x,fval,exitflag,output,population,scores] = ga(@optim_function, 5, options);

disp('�������� �������:'); disp(x);
fprintf('f(x) = %d\n', fval);

disp('������� ���������:');
for i=1:1:5
    for j=1:1:5
        fprintf('\t%d', population(i,j));
    end
    fprintf('\t=>\t%d\n', scores(i));
end

