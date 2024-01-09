NPBehave = {}

require("NPBehave.enum")
require("NPBehave.tools.types")
require("NPBehave.tools.util")
require("NPBehave.Node")
require("NPBehave.Container")
require("NPBehave.Blackboard")
require("NPBehave.Clock")
require("NPBehave.Context")


require("NPBehave.Decorator.Decorator")
require("NPBehave.Decorator.Service")
require("NPBehave.Decorator.ObservingDecorator")
require("NPBehave.Decorator.BlackboardCondition")

require("NPBehave.Composite.Composite")
require("NPBehave.Composite.Selector")
require("NPBehave.Composite.Sequence")




require("NPBehave.Task.Task")
require("NPBehave.Task.Action")
require("NPBehave.Task.WaitUntilStopped")

require("NPBehave.Root")
-- 必须在最后, 这个不应该放进core
require("NPBehave.GameContext")
