---@class FuncUtil
---@overload fun(): self
local FuncUtil = Class 'FuncUtil'


---函数绑定到对象
---@param fn string 函数名
---@return function
function FuncUtil:bind(fn)
    if not self.funcBindCache then
        self.funcBindCache = {}
    end
    if not self.funcBindCache[fn] then
        self.funcBindCache[fn] = function(...) return self[fn](self, ...) end
    end
    return self.funcBindCache[fn]
end

