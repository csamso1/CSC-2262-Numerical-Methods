% inner
function result=inner(y,x,f,v,w)
global accuracy;
n=length(y);
for(k=1:n)
    r=v(y(k),x);
    s=w(y(k),x);
    result(k)=quad(f,r,s,accuracy,[],y(k),x);
end



