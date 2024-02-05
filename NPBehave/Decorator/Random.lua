---@class NPBehave.Decorator.Random : NPBehave.Decorator.Decorator
local Random = Class(NPBehaveClassName.Random)
local superName = NPBehaveClassName.Decorator

---@class NPBehave.Decorator.Random: NPBehave.Decorator.Decorator
Extends(NPBehaveClassName.Random, superName, function(self, super, ...)
    local probability, decoratee = ...
    super("Random", decoratee)
end)

---@param probability number
---@param decoratee NPBehave.Node
function Random:__init(probability, decoratee)
    self._probability = probability
end

---override<br>
---@protected
function Random:DoStart()
    if NPBehave.Context.Platform:GenerateRandom() <= self._probability then
        self.Decoratee:Start()
    else
        self:Stopped(false)
    end
end

---override<br>
---@protected
function Random:DoCancel()
    self.Decoratee:CancelWithoutReturnResult()
end

---override<br>
---@protected
function Random:DoChildStopped(child, result)
    self:Stopped(result)
end