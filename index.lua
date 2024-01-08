game = {}

---@diagnostic disable: lowercase-global
local class = require("tools.class")
Class   = class.declare
New     = class.new
Super   = class.super
Extends = class.extends
Delete  = class.delete
IsValid = class.isValid
ClassGet = class.get

include = require
require 'tools.linked_table'

util = require 'tools.utility'
dump = util.dump

