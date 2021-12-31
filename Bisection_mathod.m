xl=5; %initial guesses
xu=10; %initial guesses
i=1;
eth=0.5;%error


syms x
f(x)=-0.5*x^2+2.5*x+4.5;   %define function
  

while i<10
xr(i)=(xl(i)+xu(i))./2;

if f(xl(i))*f(xr(i)) <=0
    xl(i+1)=xl(i);
    xu(i+1)=xr(i);
else
    xl(i+1)=xr(i);
    xu(i+1)=xu(i);
end
 
xr(i+1)=(xl(i+1)+xu(i+1))./2;

error(1)=0;
error(i+1)=(abs(xr(i+1)-xr(i))./xr(i+1))*100;

if error < eth
    xr=xr(i+1)
    return
else
    i=i+1;
    
end


end

nu_iterations = length(xr)