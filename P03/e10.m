
% Valores analiticos
%
% p = 1/10 , x - [0 : 10]
% f(x) = x/10 , x - [0 : 10]
%      = 1 , x>10
%      = 0 , x<0
%
% X<3
p = 2/10

% X>7 --> 1 - X<=7
p = 1 - 7/10

% 1<X<6 --> X<=5 - X<=1
p = 5/10 - 1/10
