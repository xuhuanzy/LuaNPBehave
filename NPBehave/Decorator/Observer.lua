---@class NPBehave.Decorator.Observer : NPBehave.Decorator.Decorator
local Observer = Class(NPBehaveClassName.Observer)
local superName = NPBehaveClassName.Decorator

---@class NPBehave.Decorator.Observer: NPBehave.Decorator.Decorator
Extends(NPBehaveClassName.Observer, superName, function(self, super, ...)
    local onStart, onStop, decoratee = ...
    super("Observer", decoratee)
end)

---@param onStart fun()
---@param onStop fun(result: boolean)
---@param decoratee NPBehave.Node
function Observer:__init(onStart, onStop, decoratee)
    self._onStart = onStart
    self._onStop = onStop
end

---override<br>
---@protected
function Observer:DoStart()
    self._onStart()
    self.Decoratee:Start()
end

---override<br>
---@protected
function Observer:DoCancel()
    self.Decoratee:CancelWithoutReturnResult()
end

---override<br>
---@protected
function Observer:DoChildStopped(child, result)
    self._onStop(result)
    self:Stopped(result)
end