NPBehave = {}

require("NPBehave.util")
require("NPBehave.Stop")
require("NPBehave.Node")
require("NPBehave.Container")
require("NPBehave.Decorator.Decorator")
require("NPBehave.Composite.Composite")
require("NPBehave.Blackboard")
require("NPBehave.Clock")
require("NPBehave.Context")

require("NPBehave.Decorator.Service")
require("NPBehave.Task.Task")
require("NPBehave.Task.Action")
require("NPBehave.Task.WaitUntilStopped")

require("NPBehave.Root")
-- 必须在最后, 这个不应该放进core
require("NPBehave.GameContext")
