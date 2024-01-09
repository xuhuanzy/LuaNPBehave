require("index")
require("NPBehave")
local GameContext = require("NPBehave.GameContext")
local class       = require("tools.class")
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

local ClassName = NPBehaveClassName

---@type NPBehave.Root
local behaviorTree

-- local tree = New(ClassName.Service)(1.0, function()
--         print("Hello World!")
--     end,
--     New(ClassName.WaitUntilStopped)()
-- )


local tree = New(ClassName.Service)(0.5,
    function()
        local v = not behaviorTree.Blackboard:Get("foo")
        behaviorTree.Blackboard:Set("foo", v)
    end,
    New(ClassName.Selector)(
        New(ClassName.BlackboardCondition)("foo", NPBehaveOperator.IsEqual, true, NPBehaveStops.ImmediateRestart,
            New(ClassName.Sequence)(
                New(ClassName.Action)({
                    action = function() print("foo") end
                }),
                New(ClassName.WaitUntilStopped)()
            )
        ),
        New(ClassName.Sequence)(
            New(ClassName.Action)({
                action = function()
                    print("bar")
                end
            }),
            New(ClassName.WaitUntilStopped)()
        )
    )
)

behaviorTree = New(ClassName.Root)(tree)
behaviorTree:Start()

local count = 0
local millisecondsTimeout = 33
while true do
    Sleep(millisecondsTimeout / 1000)
    -- Console.WriteLine("Update");
    GameContext.Update(millisecondsTimeout / 1000)
    count = count + 1
    if count == 100 then
        print("停止")
        if behaviorTree ~= nil and behaviorTree.CurrentState == NPBehaveNodeState.Active then
            behaviorTree:CancelWithoutReturnResult()
        end
    end
    -- print("Update")
end

-- local obj1 = New(ClassName.WaitUntilStopped)()
-- local obj2 = New(ClassName.WaitUntilStopped)()
-- local x1 = obj1:bind(obj1.SetRoot)
-- local x2 = obj1:bind(obj1.SetRoot)
-- local x3 = obj2:bind(obj2.SetRoot)
-- local x4 = obj2:bind(obj2.SetRoot)
-- local x4 = obj2:bind(obj2.SetRoot)

-- print()
