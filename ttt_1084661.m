function C = ttt_1084661(A, B, mode)
    sizeA = size(A);
    sizeB = size(B);
    
    if nargin == 3 && strcmp(mode, 'all') % Ελέγχουμε εάν το mode είναι ορισμένο και είναι 'all'
        if sizeA ~= sizeB % Έλεγχος συμβατότητας
            disp('Οι τανυστές δεν έχουν συμβατά μεγέθη για εσωτερικό γινόμενο.');
        else
            C = dot(A(:), B(:)); % Εσωτερικό γινόμενο των τανυστών
        end
    else
        % Εξωτερικό γινόμενο των τανυστών
        C = reshape(A, [], 1) * reshape(B, 1, []); % Μετασχηματίζουμε τους τανυστές σε διάνυσμα στήλης και γραμμής με τον αριθμό γραμμών/στηλών να προσαρμόζεται αυτόματα
        
        % Διαμόρφωση του αποτελέσματος στις σωστές διαστάσεις
        C = reshape(C, [sizeA, sizeB]); % Μετασχηματίζουμε το διδιάστατο μητρώο που περιλαμβάνει το εξωτερικό γινόμενο των στοιχείων των διανυσμάτων πάλι σε τανυστή
    end
end