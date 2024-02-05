---@class NPBehave.Decorator.Succeeder : NPBehave.Decorator.Decorator
local Succeeder = Class(NPBehaveClassName.Succeeder)
local superName = NPBehaveClassName.Decorator

---@class NPBehave.Decorator.Succeeder: NPBehave.Decorator.Decorator
Extends(NPBehaveClassName.Succeeder, superName, function(self, super, ...)
    local decoratee = ...
    super("Succeeder", decoratee)
end)

---@param decoratee NPBehave.Node
function Succeeder:__init(decoratee)
end

---override<br>
---@protected
function Succeeder:DoStart()
    self.Decoratee:Start()
end

---override<br>
---@protected
function Succeeder:DoCancel()
    self.Decoratee:CancelWithoutReturnResult()
end

---override<br>
---@protected
function Succeeder:DoChildStopped(child, result)
    self:Stopped(true)
end