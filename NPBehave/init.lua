
--[[ 
    
 ]]
NPBehave = {}

NPBehave.Enum = require("NPBehave.enum")
NPBehave.ClassName = require("NPBehave.tools.types")
NPBehave.Util = require("NPBehave.tools.util")
require("NPBehave.Node")
require("NPBehave.Container")
require("NPBehave.Blackboard")
require("NPBehave.Clock")
require("NPBehave.Context")


require("NPBehave.Decorator.Decorator")
require("NPBehave.Decorator.Service")
require("NPBehave.Decorator.ObservingDecorator")
require("NPBehave.Decorator.BlackboardCondition")
require("NPBehave.Decorator.BlackboardQuery")
require("NPBehave.Decorator.Condition")
require("NPBehave.Decorator.Cooldown")
require("NPBehave.Decorator.Failer")
require("NPBehave.Decorator.Hook")
require("NPBehave.Decorator.Inverter")
require("NPBehave.Decorator.Observer")
require("NPBehave.Decorator.Random")
require("NPBehave.Decorator.Repeater")
require("NPBehave.Decorator.Succeeder")
require("NPBehave.Decorator.TimeMax")
require("NPBehave.Decorator.TimeMin")
require("NPBehave.Decorator.WaitForCondition")


require("NPBehave.Composite.Composite")
require("NPBehave.Composite.Selector")
require("NPBehave.Composite.Sequence")
require("NPBehave.Composite.Parallel")
require("NPBehave.Composite.RandomSelector")
require("NPBehave.Composite.RandomSequence")

require("NPBehave.Task.Task")
require("NPBehave.Task.Action")
require("NPBehave.Task.WaitUntilStopped")
require("NPBehave.Task.Wait")

require("NPBehave.Root")
-- 必须在最后, 这个不应该放进core
require("NPBehave.GameContext")
