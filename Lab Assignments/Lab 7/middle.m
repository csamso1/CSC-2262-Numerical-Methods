% middle
function result=middle(x,inner,h,g,f,v,w)
global accuracy;
n=length(x);
for(k=1:n)
    c=h(x(k));
    d=g(x(k));
    result(k)=quad(inner,c,d,accuracy,[],x(k),f,v,w);
end