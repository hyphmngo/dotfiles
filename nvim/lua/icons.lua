local M = {}

M.symbol_kinds = {
  File = ' ',
  Module = ' ',
  Namespace = ' ',
  Package = ' ', -- Non-default
  Class = ' ',
  Method = ' ',
  Property = ' ',
  Field = ' ',
  Constructor = ' ',
  Enum = ' ',
  Interface = ' ',
  Function = ' ',
  Variable = ' ',
  Constant = ' ',
  String = ' ',
  Number = ' ',
  Boolean = ' ',
  Array = ' ',
  Object = ' ',
  Key = ' ',
  Null = ' ',
  EnumMember = ' ',
  Struct = ' ',
  Event = ' ',
  Operator = ' ',
  TypeParameter = ' '
}

M.cmp_kinds = {
  Text = ' ',
  Method = ' ',
  Function = ' ',
  Constructor = ' ',
  Field = ' ',
  Variable = ' ',
  Class = ' ',
  Interface = ' ',
  Module = ' ',
  Property = ' ',
  Unit = ' ',
  Value = ' ',
  Enum = ' ',
  Keyword = ' ',
  Snippet = ' ',
  Color = ' ',
  File = ' ',
  Reference = ' ',
  Folder = ' ',
  EnumMember = ' ',
  Constant = ' ',
  Struct = ' ',
  Event = ' ',
  Operator = ' ',
  TypeParameter = ' ',
}

return M
