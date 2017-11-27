# function to implement recurence relationship using Float32 in Julia
function recusion_float32(N::Int64,a1::Float32,a2::Float32)
a32=Array{Float32}(N);
a32[1]=a1;
a32[2]=a2;
for n in 3:N
a32[n]=Float32(2)*a32[n-1]-Float32(8)/Float32(9)*a32[n-2];
end
return a32
end

# function to implement recurence relationship using Float64 in Julia
function recusion_float64(N::Int64,a1::Float64,a2::Float64)
a64=Array{Float64}(N);
a64[1]=a1;
a64[2]=a2;
for n in 3:N
a64[n]=Float64(2)*a64[n-1]-Float64(8)/Float64(9)*a64[n-2];
end
return a64
end


# function to implement recurence relationship using Float128 in Julia
function recusion_float128(N::Int64,a1::BigFloat,a2::BigFloat)
setprecision(128);
a128=Array{BigFloat}(N);
a128[1]=a1;
a128[2]=a2;
for n in 3:N
a128[n]=BigFloat(2)*a128[n-1]-BigFloat(8)/BigFloat(9)*a128[n-2];
end
return a128
end