% making a truth table generator for 352 because I am tired of doing them manually

% takes in a boolean expression and the names of each variable
function res = makeTruthTable(fun, varNames)

    vars = size(varNames,2);
    totalRows = 2^vars;
    A = dec2bin(0:totalRows-1) - '0';
    output = zeros(totalRows,1);
    
    for row = 1:totalRows
        output(row) = fun(A(row,:));
    end

    res = array2table([A output], "VariableNames",[varNames "output"]);

end