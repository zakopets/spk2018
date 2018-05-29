function  [output_args] = FitnessFcn( input_args )
%% ֳ����� �������. ������� ���������� �����
%  input_args = [x1, x2, x3, ... ]
%  x1, x2 ... - �������� ���, � ������� �� �����������

global WAY_MATRIX;
sum = 0;
way_length = length(input_args);
for i = 1:1:way_length-1
    sum = sum + WAY_MATRIX(input_args(i), input_args(i+1));
end

% ������ ���� �� ���������� � ��������� ����
sum = sum + WAY_MATRIX(input_args(way_length), input_args(1));

output_args = sum;

end

