
x0=0;
i=1;
x(i)=x0;
eth=0.001;

syms z
f(z)=exp(-z)-z;
f2(z)=diff(f(z));
   

while  i<=10

x(i+1)=x(i)-f(x(i))./f2(x(i));

error(1)=0;
error(i+1)=(abs(x(i+1)-x(i))./x(i+1))*100;
app_error(i)=x(i+1)-x(i);
et(i)=(app_error(i)./x(i+1))*100;


if error<eth
    xr=x(i+1)
    break
else
    i=i+1;
end


end

nu_iterations = length(x)-1