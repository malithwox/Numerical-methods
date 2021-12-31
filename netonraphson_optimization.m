x0=2.5;
i=1;
x(i)=x0;
eth=0.01;

syms z
f(z)=2*sin(z)-z.^2/10;
f1(z)=diff(f(z));
f2(z)=diff(f1(z));
   
while i<=5
    x(i+1)=x(i)-f1(x(i))./f2(x(i));
    error(i)=(abs(x(i+1)-x(i))./x(i+1))*100;
    if error<eth
        xr=x(i+1)
        break
    else
        i=i+1;
    end
    double(f(x))
end

nu_iteration=length(error)



