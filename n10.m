load sunspot.txt

L = length(sunspot);
P = [
    sunspot(1:L-12,2)' ;sunspot(2:L-11,2)';sunspot(3:L-10,2)';
    sunspot(4:L-9,2)';sunspot(5:L-8,2)';sunspot(6:L-7,2)';
    sunspot(7:L-6,2)' ;sunspot(8:L-5,2)';sunspot(9:L-4,2)';
    sunspot(10:L-3,2)';sunspot(11:L-2,2)';sunspot(12:L-1,2)'
    ];
T = sunspot(13:L,2)';

Pu = P(:,1:200);
Tu = T(:,1:200);

%net = newlin(Pu,Tu, 0,0.01);
net = newlin(P, T,0,0.00000001);
net.numInputs = 1;
%Y = sim(net,Pu);
%[net,Y,E,Pf] = adapt(net,Pu,Tu);

net = init(net);

net.trainParam.goal = 100;
net.trainParam.epochs = 10000;

net = train(net,P,T);

w1 = net.IW{1}(1);
w2 = net.IW{1}(2);
b = net.b{1};

disp(w1);
disp(w2);
disp(b);

disp(mse(P, net))

Ts = sim(net,P);

figure(1)
plot(Ts)
hold on
plot(T)
legend("Simulated Values", "Real Values")