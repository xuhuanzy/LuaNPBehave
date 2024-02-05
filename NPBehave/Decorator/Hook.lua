---@class NPBehave.Decorator.Hook : NPBehave.Decorator.Decorator
local Hook = Class(NPBehaveClassName.Hook)
local superName = NPBehaveClassName.Decorator

---@class NPBehave.Decorator.Hook: NPBehave.Decorator.Decorator
Extends(NPBehaveClassName.Hook, superName, function(self, super, ...)
    local onStart, decoratee = ...
    super("Hook", decoratee)
end)

---@param onStart fun()
---@param decoratee NPBehave.Node
function Hook:__init(onStart, decoratee)
    self._onStart = onStart
end

---override<br>
---@protected
function Hook:DoStart()
    self._onStart()
    self.Decoratee:Start()
end

---override<br>
---@protected
function Hook:DoCancel()
    self.Decoratee:CancelWithoutReturnResult()
end

---override<br>
---@protected
function Hook:DoChildStopped(child, result)
    self:Stopped(result)
end