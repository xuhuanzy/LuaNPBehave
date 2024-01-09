---@class FuncUtil
---@overload fun(): self
local FuncUtil = Class 'FuncUtil'


---函数绑定到对象
---@param func fun(...)
---@return function
function FuncUtil:bind(func)
    if not self.funcBindCache then
        self.funcBindCache = {}
    end
    if not self.funcBindCache[func] then
        self.funcBindCache[func] = function(...) return func(self, ...) end
    end
    return self.funcBindCache[func]
end

return {
    FuncUtil = FuncUtil
}