function [xoverKids] = CrossoverFcn( parents, options, nvars, FitnessFcn, ...
    unused,thisPopulation )

% parents - ≥ндекси батьк≥в в поточн≥й попул€ц≥њ, що беруть участь у
%           схрещуванн≥. вектор з парною к≥льк≥стю елемент≥в
% nvars   - к≥льк≥сть зм≥нних (ген≥в)
% unused  - вектор-стовбець ≥з оц≥нкою кожноњ особини
% thisPopulation - поточна попул€ц≥€ (матриц€)

ret = zeros(length(parents)/2, nvars);

for i = 1:2:length(parents)-1
    p1 = thisPopulation(parents(i), :);
    p2 = thisPopulation(parents(i+1), :);
    
    % генеруЇмо цикл
    t = randi(nvars);     % початок циклу (≥ндекс)
    cycle = zeros(1,nvars);
    for j = 1:1:nvars  
        cycle(1,j) = t;
        nv = p2(t);
        t = find(p1==nv);
        if (p1(cycle(1,1)) == nv) 
            break;  % цикл замкнувс€
        end;
    end;
    
    % елементи, що не попали в цикл успадковуютьс€ в≥д ≥ншого батька
    child = p2;
    for j = 1:1:nvars
        if (cycle(1,j) ~= 0)
            child(1,cycle(1,j)) = p1(cycle(1,j));
        end;
    end;
    ret((i+1)/2,:) = child;    
end;

xoverKids = ret;

end

