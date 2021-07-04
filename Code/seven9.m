Pu = P(:,1:200);
Tu = T(:,1:200);

net = newlind(Pu, Tu);

w1 = net.IW{1}(1);
w2 = net.IW{1}(2);
b = net.b{1};

disp(' neuron weight coefficient values:' )
disp( w1 )
disp( b )