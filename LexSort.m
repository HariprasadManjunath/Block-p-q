function [Cs] = LexSort(Marked,LexOrder)
  [m n] = size(Marked);

  [val ind] = sort(LexOrder(:,2));
  LexOrder = LexOrder(ind,:);
  Marked = Marked(ind);
  [uset] = unique(LexOrder(:,2));

  k = size(uset)(1);
  run = 0;
  for i = 1:k
    z = sum(uset(i) == LexOrder(:,2));
    N  = LexOrder(run+1 : run+z,:);
    [val ind] = sort(N(:,1));
    N = N(ind,:);
    LexOrder(run+1:run+z,:) = N;
    Marked(run+1:run+z) = Marked(run+1:run+z)(ind);
    run = z+run;
  endfor

  Cs = Marked;
