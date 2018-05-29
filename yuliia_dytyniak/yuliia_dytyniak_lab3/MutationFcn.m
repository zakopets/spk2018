function [  mutationChildren ] = MutationFcn( parents, options, nvars, ...
FitnessFcn, state, thisScore, thisPopulation )

% parents - номер особини в попул€ц≥њ, що мутуЇ
% nvars - к≥льк≥сть зм≥нних
% state - ≥нформац≥€ про поточну попул€ц≥ю
% thisScore - оц≥нки поточноњ попул€ц≥њ
% thisPopulation - поточна попул€ц≥€

 k = 0.62;              % k=62%
 t = ceil(k*nvars);     % точка розриву

 mutant = thisPopulation(parents, :);
 d = mutant(t);
 d1 = mutant(t+1);
 mutant(t) = d1;
 mutant(t+1) = d;
 
 mutationChildren = mutant;
 
end

