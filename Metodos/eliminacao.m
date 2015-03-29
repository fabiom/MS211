%	Programa que resolve sistemas lineares usando a Eliminação de Gauss
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Entre aqui com a sua matriz A, com o vetor-coluna b, e com o chute inicial x(1)
% da equação A*x = b.

A = [3, 2, 4; 1, 1, 2; 4, 3, -2];
b = [1; 2; 3]
n = length(A);

% Aplica a Eliminação de Gauss no sistema de equações

for c = 1:n

	for d = (c+1):n

		m = A(d, c) / A(c, c);
		A(d, :) = A(d, :) - m * A(c, :);
		b(d) = b(d) - m * b(c);

	end

end

% Resolve o sistema

x(n) = b(n) / A(n,n);

for c = (n-1):-1:1

	s = 0;

	for d = (c+1):n

		s = s + A(c, d) * x(d);
		x(c) = (b(c) - s) / A(c, c);

	end

end

% Imprime o resultado
x
