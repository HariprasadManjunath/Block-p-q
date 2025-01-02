function [Nbs] = Neighbours(v, Lexv,p,q,n)
  Nb =[];
  Lb =[];
 if(v-p > 0)
l1 = v-p;
Nb = [Nb; l1];
Lexl1 = Lexv + [-1 0];
Lb = [Lb;Lexl1];
end
if( v-q > 0)
l2 = v-q;
Nb = [Nb; l2];
Lexl2 = Lexv + [0 1];
Lb = [Lb;Lexl2];
end
if(v+q <= n)
r1 = v+q;
Nb = [Nb; r1];
Lexr1 = Lexv + [0 -1];
Lb = [Lb;Lexr1];
end
if(v+p <= n)
r2 = v+p;
Nb = [Nb;r2];
Lexr2 = Lexv + [1 0];
Lb = [Lb;Lexr2];
end
Nbs = [Nb Lb];
