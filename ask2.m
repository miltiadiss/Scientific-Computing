% Ορισμός του μεγέθους των μητρώων Α, Β
n = 5; 

% Δημιουργία ενός τριδιαγώνιου μητρώου A
D = randn(n, 1); % Κεντρική διαγώνιος
L = randn(n-1, 1); % Κάτω διαγώνιος
U = randn(n-1, 1); % Άνω διαγώνιος

% Δημιουργία του τριδιαγώνιου μητρώου A
A = diag(D) + diag(L, -1) + diag(U, 1);

% Δημιουργία ενός τυχαίου διανύσματος B
B = randn(n, 1);
eq = strcat(num2str(A), ' * x = ', num2str(B));
disp(eq);
x = tridiagonal_1084661(A, B);
disp(num2str(x));