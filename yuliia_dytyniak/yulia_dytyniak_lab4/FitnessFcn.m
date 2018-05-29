function  [output_args] = FitnessFcn( input_args )
% input_args = [x1]
% варіант 3
a = 2; b = -5; c = 47; d = -3;
x = input_args(1);

f = a + b*x + c*(x^2) + d*(x^3);
output_args = f;

end

