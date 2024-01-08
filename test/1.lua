require("index")
require("NPBehave")
local GameContext = require("NPBehave.GameContext")
GameContext.Update(0)
print(collectgarbage("count"))
Socket = require("socket")
---延时, 单位为秒
---@param seconds number
function Sleep(seconds)
    Socket.sleep(seconds)
end

local node = New("NPBehave.Root")(New("NPBehave.Node")("test"))
print(node.CurrentState)

local ClassName = {
    Action = "NPBehave.Task.Action",
    Root = "NPBehave.Root",
    Service = "NPBehave.Decorator.Service",
    Node = "NPBehave.Node",
    WaitUntilStopped = "NPBehave.Task.WaitUntilStopped",
}

---@type NPBehave.Root
local behaviorTree

behaviorTree = New(ClassName.Root)(
    New(ClassName.Service)(1.0, function()
            print("Hello World!")
        end,
        New(ClassName.WaitUntilStopped)()
    )
)
behaviorTree:Start()
local millisecondsTimeout = 33
while true do
    Sleep(millisecondsTimeout / 1000)
    -- Console.WriteLine("Update");
    GameContext.Update(millisecondsTimeout / 1000)
    -- print("Update")
end
