local pprint = loadstring(game:HttpGet("https://raw.githubusercontent.com/Queered/PrettyPrintLib/main/lib.lua"))().print

-- exmpl usage
local my_table = {
  name = "John",
  age = 35,
  hobbies = {"reading", "hiking", "cooking"},
  contact = {
    email = "john@example.com",
    phone = "555-1234"
  }
}
pprint(my_table)
