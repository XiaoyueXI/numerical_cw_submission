# function to check in which interval x lies via a linked list.
function intervalmembership(list::Nullable{LList}, x::Float64)
if (isnull(list))
return Nullable{LList}
elseif x<get(list).data.value
return get(list).data
else
return intervalmembership(get(list).next,x)
end
end


# function to check in which interval x lies via a Fenwick tree.
function ftintervalmembership(FT::Nullable{FTree}, x::Float64)
if isnull(get(FT).left) && isnull(get(FT).right)
return get(FT).data
elseif x<get(get(FT).left).data.value
return ftintervalmembership(get(FT).left,x)
else
return ftintervalmembership(get(FT).right,x-get(get(FT).left).data.value)
end
end
