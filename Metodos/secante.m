%	Programa que encontra raízes utilizando o Método da Secante
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

% Entre com os valores de chutes iniciais (x(1) e x(2)), erro (E) e Número
% máximo de iterações (Maximo)

x(1) = 1.5;
x(2) = 1.7;
E = 10^-3;
Maximo = 100;

% Escolha a função

function y = f(x);

	y = x^2 + x - 6;
end

% Passo iterativo

for c = 2:Maximo

	x(c+1) = x(c) - ( f(x(c)) / ( ( f(x(c))-f(x(c-1)) )/( x(c)-x(c-1) ) ) );
	
	% Critérios de parada
	if abs( x(c+1) - x(c) ) < E && abs( f(x(c+1)) ) < E
		break;
	end

end

% Imprime as informações na tela

x(c+1)
fprintf("Número de iterações: %d\n", c-1)
