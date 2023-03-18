-- define the print function
function pprint(value)
  local printed_table = {}
  
  -- define the function to print tables recursively
  local function rprint(value, indent)
    local str = ""
    
    if type(value) == "table" then
      -- check if the table has already been printed
      if printed_table[value] then
        str = str .. " <already printed>"
      else
        printed_table[value] = true
        str = str .. "\n" .. string.rep(" ", indent) .. "{\n"
        for k, v in pairs(value) do
          str = str .. string.rep(" ", indent+2)
          if type(k) == "number" then
            str = str .. "[" .. k .. "]"
          elseif type(k) == "string" then
            str = str .. k
          else
            str = str .. tostring(k)
          end
          str = str .. " = "
          str = str .. rprint(v, indent+2) .. ",\n"
        end
        str = str .. string.rep(" ", indent) .. "}"
      end
    elseif type(value) == "string" then
      str = str .. "\"" .. value .. "\""
    else
      str = str .. tostring(value)
    end
    
    return str
  end
  
  -- call the r function with initial indentation
  print(rprint(value, 0))
end

-- return the function
return {
  print = pprint
}
