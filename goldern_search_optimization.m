i=1;
xl(i)=0;
xu(i)=1;
R=(sqrt(5)-1)./2;


syms z
f(z)=sin(z)-z.^2;


while i<7;
    
x1(i)=xl(i)+R*(xu(i)-xl(i));
x2(i)=xu(i)-R*(xu(i)-xl(i));

if f(x2(i))>f(x1(i))
    xu(i+1)=x1(i);
    xl(i+1)=xl(i);
    x1(i+1)=xu(i+1)-R*(xu(i+1)-xl(i+1));
    x2(i+1)=x2(i);
    
elseif (x1(i))>f(x2(i))
    xu(i+1)=xu(i);
    xl(i+1)=x2(i);
    x1(i+1)=x1(i);
    x2(i+1)=xl(i+1)+R*(xu(i+1)-xl(i+1));
   
end
fx1=double(f(x1))
fx2=double(f(x2))
i=i+1;
end
