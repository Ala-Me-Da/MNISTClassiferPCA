clear; 
load mnistdata 


%{
basis_len = 3;
Us=zeros( 28*28, basis_len, 10);
for k=1:10
    % go through each digit 0 to 9
    s = strcat('train',num2str(k-1));
    A = double(eval(s));

    % and get first 5 singular vector of A transposed
	[U,~,~] = svds( A', basis_len );
    Us(:,:,k)=U;
end
 
pca_digits(3, test3, Us); 
%}  

%{
basis_len = 5;
Us=zeros( 28*28, basis_len, 10);
for k=1:10
    % go through each digit 0 to 9
    s = strcat('train',num2str(k-1));
    A = double(eval(s));

    % and get first 5 singular vector of A transposed
	[U,~,~] = svds( A', basis_len );
    Us(:,:,k)=U;
end

pca_digits(5, test5, Us); 
%} 


basis_len = 7;
Us=zeros( 28*28, basis_len, 10);
for k=1:10
    % go through each digit 0 to 9
    s = strcat('train',num2str(k-1));
    A = double(eval(s));

    % and get first 5 singular vector of A transposed
	[U,~,~] = svds( A', basis_len );
    Us(:,:,k)=U;
end

pca_digits(7, test7, Us); 

