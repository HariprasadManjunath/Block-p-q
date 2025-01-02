function[Cs] =  LDFS(n,p,q,s)

Marked =[];

Stack =[];

LexOrder =[0 0];

Marked = [Marked s]

Stack = [Neighbours(s, [0,0],p,q,n); Stack]

while(size(Stack)(1) > 0)

% Pop operation
   v = Stack(1,1);
   Lexv = Stack(1,2:3);
   Stack = Stack(2:end,:);

% Check if popped vertex is not marked
   if ( setdiff(v,Marked) == v)

     Marked = [Marked ;v]
     LexOrder = [LexOrder ;Lexv];
     Stack = [Neighbours(v,Lexv,p,q,n); Stack]
   endif
end

['LDFS called']
Cs = LexSort(Marked, LexOrder)


CsfromLDFS = Cs
