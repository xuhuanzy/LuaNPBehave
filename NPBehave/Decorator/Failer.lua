---@class NPBehave.Decorator.Failer : NPBehave.Decorator.Decorator
local Failer = Class(NPBehaveClassName.Failer)
local superName = NPBehaveClassName.Decorator

---@class NPBehave.Decorator.Failer: NPBehave.Decorator.Decorator
Extends(NPBehaveClassName.Failer, superName, function(self, super, ...)
    local decoratee = ...
    super("Failer", decoratee)
end)

---@param decoratee NPBehave.Node
function Failer:__init(decoratee)
end

---override<br>
---@protected
function Failer:DoStart()
    self.Decoratee:Start()
end

---override<br>
---@protected
function Failer:DoCancel()
    self.Decoratee:CancelWithoutReturnResult()
end

---override<br>
---@protected
function Failer:DoChildStopped(child, result)
    self:Stopped(false)
end