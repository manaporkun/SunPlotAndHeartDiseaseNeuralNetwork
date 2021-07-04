L = length(sunspot); % data length
P = [sunspot(1:L-2,2)' ; % input data
 sunspot(2:L-1,2)']; % matrix
T = sunspot(3:L,2)'; % output data vector

figure(2)
plot3(P(1,:),P(2,:),T,'bo') 

xlabel("Input Data P1")
ylabel("Input Data P2")
zlabel("Output Data T")
title("3D Input Output Diagram")
grid on