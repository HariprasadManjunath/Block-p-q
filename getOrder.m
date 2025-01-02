function [M] = getOrder(n,p,q)
  M = [];
  a= (1:n)';
  Cs =[];
  diffset = setdiff(a,M);
  while( size(diffset)(1) > 0)
  s = diffset(1);
  [Cs] = LDFS(n,p,q,s);
  M = [M ;Cs];
  diffset = setdiff(a,M);
end

