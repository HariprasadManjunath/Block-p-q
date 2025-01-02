function[A Ab] = BDpqE(n,p,q)

  A = zeros(n) + diag(ones(1,n-p),p) + diag(ones(1,n-q),-q);

  indx = getOrder(n,p,q);

  P = eye(n)(:,indx);

  Ab = P'*A*P;
