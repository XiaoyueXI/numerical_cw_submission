# function to merge two sorted arrays in ascending order
function mergepresorted(A::Array{Int64,1}, B::Array{Int64,1})
if length(A) == 0
return B
elseif length(B) == 0
return A
elseif A[1] < B[1]
return vcat([A[1]], mergepresorted(A[2:end], B))
else
return vcat([B[1]], mergepresorted(A, B[2:end]))
end
end

# function to implement the mergesort algorithm for an array of integers whose length, n is a power of 2: n=2m.
function mergesort(A::Array{Int64,1})
n=Int64(length(A));
if n==Int64(1)
return A
else
m=Int64(n/2);
return mergepresorted(mergesort(A[1:m]),mergesort(A[(m+1):n]))
end
end