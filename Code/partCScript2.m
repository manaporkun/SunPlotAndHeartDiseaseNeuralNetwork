T = readtable('out.csv');
T = table2array(T);

input_vector = [
                T(:,1)'; T(:,2)';
                T(:,3)'; T(:,4)';
                T(:,5)'; T(:,6)';
                T(:,7)'; T(:,8)';
                T(:,8)'; T(:,9)';
                T(:,10)'; T(:,11)';
                T(:,12)'; T(:,13)';
                ];
output_vector = T(:,14)';

x = input_vector;
t = output_vector;

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = 'trainscg';

% Create a Pattern Recognition Network
hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize, trainFcn);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

lr = maxlinlr(x, 'bias');
disp(lr);
net.trainParam.lr = lr;
net.trainParam.goal = 0;
net.numInputs = 1;

% Train the Network
[net,tr] = train(net,x,t);

% Test the Network
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y)
tind = vec2ind(t);
yind = vec2ind(y);
percentErrors = sum(tind ~= yind)/numel(tind);

% View the Network
view(net)

% Plots
% Uncomment these lines to enable various plots.
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, ploterrhist(e)
%figure, plotconfusion(t,y)
%figure, plotroc(t,y)

