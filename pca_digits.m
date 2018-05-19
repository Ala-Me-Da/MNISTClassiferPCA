function [results, succRate] = pca_digits(testDigit, testArray, Us) 


z = double(testArray); 
sz = size(z); 
dist = zeros(10,1); 
results = zeros(sz(2), 1); 
for k=1:sz(2) 
    for j=1:10
        Uk = Us(:,:,j);
        dist(j) = norm( z(k,:)' - Uk*(Uk'*z(k,:)') );
    end
    [m, i] = min(dist); 
    results(k) = i; 
end 

%succRate is defined as the number of correctly labeled numbers over 
%the total numbers
numCorrect = results(results == testDigit+1); 
%numCorrect = numCorrect(numCorrect ~= 0); 
succRate = (length(numCorrect)/sz(2))*100;

fprintf('results of classification\n') 
disp(results); 


fprintf('\nSuccess Rate: %.1f%%\n\n', succRate); 