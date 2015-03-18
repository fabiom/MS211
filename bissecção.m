%	Programa que encontra raízes utilizando o Método da Bissecção
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Entre aqui com os valores desejados de a e b (extremos do intervalo), E (o erro máximo em relação à raiz) e de Maximo (o número máximo de iterações)

a = 0;
b = 1;
E = 10^-3;
Maximo = 1000;

function y = f(x);

	% Entre na linha seguinte com a função desejada, com ';' no final. Por exemplo: y = x^3 - log(x);
	y = x^3 - 9*x + 3;
	
end

if f(a)*f(b) > 0

	disp('Não rola achar essa raiz.')
	break;
	
end

% Passo iterativo

for k = 1:Maximo

	% Retire o sinal ';' na linha seguinte para fazer o programa imprimir o valor encontrado em cada iteração!
	c = (a+b) / 2;

	if f(c) < 0
	
		if f(a) > f(b)
			b = c;
		else
			a = c;
		end
		
	else
	
		if f(a) > f(b)
			a = c;
		else
			b = c;
		end
		
	end
	
	% Critérios de parada (coloquei que tem que cumprir os dois)
	if abs( f( (a+b)/2 ) ) < E && abs(b-a) < E
		break;
	end
	
end

% Mostra na tela a raiz aproximada e o número de iterações realizadas

disp("")
(a+b)/2
k
