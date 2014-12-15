w=rand(1,100000);% distr unif 0,1
b=2; % el pxi
w=sqrt(-2*b^2*log(1-w));%valores con distri Rayleigh
hist(w,100);
b*sqrt(pi/2); % media teorica
mean(w); %media muestral
((4-pi)*b^2)/2 ; % teórica
var(w);%var muestral
