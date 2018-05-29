function [  mutationChildren ] = MutationFcn( parents, options, nvars, ...
FitnessFcn, state, thisScore, thisPopulation )

% parents - ����� ������� � ���������, �� ����
% nvars - ������� ������
% state - ���������� ��� ������� ���������
% thisScore - ������ ������� ���������
% thisPopulation - ������� ���������

 k = 0.62;              % k=62%
 t = ceil(k*nvars);     % ����� �������

 mutant = thisPopulation(parents, :);
 d = mutant(t);
 d1 = mutant(t+1);
 mutant(t) = d1;
 mutant(t+1) = d;
 
 mutationChildren = mutant;
 
end

