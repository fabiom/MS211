%	Programa que encontra raízes utilizando o Método do Ponto Fixo
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

% Entre aqui com o chute inicial (x(1)), com o erro (E) e com o número máximo
% de iterações (Maximo) 
x(1) = 1;
E = 0.001;
Maximo = 1000;

% Entre aqui com a função g(x) cujo ponto fixo você quer achar, e que cumpra
% os critŕios de convergência para este método.

function y = g(x);
	y = cos(x);
end

% Passo iterativo

for c = 1:Maximo
	
	x(c+1) = g( x(c) );
	
	if abs( g(x(c+1)) - g(x(c))) < E
		break;
	end
end

% Imprime informações na tela

x(c+1)
fprintf("Número de iterações: %d\n", c)
