# function to traverse the list and print out the key-value pairs stored in it
function printKVPair(list::Nullable{LList})
if (isnull(list))
return
else
println(get(list).data)
return printKVPair(get(list).next)
end
end

# function to search an LList for the key k and returns the corresponding KVPair if it is present and a Nullable{KVPair} otherwise
function search(list::Nullable{LList}, k::Int64)
if (isnull(list))
return Nullable{KVPair}
elseif get(list).data.key==k
return get(list).data
else
return search(get(list).next,k)
end
end



