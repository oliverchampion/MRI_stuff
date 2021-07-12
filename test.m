
my_fun=@(x,y) x(1,:)*y(1)+x(2,:)*y(2);

con1=[0.1,0.3,0.4,.6];
con3=[.3,.7,.6,.2];
cons=[con1;con3];

y=[0.3, 0.2];

data=my_fun(cons,y);

x0=[0.4, 0.4];



fit_stuff(con1,con3,data,x0)