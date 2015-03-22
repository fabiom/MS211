%	Programa que encontra raízes utilizando o Método de Newton-Raphson
%	Copyright (C) 2015 Fábio Meneghetti
%
%	This program is free software: you can redistribute it and/or modify
%	it under the terms of the GNU General Public License as published by
%	the Free Software Foundation, either version 3 of the License, or
%	(at your option) any later version.
%
%	This program is distributed in the hope that it will be useful,
%	but WITHOUT ANY WARRANTY; without even the implied warranty of
%	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%	GNU General Public License for more details.
%
%	You should have received a copy of the GNU General Public License
%	along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Entre com os valores de chute inicial (x(1)), erro (E) e Número máximo de
% iterações (Maximo)

x(1) = 1.5;
E = 10^-3;
Maximo = 100;

% Escolha a função

function y = f(x);

	y = x^3 - 9*x + 3;
end

% Entre com a derivada da função

function dy = df(x);
	dy = 3*x^2 - 9;
end

% Passo iterativo

for c = 1:Maximo

	x(c+1) = x(c) - ( f(x(c))/df(x(c)) );
	
	% Critérios de parada
	if abs( x(c+1) - x(c) ) < E && abs( f(x(c+1)) ) < E
		break;
	end

end

% Imprime as informações na tela

x(c+1)
fprintf("Número de iterações: %d\n", c)
