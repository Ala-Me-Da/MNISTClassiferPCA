clear; 
load mnistdata

% Code given in assignment 
% Visualize the average train digits

T(1,:) = mean(train0);
T(2,:) = mean(train1);
T(3,:) = mean(train2);
T(4,:) = mean(train3);
T(5,:) = mean(train4);
T(6,:) = mean(train5);
T(7,:) = mean(train6);
T(8,:) = mean(train7);
T(9,:) = mean(train8);
T(10,:) = mean(train9);

%test0 
centroid(0, test0, T); 

%test1 
centroid(1, test1, T); 

%test2 
centroid(2, test2, T); 

%test3
centroid(3, test3, T); 

%test4
centroid(4, test4, T); 

%test5 
centroid(5, test5, T); 

%test6
centroid(6, test6, T); 

%test7 
centroid(7, test7, T); 

%test8
centroid(8, test8, T); 

%test9
centroid(9, test9, T); 

