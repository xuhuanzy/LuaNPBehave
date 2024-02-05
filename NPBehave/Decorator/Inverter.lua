---@class NPBehave.Decorator.Inverter : NPBehave.Decorator.Decorator
local Inverter = Class(NPBehaveClassName.Inverter)
local superName = NPBehaveClassName.Decorator

---@class NPBehave.Decorator.Inverter: NPBehave.Decorator.Decorator
Extends(NPBehaveClassName.Inverter, superName, function(self, super, ...)
    local decoratee = ...
    super("Inverter", decoratee)
end)

---@param decoratee NPBehave.Node
function Inverter:__init(decoratee)
end

---override<br>
---@protected
function Inverter:DoStart()
    self.Decoratee:Start()
end

---override<br>
---@protected
function Inverter:DoCancel()
    self.Decoratee:CancelWithoutReturnResult()
end

---override<br>
---@protected
function Inverter:DoChildStopped(child, result)
    self:Stopped(not result)
end