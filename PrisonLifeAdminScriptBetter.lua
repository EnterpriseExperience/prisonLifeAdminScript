local Players = cloneref and cloneref(game:GetService("Players")) or game:GetService("Players")
local TweenService = cloneref and cloneref(game:GetService("TweenService")) or game:GetService("TweenService")
local UserInputService = cloneref and cloneref(game:GetService("UserInputService")) or game:GetService("UserInputService")
local CollectionService = cloneref and cloneref(game:GetService("CollectionService")) or game:GetService("CollectionService")
local color = Color3.fromRGB
local udim2 = UDim2.new
local udim = UDim.new
local vector2 = Vector2.new
local vector = Vector3.new
local cframe = CFrame.new
local v = getgenv
local genv = v and getgenv() or _G
genv.__KX_BUILD = nil
genv.__KX_VERSION = "v1.10"
if genv.__KX_RUNTIME_CLEANUP then pcall(genv.__KX_RUNTIME_CLEANUP) end
local tbl = {}
local tbl2 = {}
local flag = true
local function fn()
    local n = 1
    for i = 1, #tbl do
        local v2 = tbl[i]
        if v2 and v2.Connected then
            tbl[n] = v2
            n = n + 1
        end
    end
    for i = n, #tbl do tbl[i] = nil end
end

local function fn2(arg, arg2)
    if #tbl >= 512 then fn() end
    local connection = arg:Connect(arg2)
    tbl[#tbl + 1] = connection
    return connection
end

local function fn3(arg)
    if arg then
        pcall(arg.Disconnect, arg)
    end
end

local function fn4(arg)
    tbl2[#tbl2 + 1] = arg
    return arg
end

genv.__KX_RUNTIME_CLEANUP = function()
    flag = false

    for i = #tbl, 1, -1 do
        pcall(function()
            tbl[i]:Disconnect()
        end)
    end

    for i = #tbl2, 1, -1 do
        pcall(tbl2[i])
    end

    table.clear(tbl)
    table.clear(tbl2)
end

local function fn5(arg, parent, ...)
    local instance = Instance.new(arg)

    for i = 1, select("#", ...), 2 do
        instance[select(i, ...)] = select(i + 1, ...)
    end

    instance.Parent = parent
    return instance
end

local localPlayer = Players.LocalPlayer
local coreGui = game:WaitForChild("CoreGui")
local kxVisualKeySystem = coreGui:FindFirstChild("KX_VisualKeySystem")

if kxVisualKeySystem then
    kxVisualKeySystem:Destroy()
end

local ScreenGui = fn5("ScreenGui", coreGui, "Name", "KX_VisualKeySystem", "ResetOnSpawn", false, "IgnoreGuiInset", true, "ZIndexBehavior", Enum.ZIndexBehavior.Sibling)

local tbl3 = {
    Bg = color(6, 10, 18),
    Panel = color(13, 21, 34),
    Panel2 = color(8, 10, 15),
    Accent = color(74, 155, 255),
    Accent2 = color(255, 176, 70),
    Text = color(220, 234, 255),
    Soft = color(120, 150, 185),
    Good = color(90, 255, 170),
    Bad = color(255, 95, 110),
}

local function fn6(arg, arg2, arg3)
    local ok, result = pcall(function()
        return TweenService:Create(arg, TweenInfo.new(arg2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), arg3)
    end)

    if ok and result then
        result:Play()
    end
end

local function fn7(arg, arg2)
    return fn5("UICorner", arg, "CornerRadius", udim(0, arg2))
end

local function fn8(arg, arg2, arg3, arg4)
    local n = arg3 or 1
    local n2 = arg4 or 0
    return fn5("UIStroke", arg, "Color", arg2, "Thickness", n, "Transparency", n2, "ApplyStrokeMode", Enum.ApplyStrokeMode.Border)
end

local function fn9(arg, arg2, arg3, arg4, arg5, arg6, arg7)
    local text = arg7 or tbl3.Text
    local gotham = arg5 or Enum.Font.Gotham
    local n = arg6 or 13
    return fn5("TextLabel", arg, "BackgroundTransparency", 1, "Position", arg3, "Size", arg4, "Text", arg2, "TextColor3", text, "Font", gotham, "TextSize", n, "TextXAlignment", Enum.TextXAlignment.Left, "TextYAlignment", Enum.TextYAlignment.Center, "TextTruncate", Enum.TextTruncate.AtEnd, "ZIndex", 5)
end

local function fn10(arg, arg2, arg3, arg4, arg5, arg6, arg7)
    local TextButton = fn5("TextButton", arg, "AutoButtonColor", false, "BackgroundColor3", arg5, "Position", arg3, "Size", arg4, "Text", arg2, "TextColor3", arg6, "Font", Enum.Font.GothamBold, "TextSize", 12, "ZIndex", 8)
    fn7(TextButton, 10)
    local v2 = fn8(TextButton, arg7, 1, 0.1)

    fn2(TextButton.MouseEnter, function()
        fn6(TextButton, 0.08, {BackgroundColor3 = arg7})
        fn6(v2, 0.08, {Color = arg6, Transparency = 0})
    end)

    fn2(TextButton.MouseLeave, function()
        fn6(TextButton, 0.08, {BackgroundColor3 = arg5})
        fn6(v2, 0.08, {Color = arg7, Transparency = 0.1})
    end)

    return TextButton
end


local fn13 = nil

local function fn14(arg)
    local fn15, tbl4, tbl5, fn16, v6

    do
        genv.__KX_API_TERMINAL = {entries = {}, listeners = {}, nextListener = 0}
        local now = os.clock()
        local flag5 = false

        fn15 = function()
            if flag5 then
                return
            end
            flag5 = true
            local n2 = math.max(0, os.clock() - now)
            local str = "init time [" .. string.format("%.2fs", n2) .. "]"

            if add_credit_line then
                add_credit_line("Script made by Kerax", str)
            elseif add_line then
                add_line("Script made by Kerax", str, false)
            end
        end

        Players = cloneref and cloneref(game:GetService("Players")) or game:GetService("Players")
        UserInputService = cloneref and cloneref(game:GetService("UserInputService")) or game:GetService("UserInputService")
        TweenService = cloneref and cloneref(game:GetService("TweenService")) or game:GetService("TweenService")
        local service = cloneref and cloneref(game:GetService("TextChatService")) or game:GetService("TextChatService")
        TextChatService = service
        local service2 = cloneref and cloneref(game:GetService("HttpService")) or game:GetService("HttpService")
        HttpService = service2
        local service3 = cloneref and cloneref(game:GetService("RunService")) or game:GetService("RunService")
        RunService = service3
        local service4 = cloneref and cloneref(game:GetService("ReplicatedStorage")) or game:GetService("ReplicatedStorage")
        ReplicatedStorage = service4
        local service5 = cloneref and cloneref(game:GetService("TeleportService")) or game:GetService("TeleportService")
        TeleportService = service5
        local service6 = cloneref and cloneref(game:GetService("MarketplaceService")) or game:GetService("MarketplaceService")
        MarketplaceService = service6
        local service7 = cloneref and cloneref(game:GetService("Lighting")) or game:GetService("Lighting")
        Lighting = service7
        local service8 = cloneref and cloneref(game:GetService("Workspace")) or game:GetService("Workspace")
        Workspace = service8
        local service9 = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")
        CoreGui = service9
        LocalPlayer = Players.LocalPlayer
        local v7 = LocalPlayer:FindFirstChildOfClass("PlayerGui") or LocalPlayer:WaitForChild("PlayerGui")
        PlayerGui = v7
        PlaceId = game.PlaceId
        JobId = game.JobId
        camera = Workspace.CurrentCamera
        tbl4 = {}
        local tbl6 = {}
        FORCEFIELD_SPAWN_GRACE = 0.5
        local obj = setmetatable({}, {__mode = "k"})
        forceFieldSpawnAt = obj
        local function fn17(arg2)
            if tbl6[arg2] then return end
            tbl4[#tbl4 + 1] = arg2
            tbl6[arg2] = #tbl4
        end

        local function fn18(arg2)
            local v8 = tbl6[arg2]
            if not v8 then return end
            local v9 = tbl4[#tbl4]
            tbl4[v8] = v9
            tbl4[#tbl4] = nil
            tbl6[arg2] = nil
            if v9 and v9 ~= arg2 then tbl6[v9] = v8 end
        end

        for i, player in ipairs(Players:GetPlayers()) do
            fn17(player)
            if player.Character then forceFieldSpawnAt[player.Character] = -math.huge end
        end

        fn2(Players.PlayerAdded, fn17)
        fn2(Players.PlayerRemoving, fn18)
        if not isfolder then
            isfolder = function()
                return false
            end
        end

        if not isfile then
            isfile = function()
                return false
            end
        end

        if not makefolder then
            makefolder = function() end
        end

        if not writefile then
            writefile = function() end
        end

        if not readfile then
            readfile = function()
                return "{}"
            end
        end

        folder = "KeraCmd"
        local str = folder .. "/Teleports.json"
        tpfile = str
        local str2 = folder .. "/Config.json"
        cfgfile = str2
        local str3 = folder .. "/Database.json"
        dbfile = str3
        serverfile = folder .. "/Servers.json"

        pcall(function()
            if not isfolder(folder) then
                makefolder(folder)
            end
        end)

        tbl5 = {
            vector(840.16, 97.99, 2565.21),
            vector(701.46, 97.99, 2576.45),
            vector(699.15, 97.99, 2396.78),
            vector(664.86, 97.99, 2395.02),
            vector(659.05, 97.99, 2318.75),
            vector(659.51, 98.11, 2232.52),
            vector(732.81, 97.99, 2213.08),
            vector(865.64, 97.99, 2205.93),
            vector(967.7, 97.99, 2208.11),
            vector(968.49, 97.99, 2286.22),
            vector(999.25, 97.99, 2284.89),
            vector(998.21, 97.99, 2378.24),
            vector(973.06, 97.99, 2378.61),
            vector(971.04, 97.99, 2506.71),
            vector(867.63, 97.99, 2506.88),
            vector(865.31, 101.5, 2577.16),
        }

        fn16 = function(arg2, arg3)
            local x = arg2.X
            local z = arg2.Z
            local flag6 = false
            local n2 = #arg3
            for i = 1, #arg3 do
                local v8 = arg3[i]
                local v9 = arg3[n2]
                local x2 = v8.X
                local z2 = v8.Z
                local x3 = v9.X
                local z3 = v9.Z
                local flag7 = z < z2
                local flag8 = z < z3
                local flag9 = flag7 ~= flag8 and x < (x3 - x2) * (z - z2) / (z3 - z2 + 1e-06) + x2
                if flag9 then
                    if flag6 then
                        flag6 = false
                    else
                        flag6 = true
                    end
                end
                n2 = i
            end

            return flag6
        end

        local tbl7 = {
            fling_stop_death = true,
            fling_no_limit = true,
            fling_method = "controlled",
            fling_hit = "torso",
            fling_whip = true,
        }

        cfg = {
            kill_feedback = true,
            aim_detect = true,
            fling_detector = false,
            invisible_detection = false,
            lock_walkspeed = false,
            walkspeed_value = 24,
            backpack_head = false,
            tool_aura = false,
            punch_aura = false,
            player_list = false,
            botton_fling = true,
            fling_defaults_v4 = false,
            laser_state = false,
            get_method_guns = "normal",
            auto_reload = false,
            auto_switch = false,
            anti_taze = false,
            anti_riot = false,
            anti_fling_v1 = false,
            anti_fling_mode = "normal",
            wall = false,
            auto_respawn = false,
            auto_respawn_neutral = false,
            auto_arrest = false,
            auto_keycard = false,
            mobile_buttons = {},
            pc_keybinds = {},
            pc_keybind_position = {x = 0.5, y = 0.42},
            old_pass_detected = {swat = false, mafia = false, sniper = false},
            auto_get = {},
            skid_list = {},
            esp_enabled = true,
            tracers_enabled = true,
            tracer_info_enabled = true,
            backpack_view_enabled = true,
            health_gui_enabled = true,
            hitbox_enabled = true,
            hitbox_size = 7,
            noclip = false,
            inf_jump = false,
            carspeed = false,
            silent_aim = false,
            silent_hit_chance = 85,
            silent_fov_size = 150,
            silent_hit_part = "all",
            silent_fov_visible = true,
            silent_wall_check = true,
            silent_team_check = true,
            silent_forcefield_check = true,
            silent_visibility = false,
        }

        for k, v8 in pairs(tbl7) do
            cfg[k] = v8
        end

        sync_visual_cfg = function()
            if espCfg then
                cfg.esp_enabled = espCfg.espEnabled
                cfg.tracers_enabled = espCfg.tracersEnabled
                cfg.tracer_info_enabled = espCfg.tracerInfoEnabled
                cfg.backpack_view_enabled = espCfg.backpackViewEnabled
                cfg.health_gui_enabled = espCfg.healthGuiEnabled
                cfg.hitbox_enabled = espCfg.hitboxEnabled
                cfg.hitbox_size = espCfg.hitboxSize
            end
        end

        save_cfg = function()
            pcall(function()
                sync_visual_cfg()
                writefile(cfgfile, HttpService:JSONEncode(cfg))
            end)
        end

        load_cfg = function()
            local ok, result = pcall(function()
                if not isfile(cfgfile) then
                    return
                end
                return HttpService:JSONDecode(readfile(cfgfile))
            end)

            if ok and typeof(result) == "table" then
                for k, v8 in pairs(result) do
                    cfg[k] = v8
                end
            end
        end

        load_cfg()

        if typeof(cfg.old_pass_detected) ~= "table" then
            cfg.old_pass_detected = {}
        end

        if cfg.old_pass_detected.swat == nil then
            cfg.old_pass_detected.swat = false
        end

        if cfg.old_pass_detected.mafia == nil then
            cfg.old_pass_detected.mafia = false
        end

        if cfg.old_pass_detected.sniper == nil then
            cfg.old_pass_detected.sniper = false
        end

        if cfg.laser_state == nil and cfg.laser_state ~= nil then
            local v8 = cfg
            local laserState = cfg.laser_state == true
            v8.laser_state = laserState
        end

        local v8 = cfg
        local silentAim = cfg.silent_aim == true
        v8.silent_aim = silentAim
        cfg.silent_mode = nil
        local v9 = cfg
        local clamp = math.clamp
        local num = tonumber(cfg.silent_hit_chance)
        local n2 = num or 85
        v9.silent_hit_chance = clamp(n2, 0, 100)
        local v10 = cfg
        local clamp2 = math.clamp
        local num2 = tonumber(cfg.silent_fov_size)
        local n3 = num2 or 150
        v10.silent_fov_size = clamp2(n3, 10, 500)
        local v11 = cfg
        local v12 = tostring
        local silentHitPart = cfg.silent_hit_part
        local str4 = silentHitPart or "all"
        v11.silent_hit_part = v12(str4):lower()

        if cfg.silent_hit_part ~= "hrp" and cfg.silent_hit_part ~= "torso" and cfg.silent_hit_part ~= "head" and cfg.silent_hit_part ~= "all" and cfg.silent_hit_part ~= "proximity" then
            cfg.silent_hit_part = "all"
        end

        local v13 = cfg
        local silentFovVisible = cfg.silent_fov_visible ~= false
        v13.silent_fov_visible = silentFovVisible
        local v14 = cfg
        local silentWallCheck = cfg.silent_wall_check ~= false
        v14.silent_wall_check = silentWallCheck
        local v15 = cfg
        local silentTeamCheck = cfg.silent_team_check ~= false
        v15.silent_team_check = silentTeamCheck
        local v16 = cfg
        local silentForcefieldCheck = cfg.silent_forcefield_check ~= false
        v16.silent_forcefield_check = silentForcefieldCheck
        local v17 = cfg
        local silentVisibility = cfg.silent_visibility == true
        v17.silent_visibility = silentVisibility

        if typeof(cfg.mobile_buttons) ~= "table" then
            cfg.mobile_buttons = {}
        end

        if typeof(cfg.pc_keybinds) ~= "table" then
            cfg.pc_keybinds = {}
        end

        if typeof(cfg.pc_keybind_position) ~= "table" then
            cfg.pc_keybind_position = {x = 0.5, y = 0.42}
        end

        local v18 = cfg
        local carspeed_ = cfg.carspeed == true
        v18.carspeed = carspeed_
        local flag6 = cfg.fling_defaults_v4 ~= true

        if flag6 then
            for k, v19 in pairs(tbl7) do
                cfg[k] = v19
            end

            cfg.fling_defaults_v4 = true
        end

        local flag7 = cfg.mod_guns ~= nil
        local flag8 = cfg.silent_proximity ~= nil
        cfg.mod_guns = nil

        if cfg.silent_proximity == true and cfg.silent_hit_part == "all" then
            cfg.silent_hit_part = "proximity"
        end

        cfg.silent_proximity = nil
        local v19 = cfg
        local v20 = tostring
        local getMethodGuns = cfg.get_method_guns
        local str5 = getMethodGuns or "normal"
        v19.get_method_guns = v20(str5):lower()

        if cfg.get_method_guns ~= "fast" then
            cfg.get_method_guns = "normal"
        end

        local v21 = cfg
        local autoReload = cfg.auto_reload == true
        v21.auto_reload = autoReload
        local v22 = cfg
        local autoSwitch = cfg.auto_switch == true
        v22.auto_switch = autoSwitch
        local v23 = cfg
        local bottonFling = cfg.botton_fling ~= false
        v23.botton_fling = bottonFling
        local v24 = cfg
        local flingStopDeath = cfg.fling_stop_death ~= false
        v24.fling_stop_death = flingStopDeath
        local v25 = cfg
        local flingNoLimit = cfg.fling_no_limit ~= false
        v25.fling_no_limit = flingNoLimit
        local v26 = cfg
        local v27 = tostring
        local flingMethod = cfg.fling_method
        local str6 = flingMethod or "controlled"
        v26.fling_method = v27(str6):lower()

        if cfg.fling_method ~= "aggressive" and cfg.fling_method ~= "controlled" then
            cfg.fling_method = "controlled"
        end

        local v28 = cfg
        local v29 = tostring
        local flingHit = cfg.fling_hit
        local str7 = flingHit or "torso"
        v28.fling_hit = v29(str7):lower()

        if cfg.fling_hit ~= "legs" and cfg.fling_hit ~= "torso" then
            cfg.fling_hit = "torso"
        end

        local v30 = cfg
        local flingWhip = cfg.fling_whip == true
        v30.fling_whip = flingWhip
        local v31 = cfg
        local v32 = tostring
        local antiFlingMode = cfg.anti_fling_mode
        local str8 = antiFlingMode or "normal"
        v31.anti_fling_mode = v32(str8):lower()

        if cfg.anti_fling_mode == "agressive" then
            cfg.anti_fling_mode = "aggressive"
        end

        if cfg.anti_fling_mode ~= "aggressive" then
            cfg.anti_fling_mode = "normal"
        end

        if flag6 or flag7 or flag8 then
            save_cfg()
        end

        featureStateKey = "__KeraCmd_FeatureState_V2"
        local v33 = featureState
        local tbl8 = v33 or {}
        featureState = tbl8

        pcall(function()
            if getgenv then
                local genv2 = getgenv()
                local v34 = featureStateKey
                local v35 = getgenv()[featureStateKey]
                local tbl9 = v35 or {}
                genv2[v34] = tbl9
                local v36 = getgenv()[featureStateKey]
                featureState = v36
            end
        end)

        featureSet = function(arg2, arg3)
            local v34 = featureState
            local str9 = tostring(arg2)
            local flag9 = arg3 == true
            v34[str9] = flag9
        end

        featureGet = function(arg2, arg3)
            local v34 = featureState[tostring(arg2)]
            if v34 == nil then
                local flag9 = arg3 == true
                return flag9
            end
            local flag9 = v34 == true
            return flag9
        end

        featureSyncFromConfig = function()
            local v34 = featureSet
            local v35 = "kill_feedback"
            local flag9 = cfg.kill_feedback == true
            v34(v35, flag9)
            local v36 = featureSet
            local v37 = "aim_detect"
            local flag10 = cfg.aim_detect == true
            v36(v37, flag10)
            local v38 = featureSet
            local flag11 = cfg.fling_detector == true
            v38("fling_detector", flag11)
            local v39 = featureSet
            local flag12 = cfg.invisible_detection == true
            v39("invisible_detection", flag12)
            local v40 = featureSet
            local v41 = "lock_walkspeed"
            local flag13 = cfg.lock_walkspeed == true
            v40(v41, flag13)
            local v42 = featureSet
            local v43 = "backpack_head"
            local flag14 = cfg.backpack_head == true
            v42(v43, flag14)
            local v44 = featureSet
            local v45 = "tool_aura"
            local flag15 = cfg.tool_aura == true
            v44(v45, flag15)
            local v46 = featureSet
            local v47 = "punch_aura"
            local flag16 = cfg.punch_aura == true
            v46(v47, flag16)
            local v48 = featureSet
            local v49 = "player_list"
            local flag17 = cfg.player_list == true
            v48(v49, flag17)
            local v50 = featureSet
            local v51 = "laser_state"
            local flag18 = cfg.laser_state == true
            v50(v51, flag18)
            local v52 = featureSet
            local flag19 = cfg.auto_reload == true
            v52("auto_reload", flag19)
            local v53 = featureSet
            local flag20 = cfg.auto_switch == true
            v53("auto_switch", flag20)
            local v54 = featureSet
            local v55 = "anti_taze"
            local flag21 = cfg.anti_taze == true
            v54(v55, flag21)
            local v56 = featureSet
            local flag22 = cfg.anti_riot == true
            v56("anti_riot", flag22)
            local v57 = featureSet
            local v58 = "anti_fling_v1"
            local flag23 = cfg.anti_fling_v1 == true
            v57(v58, flag23)
            local v59 = featureSet
            local flag24 = cfg.wall == true
            v59("wall", flag24)
            local v60 = featureSet
            local v61 = "auto_respawn"
            local flag25 = cfg.auto_respawn == true
            v60(v61, flag25)
            local v62 = featureSet
            local flag26 = cfg.auto_respawn_neutral == true
            v62("auto_respawn_neutral", flag26)
            local v63 = featureSet
            local v64 = "auto_arrest"
            local flag27 = cfg.auto_arrest == true
            v63(v64, flag27)
            local v65 = featureSet
            local v66 = "auto_keycard"
            local flag28 = cfg.auto_keycard == true
            v65(v66, flag28)
            local v67 = featureSet
            local v68 = "noclip"
            local flag29 = cfg.noclip == true
            v67(v68, flag29)
            local v69 = featureSet
            local v70 = "inf_jump"
            local flag30 = cfg.inf_jump == true
            v69(v70, flag30)
            local v71 = featureSet
            local flag31 = cfg.carspeed == true
            v71("carspeed", flag31)
            local v72 = featureSet
            local flag32 = cfg.silent_aim == true
            v72("silent_aim", flag32)

            if cfg.esp_enabled ~= nil then
                local v73 = featureSet
                local flag33 = cfg.esp_enabled == true
                v73("esp_enabled", flag33)
            end

            if cfg.tracers_enabled ~= nil then
                local v73 = featureSet
                local flag33 = cfg.tracers_enabled == true
                v73("tracers_enabled", flag33)
            end

            if cfg.tracer_info_enabled ~= nil then
                local v73 = featureSet
                local flag33 = cfg.tracer_info_enabled == true
                v73("tracer_info_enabled", flag33)
            end

            if cfg.backpack_view_enabled ~= nil then
                local v73 = featureSet
                local flag33 = cfg.backpack_view_enabled == true
                v73("backpack_view_enabled", flag33)
            end

            if cfg.health_gui_enabled ~= nil then
                local v73 = featureSet
                local flag33 = cfg.health_gui_enabled == true
                v73("health_gui_enabled", flag33)
            end

            if cfg.hitbox_enabled ~= nil then
                local v73 = featureSet
                local flag33 = cfg.hitbox_enabled == true
                v73("hitbox_enabled", flag33)
            end
        end

        featureSyncFromConfig()

        save_feature_cfg = function(arg2, arg3, arg4)
            local v34 = featureSet
            local flag9 = arg4 == true
            v34(arg2, flag9)
            local v35 = cfg
            local flag10 = arg4 == true
            v35[arg3] = flag10
            save_cfg()
        end

        refreshFeatureRuntime = function()
            cfg.kill_feedback = featureGet("kill_feedback", cfg.kill_feedback)
            cfg.aim_detect = featureGet("aim_detect", cfg.aim_detect)
            cfg.fling_detector = featureGet("fling_detector", cfg.fling_detector)
            cfg.invisible_detection = featureGet("invisible_detection", cfg.invisible_detection)
            cfg.lock_walkspeed = featureGet("lock_walkspeed", cfg.lock_walkspeed)
            cfg.backpack_head = featureGet("backpack_head", cfg.backpack_head)
            cfg.tool_aura = featureGet("tool_aura", cfg.tool_aura)
            cfg.punch_aura = featureGet("punch_aura", cfg.punch_aura)
            cfg.player_list = featureGet("player_list", cfg.player_list)
            cfg.laser_state = featureGet("laser_state", cfg.laser_state)
            cfg.auto_reload = featureGet("auto_reload", cfg.auto_reload)
            cfg.auto_switch = featureGet("auto_switch", cfg.auto_switch)
            cfg.anti_taze = featureGet("anti_taze", cfg.anti_taze)
            cfg.anti_riot = featureGet("anti_riot", cfg.anti_riot)
            cfg.anti_fling_v1 = featureGet("anti_fling_v1", cfg.anti_fling_v1)
            cfg.wall = featureGet("wall", cfg.wall)
            cfg.auto_respawn = featureGet("auto_respawn", cfg.auto_respawn)
            cfg.auto_respawn_neutral = featureGet("auto_respawn_neutral", cfg.auto_respawn_neutral)
            cfg.auto_arrest = featureGet("auto_arrest", cfg.auto_arrest)
            cfg.auto_keycard = featureGet("auto_keycard", cfg.auto_keycard)
            cfg.noclip = featureGet("noclip", cfg.noclip)
            cfg.inf_jump = featureGet("inf_jump", cfg.inf_jump)
            cfg.carspeed = featureGet("carspeed", cfg.carspeed)
            cfg.silent_aim = featureGet("silent_aim", cfg.silent_aim)
        end

        local v34 = db
        local tbl9 = v34 or {}
        db = tbl9
        dbViewDirty = true
        dbRenderBusy = false

        db_default = function()
            return {
                version = "1.0",
                fling_counter_epoch = 1,
                starts = {},
                flings = {},
                kills = {},
                skids_added = {},
                skid_encounters = {},
            }
        end

        db_date = function(arg2)
            local date = os.date
            local num3 = tonumber(arg2)
            local now2 = num3 or os.time()
            return date("%d/%m/%Y %H:%M:%S", now2)
        end

        db_account = function()
            return {
                userId = LocalPlayer.UserId,
                name = LocalPlayer.Name,
                displayName = LocalPlayer.DisplayName,
                date = db_date(),
                time = os.time(),
                placeId = PlaceId,
                jobId = JobId,
            }
        end

        db_player = function(arg2)
            if not arg2 then
                return {userId = 0, name = "Unknown", displayName = "Unknown"}
            end

            local tbl10 = {
                userId = arg2.UserId,
                name = arg2.Name,
                displayName = arg2.DisplayName,
            }

            local team = arg2.Team
            local name = team and arg2.Team.Name or "None"
            tbl10.team = name
            return tbl10
        end

        db_fmt_player = function(arg2)
            if not arg2 then
                return "Unknown"
            end
            local v35 = tostring
            local displayName = arg2.displayName
            local name = displayName or arg2.name or "Unknown"
            local v36 = v35(name)
            local v37 = tostring
            local name2 = arg2.name
            local v38 = name2 or v36
            local v39 = v37(v38)
            if v36 == v39 then
                return v39
            end
            return v36 .. " (@" .. v39 .. ")"
        end

        db_load = function()
            local v35 = db_default()
            db = v35

            local ok, result = pcall(function()
                if not isfile(dbfile) then
                    return
                end
                return HttpService:JSONDecode(readfile(dbfile))
            end)

            if ok and typeof(result) == "table" then
                for k, v36 in pairs(result) do
                    db[k] = v36
                end
            end

            local flag9 = typeof(result) ~= "table" or tonumber(result.fling_counter_epoch) ~= 1

            for k, v36 in pairs(db_default()) do
                if typeof(db[k]) ~= typeof(v36) then
                    db[k] = v36
                end
            end

            if flag9 then
                db.flings = {}
                db.fling_counter_epoch = 1
                db_save()
            end

            dbViewDirty = true
        end

        db_save = function()
            pcall(function()
                writefile(dbfile, HttpService:JSONEncode(db))
            end)
        end

        db_trim = function(arg2, arg3) end

        db_add = function(arg2, arg3)
            if typeof(db) ~= "table" then
                db_load()
            end

            if typeof(db[arg2]) ~= "table" then
                db[arg2] = {}
            end

            local tbl10 = arg3 or {}
            local v35 = tbl10
            local time = tbl10.time
            local now2 = time or os.time()
            v35.time = now2
            local date = v35.date
            local v36 = date or db_date(v35.time)
            v35.date = v36
            local account = v35.account
            local v37 = account or db_account()
            v35.account = v37
            local placeId = v35.placeId
            local v38 = placeId or PlaceId
            v35.placeId = v38
            local jobId = v35.jobId
            local v39 = jobId or JobId
            v35.jobId = v39
            table.insert(db[arg2], v35)
            dbViewDirty = true
            db_save()

            if db_view_open and db_render then
                task.defer(db_render)
            end
        end

        db_track_start = function()
            db_add("starts", {type = "script_start", account = db_account()})
        end

        db_track_fling = function(arg2)
            db_add("flings", {type = "fling", target = db_player(arg2)})
        end

        db_track_kill = function(arg2, arg3)
            local v35 = db_add
            local tbl10 = {type = "kill"}
            local mode = arg3 or "player"
            tbl10.mode = mode
            tbl10.target = db_player(arg2)
            v35("kills", tbl10)
        end

        db_track_skid_added = function(arg2)
            local v35 = db_add
            local tbl10 = {type = "skid_added"}
            local target = {}
            local v36 = tonumber
            local key = arg2 and arg2.key
            local v37 = v36(key)
            local userId = v37 or 0
            target.userId = userId
            local name = arg2 and arg2.name or "Unknown"
            target.name = name
            local displayName = arg2 and arg2.displayName or arg2 and arg2.name or "Unknown"
            target.displayName = displayName
            tbl10.target = target
            local reason = arg2 and arg2.reason or "no reason"
            tbl10.reason = reason
            local addedBy = arg2 and arg2.addedBy or LocalPlayer.Name
            tbl10.addedBy = addedBy
            v35("skids_added", tbl10)
        end

        db_track_skid_encounter = function(arg2, arg3)
            local v35 = db_add
            local tbl10 = {type = "skid_encounter", target = db_player(arg2)}
            local reason = arg3 and arg3.reason or "no reason"
            tbl10.reason = reason
            local addedAt = arg3 and arg3.addedAt or nil
            tbl10.skidAddedAt = addedAt
            local addedAt2 = arg3 and arg3.addedAt and db_date(arg3.addedAt) or "unknown"
            tbl10.skidAddedDate = addedAt2
            local addedBy = arg3 and arg3.addedBy or "unknown"
            tbl10.addedBy = addedBy
            local oldSkidList = arg3 and arg3.oldSkidList == true or false
            tbl10.oldSkidList = oldSkidList
            local skidOrigin = arg3 and arg3.oldSkidList == true and "old skidlist" or "skidlist"
            tbl10.skidOrigin = skidOrigin
            v35("skid_encounters", tbl10)
        end

        db_load()
        db_track_start()
        gamePassIds = {mafia = 1443271, sniper = 699360089, swat = 643697197}
        gamePassCache = {}

        oldPassKeyFromId = function(arg2)
            if arg2 == gamePassIds.swat then
                return "swat"
            end

            if arg2 == gamePassIds.mafia then
                return "mafia"
            end

            if arg2 == gamePassIds.sniper then
                return "sniper"
            end
            return nil
        end

        oldPassEnsure = function()
            if typeof(cfg.old_pass_detected) ~= "table" then
                cfg.old_pass_detected = {swat = false, mafia = false, sniper = false}
            end

            if cfg.old_pass_detected.swat == nil then
                cfg.old_pass_detected.swat = false
            end

            if cfg.old_pass_detected.mafia == nil then
                cfg.old_pass_detected.mafia = false
            end

            if cfg.old_pass_detected.sniper == nil then
                cfg.old_pass_detected.sniper = false
            end
        end

        oldPassHasTool = function(arg2)
            local v35 = tostring
            local str9 = arg2 or ""
            local v36 = v35(str9)
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            if backpack and backpack:FindFirstChild(v36) then
                return true
            end
            local character_ = LocalPlayer.Character
            if character_ and character_:FindFirstChild(v36) then
                return true
            end
            return false
        end

        oldPassSaveDetected = function(arg2, arg3)
            oldPassEnsure()
            if cfg.old_pass_detected[arg2] == true then
                return true
            end
            cfg.old_pass_detected[arg2] = true
            save_cfg()

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if add_line then
                local v35 = add_line
                local str9 = ".passverify " .. tostring(arg2)
                local str10 = arg3 and " via " .. tostring(arg3) or ""
                v35(str9, "old pass" .. str10, false)
            end

            return true
        end

        oldPassDetectSwat = function(arg2)
            oldPassEnsure()
            if cfg.old_pass_detected.swat == true then
                return true
            end

            if ownsGamePass and ownsGamePass(gamePassIds.swat) then
                return false
            end

            if not oldPassHasTool("M4A1") then
                return false
            end
            local v35 = oldPassSaveDetected
            local str9 = arg2 or "M4A1"
            return v35("swat", str9)
        end

        oldPassDetectedForPassId = function(arg2)
            oldPassEnsure()
            local v35 = oldPassKeyFromId(arg2)
            if not v35 then
                return false
            end

            if v35 == "swat" then
                if cfg.old_pass_detected.swat == true then
                    return true
                end
                return oldPassDetectSwat("M4A1")
            end

            local flag9 = cfg.old_pass_detected[v35] == true
            return flag9
        end

        oldPassWatchTool = function(arg2)
            if arg2 and arg2:IsA("Tool") and arg2.Name == "M4A1" then
                oldPassDetectSwat("M4A1")
            end
        end

        local v35 = oldPassWatchBound
        local flag9 = v35 or false
        oldPassWatchBound = flag9

        oldPassBindWatchers = function()
            if oldPassWatchBound then
                return
            end
            oldPassWatchBound = true

            task.defer(function()
                local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
                local backpack2 = backpack or LocalPlayer:WaitForChild("Backpack", 10)

                if backpack2 then
                    for i, child in ipairs(backpack2:GetChildren()) do
                        oldPassWatchTool(child)
                    end

                    fn2(backpack2.ChildAdded, oldPassWatchTool)
                end

                local function fn19(arg2)
                    if not arg2 then
                        return
                    end

                    for i, child in ipairs(arg2:GetChildren()) do
                        oldPassWatchTool(child)
                    end

                    fn2(arg2.ChildAdded, oldPassWatchTool)

                    task.delay(0.35, function()
                        oldPassDetectSwat("character")
                    end)
                end

                if LocalPlayer.Character then
                    fn19(LocalPlayer.Character)
                end

                fn2(LocalPlayer.CharacterAdded, fn19)

                task.delay(1, function()
                    oldPassDetectSwat("startup")
                end)
            end)
        end

        passVerifyCommand = function(arg2)
            local v36 = tostring
            local str9 = arg2 or ""

            if v36(str9):lower():gsub("^%s+", ""):gsub("%s+$", "") == "swat" then
                if not oldPassDetectSwat("manual check") and cfg.old_pass_detected.swat ~= true then
                    add_line(".passverify swat", "no old pass yet | get M4A1 first", true)
                    red_anim()
                else
                    add_line(".passverify swat", "old pass: swat", false)
                end

                return true
            end

            add_line(".passverify", "use .passverify swat", true)
            red_anim()
            return false
        end

        oldPassBindWatchers()

        ownsGamePass = function(arg2)
            if not arg2 then
                return true
            end

            if gamePassCache[arg2] ~= nil then
                return gamePassCache[arg2]
            end

            local ok, result = pcall(function()
                return MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, arg2)
            end)

            local v36 = gamePassCache
            local flag10 = ok and result == true
            v36[arg2] = flag10
            return gamePassCache[arg2]
        end

        passName = function(arg2)
            if arg2 == gamePassIds.mafia then
                return "mafia"
            end

            if arg2 == gamePassIds.sniper then
                return "sniper"
            end

            if arg2 == gamePassIds.swat then
                return "swat"
            end
            return "gamepass"
        end

        canUseWeaponData = function(arg2)
            if not arg2 or not arg2.passId then
                return true
            end

            if not ownsGamePass(arg2.passId) then
                return oldPassDetectedForPassId(arg2.passId)
            end
            return true
        end

        gamepassBlockedMessage = function(arg2)
            local v36 = passName
            local passId = arg2 and arg2.passId
            return "need gamepass: " .. v36(passId)
        end

        cmdColorForPass = function(arg2)
            if not arg2 or ownsGamePass(arg2) then
                return color(220, 230, 245)
            end

            if not oldPassDetectedForPassId(arg2) then
                return color(255, 95, 110)
            end
            return color(120, 255, 170)
        end

        cmdTextForPass = function(arg2, arg3)
            if not arg3 or ownsGamePass(arg3) then
                return arg2
            end

            if not oldPassDetectedForPassId(arg3) then
                return arg2 .. " (needs gamepass)"
            end
            return arg2 .. " (old pass)"
        end

        saves = {}

        cf_to_string = function(arg2)
            return table.concat({arg2:GetComponents()}, ",")
        end

        string_to_cf = function(arg2)
            if typeof(arg2) ~= "string" then
                return nil
            end
            local tbl10 = {}

            for match in string.gmatch(arg2, "[^,]+") do
                tbl10[#tbl10 + 1] = tonumber(match)
            end

            if #tbl10 < 12 then
                return nil
            end
            return cframe(tbl10[1], tbl10[2], tbl10[3], tbl10[4], tbl10[5], tbl10[6], tbl10[7], tbl10[8], tbl10[9], tbl10[10], tbl10[11], tbl10[12])
        end

        table_to_cf = function(arg2)
            if typeof(arg2) == "table" and #arg2 >= 12 then
                return cframe(tonumber(arg2[1]), tonumber(arg2[2]), tonumber(arg2[3]), tonumber(arg2[4]), tonumber(arg2[5]), tonumber(arg2[6]), tonumber(arg2[7]), tonumber(arg2[8]), tonumber(arg2[9]), tonumber(arg2[10]), tonumber(arg2[11]), tonumber(arg2[12]))
            end
            return nil
        end

        any_to_cf = function(arg2)
            if typeof(arg2) == "string" then
                return string_to_cf(arg2)
            end

            if typeof(arg2) == "table" then
                return table_to_cf(arg2)
            end
        end

        save_saves = function()
            pcall(function()
                writefile(tpfile, HttpService:JSONEncode(saves))
            end)
        end

        load_saves = function()
            local ok, result = pcall(function()
                if not isfile(tpfile) then
                    return
                end
                return HttpService:JSONDecode(readfile(tpfile))
            end)

            if ok and typeof(result) == "table" then
                saves = result
            else
                saves = {}
            end
        end

        find_save = function(arg2)
            local v36 = tostring
            local str9 = arg2 or ""
            local str10 = v36(str9):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str10 == "" then
                return nil
            end

            for i, v37 in ipairs(saves) do
                if tostring(v37.Name):lower() == str10 then
                    return v37, i
                end
            end

            for i, v37 in ipairs(saves) do
                local str11 = tostring(v37.Name):lower()
                if str11:sub(1, #str10) == str10 or str11:find(str10, 1, true) then
                    return v37, i
                end
            end
        end

        load_saves()
        local v36 = savedServers
        local tbl10 = v36 or {}
        savedServers = tbl10

        serverTrim = function(arg2)
            local v37 = tostring
            local str9 = arg2 or ""
            return v37(str9):gsub("^%s+", ""):gsub("%s+$", "")
        end

        serverPlaceLabel = function(arg2)
            local num3 = tonumber(arg2)
            local n4 = num3 or 0
            local v37 = n4
            if n4 == 135564683255158 then
                return "Prison Life VC"
            end

            if n4 == 155615604 then
                return "Prison Life"
            end
            return "Place " .. tostring(v37)
        end

        serverModeLabel = function(arg2)
            local num3 = tonumber(arg2)
            local n4 = num3 or 0
            local v37 = n4
            if n4 == 135564683255158 then
                return "VC"
            end

            if n4 == 155615604 then
                return "NO VC"
            end
            return tostring(v37)
        end

        serverNormalizeJobId = function(arg2)
            local str9 = serverTrim(arg2):lower()
            if str9:match("^%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x$") then
                return str9
            end

            if not str9:match("^%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x$") then
                return nil
            end

            return table.concat({
                str9:sub(1, 8),
                str9:sub(9, 12),
                str9:sub(13, 16),
                str9:sub(17, 20),
                str9:sub(21, 32),
            }, "-")
        end

        serverMakeJoinLink = function(arg2, arg3)
            return "roblox://placeId=" .. tostring(arg2) .. "&gameInstanceId=" .. tostring(arg3)
        end

        save_saved_servers = function()
            pcall(function()
                writefile(serverfile, HttpService:JSONEncode(savedServers))
            end)
        end

        load_saved_servers = function()
            local ok, result = pcall(function()
                if not isfile(serverfile) then
                    return
                end
                return HttpService:JSONDecode(readfile(serverfile))
            end)

            savedServers = {}

            if ok and typeof(result) == "table" then
                for i, v37 in ipairs(result) do
                    if typeof(v37) == "table" then
                        local v38 = serverTrim(v37.Name)
                        local num3 = tonumber(v37.PlaceId)
                        local v39 = serverNormalizeJobId(v37.JobId)

                        if v38 ~= "" and num3 and v39 then
                            local v40 = savedServers
                            local n4 = #savedServers + 1
                            local tbl11 = {Name = v38, PlaceId = num3, JobId = v39}
                            local num4 = tonumber(v37.Time)
                            local now2 = num4 or os.time()
                            tbl11.Time = now2
                            local status = v37.Status == "closed" and "closed" or v37.Status == "missing" and "missing" or nil
                            tbl11.Status = status
                            v40[n4] = tbl11
                        end
                    end
                end
            end
        end

        find_saved_server = function(arg2)
            local str9 = serverTrim(arg2):lower()
            if str9 == "" then
                return nil
            end

            for i, v37 in ipairs(savedServers) do
                if tostring(v37.Name):lower() == str9 then
                    return v37, i
                end
            end

            for i, v37 in ipairs(savedServers) do
                local str10 = tostring(v37.Name):lower()
                if str10:sub(1, #str9) == str9 or str10:find(str9, 1, true) then
                    return v37, i
                end
            end

            return nil
        end

        find_saved_server_by_instance = function(arg2, arg3)
            local num3 = tonumber(arg2)
            local v37 = serverNormalizeJobId(arg3)
            if not num3 or not v37 then
                return nil
            end

            for i, v38 in ipairs(savedServers) do
                if tonumber(v38.PlaceId) == num3 and serverNormalizeJobId(v38.JobId) == v37 then
                    return v38, i
                end
            end

            return nil
        end

        save_current_server = function(arg2)
            local v37 = serverTrim(arg2)

            if v37 == "" then
                add_line(".saveserver", "use .saveserver name", true)
                red_anim()
                return false
            end

            local v38 = serverNormalizeJobId(JobId)

            if not v38 then
                add_line(".saveserver " .. v37, "invalid current JobId", true)
                red_anim()
                return false
            end

            local tbl11 = {
                Name = v37,
                PlaceId = tonumber(PlaceId),
                JobId = v38,
                Time = os.time(),
            }

            local v39, v40 = find_saved_server(v37)
            local v41, v42 = find_saved_server_by_instance(PlaceId, v38)

            if v39 and v40 then
                savedServers[v40] = tbl11

                if v42 and v42 ~= v40 then
                    table.remove(savedServers, v42)
                end
            elseif v41 and v42 then
                savedServers[v42] = tbl11
            else
                savedServers[#savedServers + 1] = tbl11
            end

            save_saved_servers()

            if refresh_saved_commands then
                refresh_saved_commands()
            end

            add_line(".saveserver " .. v37, "server saved: " .. v37 .. " [" .. serverModeLabel(PlaceId) .. "]", false)
            return true
        end

        clear_saved_server = function(arg2)
            local v37 = serverTrim(arg2)

            if v37 == "" then
                add_line(".clearserver", "use .clearserver all/name", true)
                red_anim()
                return false
            end

            if v37:lower() == "all" then
                local n4 = #savedServers
                table.clear(savedServers)
                save_saved_servers()

                if refresh_saved_commands then
                    refresh_saved_commands()
                end

                add_line(".clearserver all", "saved servers cleared: " .. tostring(n4), false)
                return true
            end

            local v38, v39 = find_saved_server(v37)

            if v38 and v39 then
                local serverDeleted = tostring(v38.Name)
                table.remove(savedServers, v39)
                save_saved_servers()

                if refresh_saved_commands then
                    refresh_saved_commands()
                end

                add_line(".clearserver " .. v37, "server deleted: " .. serverDeleted, false)
                return true
            end

            add_line(".clearserver " .. v37, "saved server not found", true)
            red_anim()
            return false
        end

        serverClipboardSet = function(arg2)
            local v37 = tostring
            local str9 = arg2 or ""
            local v38 = v37(str9)
            local v39 = setclipboard
            local v40 = v39 or toclipboard or set_clipboard
            if typeof(v40) == "function" then
                return pcall(v40, v38)
            end
            local v41 = _G

            if typeof(getgenv) == "function" then
                local ok, result = pcall(getgenv)

                if ok and typeof(result) == "table" then
                    v41 = result
                end
            end

            local value = rawget(v41, "Clipboard")
            if typeof(value) == "table" and typeof(value.set) == "function" then
                return pcall(value.set, v38)
            end
            return false
        end

        copy_current_server_id = function(arg2)
            local v37 = serverNormalizeJobId(JobId)

            if not v37 then
                add_line(".jobid", "invalid current JobId", true)
                red_anim()
                return false
            end

            local str9 = serverTrim(arg2):lower()
            local str10, str11

            if str9 ~= "raw" and str9 ~= "id" then
                if str9 == "compact" then
                    str10 = v37:gsub("%-", "")
                    str11 = "compact JobId"
                else
                    str10 = serverMakeJoinLink(PlaceId, v37)
                    str11 = "server link"
                end
            else
                str10 = v37
                str11 = "raw JobId"
            end

            if not serverClipboardSet(str10) then
                add_line(".jobid", "clipboard unavailable", true)
                red_anim()
                return false
            end

            add_line(".jobid", str11 .. " copied", false)
            return true
        end

        parse_join_server_target = function(arg2)
            local v37 = serverTrim(arg2)
            if v37 == "" then
                return nil
            end
            local v38 = find_saved_server(v37)
            if v38 then
                return tonumber(v38.PlaceId), serverNormalizeJobId(v38.JobId), v38.Name
            end
            local match = v37:match("[Pp]lace[Ii]d=(%d+)")
            local match2 = v37:match("[Gg]ame[Ii]nstance[Ii]d=([%x%-]+)")

            if match and match2 then
                local v39 = serverNormalizeJobId(match2)
                if v39 then
                    return tonumber(match), v39, serverPlaceLabel(match)
                end
            end

            local v39 = serverNormalizeJobId(v37)
            if not v39 then
                return nil
            end

            for i, v40 in ipairs(savedServers) do
                if serverNormalizeJobId(v40.JobId) == v39 then
                    return tonumber(v40.PlaceId), v39, v40.Name
                end
            end

            return tonumber(PlaceId), v39, serverPlaceLabel(PlaceId)
        end

        savedServerStatusText = function(arg2)
            if not arg2 then
                return nil
            end

            if arg2.Status == "closed" then
                return "server closed"
            end

            if arg2.Status == "missing" then
                return "no longer exists"
            end
            return nil
        end

        savedServerSetStatus = function(arg2, arg3, status)
            local v37 = find_saved_server_by_instance(arg2, arg3)
            if not v37 then
                return false
            end
            v37.Status = status
            save_saved_servers()

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            return true
        end

        serverTeleportStateKey = "__KeraCmd_ServerTeleportState_V1"
        serverTeleportState = {pending = nil, connection = nil}

        pcall(function()
            if getgenv then
                local genv2 = getgenv()
                local v37 = genv2[serverTeleportStateKey]

                if typeof(v37) == "table" and v37.connection then
                    pcall(function()
                        v37.connection:Disconnect()
                    end)
                end

                genv2[serverTeleportStateKey] = serverTeleportState
            end
        end)

        serverTeleportFailureMessage = function(arg2, arg3)
            local v37 = tostring
            local str9 = arg3 or "unknown"
            local v38 = v37(str9)
            if arg2 == Enum.TeleportResult.GameFull then
                return "saved server " .. v38 .. " is full"
            end

            if arg2 == Enum.TeleportResult.GameEnded then
                return "saved server " .. v38 .. " is closed"
            end

            if arg2 == Enum.TeleportResult.GameNotFound then
                return "saved server " .. v38 .. " no longer exists"
            end

            if arg2 == Enum.TeleportResult.Unauthorized then
                return "saved server " .. v38 .. " is unavailable or unauthorized"
            end

            if arg2 == Enum.TeleportResult.Failure then
                return "fatal error in serverhoping"
            end
            local v39 = tostring
            local name = arg2 and arg2.Name or "unknown"
            return "teleport failed: " .. v39(name)
        end

        serverTeleportState.connection = fn2(TeleportService.TeleportInitFailed, function(arg2, arg3, arg4, arg5, arg6)
            if arg2 ~= LocalPlayer then
                return
            end
            local pending = serverTeleportState.pending
            if not pending then
                return
            end
            local serverInstanceId = arg6 and arg6.ServerInstanceId or pending and pending.JobId or nil
            local num3 = tonumber(arg5)
            local num4 = num3 or pending and tonumber(pending.PlaceId) or tonumber(PlaceId)
            local name = pending and pending.Name or "unknown"

            if serverInstanceId then
                local v37 = serverNormalizeJobId(serverInstanceId)
                local str9 = v37 or tostring(serverInstanceId)
                serverInstanceId = str9
            end

            if arg3 == Enum.TeleportResult.GameEnded and serverInstanceId then
                savedServerSetStatus(num4, serverInstanceId, "closed")
            elseif arg3 == Enum.TeleportResult.GameNotFound and serverInstanceId then
                savedServerSetStatus(num4, serverInstanceId, "missing")
            end

            local v37 = serverTeleportFailureMessage(arg3, name)
            local str9 = v37

            if arg4 and arg4 ~= "" and arg3 ~= Enum.TeleportResult.GameFull and arg3 ~= Enum.TeleportResult.GameEnded and arg3 ~= Enum.TeleportResult.GameNotFound and arg3 ~= Enum.TeleportResult.Unauthorized and arg3 ~= Enum.TeleportResult.Failure then
                str9 = v37 .. " | " .. tostring(arg4)
            end

            add_line(".joinserver " .. tostring(name), str9, true)

            if red_anim then
                red_anim()
            end

            serverTeleportState.pending = nil
        end)

        join_saved_server = function(arg2)
            serverTeleportState.pending = nil
            local v37, v38, v39 = parse_join_server_target(arg2)

            if v37 and v38 then
                if tonumber(v37) == tonumber(PlaceId) and v38 == serverNormalizeJobId(JobId) then
                    add_line(".joinserver " .. serverTrim(arg2), "you are already in this server", true)
                    red_anim()
                    return false
                end

                local v40 = find_saved_server_by_instance(v37, v38)
                local name = v40 and v40.Name or v39 or serverPlaceLabel(v37)
                add_line(".joinserver " .. serverTrim(arg2), "joining " .. tostring(name) .. " [" .. serverModeLabel(v37) .. "]", false)

                serverTeleportState.pending = {
                    Name = tostring(name),
                    PlaceId = tonumber(v37),
                    JobId = tostring(v38),
                }

                local ok, result = pcall(function()
                    TeleportService:TeleportToPlaceInstance(tonumber(v37), tostring(v38), LocalPlayer)
                end)

                if ok then
                    return true
                end
                serverTeleportState.pending = nil
                local v41 = add_line
                local str9 = ".joinserver " .. serverTrim(arg2)
                local str10 = result and " | " .. tostring(result) or ""
                v41(str9, "fatal error in serverhoping" .. str10, true)

                if red_anim then
                    red_anim()
                end

                return false
            end

            add_line(".joinserver " .. serverTrim(arg2), "server name/JobId not found", true)
            red_anim()
            return false
        end

        show_saved_servers = function()
            add_line(".servers", "servers saved: " .. tostring(#savedServers), false)

            if #savedServers == 0 then
                if add_secondary_line then
                    add_secondary_line(".servers", "no saved servers")
                end

                return true
            end

            for i, v37 in ipairs(savedServers) do
                local v38 = savedServerStatusText(v37)
                local str9 = tostring(v37.Name)
                local v39 = serverModeLabel(v37.PlaceId)
                local str10 = tostring(v37.JobId)
                local str11 = v38 and " (" .. v38 .. ")" or ""
                local str12 = str9 .. " [" .. v39 .. "] | " .. str10 .. str11

                if v38 then
                    add_line(".servers", str12, true)
                elseif add_secondary_line then
                    add_secondary_line(".servers", str12)
                else
                    add_line(".servers", str12, false)
                end
            end

            return true
        end

        load_saved_servers()

        get_char = function()
            local character_ = LocalPlayer.Character
            local result = character_ or LocalPlayer.CharacterAdded:Wait()
            return result
        end

        get_root = function()
            local v37 = get_char()
            local humanoidRootPart = v37 and v37:FindFirstChild("HumanoidRootPart")
            return humanoidRootPart
        end

        get_hum = function()
            local v37 = get_char()
            local humanoid_ = v37 and v37:FindFirstChildOfClass("Humanoid")
            return humanoid_
        end

        char = function(arg2)
            local character_ = arg2 and arg2.Character
            return character_
        end

        hum = function(arg2)
            local v37 = char(arg2)
            local humanoid_ = v37 and v37:FindFirstChildOfClass("Humanoid")
            return humanoid_
        end

        root = function(arg2)
            local v37 = char(arg2)
            local humanoidRootPart = v37 and v37:FindFirstChild("HumanoidRootPart")
            return humanoidRootPart
        end

        local v37 = autoRespawnState
        local v38 = v37

        if not v37 then
            local tbl11 = {}
            v38 = tbl11
            tbl11.enabled = false
            tbl11.pos = nil
            tbl11.neutralPos = nil
            tbl11.pendingNeutralReturn = false
            tbl11.lastTeam = ""
            tbl11.charConn = nil
            tbl11.diedConn = nil
            tbl11.arrestedConn = nil
            tbl11.teamConn = nil
            tbl11.token = 0
            tbl11.isArrested = false
            tbl11.maxReturnTicks = 18
            tbl11.pendingReturn = nil
            tbl11.pendingReturnToken = nil
            tbl11.pendingReturnReason = nil
            tbl11.manualBusy = false
            tbl11.manualBusyReason = nil
            tbl11.manualBusyId = 0
            tbl11.gunManualOp = nil
            tbl11.returnDelay = 0
        end

        autoRespawnState = v38

        autoRespawnDisconnectDied = function()
            if autoRespawnState.diedConn then
                pcall(function()
                    autoRespawnState.diedConn:Disconnect()
                end)

                autoRespawnState.diedConn = nil
            end
        end

        autoRespawnShouldSave = function()
            local team = LocalPlayer.Team
            local name = team and LocalPlayer.Team.Name or ""
            local flag10 = name == "Guards" or name == "Inmates"
            return flag10
        end

        autoRespawnShouldReturn = function()
            local team = LocalPlayer.Team
            local name = team and LocalPlayer.Team.Name or ""
            local flag10 = name ~= "Criminals"
            return flag10
        end

        autoRespawnIsUnsafeY = function(arg2)
            local num3 = tonumber(arg2)
            if not num3 then
                return true
            end

            if num3 <= -5 then
                return true
            end

            if num3 >= 130 then
                return true
            end
            return false
        end

        autoRespawnIsIgnoredRayPart = function(arg2)
            if not arg2 then
                return true
            end

            if arg2 == floor or arg2 == floor2 or arg2 == floor3 then
                return true
            end

            if tostring(arg2.Name) == "StunPart" then
                return true
            end
            local model = arg2:FindFirstAncestorOfClass("Model")
            if model and model:FindFirstChildOfClass("Humanoid") then
                return true
            end
            return false
        end

        autoRespawnGroundCFrame = function(arg2)
            if not arg2 then
                return nil
            end
            local position = arg2.Position
            local filterDescendantsInstances = {LocalPlayer.Character}

            if floor then
                table.insert(filterDescendantsInstances, floor)
            end

            if floor2 then
                table.insert(filterDescendantsInstances, floor2)
            end

            if floor3 then
                table.insert(filterDescendantsInstances, floor3)
            end

            local raycastParams = RaycastParams.new()
            raycastParams.FilterDescendantsInstances = filterDescendantsInstances
            raycastParams.FilterType = Enum.RaycastFilterType.Exclude
            raycastParams.IgnoreWater = true
            local hit = Workspace:Raycast(position, vector(0, -600, 0), raycastParams)
            if not hit or not hit.Instance or autoRespawnIsIgnoredRayPart(hit.Instance) then
                return nil
            end
            local n4 = hit.Position.Y + 3
            if autoRespawnIsUnsafeY(n4) then
                return nil
            end
            local v39, v40 = arg2.CFrame:ToOrientation()
            return cframe(position.X, n4, position.Z) * CFrame.Angles(0, v40, 0)
        end

        autoRespawnResolveSaveCFrame = function(arg2)
            if not arg2 or not arg2.Parent then
                return nil
            end
            local position = arg2.Position
            if position.Y <= -5 then
                return nil
            end

            if position.Y >= 70 then
                return autoRespawnGroundCFrame(arg2)
            end

            if not autoRespawnIsUnsafeY(position.Y) then
                return arg2.CFrame
            end
            return nil
        end

        autoRespawnValidReturnCFrame = function(arg2)
            if typeof(arg2) ~= "CFrame" then
                return false
            end
            local flag10

            if autoRespawnIsUnsafeY(arg2.Position.Y) then
                flag10 = false
            else
                flag10 = true
            end

            return flag10
        end

        autoRespawnQueueReturn = function(pendingReturn, arg2, arg3)
            if not autoRespawnState or not autoRespawnState.enabled then
                return false
            end

            if not autoRespawnValidReturnCFrame(pendingReturn) then
                return false
            end
            autoRespawnState.pendingReturn = pendingReturn
            local v39 = autoRespawnState
            local token = arg2 or autoRespawnState.token
            v39.pendingReturnToken = token
            local v40 = autoRespawnState
            local v41 = tostring
            local str9 = arg3 or "command"
            v40.pendingReturnReason = v41(str9)
            return true
        end

        autoRespawnApplyReturn = function(cFrame, arg2, arg3)
            if not autoRespawnState or not autoRespawnState.enabled then
                return false
            end

            if arg2 and autoRespawnState.token ~= arg2 then
                return false
            end

            if not autoRespawnValidReturnCFrame(cFrame) then
                return false
            end

            if autoRespawnState.manualBusy ~= true and gunRunning ~= true then
                local num3 = tonumber(autoRespawnState.maxReturnTicks)
                local n4 = num3 or 14

                for i = 1, n4 do
                    if not autoRespawnState.enabled or arg2 and autoRespawnState.token ~= arg2 then
                        break
                    end

                    if autoRespawnState.manualBusy ~= true and gunRunning ~= true then
                        local character_ = LocalPlayer.Character
                        local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
                        local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
                        if not character_ or not humanoid_ or not humanoidRootPart or humanoid_.Health <= 0 then
                            break
                        end

                        pcall(function()
                            humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
                            humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
                            humanoidRootPart.CFrame = cFrame
                        end)

                        RunService.RenderStepped:Wait()
                        continue
                    end

                    local v39 = autoRespawnQueueReturn
                    local str9 = arg3 or "manual command"
                    v39(cFrame, arg2, str9)
                    return false
                end

                if not arg2 or autoRespawnState.token == arg2 then
                    autoRespawnState.pos = nil
                    autoRespawnState.pendingReturn = nil
                    autoRespawnState.pendingReturnToken = nil
                    autoRespawnState.pendingReturnReason = nil
                    autoRespawnState.isArrested = false
                end

                return true
            end

            local v39 = autoRespawnQueueReturn
            local str9 = arg3 or "manual command"
            v39(cFrame, arg2, str9)
            return false
        end

        autoRespawnTryQueuedReturn = function(arg2)
            if not autoRespawnState or not autoRespawnState.enabled then
                return false
            end

            if autoRespawnState.manualBusy == true or gunRunning == true then
                return false
            end
            local pendingReturn = autoRespawnState.pendingReturn
            local pos = pendingReturn or autoRespawnState.pos
            local pendingReturnToken = autoRespawnState.pendingReturnToken
            local token = pendingReturnToken or autoRespawnState.token
            if not pos then
                return false
            end
            local v39 = autoRespawnApplyReturn
            local pendingReturnReason = arg2 or autoRespawnState.pendingReturnReason or "command"
            return v39(pos, token, pendingReturnReason)
        end

        autoRespawnManualStart = function(arg2)
            if not autoRespawnState or not autoRespawnState.enabled then
                return nil
            end
            local v39 = autoRespawnState
            local manualBusyId = autoRespawnState.manualBusyId
            local n4 = manualBusyId or 0
            v39.manualBusyId = n4 + 1
            autoRespawnState.manualBusy = true
            local v40 = autoRespawnState
            local v41 = tostring
            local str9 = arg2 or "command"
            v40.manualBusyReason = v41(str9)
            return autoRespawnState.manualBusyId
        end

        autoRespawnManualFinish = function(arg2, arg3)
            if not autoRespawnState or not autoRespawnState.enabled then
                return false
            end

            if arg2 and arg2 ~= autoRespawnState.manualBusyId then
                return false
            end
            autoRespawnState.manualBusy = false
            autoRespawnState.manualBusyReason = nil

            task.delay(0.02, function()
                local v39 = autoRespawnTryQueuedReturn
                local str9 = arg3 or "command"
                v39(str9)
            end)

            return true
        end

        autoRespawnDirectTpPriority = function(arg2)
            if not autoRespawnState then
                return false
            end
            autoRespawnState.pos = nil
            autoRespawnState.pendingReturn = nil
            autoRespawnState.pendingReturnToken = nil
            autoRespawnState.pendingReturnReason = nil
            autoRespawnState.pendingNeutralReturn = false
            autoRespawnState.manualBusy = false
            autoRespawnState.manualBusyReason = nil
            return true
        end

        autoRespawnDeadTpBegin = function(arg2)
            if not autoRespawnState then
                return
            end
            autoRespawnState.deadTpSilent = true
            autoRespawnState.deadTpNoticeShown = false
            local v39 = autoRespawnState
            local v40 = tostring
            local str9 = arg2 or "unknown"
            v39.deadTpName = v40(str9)
        end

        autoRespawnDeadTpEnd = function()
            if not autoRespawnState then
                return
            end

            task.defer(function()
                autoRespawnState.deadTpSilent = false
                autoRespawnState.deadTpNoticeShown = false
                autoRespawnState.deadTpName = nil
            end)
        end

        autoRespawnDeadTpNotify = function(arg2)
            if not autoRespawnState or autoRespawnState.deadTpSilent ~= true then
                return false
            end

            if autoRespawnState.deadTpNoticeShown == true then
                return true
            end
            autoRespawnState.deadTpNoticeShown = true
            local v39 = tostring
            local deadTpName = arg2 or autoRespawnState.deadTpName or "unknown"
            local str9 = "position changed after dead to (tp): " .. v39(deadTpName)

            if add_secondary_line then
                add_secondary_line(".autore", str9)
            elseif add_line then
                add_line(".autore", str9, false)
            end

            return true
        end

        autoRespawnHandleCharacter = function(arg2)
            if not autoRespawnState.enabled or not arg2 then
                return
            end
            autoRespawnDisconnectDied()
            local humanoid_ = arg2:WaitForChild("Humanoid", 10)
            local humanoidRootPart = arg2:WaitForChild("HumanoidRootPart", 10)
            if not humanoid_ or not humanoidRootPart then
                return
            end
            local pos = autoRespawnState.pos
            local isArrested = autoRespawnState.isArrested
            local token = autoRespawnState.token

            if cfg.auto_respawn_neutral == true and autoRespawnState.pendingNeutralReturn and autoRespawnState.neutralPos then
                pos = autoRespawnState.neutralPos
                autoRespawnState.pendingNeutralReturn = false
                autoRespawnState.neutralPos = nil
            elseif cfg.auto_respawn_neutral ~= true then
                autoRespawnState.pendingNeutralReturn = false
                autoRespawnState.neutralPos = nil
            end

            local v39 = autoRespawnShouldReturn()
            local v40 = v39 or isArrested
            local flag10 = pos and autoRespawnState.enabled and autoRespawnState.token == token and v40 and autoRespawnValidReturnCFrame(pos) and autoRespawnState.manualBusy ~= true and gunRunning ~= true

            if flag10 then
                pcall(function()
                    humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
                    humanoidRootPart.AssemblyAngularVelocity = Vector3.zero
                    humanoidRootPart.CFrame = pos
                end)
            end

            task.spawn(function()
                local num3 = tonumber(autoRespawnState.returnDelay)
                local n4 = num3 or 0

                if n4 > 0 then
                    task.wait(n4)
                end

                if pos and autoRespawnState.enabled and autoRespawnState.token == token and v40 and autoRespawnValidReturnCFrame(pos) then
                    if autoRespawnState.manualBusy ~= true and gunRunning ~= true then
                        autoRespawnApplyReturn(pos, token, "autorespawn")
                        return
                    end
                    local v41 = autoRespawnQueueReturn
                    local v42 = pos
                    local manualBusyReason = autoRespawnState.manualBusyReason
                    local str9 = manualBusyReason or "command"
                    v41(v42, token, str9)
                    return
                end

                if autoRespawnState.token == token then
                    autoRespawnState.pos = nil
                    autoRespawnState.pendingReturn = nil
                    autoRespawnState.pendingReturnToken = nil
                    autoRespawnState.pendingReturnReason = nil
                    autoRespawnState.isArrested = false
                end
            end)

            autoRespawnState.diedConn = fn2(humanoid_.Died, function()
                if not autoRespawnState.enabled then
                    return
                end

                if autoRespawnState.isArrested then
                    return
                end

                if autoRespawnShouldSave() and humanoidRootPart and humanoidRootPart.Parent then
                    autoRespawnState.pos = autoRespawnResolveSaveCFrame(humanoidRootPart)
                    autoRespawnState.pendingReturn = nil
                    autoRespawnState.pendingReturnToken = nil
                    autoRespawnState.pendingReturnReason = nil
                else
                    autoRespawnState.pos = nil
                    autoRespawnState.pendingReturn = nil
                    autoRespawnState.pendingReturnToken = nil
                    autoRespawnState.pendingReturnReason = nil
                end
            end)
        end

        autoRespawnStart = function(arg2)
            if autoRespawnState.enabled then
                return true
            end
            autoRespawnState.enabled = true
            local v39 = autoRespawnState
            v39.token = v39.token + 1
            autoRespawnState.pos = nil
            autoRespawnState.isArrested = false
            autoRespawnState.neutralPos = nil
            autoRespawnState.pendingNeutralReturn = false
            autoRespawnState.pendingReturn = nil
            autoRespawnState.pendingReturnToken = nil
            autoRespawnState.pendingReturnReason = nil
            autoRespawnState.manualBusy = false
            autoRespawnState.manualBusyReason = nil
            autoRespawnState.gunManualOp = nil

            if autoRespawnState.charConn then
                pcall(function()
                    autoRespawnState.charConn:Disconnect()
                end)

                autoRespawnState.charConn = nil
            end

            if autoRespawnState.arrestedConn then
                pcall(function()
                    autoRespawnState.arrestedConn:Disconnect()
                end)

                autoRespawnState.arrestedConn = nil
            end

            if autoRespawnState.teamConn then
                pcall(function()
                    autoRespawnState.teamConn:Disconnect()
                end)

                autoRespawnState.teamConn = nil
            end

            autoRespawnState.charConn = fn2(LocalPlayer.CharacterAdded, autoRespawnHandleCharacter)
            local v40 = autoRespawnState
            local team = LocalPlayer.Team
            local name = team and LocalPlayer.Team.Name or ""
            v40.lastTeam = name

            autoRespawnState.teamConn = fn2(LocalPlayer:GetPropertyChangedSignal("Team"), function()
                if not autoRespawnState.enabled then
                    return
                end
                local team2 = LocalPlayer.Team
                local name2 = team2 and LocalPlayer.Team.Name or ""
                local lastTeam = autoRespawnState.lastTeam

                if cfg.auto_respawn_neutral == true and name2 == "Neutral" and (lastTeam == "Guards" or lastTeam == "Inmates") then
                    local v41 = get_root()

                    if v41 then
                        autoRespawnState.neutralPos = autoRespawnResolveSaveCFrame(v41)
                        autoRespawnState.pendingNeutralReturn = false
                    end
                elseif cfg.auto_respawn_neutral == true and (name2 == "Guards" or name2 == "Inmates") and lastTeam == "Neutral" then
                    if autoRespawnState.neutralPos then
                        autoRespawnState.pendingNeutralReturn = true
                    end
                elseif name2 == "Criminals" or cfg.auto_respawn_neutral ~= true then
                    autoRespawnState.neutralPos = nil
                    autoRespawnState.pendingNeutralReturn = false
                end

                autoRespawnState.lastTeam = name2
            end)

            local ReplicatedStorage_ = game:GetService("ReplicatedStorage")

            if ReplicatedStorage_:FindFirstChild("Remotes") and ReplicatedStorage_.Remotes:FindFirstChild("ClientArrested") then
                autoRespawnState.arrestedConn = fn2(ReplicatedStorage_.Remotes.ClientArrested.OnClientEvent, function()
                    if not autoRespawnState.enabled then
                        return
                    end
                    local character_ = LocalPlayer.Character

                    if character_ then
                        local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
                        local humanoidRootPart = character_:FindFirstChild("HumanoidRootPart")

                        if humanoid_ and humanoid_.Health > 0 and humanoidRootPart then
                            autoRespawnState.pos = autoRespawnResolveSaveCFrame(humanoidRootPart)
                            autoRespawnState.isArrested = true
                            humanoid_.Health = 0
                        end
                    end
                end)
            end

            if LocalPlayer.Character then
                task.defer(autoRespawnHandleCharacter, LocalPlayer.Character)
            end

            featureSet("auto_respawn", true)
            cfg.auto_respawn = true
            save_cfg()

            if not arg2 and add_line then
                add_line(".autore on", "autorespawn on", false)
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            return true
        end

        autoRespawnStop = function(arg2)
            autoRespawnState.enabled = false
            local v39 = autoRespawnState
            v39.token = v39.token + 1
            autoRespawnState.pos = nil
            autoRespawnState.isArrested = false
            autoRespawnDisconnectDied()

            if autoRespawnState.charConn then
                pcall(function()
                    autoRespawnState.charConn:Disconnect()
                end)

                autoRespawnState.charConn = nil
            end

            if autoRespawnState.arrestedConn then
                pcall(function()
                    autoRespawnState.arrestedConn:Disconnect()
                end)

                autoRespawnState.arrestedConn = nil
            end

            if autoRespawnState.teamConn then
                pcall(function()
                    autoRespawnState.teamConn:Disconnect()
                end)

                autoRespawnState.teamConn = nil
            end

            autoRespawnState.neutralPos = nil
            autoRespawnState.pendingNeutralReturn = false
            featureSet("auto_respawn", false)
            cfg.auto_respawn = false
            save_cfg()

            if not arg2 and add_line then
                add_line(".autore off", "autorespawn off", false)
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            return true
        end

        autoRespawnSet = function(arg2, arg3)
            if arg2 == true then
                return autoRespawnStart(arg3)
            end
            return autoRespawnStop(arg3)
        end

        autoRespawnNeutralSet = function(arg2, arg3)
            local autoRespawnNeutral = arg2 == true
            cfg.auto_respawn_neutral = autoRespawnNeutral
            featureSet("auto_respawn_neutral", autoRespawnNeutral)
            save_cfg()

            if not autoRespawnNeutral then
                autoRespawnState.neutralPos = nil
                autoRespawnState.pendingNeutralReturn = false
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg3 and add_line then
                local v39 = add_line
                local str9 = autoRespawnNeutral and "on" or "off"
                local str10 = ".aneutral " .. str9
                local str11 = autoRespawnNeutral and "on" or "off"
                v39(str10, "autorespawn neutral save " .. str11, false)
            end

            return true
        end

        autoRespawnNeutralCommand = function(arg2)
            local v39 = tostring
            local str9 = arg2 or ""
            local str10 = v39(str9):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str10 == "on" or str10 == "true" or str10 == "1" then
                return autoRespawnNeutralSet(true, false)
            end

            if str10 == "off" or str10 == "false" or str10 == "0" then
                return autoRespawnNeutralSet(false, false)
            end
            add_line(".aneutral", "use .aneutral on/off", true)
            red_anim()
            return false
        end

        autoRespawnCommand = function(arg2)
            local v39 = tostring
            local str9 = arg2 or ""
            local str10 = v39(str9):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str10 == "on" or str10 == "true" or str10 == "1" then
                return autoRespawnSet(true, false)
            end

            if str10 == "off" or str10 == "false" or str10 == "0" then
                return autoRespawnSet(false, false)
            end
            add_line(".autore", "use .autore on/off", true)
            red_anim()
            return false
        end

        task.defer(function()
            task.wait(0.35)
            local v39 = featureGet
            local flag10 = cfg.auto_respawn == true

            if v39("auto_respawn", flag10) then
                autoRespawnStart(true)
            end
        end)

        wallState = {enabled = false, spawners = {}}
        local n4 = cframe(0, 2, -1.5) * CFrame.Angles(math.rad(90), math.rad(90), 0)

        wallDisconnect = function()
            fn3(wallState.conn)
            wallState.conn = nil
        end

        wallRefreshSpawners = function()
            local spawners = wallState.spawners
            table.clear(spawners)
            local prisonItems = Workspace:FindFirstChild("Prison_ITEMS")
            local buttons = prisonItems and prisonItems:FindFirstChild("buttons")
            if not buttons then
                return spawners
            end

            for i, descendant in ipairs(buttons:GetDescendants()) do
                if descendant:IsA("BasePart") and descendant.Name == "Car Spawner" then
                    spawners[#spawners + 1] = descendant
                end
            end

            return spawners
        end

        wallNearSpawner = function(arg2)
            local spawners = wallState.spawners
            local v39 = spawners

            if #spawners == 0 then
                v39 = wallRefreshSpawners()
            end

            for i = #v39, 1, -1 do
                local v40 = v39[i]
                if not v40.Parent then
                    table.remove(v39, i)
                    continue
                end
                local n5 = v40.Position - arg2
                if n5:Dot(n5) <= 400 then
                    return true
                end
            end

            return false
        end

        wallFindBox = function()
            local carContainer = Workspace:FindFirstChild("CarContainer")
            local box = carContainer and carContainer:FindFirstChild("Box", true) or nil
            return box
        end

        wallStart = function(arg2)
            if wallState.enabled then
                return true
            end
            wallState.enabled = true
            wallState.last = 0
            wallState.box = wallFindBox()
            wallRefreshSpawners()
            wallDisconnect()

            wallState.conn = fn2(RunService.Heartbeat, function()
                if not wallState.enabled then
                    return
                end
                local character_ = LocalPlayer.Character
                local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart then
                    return
                end
                local cFrame = humanoidRootPart.CFrame * n4
                local box = wallState.box
                local box2 = box
                local n5 = box and box.Parent and box.Position - cFrame.Position
                local now2 = os.clock()

                if (not n5 or n5:Dot(n5) > 25) and now2 - wallState.last >= 0.5 then
                    wallState.last = now2

                    if wallNearSpawner(humanoidRootPart.Position) then
                        wallState.box = wallFindBox()
                        box2 = wallState.box
                    end
                end

                if box2 and box2.Parent then
                    box2.CFrame = cFrame
                    box2.AssemblyLinearVelocity = Vector3.zero
                    box2.AssemblyAngularVelocity = Vector3.zero
                end
            end)

            save_feature_cfg("wall", "wall", true)

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg2 then
                if add_secondary_line then
                    add_secondary_line(".shield on", "shield on (you need to spawn a car)")
                elseif add_line then
                    add_line(".shield on", "shield on (you need to spawn a car)", false)
                end
            end

            return true
        end

        wallStop = function(arg2)
            wallState.enabled = false
            wallState.box = nil
            table.clear(wallState.spawners)
            wallDisconnect()
            save_feature_cfg("wall", "wall", false)

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg2 and add_line then
                add_line(".shield off", "shield off", false)
            end

            return true
        end

        wallSet = function(arg2, arg3)
            if arg2 == true then
                return wallStart(arg3)
            end
            return wallStop(arg3)
        end

        wallCommand = function(arg2)
            local v39 = parse_on_off(arg2)
            if v39 ~= nil then
                return wallSet(v39, false)
            end

            if add_line then
                add_line(".shield", "use .shield on/off", true)
            end

            if red_anim then
                red_anim()
            end

            return false
        end

        fn4(function()
            local v39 = wallState
            wallState.enabled = false
            v39.box = nil
            table.clear(wallState.spawners)
            wallDisconnect()
        end)

        task.defer(function()
            task.wait(0.45)
            local v39 = featureGet
            local flag10 = cfg.wall == true

            if v39("wall", flag10) then
                wallStart(true)
            end
        end)

        autoArrestState = {
            enabled = false,
            token = 0,
            busy = false,
            nextArrest = 0,
            debounce = {},
        }

        autoArrestIsGuard = function()
            local team = LocalPlayer.Team
            local flag10 = team and LocalPlayer.Team.Name == "Guards"
            return flag10
        end

        autoArrestTargetValid = function(arg2, arg3)
            if not arg2 or arg2 == LocalPlayer then
                return nil
            end
            local team = arg2.Team
            local name = team and arg2.Team.Name
            if name ~= "Inmates" and name ~= "Criminals" then
                return nil
            end
            local character_ = arg2.Character
            local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
            if not humanoidRootPart or not humanoid_ or humanoid_.Health <= 0 or character_:GetAttribute("Arrested") then
                return nil
            end

            if name == "Inmates" and character_:GetAttribute("Hostile") and not character_:GetAttribute("Tased") then
                return nil
            end
            local n5 = humanoidRootPart.Position - arg3
            local flag10 = n5:Dot(n5) <= 64 and arg2 or nil
            return flag10
        end

        autoArrestStep = function(arg2)
            local v39 = autoArrestState
            local now2 = os.clock()
            if not v39.enabled or v39.token ~= arg2 or v39.busy or now2 < v39.nextArrest or not autoArrestIsGuard() then
                return
            end
            local character_ = LocalPlayer.Character
            local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                return
            end
            local remotes = ReplicatedStorage:FindFirstChild("Remotes")
            local arrestPlayer = remotes and remotes:FindFirstChild("ArrestPlayer")
            if not arrestPlayer then
                return
            end

            for i, v40 in ipairs(tbl4) do
                local v41 = autoArrestTargetValid(v40, humanoidRootPart.Position)

                if v41 then
                    v39.busy = true
                    v39.nextArrest = now2 + 0.25

                    task.spawn(function()
                        local ok, result = pcall(arrestPlayer.InvokeServer, arrestPlayer, v41, 1)
                        if v39.token ~= arg2 then
                            return
                        end

                        if ok and result then
                            v39.nextArrest = os.clock() + 7
                        end

                        v39.busy = false
                    end)

                    return
                end

                continue
            end
        end

        autoArrestStart = function(arg2)
            local v39 = autoArrestState
            if v39.enabled then
                return true
            end
            v39.enabled = true
            v39.busy = false
            v39.nextArrest = 0
            v39.token = v39.token + 1
            local token = v39.token
            save_feature_cfg("auto_arrest", "auto_arrest", true)

            if not arg2 and add_line then
                add_line(".autoarrest on", "autoarrest on", false)
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            task.spawn(function()
                while flag and v39.enabled and v39.token == token do
                    if autoArrestIsGuard() then
                        autoArrestStep(token)
                        local character_ = LocalPlayer.Character
                        local tool = character_ and character_:FindFirstChildWhichIsA("Tool")
                        local v40 = tool
                        local wait = task.wait
                        local n5 = v40 and v40.Name == "Handcuffs" and 0.05 or 0.1
                        wait(n5)
                    else
                        task.wait(0.45)
                    end
                end
            end)

            return true
        end

        autoArrestStop = function(arg2)
            local v39 = autoArrestState
            v39.enabled = false
            v39.busy = false
            v39.nextArrest = 0
            v39.token = v39.token + 1
            save_feature_cfg("auto_arrest", "auto_arrest", false)

            if not arg2 and add_line then
                add_line(".autoarrest off", "autoarrest off", false)
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            return true
        end

        autoArrestSet = function(arg2, arg3)
            if arg2 == true then
                return autoArrestStart(arg3)
            end
            return autoArrestStop(arg3)
        end

        autoArrestCommand = function(arg2)
            local v39 = parse_on_off(arg2)
            if v39 ~= nil then
                return autoArrestSet(v39, false)
            end

            if add_line then
                add_line(".autoarrest", "use .autoarrest/.ar on/off", true)
            end

            if red_anim then
                red_anim()
            end

            return false
        end

        fn4(function()
            local v39 = autoArrestState
            autoArrestState.enabled = false
            v39.busy = false
            local v40 = autoArrestState
            v40.token = v40.token + 1
        end)

        task.defer(function()
            task.wait(0.35)
            local v39 = featureGet
            local flag10 = cfg.auto_arrest == true

            if v39("auto_arrest", flag10) then
                autoArrestStart(true)
            end
        end)

        v6 = "HumanoidRootPart"
        local Part = fn5("Part", Workspace, "Size", vector(50, 1, 50), "Anchored", true, "Transparency", 0.9, "Color", color(0, 255, 0))
        floor = Part
        local Part2 = fn5("Part", Workspace, "Name", "StunPart", "Size", vector(2, 0.1, 2), "Anchored", true, "Transparency", 0.94, "Color", color(0, 255, 0), "CastShadow", false)
        floor2 = Part2
        local Part3 = fn5("Part", Workspace, "Name", "StunPart", "Size", vector(2, 0.1, 2), "Anchored", true, "Transparency", 0.94, "Color", color(0, 255, 0), "CastShadow", false)
        floor3 = Part3

        fn4(function()
            for i, v39 in ipairs({floor, floor2, floor3}) do
                if v39 and v39.Parent then
                    v39:Destroy()
                end
            end
        end)

        fn2(RunService.RenderStepped, function()
            local character_ = LocalPlayer.Character
            local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart then
                local position = humanoidRootPart.Position
                floor.Position = vector(position.X, floor.Position.Y, position.Z)
                floor2.Position = vector(position.X, floor2.Position.Y, position.Z)
                floor3.Position = vector(position.X, floor3.Position.Y, position.Z)
            end
        end)

        ReloadGunInBackground = function(arg2)
            if arg2 then
                local num3 = tonumber(arg2:GetAttribute("Local_ReloadSession"))
                local n5 = num3 or 0

                if n5 <= 0 then
                    local attributes = arg2:GetAttributes()
                    local behavior = attributes.Behavior
                    local maxAmmo = attributes.MaxAmmo
                    local n6 = maxAmmo or 0
                    local storedAmmo = attributes.StoredAmmo
                    local n7 = storedAmmo or 0
                    if behavior == "Sniper" and n7 <= 0 then
                        return
                    end
                    local now2 = tick()
                    arg2:SetAttribute("Local_ReloadSession", now2)
                    local funcReload = ReplicatedStorage:WaitForChild("GunRemotes"):WaitForChild("FuncReload")

                    task.spawn(function()
                        funcReload:InvokeServer()
                    end)

                    local reloadTime = attributes.ReloadTime
                    local n8 = reloadTime or 2
                    task.wait(n8)

                    if arg2 and arg2:GetAttribute("Local_ReloadSession") == now2 then
                        if behavior == "Sniper" then
                            arg2:SetAttribute("Local_CurrentAmmo", 1)
                        else
                            arg2:SetAttribute("Local_CurrentAmmo", n6)
                        end

                        arg2:SetAttribute("Local_ReloadSession", 0)
                    end

                    return
                end
            end
        end

        getBestTool = function()
            local v39 = nil
            local n5 = -1
            local children = LocalPlayer.Backpack:GetChildren()

            if LocalPlayer.Character then
                for k, child in pairs(LocalPlayer.Character:GetChildren()) do
                    table.insert(children, child)
                end
            end

            for k, child in pairs(children) do
                if child:IsA("Tool") and child:GetAttribute("ToolType") == "Gun" then
                    local attribute = child:GetAttribute("Local_CurrentAmmo")
                    local attribute2 = attribute or child:GetAttribute("CurrentAmmo") or 0
                    local flag10 = child:GetAttribute("Local_ReloadSession") ~= 0
                    local attribute3 = child:GetAttribute("Damage")
                    local n6 = attribute3 or 10

                    if attribute2 > 0 and not flag10 then
                        local n7 = n6 * attribute2

                        if n5 < n7 then
                            n5 = n7
                            v39 = child
                        end
                    end
                end
            end

            return v39
        end

        local tbl11 = {
            rules = {
                M4A1 = {priority = 1, minimum = 2},
                ["AK-47"] = {priority = 1, minimum = 0},
                MP5 = {priority = 1, minimum = 0},
                FAL = {priority = 1, minimum = 2},
                ["Remington 870"] = {priority = 2, minimum = 0},
                M9 = {priority = 3, minimum = 1},
                Revolver = {priority = 4, minimum = 1},
            },
            watched = setmetatable({}, {__mode = "k"}),
            reloads = setmetatable({}, {__mode = "k"}),
            switches = setmetatable({}, {__mode = "k"}),
        }

        autoWeaponState = tbl11
        killWeaponBusy = 0

        autoWeaponAmmo = function(arg2)
            local v39 = tonumber
            local attribute = arg2

            if arg2 then
                local attribute2 = arg2:GetAttribute("Local_CurrentAmmo")
                attribute = attribute2 or arg2:GetAttribute("CurrentAmmo")
            end

            local v40 = v39(attribute)
            local n5 = v40 or 0
            return n5
        end

        autoWeaponSession = function(arg2)
            local v39 = tonumber
            local attribute = arg2 and arg2:GetAttribute("Local_ReloadSession")
            local v40 = v39(attribute)
            local n5 = v40 or 0
            return n5
        end

        autoWeaponKillBusy = function()
            local flag10 = killWeaponBusy > 0 or killExecutionBusy == true
            return flag10
        end

        autoWeaponBestSwitch = function()
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            local v39 = nil
            local priority = nil
            if not backpack then
                return nil
            end

            for i, child in ipairs(backpack:GetChildren()) do
                local isTool = child:IsA("Tool")
                local v40 = isTool and autoWeaponState.rules[child.Name]

                if v40 and autoWeaponSession(child) <= 0 then
                    local v41 = autoWeaponAmmo(child)

                    if v40.minimum < v41 and (not priority or v40.priority < priority) then
                        priority = v40.priority
                        v39 = child
                    end
                end
            end

            return v39
        end

        autoWeaponTrySwitch = function(arg2, arg3)
            if not cfg.auto_switch or autoWeaponKillBusy() then
                return
            end

            if arg2.Parent ~= LocalPlayer.Character or arg3 <= 0 then
                return
            end

            if autoWeaponState.switches[arg2] == arg3 then
                return
            end
            autoWeaponState.switches[arg2] = arg3

            task.delay(0.05, function()
                local character_ = LocalPlayer.Character
                local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

                if flag and cfg.auto_switch and not autoWeaponKillBusy() and autoWeaponState.switches[arg2] == arg3 and autoWeaponSession(arg2) == arg3 and humanoid_ and humanoid_.Health > 0 and arg2.Parent == character_ then
                    local v39 = autoWeaponBestSwitch()

                    if not v39 or not pcall(humanoid_.EquipTool, humanoid_, v39) then
                        autoWeaponState.switches[arg2] = nil
                    end

                    return
                end

                if autoWeaponState.switches[arg2] == arg3 then
                    autoWeaponState.switches[arg2] = nil
                end
            end)
        end

        autoWeaponBeginReload = function(arg2, arg3)
            if autoWeaponState.reloads[arg2] then
                return
            end
            autoWeaponState.reloads[arg2] = true

            task.spawn(function()
                if flag and cfg.auto_reload and not autoWeaponKillBusy() and arg2.Parent == LocalPlayer.Character and autoWeaponSession(arg2) <= 0 and autoWeaponAmmo(arg2) <= arg3.minimum then
                    ReloadGunInBackground(arg2)
                end

                autoWeaponState.reloads[arg2] = nil
            end)
        end

        autoWeaponEvaluate = function(arg2)
            local isTool = arg2 and arg2:IsA("Tool") and autoWeaponState.rules[arg2.Name]
            if not isTool or not arg2.Parent then
                return
            end
            local v39 = autoWeaponSession(arg2)
            if v39 > 0 then
                autoWeaponTrySwitch(arg2, v39)
                return
            end
            autoWeaponState.switches[arg2] = nil

            if cfg.auto_reload and not autoWeaponKillBusy() and arg2.Parent == LocalPlayer.Character and autoWeaponAmmo(arg2) <= isTool.minimum then
                autoWeaponBeginReload(arg2, isTool)
            end
        end

        autoWeaponWatch = function(arg2)
            if not arg2 or not arg2:IsA("Tool") or autoWeaponState.watched[arg2] then
                return
            end
            autoWeaponState.watched[arg2] = true

            fn2(arg2.AttributeChanged, function(arg3)
                if arg3 == "Local_CurrentAmmo" or arg3 == "CurrentAmmo" or arg3 == "Local_ReloadSession" then
                    autoWeaponEvaluate(arg2)
                end
            end)

            task.defer(autoWeaponEvaluate, arg2)
        end

        autoWeaponScan = function()
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            local character_ = LocalPlayer.Character
            local v39, v40, v41 = ipairs({backpack, character_})
            local v42 = v41
            local v43 = v39
            local v44 = v40

            while true do
                local v45, v46 = v43(v44, v42)
                if v45 == nil then
                    break
                end
                v42 = v45

                if v46 then
                    for i, child in ipairs(v46:GetChildren()) do
                        autoWeaponWatch(child)
                    end

                    v42 = v45
                end
            end

            if character_ then
                for i, child in ipairs(character_:GetChildren()) do
                    autoWeaponEvaluate(child)
                end
            end
        end

        autoWeaponBind = function(arg2)
            if not arg2 then
                return
            end

            for i, child in ipairs(arg2:GetChildren()) do
                autoWeaponWatch(child)
            end

            fn2(arg2.ChildAdded, function(arg3)
                autoWeaponWatch(arg3)
                task.defer(autoWeaponScan)
            end)
        end

        autoWeaponSet = function(arg2, arg3, arg4)
            local flag10 = arg3 == true
            cfg[arg2] = flag10
            featureSet(arg2, flag10)
            save_cfg()

            if flag10 then
                task.defer(autoWeaponScan)
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg4 and add_line then
                local str9 = arg2 == "auto_reload" and "autoreload" or "autoswitch"
                local v39 = add_line
                local str10 = flag10 and "on" or "off"
                v39("." .. str9 .. " " .. str10, nil, false)
            end

            return true
        end

        autoReloadSet = function(arg2, arg3)
            return autoWeaponSet("auto_reload", arg2, arg3)
        end

        autoSwitchSet = function(arg2, arg3)
            return autoWeaponSet("auto_switch", arg2, arg3)
        end

        autoWeaponCommandText = function(arg2, arg3)
            local match, v39 = arg2:match("^%.(autoreload)%s*(.*)$")
            local v40 = match
            local v41 = v39

            if not match then
                local match2, v42 = arg2:match("^%.(autoswitch)%s*(.*)$")
                v40 = match2
                v41 = v42
            end

            if not v40 then
                return false
            end
            local v42 = parse_on_off(v41)

            if v42 == nil then
                add_line("." .. v40, "use ." .. v40 .. " on/off", true)

                if arg3 ~= "chat" then
                    red_anim()
                end

                return true
            end

            local flag10 = v40 == "autoreload" and autoReloadSet or autoSwitchSet

            if flag10(v42, false) and arg3 ~= "chat" then
                collapse()
            end

            return true
        end

        autoWeaponBind(LocalPlayer:FindFirstChildOfClass("Backpack"))
        autoWeaponBind(LocalPlayer.Character)

        fn2(LocalPlayer.ChildAdded, function(arg2)
            if arg2:IsA("Backpack") then
                autoWeaponBind(arg2)
                task.defer(autoWeaponScan)
            end
        end)

        fn2(LocalPlayer.CharacterAdded, function(arg2)
            autoWeaponBind(arg2)
            task.defer(autoWeaponScan)
        end)

        task.defer(autoWeaponScan)
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Exclude
        raycastParams.IgnoreWater = true

        isPathClear = function(arg2, arg3, filterDescendantsInstances)
            raycastParams.FilterDescendantsInstances = filterDescendantsInstances
            local hit = Workspace:Raycast(arg2, arg3 - arg2, raycastParams)
            if hit and hit.Instance ~= Workspace.Terrain then
                return false
            end
            return true
        end
    end

    local fn17, fn18, tbl6, flag5

    do
        local tbl7 = {0}

        for i = 0.25, 20, 0.25 do
            tbl7[#tbl7 + 1] = i
            tbl7[#tbl7 + 1] = -i
        end

        local v7 = vector(891, 40, 2339)

        local function fn19(arg2)
            local flag6 = arg2.X >= 849 and arg2.X <= 894 and arg2.Z >= 2319 and arg2.Z <= 2369 and arg2.Y < 40
            return flag6
        end

        local function fn20(arg2, arg3)
            local n2 = -14
            local n3 = -18

            if arg2.Y > 40 then
                n2 = 44
                n3 = 40
            end

            local n4 = arg3 - v7

            if fn19(arg3) or fn19(arg2) or arg3.Y < 40 and arg2.Y >= 40 and n4:Dot(n4) <= 3025 then
                n2 = 44
                n3 = 40
            end

            return vector(arg2.X, n2, arg2.Z), n3, vector(arg2.X, 180, arg2.Z), 175
        end

        local function fn21(arg2, arg3)
            local tbl8 = {arg2, arg3}

            for i, child in ipairs(Workspace:GetChildren()) do
                if child.Name == "StunPart" then
                    tbl8[#tbl8 + 1] = child
                end
            end

            return tbl8
        end

        local function fn22(arg2, arg3, arg4)
            for i, v8 in ipairs(tbl7) do
                local v9 = vector(arg3.X, arg3.Y + v8, arg3.Z)
                if isPathClear(arg2, v9, arg4) then
                    return v9
                end
            end

            return nil
        end

        fn17 = function(arg2, arg3)
            local character_ = arg2 and arg2.Character
            local v8 = character_ and character_:FindFirstChild(v6)
            local character_2 = LocalPlayer.Character
            local v9 = character_2 and character_2:FindFirstChild(v6)
            local muzzle = arg3 and arg3:FindFirstChild("Muzzle")
            if not v8 or not v9 or not muzzle then
                return nil
            end
            local position = v8.Position
            local v10 = fn21(character_2, character_)
            local v11 = fn22(muzzle.Position, position, v10)
            if v11 then
                return "direct", v11
            end
            local v12, v13, v14, v15 = fn20(v9.Position, position)
            if fn22(v12, position, v10) then
                return "below", nil, v12, v13
            end

            if not fn22(v14, position, v10) then
                return "impossible"
            end
            return "above", nil, v14, v15
        end

        local tbl8 = {
            ["table1.Part"] = true,
            ["Model.FileCabinets.filecabinet.Part"] = true,
            ["Model.cubicle.Part"] = true,
            ["Model.Locker.Model.Part"] = true,
            Part = true,
            ["Gun racks.Part"] = true,
            ["Model.Model.Part"] = true,
            ["Model.Model.Wedge"] = true,
            ["Model.Part"] = true,
            ["Model.Table.Part"] = true,
            ["GuardBooth.Stonewall"] = true,
            ["island.Part"] = true,
            ["counter.Part"] = true,
            ["oven.Part"] = true,
            ["shelves.Part"] = true,
            ["boxes.Part"] = true,
            ["vents.kitchenfan.Part"] = true,
            ["Prison_Cellblock.Cells_B.cell2.Toilet.Part"] = true,
            ["Prison_Cellblock.Cells_B.cell2.Sink.Part"] = true,
            ["desk.Part"] = true,
            ["bookshelf.Part"] = true,
            ["Couch.Wedge"] = true,
            ["Couch.Part"] = true,
            ["Model.Model.Model.Block"] = true,
            ["Model.furniture_reception.Part"] = true,
            ["Plant.Model.Union"] = true,
            ["vending machine.Model.Part"] = true,
        }

        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Exclude
        raycastParams.IgnoreWater = true

        local tbl9 = {
            vector(0, 0, 0),
            vector(0.75, 0, 0),
            vector(-0.75, 0, 0),
            vector(0, 0, 0.75),
            vector(0, 0, -0.75),
        }

        local obj = setmetatable({}, {__mode = "k"})

        local function fn23(arg2)
            local parent = arg2
            local tbl10 = {}

            while parent and parent ~= Workspace do
                table.insert(tbl10, 1, parent.Name)
                parent = parent.Parent
            end

            local str = parent == Workspace and table.concat(tbl10, ".") or nil
            return str
        end

        local function fn24(arg2)
            local v8 = obj[arg2]
            if v8 ~= nil then
                return v8
            end
            local v9 = fn23(arg2)
            local flag6 = tbl8[v9] == true or v9 ~= nil and v9:match("^Prison_Cellblock%.Cells_[^%.]+%.cell%d+%.Toilet%.Part$") ~= nil or v9 ~= nil and v9:match("^Prison_Cellblock%.Cells_[^%.]+%.cell%d+%.Sink%.Part$") ~= nil
            obj[arg2] = flag6
            local v10 = flag6
            return v10
        end

        fn18 = function(arg2)
            local character_ = arg2 and arg2.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
            if not humanoid_ or humanoid_.Health <= 0 or not humanoidRootPart then
                return false
            end
            local filterDescendantsInstances = {character_}

            for i, player in ipairs(Players:GetPlayers()) do
                local character_2 = player.Character

                if character_2 and character_2 ~= character_ then
                    filterDescendantsInstances[#filterDescendantsInstances + 1] = character_2
                end
            end

            for i, v8 in ipairs({floor, floor2, floor3}) do
                if v8 then
                    filterDescendantsInstances[#filterDescendantsInstances + 1] = v8
                end
            end

            raycastParams.FilterDescendantsInstances = filterDescendantsInstances

            for i, v8 in ipairs(tbl9) do
                local hit = Workspace:Raycast(humanoidRootPart.Position + v8 + vector(0, 0.75, 0), vector(0, -10, 0), raycastParams)
                if hit and fn24(hit.Instance) then
                    return true
                end
            end

            return false
        end

        KillPlr = function(victim_, arg2, arg3, arg4)
            _G.Victim = victim_
            local character_ = victim_.Character

            if character_ and character_:FindFirstChild(v6) and character_:FindFirstChild("Humanoid") then
                local humanoidRootPart = character_.HumanoidRootPart
                local humanoid_ = character_.Humanoid
                local character_2 = LocalPlayer.Character
                local humanoid_2 = character_2 and character_2:FindFirstChild("Humanoid")
                local v8 = character_2 and character_2:FindFirstChild(v6)

                if humanoid_2 and v8 then
                    local n2 = v8.Position - humanoidRootPart.Position
                    if n2:Dot(n2) > 902500 then
                        _G.Victim = nil
                        return false
                    end
                    local cFrame = v8.CFrame
                    local n3 = 0
                    local n4 = 0
                    local v9, muzzle, v10, v11, v12, v13, pos, n5, shootEvent, tbl10, attribute, attribute2

                    repeat
                        RunService.Heartbeat:Wait()
                        v9 = getBestTool()

                        if v9 then
                            if v9.Parent ~= character_2 then
                                humanoid_2:EquipTool(v9)
                                task.wait(0.1)
                            end

                            muzzle = v9:FindFirstChild("Muzzle")

                            if muzzle then
                                v10, v11, v12, v13 = fn17(victim_, v9)

                                if v10 == "below" then
                                    floor.Position = vector(v12.X, v13, v12.Z)
                                    v8.CFrame = cframe(v12)
                                    task.wait(0.1)
                                elseif v10 == "above" then
                                    floor2.Position = vector(v12.X, v13, v12.Z)
                                    floor3.Position = vector(v12.X, v13, v12.Z)
                                    v8.CFrame = cframe(v12)
                                    task.wait(0.1)
                                elseif v10 == "impossible" then
                                    if arg2 < n4 then
                                        break
                                    end
                                    n4 = n4 + 1
                                    task.wait(0.1)
                                elseif v10 == "direct" and v11 then
                                    if v11 then
                                        pos = v9.Name:find("870")
                                        n5 = (pos or v9:GetAttribute("Behavior") == "Shotgun") and 5 or 1
                                        shootEvent = ReplicatedStorage:WaitForChild("GunRemotes"):WaitForChild("ShootEvent")
                                        tbl10 = {}

                                        for i = 1, n5 do
                                            table.insert(tbl10, {muzzle.Position, v11, humanoidRootPart})
                                        end

                                        shootEvent:FireServer(tbl10)
                                        n3 = n3 + n5
                                        attribute = v9:GetAttribute("Local_CurrentAmmo")
                                        attribute2 = attribute or v9:GetAttribute("CurrentAmmo")
                                        v9:SetAttribute("Local_CurrentAmmo", attribute2 - 1)

                                        if v9:GetAttribute("Local_CurrentAmmo") <= 0 then
                                            task.spawn(ReloadGunInBackground, v9)
                                            humanoid_2:UnequipTools()
                                        end

                                        task.wait(0.03)
                                    end
                                else
                                    task.wait(0.1)
                                end
                            end
                        else
                            task.wait(0.1)
                        end
                    until humanoid_.Health <= 0 or victim_.Parent ~= Players or victim_.Character ~= character_ or LocalPlayer.Character ~= character_2 or not humanoid_2.Parent or humanoid_2.Health <= 0 or playerHasForceField(victim_) or arg4 and not arg4() or not arg3 and n3 >= 15

                    if v8 then
                        v8.CFrame = cFrame
                    end

                    _G.Victim = nil
                    local flag6 = humanoid_.Health <= 0
                    return flag6
                end

                _G.Victim = nil
                return false
            end

            _G.Victim = nil
            return false
        end

        if antiFlingV1 then
            local v8 = pairs
            local smartSavedProps = antiFlingV1.smartSavedProps
            local tbl10 = smartSavedProps or {}

            for k, v9 in v8(tbl10) do
                if k and v9 then
                    pcall(function()
                        k.CanCollide = v9.CanCollide
                        k.CanTouch = v9.CanTouch
                    end)
                end
            end

            local v9 = pairs
            local originals = antiFlingV1.originals
            local tbl11 = originals or {}

            for k, v10 in v9(tbl11) do
                if k and v10 ~= nil then
                    pcall(function()
                        k.CanCollide = v10
                    end)
                end
            end

            local v10 = pairs
            local smartSeatConnections = antiFlingV1.smartSeatConnections
            local tbl12 = smartSeatConnections or {}

            for k, v11 in v10(tbl12) do
                if v11 then
                    pcall(function()
                        v11:Disconnect()
                    end)
                end
            end

            for i, v11 in ipairs({antiFlingV1.descendantConn, antiFlingV1.childRemovedConn}) do
                if v11 then
                    pcall(function()
                        v11:Disconnect()
                    end)
                end
            end
        end

        local tbl10 = {enabled = false}
        local v8 = cfg
        local antiFlingMode = v8 and cfg.anti_fling_mode or "normal"
        tbl10.mode = antiFlingMode
        tbl10.smartPermaGhostedCars = setmetatable({}, {__mode = "k"})
        tbl10.smartLastCarPos = setmetatable({}, {__mode = "k"})
        tbl10.protected = {}
        tbl10.originals = {}
        tbl10.descendantConn = nil
        tbl10.loopId = 0
        tbl10.localCarCache = nil
        tbl10.localCarCacheAt = 0
        tbl10.disabledSeatsCount = 0
        tbl10.seatOriginals = {}
        tbl10.disabledSeats = {}
        tbl10.smartSavedProps = setmetatable({}, {__mode = "k"})
        tbl10.smartConnectedSeats = setmetatable({}, {__mode = "k"})
        tbl10.smartSeatConnections = setmetatable({}, {__mode = "k"})
        tbl10.smartSeatCars = setmetatable({}, {__mode = "k"})
        tbl10.smartCarSeats = setmetatable({}, {__mode = "k"})
        tbl10.smartCarParts = setmetatable({}, {__mode = "k"})
        tbl10.smartRegisteredCars = setmetatable({}, {__mode = "k"})
        tbl10.smartGhostedCars = setmetatable({}, {__mode = "k"})
        tbl10.smartCarLastProcess = setmetatable({}, {__mode = "k"})
        tbl10.smartScanDelay = 8
        tbl10.smartMaintainDelay = 0.5
        tbl10.smartLastScan = 0
        tbl10.seatScanDelay = 5
        tbl10.seatLastScan = 0
        tbl10.childRemovedConn = nil
        antiFlingV1 = tbl10
        local v9 = antiFlingV15TargetCars
        local v10 = v9

        if not v9 then
            local tbl11 = {}
            v10 = tbl11
            tbl11.Sedan = true
            tbl11.Squad = true
        end

        antiFlingV15TargetCars = v10

        antiFlingV2GetCarContainer = function()
            return Workspace:FindFirstChild("CarContainer")
        end

        antiFlingV2GetCarFromObject = function(arg2)
            local v11 = antiFlingV2GetCarContainer()
            if not v11 then
                return nil
            end
            local parent = arg2

            while flag and parent and parent ~= v11 do
                if parent.Parent == v11 then
                    return parent
                end
                parent = parent.Parent
            end

            return nil
        end

        antiFlingV2GetPlayerFromSeat = function(arg2)
            if not arg2 or not arg2:IsA("VehicleSeat") then
                return nil
            end
            local occupant = arg2.Occupant
            if not occupant then
                return nil
            end
            local parent = occupant.Parent
            if not parent then
                return nil
            end
            return Players:GetPlayerFromCharacter(parent)
        end

        antiFlingV2SavePart = function(arg2, arg3)
            if not arg2 or not arg3 or not arg3:IsA("BasePart") then
                return nil
            end
            local v11 = antiFlingV1
            local smartSavedProps = antiFlingV1.smartSavedProps
            local smartSavedProps2 = smartSavedProps or setmetatable({}, {__mode = "k"})
            v11.smartSavedProps = smartSavedProps2
            local v12 = antiFlingV1
            local smartCarParts = antiFlingV1.smartCarParts
            local smartCarParts2 = smartCarParts or setmetatable({}, {__mode = "k"})
            v12.smartCarParts = smartCarParts2
            local v13 = antiFlingV1.smartSavedProps[arg3]
            if v13 then
                return v13
            end

            local tbl11 = {
                Car = arg2,
                CanCollide = arg3.CanCollide,
                CanTouch = arg3.CanTouch,
            }

            antiFlingV1.smartSavedProps[arg3] = tbl11
            local v14 = antiFlingV1.smartCarParts[arg2]
            local v15 = v14

            if not v14 then
                local tbl12 = {}
                v15 = tbl12
                antiFlingV1.smartCarParts[arg2] = tbl12
            end

            v15[arg3] = tbl11
            return tbl11
        end

        antiFlingV2MakePartGhost = function(arg2, arg3)
            if not antiFlingV1.enabled then
                return
            end

            if not arg3 or not arg3:IsA("BasePart") then
                return
            end
            antiFlingV2SavePart(arg2, arg3)

            if arg3.CanCollide ~= false then
                arg3.CanCollide = false
            end

            if arg3.CanTouch ~= false then
                arg3.CanTouch = false
            end
        end

        antiFlingV2RestorePart = function(arg2)
            local v11 = antiFlingV1
            local smartSavedProps = antiFlingV1.smartSavedProps
            local smartSavedProps2 = smartSavedProps or setmetatable({}, {__mode = "k"})
            v11.smartSavedProps = smartSavedProps2
            local v12 = antiFlingV1.smartSavedProps[arg2]
            if not v12 then
                return
            end

            if arg2 then
                pcall(function()
                    arg2.CanCollide = v12.CanCollide
                    arg2.CanTouch = v12.CanTouch
                end)
            end

            local smartCarParts = antiFlingV1.smartCarParts
            local v13 = smartCarParts and antiFlingV1.smartCarParts[v12.Car]

            if v13 then
                v13[arg2] = nil
            end

            antiFlingV1.smartSavedProps[arg2] = nil
        end

        antiFlingV2ForceRestoreCar = function(arg2)
            if not arg2 then
                return
            end

            if antiFlingV1.smartGhostedCars then
                antiFlingV1.smartGhostedCars[arg2] = nil
            end

            if antiFlingV1.smartPermaGhostedCars then
                antiFlingV1.smartPermaGhostedCars[arg2] = nil
            end

            if antiFlingV1.smartCarLastProcess then
                antiFlingV1.smartCarLastProcess[arg2] = nil
            end

            local smartCarParts = antiFlingV1.smartCarParts
            local v11 = smartCarParts and antiFlingV1.smartCarParts[arg2]
            if not v11 then
                return
            end

            for k in pairs(v11) do
                antiFlingV2RestorePart(k)
            end

            antiFlingV1.smartCarParts[arg2] = nil
        end

        antiFlingV2GetDriverState = function(arg2)
            if not arg2 or not arg2.Parent then
                return false, false, false
            end
            local v11 = antiFlingV1GetLocalCar
            local v12 = v11 and antiFlingV1GetLocalCar() or nil
            local flag6 = v12 == arg2
            local flag7 = false
            local flag8 = false
            local character_ = LocalPlayer.Character
            local v13 = antiFlingV1
            local smartCarSeats = antiFlingV1.smartCarSeats
            local smartCarSeats2 = smartCarSeats or setmetatable({}, {__mode = "k"})
            v13.smartCarSeats = smartCarSeats2
            local v14 = antiFlingV1.smartCarSeats[arg2]
            local v15 = v14

            if not v14 then
                local obj2 = setmetatable({}, {__mode = "k"})
                v15 = obj2
                antiFlingV1.smartCarSeats[arg2] = obj2

                for i, descendant in ipairs(arg2:GetDescendants()) do
                    if descendant:IsA("VehicleSeat") then
                        obj2[descendant] = true
                    end
                end
            end

            for k in pairs(v15) do
                if k and k.Parent then
                    if k.Occupant then
                        flag8 = true

                        if k.Occupant.Parent == character_ then
                            flag6 = true
                        else
                            flag7 = true
                        end
                    end
                else
                    v15[k] = nil
                end
            end

            return flag6, flag7, flag8
        end

        antiFlingV2IsMyCar = function(arg2)
            return antiFlingV2GetDriverState(arg2)
        end

        antiFlingV2HasOtherDriver = function(arg2)
            local v11, v12 = antiFlingV2GetDriverState(arg2)
            return v12
        end

        antiFlingV2HasAnyDriver = function(arg2)
            local v11, v12
            v12, v12, v11 = antiFlingV2GetDriverState(arg2)
            return v11
        end

        antiFlingV2GhostCar = function(arg2)
            if not antiFlingV1.enabled or not arg2 or not arg2.Parent then
                return
            end
            local v11 = antiFlingV1
            local smartGhostedCars = antiFlingV1.smartGhostedCars
            local smartGhostedCars2 = smartGhostedCars or setmetatable({}, {__mode = "k"})
            v11.smartGhostedCars = smartGhostedCars2
            local flag6 = antiFlingV1.smartGhostedCars[arg2] == true
            antiFlingV1.smartGhostedCars[arg2] = true

            if not flag6 then
                for i, descendant in ipairs(arg2:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        antiFlingV2MakePartGhost(arg2, descendant)
                    end
                end

                return
            end

            local smartCarParts = antiFlingV1.smartCarParts
            local v12 = smartCarParts and antiFlingV1.smartCarParts[arg2]
            local v13 = pairs
            local tbl11 = v12 or {}

            for k in v13(tbl11) do
                if k and k.Parent then
                    if k.CanCollide ~= false then
                        k.CanCollide = false
                    end

                    if k.CanTouch ~= false then
                        k.CanTouch = false
                    end
                end
            end
        end

        antiFlingV2RestoreCar = function(arg2)
            antiFlingV2ForceRestoreCar(arg2)
        end

        antiFlingV2NormalizeMode = function(arg2)
            if arg2 == nil then
                return nil
            end
            local str = tostring(arg2):lower():gsub("^%s+", ""):gsub("%s+$", "")
            local str2 = str
            if str == "" then
                return nil
            end

            if str == "agressive" then
                str2 = "aggressive"
            end

            if str2 == "smart" then
                str2 = "normal"
            end

            local flag6 = (str2 == "normal" or str2 == "aggressive") and str2 or nil
            return flag6
        end

        antiFlingV2Mode = function()
            local v11 = antiFlingV2NormalizeMode
            local v12 = cfg
            local antiFlingMode2 = v12 and cfg.anti_fling_mode or antiFlingV1.mode
            local v13 = v11(antiFlingMode2)
            local mode = v13 or "normal"
            antiFlingV1.mode = mode

            if cfg then
                cfg.anti_fling_mode = mode
            end

            return mode
        end

        antiFlingV2GetWheels = function(arg2)
            local wheels = arg2 and arg2:FindFirstChild("Wheels")
            local tbl11 = {}
            if not wheels then
                return tbl11
            end

            for i, child in ipairs(wheels:GetChildren()) do
                if child:IsA("BasePart") then
                    table.insert(tbl11, child)
                end
            end

            return tbl11
        end

        antiFlingV2MaxRwdWheelDistance = function(arg2)
            local rwd = arg2 and arg2:FindFirstChild("RWD")
            if not rwd then
                return 0
            end
            local n2 = 0

            for i, v11 in ipairs(antiFlingV2GetWheels(arg2)) do
                local n3 = v11.Position - rwd.Position
                local v12 = n3:Dot(n3)

                if n2 < v12 then
                    n2 = v12
                end
            end

            return math.sqrt(n2)
        end

        antiFlingV2GetCarPosition = function(arg2)
            local rwd = arg2 and arg2:FindFirstChild("RWD")
            if rwd then
                return rwd.Position
            end
            local v11 = nil
            local v12 = ipairs
            local descendants = arg2 and arg2:GetDescendants() or {}

            for k, descendant in v12(descendants) do
                if descendant:IsA("VehicleSeat") then
                    v11 = descendant
                    break
                end
                continue
            end

            if v11 then
                return v11.Position
            end
            local body_ = arg2 and arg2:FindFirstChild("Body")
            local basePart = body_ and body_:FindFirstChildWhichIsA("BasePart", true)
            local position = basePart and basePart.Position or nil
            return position
        end

        antiFlingV2IsTeleportCar = function(arg2)
            if not antiFlingV2IsMyCar(arg2) then
                local v11 = antiFlingV2GetCarPosition(arg2)
                if not v11 then
                    return false
                end
                local v12 = antiFlingV1
                local smartLastCarPos = antiFlingV1.smartLastCarPos
                local smartLastCarPos2 = smartLastCarPos or setmetatable({}, {__mode = "k"})
                v12.smartLastCarPos = smartLastCarPos2
                local v13 = antiFlingV1.smartLastCarPos[arg2]
                antiFlingV1.smartLastCarPos[arg2] = v11
                if not v13 then
                    return false
                end
                local n2 = v11 - v13
                local v14 = antiFlingV2MaxRwdWheelDistance(arg2)
                local flag6 = n2:Dot(n2) >= 1225 and v14 <= 18
                return flag6
            end

            antiFlingV2ClearLocalCarState(arg2)
            return false
        end

        antiFlingV2HasAbnormalBehavior = function(arg2)
            if not arg2 or not arg2.Parent then
                return false
            end

            if not antiFlingV2IsMyCar(arg2) then
                if antiFlingV2MaxRwdWheelDistance(arg2) > 20 then
                    return true
                end

                if not antiFlingV2IsTeleportCar(arg2) then
                    return false
                end
                return true
            end

            antiFlingV2ClearLocalCarState(arg2)
            return false
        end

        antiFlingV2ClearLocalCarState = function(arg2)
            if not arg2 then
                return
            end

            if antiFlingV1.smartGhostedCars and antiFlingV1.smartGhostedCars[arg2] then
                antiFlingV2ForceRestoreCar(arg2)
            end

            if antiFlingV1.smartPermaGhostedCars then
                antiFlingV1.smartPermaGhostedCars[arg2] = nil
            end

            if antiFlingV1.smartGhostedCars then
                antiFlingV1.smartGhostedCars[arg2] = nil
            end

            if antiFlingV1.smartCarLastProcess then
                antiFlingV1.smartCarLastProcess[arg2] = nil
            end

            if antiFlingV1.smartLastCarPos then
                antiFlingV1.smartLastCarPos[arg2] = nil
            end
        end

        antiFlingV2IsPermaGhosted = function(arg2)
            local v11 = antiFlingV1
            local smartPermaGhostedCars = antiFlingV1.smartPermaGhostedCars
            local smartPermaGhostedCars2 = smartPermaGhostedCars or setmetatable({}, {__mode = "k"})
            v11.smartPermaGhostedCars = smartPermaGhostedCars2
            local flag6 = arg2 and antiFlingV1.smartPermaGhostedCars[arg2] == true
            return flag6
        end

        antiFlingV2ProcessCar = function(arg2, arg3)
            if not antiFlingV1.enabled or not arg2 or not arg2.Parent then
                return
            end
            local v11 = antiFlingV1
            local smartGhostedCars = antiFlingV1.smartGhostedCars
            local smartGhostedCars2 = smartGhostedCars or setmetatable({}, {__mode = "k"})
            v11.smartGhostedCars = smartGhostedCars2
            local v12 = antiFlingV1
            local smartCarLastProcess = antiFlingV1.smartCarLastProcess
            local smartCarLastProcess2 = smartCarLastProcess or setmetatable({}, {__mode = "k"})
            v12.smartCarLastProcess = smartCarLastProcess2
            local now = os.clock()
            local v13 = antiFlingV1.smartCarLastProcess[arg2]
            if not arg3 and v13 and now - v13 < 0.6 then
                return
            end
            antiFlingV1.smartCarLastProcess[arg2] = now
            if antiFlingV1.mode == "aggressive" then
                antiFlingV2GhostCar(arg2)
                return
            end
            local v14, v15 = antiFlingV2GetDriverState(arg2)
            if not v14 and v15 then
                antiFlingV2GhostCar(arg2)
                return
            end

            if antiFlingV1.smartGhostedCars[arg2] == true then
                antiFlingV2ForceRestoreCar(arg2)
            end
        end

        antiFlingV2ConnectSeat = function(arg2, arg3)
            if not arg2 or not arg2:IsA("VehicleSeat") then
                return
            end
            local v11 = arg3 or antiFlingV2GetCarFromObject(arg2)
            local v12 = v11
            if not v11 then
                return
            end
            local v13 = antiFlingV1
            local smartConnectedSeats = antiFlingV1.smartConnectedSeats
            local smartConnectedSeats2 = smartConnectedSeats or setmetatable({}, {__mode = "k"})
            v13.smartConnectedSeats = smartConnectedSeats2
            local v14 = antiFlingV1
            local smartSeatConnections = antiFlingV1.smartSeatConnections
            local smartSeatConnections2 = smartSeatConnections or setmetatable({}, {__mode = "k"})
            v14.smartSeatConnections = smartSeatConnections2
            local v15 = antiFlingV1
            local smartSeatCars = antiFlingV1.smartSeatCars
            local smartSeatCars2 = smartSeatCars or setmetatable({}, {__mode = "k"})
            v15.smartSeatCars = smartSeatCars2
            local v16 = antiFlingV1
            local smartCarSeats = antiFlingV1.smartCarSeats
            local smartCarSeats2 = smartCarSeats or setmetatable({}, {__mode = "k"})
            v16.smartCarSeats = smartCarSeats2
            local v17 = antiFlingV1.smartCarSeats[v12]
            local v18 = v17

            if not v17 then
                local obj2 = setmetatable({}, {__mode = "k"})
                v18 = obj2
                antiFlingV1.smartCarSeats[v12] = obj2
            end

            v18[arg2] = true
            antiFlingV1.smartSeatCars[arg2] = v12
            if antiFlingV1.smartConnectedSeats[arg2] then
                return
            end
            antiFlingV1.smartConnectedSeats[arg2] = true

            local v19 = fn2(arg2:GetPropertyChangedSignal("Occupant"), function()
                if not antiFlingV1.enabled then
                    return
                end
                local smartSeatCars3 = antiFlingV1.smartSeatCars
                local v19 = smartSeatCars3 and antiFlingV1.smartSeatCars[arg2] or antiFlingV2GetCarFromObject(arg2)

                if v19 then
                    antiFlingV2ProcessCar(v19, true)
                end
            end)

            antiFlingV1.smartSeatConnections[arg2] = v19
        end

        antiFlingV2DisconnectCarSeats = function(arg2)
            local smartCarSeats = antiFlingV1.smartCarSeats
            local v11 = smartCarSeats and antiFlingV1.smartCarSeats[arg2]
            local v12 = pairs
            local tbl11 = v11 or {}

            for k in v12(tbl11) do
                local smartSeatConnections = antiFlingV1.smartSeatConnections
                local v13 = smartSeatConnections and antiFlingV1.smartSeatConnections[k]

                if v13 then
                    pcall(function()
                        v13:Disconnect()
                    end)
                end

                if antiFlingV1.smartSeatConnections then
                    antiFlingV1.smartSeatConnections[k] = nil
                end

                if antiFlingV1.smartConnectedSeats then
                    antiFlingV1.smartConnectedSeats[k] = nil
                end

                if antiFlingV1.smartSeatCars then
                    antiFlingV1.smartSeatCars[k] = nil
                end
            end

            if antiFlingV1.smartCarSeats then
                antiFlingV1.smartCarSeats[arg2] = nil
            end

            if antiFlingV1.smartRegisteredCars then
                antiFlingV1.smartRegisteredCars[arg2] = nil
            end
        end

        antiFlingV2RegisterCar = function(arg2)
            local v11 = antiFlingV2GetCarContainer()
            if not arg2 or not v11 or arg2.Parent ~= v11 then
                return
            end
            local v12 = antiFlingV1
            local smartRegisteredCars = antiFlingV1.smartRegisteredCars
            local smartRegisteredCars2 = smartRegisteredCars or setmetatable({}, {__mode = "k"})
            v12.smartRegisteredCars = smartRegisteredCars2
            if antiFlingV1.smartRegisteredCars[arg2] then
                return
            end
            antiFlingV1.smartRegisteredCars[arg2] = true
            local v13 = antiFlingV1
            local smartCarSeats = antiFlingV1.smartCarSeats
            local smartCarSeats2 = smartCarSeats or setmetatable({}, {__mode = "k"})
            v13.smartCarSeats = smartCarSeats2
            local smartCarSeats3 = antiFlingV1.smartCarSeats
            local v14 = antiFlingV1.smartCarSeats[arg2]
            local obj2 = v14 or setmetatable({}, {__mode = "k"})
            smartCarSeats3[arg2] = obj2

            for i, descendant in ipairs(arg2:GetDescendants()) do
                if descendant:IsA("VehicleSeat") then
                    antiFlingV2ConnectSeat(descendant, arg2)
                elseif descendant:IsA("BasePart") and antiFlingV1.smartGhostedCars and antiFlingV1.smartGhostedCars[arg2] then
                    antiFlingV2MakePartGhost(arg2, descendant)
                end
            end

            antiFlingV2ProcessCar(arg2, true)
        end

        antiFlingV2ScanCars = function()
            if not antiFlingV1.enabled then
                return
            end
            local v11 = antiFlingV2GetCarContainer()
            if not v11 then
                return
            end

            if not antiFlingV1.descendantConn or not antiFlingV1.descendantConn.Connected then
                antiFlingV2ConnectContainer()
            end

            for i, child in ipairs(v11:GetChildren()) do
                antiFlingV2RegisterCar(child)
                antiFlingV2ProcessCar(child, false)
            end
        end

        antiFlingV2MaintainGhostedCars = function()
            if not antiFlingV1.enabled then
                return
            end
            local v11 = pairs
            local smartGhostedCars = antiFlingV1.smartGhostedCars
            local tbl11 = smartGhostedCars or {}

            for k, v12 in v11(tbl11) do
                if v12 then
                    if k and k.Parent then
                        antiFlingV2ProcessCar(k, true)
                    else
                        antiFlingV2ForceRestoreCar(k)
                        antiFlingV2DisconnectCarSeats(k)
                    end
                end
            end
        end

        antiFlingV2ConnectContainer = function()
            if antiFlingV1.descendantConn then
                pcall(function()
                    antiFlingV1.descendantConn:Disconnect()
                end)

                antiFlingV1.descendantConn = nil
            end

            if antiFlingV1.childRemovedConn then
                pcall(function()
                    antiFlingV1.childRemovedConn:Disconnect()
                end)

                antiFlingV1.childRemovedConn = nil
            end

            local v11 = antiFlingV2GetCarContainer()
            if not v11 then
                return
            end

            antiFlingV1.descendantConn = fn2(v11.DescendantAdded, function(arg2)
                if not antiFlingV1.enabled then
                    return
                end
                local v12 = antiFlingV2GetCarFromObject(arg2)
                if not v12 then
                    return
                end
                antiFlingV2RegisterCar(v12)

                if arg2:IsA("VehicleSeat") then
                    antiFlingV2ConnectSeat(arg2, v12)
                    antiFlingV2ProcessCar(v12, true)
                elseif arg2:IsA("BasePart") and antiFlingV1.smartGhostedCars[v12] then
                    antiFlingV2MakePartGhost(v12, arg2)
                end
            end)

            antiFlingV1.childRemovedConn = fn2(v11.ChildRemoved, function(arg2)
                antiFlingV2ForceRestoreCar(arg2)
                antiFlingV2DisconnectCarSeats(arg2)

                if antiFlingV1.smartLastCarPos then
                    antiFlingV1.smartLastCarPos[arg2] = nil
                end
            end)
        end

        antiFlingV2RestoreAllSmartCars = function()
            local v11 = antiFlingV1
            local smartSavedProps = antiFlingV1.smartSavedProps
            local smartSavedProps2 = smartSavedProps or setmetatable({}, {__mode = "k"})
            v11.smartSavedProps = smartSavedProps2
            local n2 = 0

            for k in pairs(antiFlingV1.smartSavedProps) do
                antiFlingV2RestorePart(k)
                local n3 = n2 + 1
                n2 = n3

                if n3 % 250 == 0 then
                    task.wait()
                end
            end

            antiFlingV1.smartGhostedCars = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartPermaGhostedCars = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartCarLastProcess = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartCarParts = setmetatable({}, {__mode = "k"})
        end

        antiFlingV2DisconnectSmartSeats = function()
            local v11 = antiFlingV1
            local smartSeatConnections = antiFlingV1.smartSeatConnections
            local smartSeatConnections2 = smartSeatConnections or setmetatable({}, {__mode = "k"})
            v11.smartSeatConnections = smartSeatConnections2

            for k, smartSeatConnection in pairs(antiFlingV1.smartSeatConnections) do
                if smartSeatConnection then
                    pcall(function()
                        smartSeatConnection:Disconnect()
                    end)
                end

                antiFlingV1.smartSeatConnections[k] = nil
            end

            antiFlingV1.smartConnectedSeats = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartSeatConnections = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartSeatCars = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartCarSeats = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartRegisteredCars = setmetatable({}, {__mode = "k"})
        end

        antiFlingV15IsTargetSeat = function(arg2)
            if not arg2 or arg2.ClassName ~= "Seat" then
                return false
            end
            local v11 = antiFlingV2GetCarContainer()
            if not v11 then
                return false
            end
            local parent = arg2

            while flag and parent and parent ~= v11 do
                if parent.Parent == v11 and antiFlingV15TargetCars[parent.Name] then
                    local body_ = parent:FindFirstChild("Body")
                    local v12 = body_ and arg2:IsDescendantOf(body_)
                    return v12
                end

                parent = parent.Parent
            end

            return false
        end

        antiFlingV15DisableSeat = function(arg2)
            return false
        end

        antiFlingV15ScanSeats = function() end

        antiFlingV15RestoreSeats = function()
            antiFlingV1.seatOriginals = {}
            antiFlingV1.disabledSeats = {}
        end

        antiFlingV1GetWheelCar = function(arg2)
            if not arg2 or not arg2:IsA("BasePart") then
                return nil
            end
            local parent = arg2.Parent

            while flag and parent and parent ~= Workspace and parent ~= workspace do
                if tostring(parent.Name):lower() == "wheels" then
                    return parent.Parent
                end
                parent = parent.Parent
            end

            return nil
        end

        antiFlingV1GetLocalCar = function()
            local now = os.clock()
            local localCarCacheAt = antiFlingV1.localCarCacheAt
            local n2 = localCarCacheAt or 0

            if now - n2 < 0.25 then
                local localCarCache = antiFlingV1.localCarCache
                local parent = localCarCache and localCarCache.Parent and localCarCache or nil
                return parent
            end

            antiFlingV1.localCarCache = nil
            antiFlingV1.localCarCacheAt = now

            local ok, localCarCache = pcall(function()
                local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                local screen = playerGui and playerGui:FindFirstChild("Screen")
                local carSeat = screen and screen:FindFirstChild("CarSeat")
                local value = carSeat and carSeat.Value
                if value and value.Parent and value.Parent.Parent then
                    return value.Parent.Parent
                end
                local character_ = LocalPlayer.Character
                local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
                local seatPart = humanoid_ and humanoid_.SeatPart
                if seatPart and seatPart.Parent and seatPart.Parent.Parent and seatPart.Parent.Parent:FindFirstChild("Wheels") then
                    return seatPart.Parent.Parent
                end

                if seatPart and seatPart.Parent and seatPart.Parent:FindFirstChild("Wheels") then
                    return seatPart.Parent
                end
                return nil
            end)

            if not ok or not localCarCache or not localCarCache.Parent then
                return nil
            end
            antiFlingV1.localCarCache = localCarCache
            return localCarCache
        end

        antiFlingV1CarIsBeingUsedForFling = function(arg2)
            if not arg2 or not flingState or not flingState.CarInAttack then
                return false
            end

            for k, v11 in pairs(flingState.CarInAttack) do
                if v11 and v11.car == arg2 then
                    return true
                end
            end

            return false
        end

        antiFlingV1ShouldSkipCar = function(arg2)
            if not arg2 then
                return false
            end
            local v11 = antiFlingV1GetLocalCar()
            local flag6 = v11 and arg2 == v11

            if flag6 then
                if antiFlingV1CarIsBeingUsedForFling(arg2) then
                    flag6 = false
                else
                    flag6 = true
                end
            end

            return flag6
        end

        antiFlingV1ShouldSkipPart = function(arg2)
            return antiFlingV1ShouldSkipCar(antiFlingV1GetWheelCar(arg2))
        end

        antiFlingV1IsWheelPart = function(arg2)
            if not arg2 or not arg2:IsA("BasePart") then
                return false
            end
            local v11 = antiFlingV1GetWheelCar(arg2)
            if not v11 then
                return false
            end
            return antiFlingV1CarIsBeingUsedForFling(v11)
        end

        antiFlingV1Protect = function(arg2) end

        antiFlingV1ForceProtectCar = function(arg2)
            return false
        end

        antiFlingV1ReleasePart = function(arg2, arg3)
            antiFlingV1.protected[arg2] = nil
            local v11 = antiFlingV1.originals[arg2]
            antiFlingV1.originals[arg2] = nil

            if arg3 and arg2 and arg2.Parent and v11 ~= nil then
                pcall(function()
                    arg2.CanCollide = v11
                end)
            end
        end

        antiFlingV1ScanOnce = function()
            if not antiFlingV1.enabled then
                return
            end

            task.spawn(function()
                antiFlingV2ScanCars()
            end)
        end

        antiFlingV1ProtectActiveFlingCars = function() end
        antiFlingV1LightMaintain = function() end

        antiFlingV1Start = function(arg2)
            if not antiFlingV1.enabled then
                antiFlingV1.enabled = true
                local v11 = antiFlingV1
                v11.loopId = v11.loopId + 1
                antiFlingV1.mode = "normal"
                cfg.anti_fling_mode = "normal"
                antiFlingV1.localCarCache = nil
                antiFlingV1.localCarCacheAt = 0
                antiFlingV1.smartLastScan = 0
                antiFlingV1.seatLastScan = 0
                antiFlingV1.smartLastCarPos = setmetatable({}, {__mode = "k"})
                local v12 = antiFlingV1
                local smartGhostedCars = antiFlingV1.smartGhostedCars
                local smartGhostedCars2 = smartGhostedCars or setmetatable({}, {__mode = "k"})
                v12.smartGhostedCars = smartGhostedCars2
                local v13 = antiFlingV1
                local smartCarLastProcess = antiFlingV1.smartCarLastProcess
                local smartCarLastProcess2 = smartCarLastProcess or setmetatable({}, {__mode = "k"})
                v13.smartCarLastProcess = smartCarLastProcess2
                local v14 = antiFlingV1
                local smartSavedProps = antiFlingV1.smartSavedProps
                local smartSavedProps2 = smartSavedProps or setmetatable({}, {__mode = "k"})
                v14.smartSavedProps = smartSavedProps2
                local v15 = antiFlingV1
                local smartConnectedSeats = antiFlingV1.smartConnectedSeats
                local smartConnectedSeats2 = smartConnectedSeats or setmetatable({}, {__mode = "k"})
                v15.smartConnectedSeats = smartConnectedSeats2
                local v16 = antiFlingV1
                local smartSeatConnections = antiFlingV1.smartSeatConnections
                local smartSeatConnections2 = smartSeatConnections or setmetatable({}, {__mode = "k"})
                v16.smartSeatConnections = smartSeatConnections2
                local v17 = antiFlingV1
                local smartSeatCars = antiFlingV1.smartSeatCars
                local smartSeatCars2 = smartSeatCars or setmetatable({}, {__mode = "k"})
                v17.smartSeatCars = smartSeatCars2
                local v18 = antiFlingV1
                local smartCarSeats = antiFlingV1.smartCarSeats
                local smartCarSeats2 = smartCarSeats or setmetatable({}, {__mode = "k"})
                v18.smartCarSeats = smartCarSeats2
                local v19 = antiFlingV1
                local smartCarParts = antiFlingV1.smartCarParts
                local smartCarParts2 = smartCarParts or setmetatable({}, {__mode = "k"})
                v19.smartCarParts = smartCarParts2
                local v20 = antiFlingV1
                local smartRegisteredCars = antiFlingV1.smartRegisteredCars
                local smartRegisteredCars2 = smartRegisteredCars or setmetatable({}, {__mode = "k"})
                v20.smartRegisteredCars = smartRegisteredCars2
                antiFlingV2ConnectContainer()
                antiFlingV2ScanCars()
                local loopId = antiFlingV1.loopId

                task.spawn(function()
                    local now = os.clock()
                    local smartScanDelay = antiFlingV1.smartScanDelay
                    local n2 = smartScanDelay or 8
                    local n3 = now + n2

                    while flag and antiFlingV1.enabled and antiFlingV1.loopId == loopId do
                        local wait = task.wait
                        local smartMaintainDelay = antiFlingV1.smartMaintainDelay
                        local n4 = smartMaintainDelay or 0.5
                        wait(n4)
                        if not antiFlingV1.enabled or antiFlingV1.loopId ~= loopId then
                            break
                        end
                        antiFlingV2MaintainGhostedCars()

                        if n3 <= os.clock() then
                            antiFlingV2ScanCars()
                            local now2 = os.clock()
                            local smartScanDelay2 = antiFlingV1.smartScanDelay
                            local n5 = smartScanDelay2 or 8
                            n3 = now2 + n5
                        end
                    end
                end)

                featureSet("anti_fling_v1", true)
                cfg.anti_fling_v1 = true
                save_cfg()

                if not arg2 and add_line then
                    add_line(".antifling on", "antifling on", false)
                end

                if refresh_saved_commands then
                    task.defer(refresh_saved_commands)
                end

                return true
            end

            antiFlingV2Mode()
            antiFlingV2ScanCars()
            return true
        end

        antiFlingV1Stop = function(arg2)
            antiFlingV1.enabled = false
            local v11 = antiFlingV1
            v11.loopId = v11.loopId + 1
            antiFlingV1.localCarCache = nil
            antiFlingV1.localCarCacheAt = 0
            antiFlingV1.smartLastScan = 0
            antiFlingV1.seatLastScan = 0

            if antiFlingV1.descendantConn then
                pcall(function()
                    antiFlingV1.descendantConn:Disconnect()
                end)

                antiFlingV1.descendantConn = nil
            end

            if antiFlingV1.childRemovedConn then
                pcall(function()
                    antiFlingV1.childRemovedConn:Disconnect()
                end)

                antiFlingV1.childRemovedConn = nil
            end

            antiFlingV2DisconnectSmartSeats()
            antiFlingV2RestoreAllSmartCars()
            antiFlingV15RestoreSeats()
            local n2 = 0

            for k, original in pairs(antiFlingV1.originals) do
                if k and k.Parent and original ~= nil then
                    pcall(function()
                        k.CanCollide = original
                    end)
                end

                local n3 = n2 + 1
                n2 = n3

                if n3 % 300 == 0 then
                    task.wait()
                end
            end

            antiFlingV1.protected = {}
            antiFlingV1.originals = {}
            antiFlingV1.smartSavedProps = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartGhostedCars = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartCarLastProcess = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartLastCarPos = setmetatable({}, {__mode = "k"})
            antiFlingV1.smartCarParts = setmetatable({}, {__mode = "k"})
            featureSet("anti_fling_v1", false)
            cfg.anti_fling_v1 = false
            save_cfg()

            if not arg2 and add_line then
                add_line(".antifling off", "antifling off", false)
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            return true
        end

        antiFlingV1Set = function(arg2, arg3)
            antiFlingV2Mode()
            if arg2 == true then
                return antiFlingV1Start(arg3)
            end
            return antiFlingV1Stop(arg3)
        end

        antiFlingV1Command = function(arg2)
            local v11 = tostring
            local str = arg2 or ""
            local str2 = v11(str):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str2 == "on" or str2 == "true" or str2 == "1" then
                return antiFlingV1Set(true, false)
            end

            if str2 == "off" or str2 == "false" or str2 == "0" then
                return antiFlingV1Set(false, false)
            end
            add_line(".antifling", "use .antifling on/off or .af on/off", true)
            red_anim()
            return false
        end

        antiFlingV2SetMode = function(arg2, arg3)
            local v11 = antiFlingV2NormalizeMode(arg2)
            if not v11 then
                return false
            end
            antiFlingV1.mode = v11
            cfg.anti_fling_mode = v11
            save_cfg()

            if antiFlingV1.enabled then
                local v12 = antiFlingV2GetCarContainer()
                local v13 = ipairs
                local children = v12 and v12:GetChildren() or {}

                for k, child in v13(children) do
                    antiFlingV2RegisterCar(child)
                    antiFlingV2ProcessCar(child, true)
                end
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg3 and add_line then
                local v12 = add_line
                local str = ".afmode " .. v11
                local str2 = v11 == "aggressive" and "impossible to interact with a car" or "antifling mode normal"
                v12(str, str2, false)
            end

            return true
        end

        antiFlingV2ModeCommand = function(arg2)
            local v11 = antiFlingV2NormalizeMode(arg2)
            if v11 then
                return antiFlingV2SetMode(v11, false)
            end
            add_line(".afmode", "use .afmode normal/aggressive or .antiflingmode normal/aggressive", true)
            red_anim()
            return false
        end

        antiFlingModeCommandText = function(arg2, arg3)
            local match = arg2:match("^%.afmode%s+(.+)$")
            local match2 = match or arg2:match("^%.antiflingmode%s+(.+)$")
            if not match2 and arg2 ~= ".afmode" and arg2 ~= ".antiflingmode" then
                return false
            end

            if antiFlingV2ModeCommand(match2) and arg3 ~= "chat" then
                collapse()
            end

            return true
        end

        fn4(function()
            if not antiFlingV1 then
                return
            end
            antiFlingV1.enabled = false
            local v11 = antiFlingV1
            v11.loopId = v11.loopId + 1

            if antiFlingV1.descendantConn then
                pcall(function()
                    antiFlingV1.descendantConn:Disconnect()
                end)
            end

            if antiFlingV1.childRemovedConn then
                pcall(function()
                    antiFlingV1.childRemovedConn:Disconnect()
                end)
            end

            antiFlingV2DisconnectSmartSeats()
            antiFlingV2RestoreAllSmartCars()
        end)

        task.defer(function()
            task.wait(0.35)
            local v11 = featureGet
            local flag6 = cfg.anti_fling_v1 == true

            if v11("anti_fling_v1", flag6) then
                antiFlingV1Start(true)
            end
        end)

        local tbl11 = {
            Stage = cframe(11.6286936, 223.9959087, 1175.45935, 0.13477385, 0.124517478, -0.983021557, 5.22149934e-10, 0.99207288, 0.125663981, 0.990876377, -0.0169362202, 0.133705482),
            Zero = Vector3.zero,
            HoodPhysics = PhysicalProperties.new(100, 0, 1, 100, 100),
            DeathWait = 12,
            OwnershipWait = 3,
            ActiveTime = 15,
            RadiusDelay = 0.5,
            Controlled = {
                Prediction = 0.04,
                FootOffset = 2.8,
                HoodGap = 0.15,
                UpVelocity = 18000,
                HorizontalGain = 35,
                TargetVelocityGain = 2.5,
                MaxHorizontalVelocity = 3500,
                MaxTrackRadius = 420,
                MinTrackY = -250,
                MaxTrackY = 230,
            },
            Aggressive = {
                Spin = vector(5200, 6100, 5700),
                Offset = vector(3.6, 2.8, 1.8),
                Velocity = vector(1800, 1500, 900),
                PhaseStep = 1.35,
                Prediction = 0.065,
                DirectionForce = 15000,
                TargetForce = 3.5,
            },
            Whip = {
                PhaseStep = 0.08,
                Prediction = 0.045,
                HeightOffset = 0.35,
                TargetForce = 3.5,
                controlled = {
                    Radius = 4.2,
                    Depth = 1.8,
                    SideForce = 26000,
                    ImpactForce = 12000,
                    Lift = 9000,
                },
                aggressive = {
                    Radius = 5.4,
                    Depth = 2.4,
                    SideForce = 38000,
                    ImpactForce = 18000,
                    Lift = 6000,
                },
            },
        }

        tbl6 = {
            Started = "fling started",
            Ended = "fling ended",
            Stopped = "fling stopped",
            LostCar = "lost car",
            CarGone = "car disappeared, fling stopped",
            PlayerLeft = "player left, fling stopped",
            DeathMissing = "death not detected, fling stopped",
            OwnershipMissing = "ownership failed, fling stopped",
        }

        local setsimulationradius_ = genv.setsimulationradius
        local v11 = setsimulationradius_ or setsimulationradius
        local sethiddenproperty_ = genv.sethiddenproperty
        local v12 = sethiddenproperty_ or sethiddenproperty

        local function fn25(arg2, arg3)
            local v13 = add_line
            local flag6 = arg3 == true
            v13(".fling", arg2, flag6)

            if arg3 then
                red_anim()
            end
        end

        local function fn26(arg2)
            fn25(arg2, true)
            return nil
        end

        local function fn27(arg2)
            local body_ = arg2 and arg2:FindFirstChild("Body")
            local colorParts = body_ and body_:FindFirstChild("ColorParts")
            local hood = colorParts and colorParts:FindFirstChild("Hood")
            local isBasePart = hood and hood:IsA("BasePart") and hood or nil
            return isBasePart
        end

        local function fn28()
            if typeof(v11) == "function" then
                pcall(v11, math.huge, math.huge)
            elseif typeof(v12) == "function" then
                pcall(v12, LocalPlayer, "SimulationRadius", math.huge)
            end
        end

        local function fn29(arg2)
            local now = os.clock()
            if now < arg2 then
                return arg2
            end
            fn28()
            return now + tbl11.RadiusDelay
        end

        local function fn30(arg2)
            local flag6

            if arg2:IsGrounded() then
                flag6 = false
            else
                flag6 = true
            end

            if flag6 then
                flag6 = arg2.AssemblyRootPart.ReceiveAge == 0
            end

            return flag6
        end

        local function fn31(arg2)
            local parent = arg2

            while parent and parent ~= Workspace do
                if parent:IsA("Model") and fn27(parent) then
                    return parent
                end
                parent = parent.Parent
            end

            return nil
        end

        local function fn32(arg2, arg3)
            local tbl12 = {}
            local tbl13 = {}
            local cFrame = arg3.CFrame

            for i, descendant in ipairs(arg2:GetDescendants()) do
                if descendant:IsA("BasePart") and not descendant.Anchored then
                    local assemblyRootPart = descendant.AssemblyRootPart
                    local v13 = assemblyRootPart or descendant

                    if v13 and v13.Parent and v13:IsDescendantOf(arg2) and not v13.Anchored and not tbl13[v13] then
                        tbl13[v13] = true

                        tbl12[#tbl12 + 1] = {
                            Root = v13,
                            HoodOffset = cFrame:ToObjectSpace(v13.CFrame),
                            OriginalCFrame = v13.CFrame,
                        }
                    end
                end
            end

            return tbl12
        end

        local function fn33(arg2, arg3)
            local v13 = arg3

            if not v13 then
                local tbl12 = {}

                for i, descendant in ipairs(arg2:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        local canCollide = descendant.CanCollide
                        local canTouch = descendant.CanTouch
                        tbl12[#tbl12 + 1] = descendant
                        tbl12[#tbl12 + 2] = canCollide
                        tbl12[#tbl12 + 3] = canTouch
                        descendant.CanCollide = false
                        descendant.CanTouch = false
                    end
                end

                return tbl12
            end

            for i = 1, #v13, 3 do
                local v14 = v13[i]

                if v14 and v14.Parent then
                    pcall(function()
                        v14.CanCollide = v13[i + 1]
                        v14.CanTouch = v13[i + 2]
                    end)
                end
            end
        end

        local function fn34(arg2, arg3, arg4, arg5)
            local zero = arg4 or tbl11.Zero
            local v13 = zero
            local zero2 = arg5 or tbl11.Zero
            local v14 = zero2
            local flag6 = false
            local car = arg2.car

            for i, assembly in ipairs(arg2.assemblies) do
                local root_ = assembly.Root

                if root_ and root_.Parent and root_:IsDescendantOf(car) and not root_.Anchored then
                    local ok = pcall(function()
                        root_.CFrame = arg3 * assembly.HoodOffset
                        root_.AssemblyLinearVelocity = v13
                        root_.AssemblyAngularVelocity = v14
                    end)

                    local v15 = flag6 or ok
                    flag6 = v15
                end
            end

            return flag6
        end

        local function fn35(arg2, arg3)
            local v13 = vector(arg2.X, 0, arg2.Z)
            local n2 = arg3 < v13.Magnitude and v13.Unit * arg3 or v13
            return n2
        end

        local function fn36(arg2, arg3, arg4)
            if arg2.hit == "torso" then
                return arg3.Position
            end
            local controlled = tbl11.Controlled
            local max = math.max
            local footOffset = controlled.FootOffset
            local num = tonumber(arg4.HipHeight)
            local n2 = num or 0
            local v13 = max(footOffset, n2 + arg3.Size.Y * 0.5)
            return arg3.Position - vector(0, v13 + controlled.HoodGap, 0)
        end

        local function fn37(arg2, arg3)
            arg2.origin = arg3.Position
            arg2.phase = 0
            arg2.whipPhase = 0
        end

        local function fn38(arg2, arg3)
            local controlled = tbl11.Controlled
            local origin = arg2.origin
            local v13 = origin or arg3
            arg2.origin = v13
            local v14 = fn35(arg3 - v13, controlled.MaxTrackRadius)
            return vector(v13.X + v14.X, math.clamp(arg3.Y, controlled.MinTrackY, controlled.MaxTrackY), v13.Z + v14.Z)
        end

        local function fn39(arg2, arg3, arg4)
            local whip = tbl11.Whip
            local whipProfile = arg2.whipProfile
            arg2.whipPhase = arg2.whipPhase + whip.PhaseStep
            local whipPhase = arg2.whipPhase
            local assemblyLinearVelocity = arg3.AssemblyLinearVelocity
            local v13 = vector(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z)
            local v14 = fn36(arg2, arg3, arg4)
            local rightVector = arg3.CFrame.RightVector
            local v15 = vector(rightVector.X, 0, rightVector.Z)
            local unit = v15.Magnitude > 0.01 and v15.Unit or vector(1, 0, 0)
            local v16 = unit
            local v17 = vector(v16.Z, 0, -v16.X)
            local n2 = whipPhase % 2
            local n3 = n2 <= 1 and n2 or 2 - n2
            local n4 = n2 <= 1 and 1 or -1
            local n5 = math.pi * n3
            local v18 = math.sin(n5)
            local v19 = math.cos(n5)
            local n6 = v14 + v13 * whip.Prediction + v16 * (-v19 * whipProfile.Radius) - v17 * (v18 * whipProfile.Depth) - vector(0, whip.HeightOffset, 0)
            local v20 = n6

            if not arg2.aggressive then
                v20 = fn38(arg2, n6)
            end

            local n7 = (v16 * (v18 * whipProfile.Radius) - v17 * (v19 * whipProfile.Depth)) * n4
            local unit2 = n7.Magnitude > 0.01 and n7.Unit or v16 * n4
            local v21 = unit2
            local n8 = v14 - v20
            local unit3 = n8.Magnitude > 0.01 and n8.Unit or v17
            local v22 = unit3
            local n9 = v21 * whipProfile.SideForce * (0.55 + v18 * 0.45) + v22 * whipProfile.ImpactForce + v13 * whip.TargetForce + vector(0, whipProfile.Lift, 0)
            local aggressive = arg2.aggressive
            local cframe2 = aggressive and CFrame.Angles(math.rad(90), whipPhase * 5.5, whipPhase * 7) or arg2.hoodRotation
            return cframe(v20) * cframe2, n9
        end

        local function fn40(arg2, arg3, arg4)
            local controlled = tbl11.Controlled
            local assemblyLinearVelocity = arg3.AssemblyLinearVelocity
            local v13 = fn36(arg2, arg3, arg4)
            local v14 = fn38(arg2, vector(v13.X + assemblyLinearVelocity.X * controlled.Prediction, v13.Y, v13.Z + assemblyLinearVelocity.Z * controlled.Prediction))
            local v15 = fn35((v14 - arg2.hood.Position) * controlled.HorizontalGain + assemblyLinearVelocity * controlled.TargetVelocityGain, controlled.MaxHorizontalVelocity)
            return cframe(v14) * arg2.hoodRotation, vector(v15.X, controlled.UpVelocity, v15.Z)
        end

        local function fn41(arg2, arg3, arg4)
            local aggressive = tbl11.Aggressive
            arg2.phase = arg2.phase + aggressive.PhaseStep
            local phase = arg2.phase
            local assemblyLinearVelocity = arg3.AssemblyLinearVelocity
            local v13 = fn36(arg2, arg3, arg4)
            local cFrame = arg3.CFrame
            local rightVector = cFrame.RightVector
            local lookVector = cFrame.LookVector
            local upVector = cFrame.UpVector
            local n2 = rightVector * math.sin(phase) * aggressive.Offset.X + lookVector * math.cos(phase * 1.45) * aggressive.Offset.Y + upVector * math.sin(phase * 1.9) * aggressive.Offset.Z
            local n3 = v13 + assemblyLinearVelocity * aggressive.Prediction + n2
            local n4 = v13 - arg2.hood.Position
            local unit = n4.Magnitude > 0.01 and n4.Unit or lookVector
            local v14 = unit
            local n5 = rightVector * math.cos(phase) * aggressive.Velocity.X + lookVector * -math.sin(phase * 1.45) * aggressive.Velocity.Y + upVector * math.cos(phase * 1.9) * aggressive.Velocity.Z
            return cframe(n3) * CFrame.Angles(math.rad(90), phase * 2.8, phase * 3.6), v14 * aggressive.DirectionForce + assemblyLinearVelocity * aggressive.TargetForce + n5
        end

        local function fn42(arg2)
            local car = arg2.car
            if not car.Parent then
                return
            end

            for i, assembly in ipairs(arg2.assemblies) do
                local root_ = assembly.Root

                if root_ and root_.Parent and root_:IsDescendantOf(car) and not root_.Anchored then
                    pcall(function()
                        root_.CFrame = assembly.OriginalCFrame
                        root_.AssemblyLinearVelocity = tbl11.Zero
                        root_.AssemblyAngularVelocity = tbl11.Zero
                    end)
                end
            end
        end

        flingState = {CarInAttack = {}, CarBusy = {}, lastUsedCar = nil}

        flingRefreshButtons = function()
            task.defer(function()
                if playerListUpdateFlingButtons then
                    playerListUpdateFlingButtons()
                end
            end)
        end

        flingDisconnectAttack = function(arg2)
            if not arg2 then
                return
            end
            fn3(arg2.CarGoneConn)
            fn3(arg2.SeatOccupantConn)
            arg2.CarGoneConn = nil
            arg2.SeatOccupantConn = nil
        end

        flingStopByPlayerName = function(arg2, arg3)
            local v13 = flingState.CarInAttack[arg2]
            if not v13 then
                return false
            end
            flingDisconnectAttack(v13)
            flingState.CarInAttack[arg2] = nil

            if arg3 then
                fn25(arg3, true)
            end

            flingRefreshButtons()
            return true
        end

        flingStopByCar = function(arg2, arg3)
            local n2 = 0

            for k, v13 in pairs(flingState.CarInAttack) do
                if v13 and v13.car == arg2 then
                    flingDisconnectAttack(v13)
                    flingState.CarInAttack[k] = nil
                    n2 = n2 + 1
                end
            end

            if n2 > 0 then
                local carGone = arg3 or tbl6.CarGone
                fn25(carGone, true)
                flingRefreshButtons()
            end

            return n2
        end

        KillWheel = function(arg2)
            if not arg2 or arg2 == LocalPlayer or arg2.Parent ~= Players then
                return nil
            end
            local name = arg2.Name
            if flingState.CarInAttack[name] then
                return flingState.CarInAttack[name]
            end
            fn28()
            local character_ = LocalPlayer.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
            local seatPart = humanoid_ and humanoid_.SeatPart
            if not humanoidRootPart or not seatPart or not seatPart:IsA("VehicleSeat") then
                return fn26("sit in VehicleSeat")
            end
            local v13 = fn31(seatPart)
            if not v13 then
                return fn26("invalid car")
            end

            if flingState.CarBusy[v13] then
                return fn26("car busy")
            end

            if flingState.lastUsedCar == v13 then
                return fn26("use another car")
            end
            local v14 = fn27(v13)
            local v15 = v14

            if v14 then
                local assemblyRootPart = v14.AssemblyRootPart
                v15 = assemblyRootPart or v14
            end

            if not v14 or not v15 or v14.Anchored or v15.Anchored then
                return fn26("car anchored")
            end
            local v16 = fn32(v13, v14)
            if #v16 == 0 then
                return fn26("no movable car parts")
            end
            local v17 = fn33(v13)
            local customPhysicalProperties = v14.CustomPhysicalProperties
            v14.CustomPhysicalProperties = tbl11.HoodPhysics
            local aggressive = cfg.fling_method == "aggressive"
            local flag6 = cfg.fling_whip == true

            local tbl12 = {
                car = v13,
                hood = v14,
                hoodRotation = v14.CFrame - v14.Position,
            }

            local hit = cfg.fling_hit == "torso" and "torso" or "legs"
            tbl12.hit = hit
            tbl12.aggressive = aggressive
            local v18 = flag6 and fn39 or (aggressive and fn41 or fn40)
            tbl12.motion = v18
            local spin = aggressive and tbl11.Aggressive.Spin or tbl11.Zero
            tbl12.spin = spin
            local whip = tbl11.Whip
            local str = aggressive and "aggressive" or "controlled"
            tbl12.whipProfile = whip[str]
            tbl12.phase = 0
            tbl12.whipPhase = 0
            tbl12.assemblies = v16
            flingState.CarInAttack[name] = tbl12
            flingState.CarBusy[v13] = tbl12
            flingState.lastUsedCar = v13

            tbl12.CarGoneConn = v13.AncestryChanged:Connect(function(child, parent)
                if parent == nil then
                    flingStopByCar(v13, tbl6.CarGone)
                end
            end)

            tbl12.SeatOccupantConn = seatPart:GetPropertyChangedSignal("Occupant"):Connect(function()
                local occupant = seatPart.Occupant
                local playerFromCharacter = occupant and occupant.Parent and Players:GetPlayerFromCharacter(occupant.Parent)

                if occupant and occupant ~= humanoid_ and playerFromCharacter ~= LocalPlayer and flingState.CarInAttack[name] == tbl12 then
                    flingStopByPlayerName(name, tbl6.LostCar)
                end
            end)

            if firstFlingViewStart then
                task.defer(firstFlingViewStart, arg2)
            end

            flingRefreshButtons()

            task.spawn(function()
                local n2 = 0
                local deathMissing = nil
                local flag7 = humanoid_.Health <= 0
                local connection = nil

                if not flag7 then
                    connection = humanoid_.Died:Connect(function()
                        flag7 = true
                    end)
                end

                local function fn43()
                    local v19 = flag
                    local parent = v19 and flingState.CarInAttack[name] == tbl12 and arg2.Parent == Players and v13.Parent and v14.Parent and v15.Parent
                    return parent
                end

                local n3 = os.clock() + tbl11.DeathWait

                while fn43() and not flag7 and os.clock() < n3 do
                    if humanoid_.Health <= 0 then
                        flag7 = true
                    end

                    n2 = fn29(n2)
                    if not fn34(tbl12, tbl11.Stage) then
                        break
                    end

                    if not flag7 then
                        RunService.Heartbeat:Wait()
                    end
                end

                fn3(connection)

                if fn43() and not flag7 then
                    deathMissing = tbl6.DeathMissing
                end

                local flag8 = false

                if fn43() and not deathMissing then
                    local n4 = os.clock() + tbl11.OwnershipWait
                    local ok, result, flag9

                    repeat
                        n2 = fn29(n2)
                        fn34(tbl12, tbl11.Stage)
                        ok, result = pcall(fn30, v14)
                        flag9 = ok and result == true
                        flag8 = flag9

                        if not flag9 then
                            RunService.Heartbeat:Wait()
                        end
                    until not fn43() or flag8 or n4 <= os.clock()

                    if fn43() and not flag8 then
                        deathMissing = tbl6.OwnershipMissing
                    end
                end

                local n4 = 0
                local flag9 = false
                local v19 = nil
                local v20 = nil
                local v21 = nil

                while fn43() and flag8 and not deathMissing and (cfg.fling_no_limit == true or n4 < tbl11.ActiveTime) do
                    local now = os.clock()
                    local flag10 = true
                    n2 = fn29(n2)
                    local character_2 = arg2.Character
                    local humanoidRootPart2 = character_2

                    if character_2 then
                        local torso = character_2:FindFirstChild("Torso")
                        humanoidRootPart2 = torso or character_2:FindFirstChild("HumanoidRootPart")
                    end

                    local humanoid_2 = character_2 and character_2:FindFirstChildOfClass("Humanoid")
                    local flag11 = cfg.fling_stop_death ~= false

                    if flag9 then
                        flag10 = false
                        local cFrame = v21 or v14.CFrame
                        v21 = cFrame
                        fn34(tbl12, v21)

                        if flag11 then
                            if character_2 and character_2 ~= v19 and humanoidRootPart2 and humanoid_2 and humanoid_2.Health > 0 then
                                flag9 = false
                                v19 = nil
                                v20 = character_2
                                v21 = nil
                                fn37(tbl12, humanoidRootPart2)
                            end
                        else
                            flag9 = false
                            v19 = nil
                            v21 = nil
                        end
                    elseif flag11 and (not character_2 or not humanoidRootPart2 or not humanoid_2 or humanoid_2.Health <= 0) then
                        flag9 = true
                        local v22 = v20 or character_2
                        v19 = v22
                        local cFrame = v14.CFrame
                        v21 = cFrame
                        flag10 = false
                        fn34(tbl12, cFrame)
                    elseif humanoidRootPart2 and humanoid_2 and (humanoid_2.Health > 0 or not flag11) then
                        if character_2 ~= v20 then
                            fn37(tbl12, humanoidRootPart2)
                        end

                        if humanoid_2.Health > 0 then
                            v20 = character_2
                        end

                        local v22, v23 = tbl12:motion(humanoidRootPart2, humanoid_2)
                        if not fn34(tbl12, v22, v23, tbl12.spin) then
                            break
                        end
                    else
                        fn34(tbl12, v14.CFrame)
                    end

                    RunService.Heartbeat:Wait()

                    if flag10 then
                        n4 = n4 + (os.clock() - now)
                    end
                end

                flingDisconnectAttack(tbl12)

                if v14.Parent then
                    pcall(function()
                        v14.CustomPhysicalProperties = customPhysicalProperties
                    end)
                end

                fn33(v13, v17)
                fn42(tbl12)
                local flag10 = arg2.Parent ~= Players or tbl12.PlayerExited == true

                if flingState.CarInAttack[name] == tbl12 then
                    flingState.CarInAttack[name] = nil

                    if deathMissing then
                        fn25(deathMissing, true)
                    elseif flag10 then
                        fn25(tbl6.PlayerLeft, true)
                    else
                        fn25(tbl6.Ended, false)
                    end
                end

                if flingState.CarBusy[v13] == tbl12 then
                    flingState.CarBusy[v13] = nil
                end

                flingRefreshButtons()
            end)

            return tbl12
        end

        espCfg = {
            espEnabled = true,
            tracersEnabled = true,
            tracerInfoEnabled = true,
            backpackViewEnabled = true,
            healthGuiEnabled = true,
            hitboxEnabled = true,
            sitDetection = true,
            teamCheck = true,
            hitboxSize = 7,
            hitboxTransparency = 0.7,
            tracerAimPart = "Torso",
            tracerRenderDistance = 999999,
            tracerThickness = 1,
            tracerTextSize = 13,
            refreshRate = 0.016666666666666666,
            espRefreshRate = 0.15,
            backpackRefreshRate = 0.18,
        }

        local tbl12 = {
            Inmates = color(255, 145, 35),
            Guards = color(0, 145, 255),
            Criminals = color(255, 55, 65),
        }

        teamColors = tbl12

        apply_visual_cfg = function()
            if cfg.esp_enabled ~= nil then
                local v13 = espCfg
                local v14 = featureGet
                local flag6 = cfg.esp_enabled == true
                v13.espEnabled = v14("esp_enabled", flag6)
            end

            if cfg.tracers_enabled ~= nil then
                local v13 = espCfg
                local v14 = featureGet
                local flag6 = cfg.tracers_enabled == true
                v13.tracersEnabled = v14("tracers_enabled", flag6)
            end

            if cfg.tracer_info_enabled ~= nil then
                local v13 = espCfg
                local v14 = featureGet
                local flag6 = cfg.tracer_info_enabled == true
                v13.tracerInfoEnabled = v14("tracer_info_enabled", flag6)
            end

            if cfg.backpack_view_enabled ~= nil then
                local v13 = espCfg
                local v14 = featureGet
                local flag6 = cfg.backpack_view_enabled == true
                v13.backpackViewEnabled = v14("backpack_view_enabled", flag6)
            end

            if cfg.health_gui_enabled ~= nil then
                local v13 = espCfg
                local v14 = featureGet
                local flag6 = cfg.health_gui_enabled == true
                v13.healthGuiEnabled = v14("health_gui_enabled", flag6)
            end

            if cfg.hitbox_enabled ~= nil then
                local v13 = espCfg
                local v14 = featureGet
                local flag6 = cfg.hitbox_enabled == true
                v13.hitboxEnabled = v14("hitbox_enabled", flag6)
            end

            if cfg.hitbox_size ~= nil then
                local v13 = espCfg
                local clamp = math.clamp
                local num = tonumber(cfg.hitbox_size)
                local hitboxSize = num or espCfg.hitboxSize
                v13.hitboxSize = clamp(hitboxSize, 1, 10)
            end
        end

        apply_visual_cfg()
        local kerauniusEspLogic = CoreGui:FindFirstChild("Keraunius_ESP_Logic")
        local folder_ = kerauniusEspLogic or Instance.new("Folder")
        espFolder = folder_
        espFolder.Name = "Keraunius_ESP_Logic"
        espFolder.Parent = CoreGui

        for i, child in ipairs(espFolder:GetChildren()) do
            if child:IsA("Highlight") then
                child:Destroy()
            end
        end

        local obj2 = setmetatable({}, {__mode = "k"})
        plOriginalRoots = obj2
        local obj3 = setmetatable({}, {__mode = "k"})
        flag5 = false
        local overlapParams = OverlapParams.new()
        hitboxOverlap = overlapParams
        hitboxOverlap.FilterType = Enum.RaycastFilterType.Include
        hitboxOverlap.MaxParts = 1
        hitboxTouchCharacter = nil
        tracerDrawings = {}
        healthGuiData = {}
        healthBodyCache = {}
        backpackCache = {}
        backpackClock = {}
        lastEspRefresh = 0
        lastTick = 0
        espConnections = {}
        espPlayers = {}
        espPlayerIndex = {}
        espHighlights = {}
        c4EspData = {}
        local v13 = vector2(1280, 720)
        local v14 = color(170, 85, 255)
        local v15 = color(0, 0, 0)
        local v16 = color(255, 0, 0)
        local v17 = color(0, 255, 0)
        local flag6 = false
        local n2 = 1
        local n3 = -math.huge

        local function fn43(arg2)
            local now = os.clock()

            if now - n3 >= 0.5 then
                n3 = now
                local v18

                if typeof(kxUsePhoneGui) == "function" then
                    local ok, result = pcall(kxUsePhoneGui)
                    local flag7 = ok and result == true
                    v18 = flag7
                else
                    local viewportSize = arg2

                    if not arg2 then
                        local v19 = camera
                        viewportSize = v19 and camera.ViewportSize
                    end

                    if not viewportSize then
                        viewportSize = v13
                    end

                    local touchEnabled = UserInputService.TouchEnabled
                    local flag7 = touchEnabled and math.min(viewportSize.X, viewportSize.Y) <= 700
                    v18 = flag7
                end

                flag6 = v18

                if v18 and typeof(kxPhoneGuiScale) == "function" then
                    local ok, result = pcall(kxPhoneGuiScale)
                    local n4 = ok and tonumber(result) or 0.78
                    n2 = n4
                elseif v18 then
                    local viewportSize = arg2

                    if not arg2 then
                        local v19 = camera
                        viewportSize = v19 and camera.ViewportSize
                    end

                    if not viewportSize then
                        viewportSize = v13
                    end

                    local n4 = math.min(viewportSize.X, viewportSize.Y) <= 420 and 0.78 or 0.84
                    n2 = n4
                else
                    n2 = 1
                end
            end

            return flag6, n2
        end

        addESPPlayer = function(arg2)
            if not arg2 or arg2 == LocalPlayer or espPlayerIndex[arg2] then
                return
            end
            espPlayers[#espPlayers + 1] = arg2
            espPlayerIndex[arg2] = #espPlayers
        end

        removeESPPlayer = function(arg2)
            local v18 = espPlayerIndex[arg2]
            if not v18 then
                return
            end
            local v19 = espPlayers[#espPlayers]
            espPlayers[v18] = v19
            espPlayers[#espPlayers] = nil
            espPlayerIndex[arg2] = nil

            if v19 and v19 ~= arg2 then
                espPlayerIndex[v19] = v18
            end
        end

        playerTeamName = function(arg2)
            local name = arg2 and arg2.Team and arg2.Team.Name or ""
            return name
        end

        teamColor = function(arg2)
            local v18 = playerTeamName(arg2)
            if teamColors[v18] then
                return teamColors[v18]
            end

            if arg2 and arg2.Team and arg2.Team.TeamColor then
                return arg2.Team.TeamColor.Color
            end
            return color(0, 170, 255)
        end

        character = function(arg2)
            local character_ = arg2 and arg2.Character
            return character_
        end

        humanoid = function(arg2)
            local humanoid_ = arg2

            if arg2 then
                local humanoid_2 = arg2:FindFirstChildOfClass("Humanoid")
                humanoid_ = humanoid_2 or arg2:FindFirstChildWhichIsA("Humanoid", true)
            end

            return humanoid_
        end

        rootPart = function(arg2)
            local humanoidRootPart = arg2 and arg2:FindFirstChild("HumanoidRootPart")
            return humanoidRootPart
        end

        alive = function(arg2, arg3)
            local v18 = arg3 or humanoid(arg2)
            local v19 = v18
            local flag7 = v18 and v19.Health > 0
            return flag7
        end

        isSitting = function(arg2, arg3)
            if not espCfg.sitDetection then
                return false
            end
            local v18 = arg3 or humanoid(arg2)
            local v19 = v18
            if not v18 then
                return false
            end

            if v18.Sit or v19.SeatPart then
                return true
            end
            local flag7 = v19:GetState() == Enum.HumanoidStateType.Seated
            return flag7
        end

        getAimPart = function(arg2, arg3)
            if not arg2 then
                return nil
            end
            local v18 = arg3 or rootPart(arg2)
            local v19 = v18

            if espCfg.tracerAimPart == "Head" then
                local head = arg2:FindFirstChild("Head")
                local v20 = head or v19
                return v20
            end

            if espCfg.tracerAimPart == "Torso" then
                local torso = arg2:FindFirstChild("Torso")
                local upperTorso = torso or arg2:FindFirstChild("UpperTorso") or v19
                return upperTorso
            end

            local head = v19 or arg2:FindFirstChild("Head")
            return head
        end

        saveRoot = function(arg2)
            if arg2 and not plOriginalRoots[arg2] then
                plOriginalRoots[arg2] = {
                    arg2.Size,
                    arg2.Transparency,
                    arg2.Color,
                    arg2.Shape,
                    arg2.CanCollide,
                    arg2.Material,
                }
            end
        end

        restoreRoot = function(arg2)
            local v18 = arg2 and plOriginalRoots[arg2]
            if not v18 then
                return
            end
            plOriginalRoots[arg2] = nil
            if not arg2.Parent then
                return
            end
            local v19 = v18[2]
            local v20 = v18[3]
            arg2.Size = v18[1]
            arg2.Transparency = v19
            arg2.Color = v20
            local v21 = v18[5]
            local v22 = v18[6]
            arg2.Shape = v18[4]
            arg2.CanCollide = v21
            arg2.Material = v22
        end

        restoreAllHitboxes = function()
            for k in pairs(plOriginalRoots) do
                if k and k.Parent then
                    restoreRoot(k)
                end
            end

            table.clear(plOriginalRoots)
        end

        isTouchingLocal = function(arg2)
            local character_ = LocalPlayer.Character
            if not character_ or not arg2 then
                return false
            end

            if hitboxTouchCharacter ~= character_ then
                hitboxTouchCharacter = character_
                hitboxOverlap.FilterDescendantsInstances = {character_}
            end

            local ok, result = pcall(Workspace.GetPartsInPart, Workspace, arg2, hitboxOverlap)
            local flag7 = ok and result[1] ~= nil
            return flag7
        end

        updateHitbox = function(arg2, arg3, arg4)
            local parent = arg3 and arg3.Parent
            local v18 = flag5
            local hitboxSize = v18 and obj3[arg2] or espCfg.hitboxSize

            if hitboxSize and arg3 and alive(parent, arg4) and (not espCfg.teamCheck or not arg2.Team or not LocalPlayer.Team or arg2.Team ~= LocalPlayer.Team) and (not espCfg.sitDetection or not isSitting(parent, arg4)) and not isTouchingLocal(arg3) then
                local v19 = teamColor(arg2)
                saveRoot(arg3)
                arg3.Size = vector(hitboxSize, hitboxSize, hitboxSize)
                arg3.Transparency = espCfg.hitboxTransparency
                arg3.Color = v19
                arg3.Material = Enum.Material.ForceField
                arg3.Shape = Enum.PartType.Ball
                arg3.CanCollide = false
                return v19
            end

            restoreRoot(arg3)
        end

        clearTargetHitboxes = function(arg2)
            if not arg2 then
                table.clear(obj3)

                if next(plOriginalRoots) then
                    restoreAllHitboxes()
                end

                return
            end

            obj3[arg2] = nil
            restoreRoot(rootPart(character(arg2)))
        end

        hitboxCommandError = function(arg2, arg3)
            add_line(arg2, arg3, true)
            red_anim()
            return false
        end

        clearHitboxCommand = function(arg2)
            local v18 = tostring
            local str = arg2 or ""
            local match = v18(str):match("^%s*(.-)%s*$")
            local str2 = match:lower()
            if not next(obj3) then
                return hitboxCommandError(".clearhitbox", "no target hitboxes active")
            end

            if str2 == "all" then
                clearTargetHitboxes()
                refresh_saved_commands()
                add_line(".clearhitbox all", "all target hitboxes cleared", false)
                return true
            end

            local v19 = find_player(match)
            if not v19 or not obj3[v19] then
                return hitboxCommandError(".clearhitbox", "use .clearhitbox user/all")
            end
            clearTargetHitboxes(v19)
            refresh_saved_commands()
            add_line(".clearhitbox " .. v19.Name, "target hitbox cleared", false)
            return true
        end

        targetHitboxCommand = function(arg2)
            local v18 = tostring
            local str = arg2 or ""
            local match, v19 = v18(str):match("^%s*(.-)%s*$"):lower():match("^(.-)%s+([%+%-]?[%d%.]+)$")
            local num = tonumber(v19)
            local v20 = match and find_player(match)
            if not v20 or not num then
                return hitboxCommandError(".targethitbox", "use .targethitbox / .thitbox / .thbe user <1-10>")
            end

            if espCfg.teamCheck and v20.Team and LocalPlayer.Team and v20.Team == LocalPlayer.Team then
                return hitboxCommandError(".targethitbox " .. v20.Name, "same team: hitbox ignored")
            end

            if not flag5 then
                flag5 = true

                if next(plOriginalRoots) then
                    restoreAllHitboxes()
                end
            end

            obj3[v20] = math.clamp(num, 1, 10)
            refresh_saved_commands()
            add_line(".targethitbox " .. v20.Name .. " " .. obj3[v20], "target hitbox set to " .. obj3[v20], false)
            return true
        end

        getBackpackText = function(arg2)
            if not espCfg.backpackViewEnabled then
                return nil
            end
            local now = os.clock()
            local v18 = backpackClock[arg2]

            if v18 and now - v18 < espCfg.backpackRefreshRate then
                local v19 = backpackCache[arg2]
                local v20 = v19 or nil
                return v20
            end

            backpackClock[arg2] = now
            local tbl13 = {}
            local backpack = arg2:FindFirstChildOfClass("Backpack")

            if backpack then
                for i, child in ipairs(backpack:GetChildren()) do
                    if child:IsA("Tool") then
                        table.insert(tbl13, child.Name)
                    end
                end
            end

            local v19 = character(arg2)

            if v19 then
                for i, child in ipairs(v19:GetChildren()) do
                    if child:IsA("Tool") then
                        table.insert(tbl13, child.Name)
                    end
                end
            end

            if #tbl13 == 0 then
                backpackCache[arg2] = false
                return nil
            end
            table.sort(tbl13)
            local str = table.concat(tbl13, "+")
            backpackCache[arg2] = str
            return str
        end

        createESP = function(arg2)
            if not espCfg.espEnabled or not arg2 or arg2 == LocalPlayer then
                return
            end
            local v18 = espHighlights[arg2]
            local v19 = v18

            if not v18 or not v18.Parent then
                local highlight = Instance.new("Highlight")
                v19 = highlight
                highlight.Name = "ESP_" .. tostring(arg2.UserId)
                highlight.FillTransparency = 1
                highlight.OutlineTransparency = 0
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.Parent = espFolder
                espHighlights[arg2] = highlight
            end

            local v20 = character(arg2)
            local v21 = humanoid(v20)

            if v20 and v21 and v21.Health > 0 then
                v19.Adornee = v20
                v19.OutlineColor = teamColor(arg2)
                v19.Enabled = true
            else
                v19.Adornee = nil
                v19.Enabled = false
            end
        end

        removeESP = function(arg2)
            local v18 = espHighlights[arg2]

            if v18 then
                if v18.Parent then
                    v18:Destroy()
                end

                espHighlights[arg2] = nil
            end
        end

        refreshESP = function()
            if not espCfg.espEnabled then
                for k, v18 in pairs(espHighlights) do
                    if v18 and v18.Parent then
                        v18:Destroy()
                    end
                end

                table.clear(espHighlights)
                return
            end

            for i, v18 in ipairs(espPlayers) do
                createESP(v18)
            end
        end

        newHealthLine = function(thickness, color2)
            if not Drawing or not Drawing.new then
                return nil
            end
            local line = Drawing.new("Line")
            line.Visible = false
            line.From = vector2(0, 0)
            line.To = vector2(0, 0)
            line.Color = color2
            line.Thickness = thickness
            line.Transparency = 1
            return line
        end

        hideHealthGui = function(arg2)
            local v18 = healthGuiData[arg2]
            if not v18 then
                return
            end

            if v18.HealthBar then
                v18.HealthBar.Visible = false
            end

            if v18.HealthFill then
                v18.HealthFill.Visible = false
            end
        end

        removeHealthGui = function(arg2)
            local v18 = healthGuiData[arg2]
            if not v18 then
                return
            end

            pcall(function()
                if v18.HealthBar then
                    v18.HealthBar:Remove()
                end

                if v18.HealthFill then
                    v18.HealthFill:Remove()
                end
            end)

            healthGuiData[arg2] = nil
        end

        removeAllHealthGuis = function()
            local tbl13 = {}

            for k in pairs(healthGuiData) do
                table.insert(tbl13, k)
            end

            for i, v18 in ipairs(tbl13) do
                removeHealthGui(v18)
            end
        end

        getHealthGui = function(arg2)
            local v18 = healthGuiData[arg2]
            if v18 then
                return v18
            end

            local tbl13 = {
                HealthBar = newHealthLine(3, v15),
                HealthFill = newHealthLine(1.5, v17),
            }

            healthGuiData[arg2] = tbl13
            return tbl13
        end

        getHealthBodyParts = function(arg2, arg3, arg4, arg5)
            local v18 = healthBodyCache[arg2]
            if v18 and v18.Character == arg3 and arg5 - v18.UpdatedAt < 0.75 then
                return v18.Parts
            end
            local tbl13 = {}

            for i, child in ipairs(arg3:GetChildren()) do
                if child:IsA("BasePart") and child ~= arg4 and child.Name ~= "Handle" then
                    tbl13[#tbl13 + 1] = child
                end
            end

            healthBodyCache[arg2] = {Character = arg3, Parts = tbl13, UpdatedAt = arg5}
            return tbl13
        end

        updateHealthGui = function(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
            if not Drawing or not Drawing.new then
                return
            end

            if espCfg.healthGuiEnabled and arg2 and arg2 ~= LocalPlayer then
                local v18 = arg3 or character(arg2)
                local v19 = v18
                local v20 = arg4 or humanoid(v19)
                local v21 = v20
                local v22 = arg5 or rootPart(v19)
                local v23 = v22
                local head = arg6 or v19 and v19:FindFirstChild("Head")
                local v24 = head

                if v19 and v21 and v21.Health > 0 and v23 and v24 then
                    local viewportSize = arg7

                    if not arg7 then
                        local v25 = camera
                        viewportSize = v25 and camera.ViewportSize
                    end

                    if not viewportSize then
                        viewportSize = v13
                    end

                    local v25 = viewportSize
                    local v26 = camera:WorldToViewportPoint(v23.Position)

                    if v26.Z > 0 and v26.X == v26.X and v26.Y == v26.Y and v26.X >= -120 and v25.X + 120 >= v26.X and v26.Y >= -180 and v25.Y + 180 >= v26.Y then
                        local huge = math.huge
                        local n4 = -math.huge
                        local n5 = 0
                        local v27 = ipairs
                        local v28 = getHealthBodyParts
                        local now = arg8 or os.clock()

                        for k, v29 in v27(v28(arg2, v19, v23, now)) do
                            if v29.Parent == v19 then
                                local n6 = math.max(v29.Size.Y * 0.5, 0.05)
                                huge = math.min(huge, v29.Position.Y - n6)
                                n4 = math.max(n4, v29.Position.Y + n6)
                                n5 = n5 + 1
                            end
                        end

                        if n5 == 0 or huge == math.huge or n4 == -math.huge then
                            huge = v23.Position.Y - 2.8
                            n4 = v24.Position.Y + math.max(v24.Size.Y * 0.5, 0.5)
                        end

                        if n4 - huge < 1 then
                            local n6 = (n4 + huge) * 0.5
                            huge = n6 - 1.5
                            n4 = n6 + 1.5
                        end

                        local v29 = vector(v23.Position.X, n4 + 0.15, v23.Position.Z)
                        local v30 = vector(v23.Position.X, huge - 0.15, v23.Position.Z)
                        local v31 = camera:WorldToViewportPoint(v29)
                        local v32 = camera:WorldToViewportPoint(v30)

                        if v31.Z > 0 and v32.Z > 0 and v31.X == v31.X and v31.Y == v31.Y and v32.X == v32.X and v32.Y == v32.Y then
                            local n6 = math.min(v31.Y, v32.Y)
                            local n7 = math.max(v31.Y, v32.Y)
                            local n8 = n7 - n6

                            if n8 > 0 and n8 == n8 then
                                local n9 = math.clamp(v25.Y * 0.42, 90, 260)
                                local n10 = math.clamp(n8, 10, n9)
                                local n11 = (n6 + n7) * 0.5
                                local n12 = n11 - n10 * 0.5
                                local n13 = n11 + n10 * 0.5

                                if n13 >= 2 and v25.Y - 2 >= n12 then
                                    local n14 = math.clamp(n12, 3, v25.Y - 3)
                                    local n15 = math.clamp(n13, 3, v25.Y - 3)
                                    if n15 - n14 < 5 then
                                        hideHealthGui(arg2)
                                        return
                                    end
                                    local n16 = math.clamp((n15 - n14) * 0.23, 4, 42)
                                    local n17 = math.clamp(v26.X - n16 - 6, 3, v25.X - 3)
                                    local max = math.max
                                    local num = tonumber(v21.MaxHealth)
                                    local n18 = num or 0
                                    local v33 = max(n18, 1)
                                    local clamp = math.clamp
                                    local num2 = tonumber(v21.Health)
                                    local n19 = num2 or 0
                                    local v34 = clamp(n19 / v33, 0, 1)
                                    local n20 = v34 * (n15 - n14)
                                    local v35 = getHealthGui(arg2)

                                    if v35.HealthBar and v35.HealthFill then
                                        v35.HealthBar.From = vector2(n17, n15)
                                        v35.HealthBar.To = vector2(n17, n14)
                                        v35.HealthBar.Visible = true
                                        v35.HealthFill.From = vector2(n17, n15)
                                        v35.HealthFill.To = vector2(n17, n15 - n20)
                                        v35.HealthFill.Color = v16:Lerp(v17, v34)
                                        local healthFill = v35.HealthFill
                                        local visible = v34 > 0
                                        healthFill.Visible = visible
                                        return
                                    end

                                    hideHealthGui(arg2)
                                    return
                                end

                                hideHealthGui(arg2)
                                return
                            end

                            hideHealthGui(arg2)
                            return
                        end

                        hideHealthGui(arg2)
                        return
                    end

                    hideHealthGui(arg2)
                    return
                end

                hideHealthGui(arg2)
                return
            end

            hideHealthGui(arg2)
        end

        createHealthGui = function(arg2)
            if espCfg.healthGuiEnabled and arg2 and arg2 ~= LocalPlayer then
                updateHealthGui(arg2)
                return
            end
            hideHealthGui(arg2)
        end

        updateAllHealthGuis = function()
            if not espCfg.healthGuiEnabled then
                removeAllHealthGuis()
                return
            end

            for i, v18 in ipairs(espPlayers) do
                updateHealthGui(v18)
            end
        end

        refreshHealthGuis = function()
            updateAllHealthGuis()
        end

        newLine = function()
            local line = Drawing.new("Line")
            line.Visible = false
            line.Thickness = espCfg.tracerThickness
            line.Transparency = 1
            return line
        end

        newText = function()
            local text = Drawing.new("Text")
            text.Visible = false
            text.Center = true
            text.Outline = true
            text.Size = espCfg.tracerTextSize
            text.Transparency = 1
            return text
        end

        c4EspRemove = function(arg2)
            local v18 = c4EspData[arg2]
            if not v18 then
                return
            end

            if v18.Highlight and v18.Highlight.Parent then
                v18.Highlight:Destroy()
            end

            if v18.Text then
                pcall(function()
                    v18.Text:Remove()
                end)
            end

            c4EspData[arg2] = nil
        end

        c4EspClear = function()
            for k in pairs(c4EspData) do
                c4EspRemove(k)
            end
        end

        c4EspAdd = function(arg2)
            if not espCfg.espEnabled or not arg2 or not arg2.Parent or c4EspData[arg2] or not arg2:IsA("Model") and not arg2:IsA("BasePart") then
                return
            end
            local Highlight = fn5("Highlight", espFolder, "Name", "C4_ESP", "Adornee", arg2, "DepthMode", Enum.HighlightDepthMode.AlwaysOnTop, "FillColor", v14, "FillTransparency", 1, "OutlineColor", v14, "OutlineTransparency", 0)
            local v18 = Drawing
            local new = v18 and Drawing.new and newText() or nil

            if new then
                new.Text = "C4"
                new.Color = v14
            end

            local v19 = c4EspData
            local tbl13 = {Highlight = Highlight, Text = new}
            local isBasePart = arg2:IsA("BasePart")
            local primaryPart = isBasePart and arg2 or arg2.PrimaryPart or arg2:FindFirstChildWhichIsA("BasePart", true)
            tbl13.Anchor = primaryPart
            v19[arg2] = tbl13
        end

        c4EspRefresh = function()
            if not espCfg.espEnabled then
                return c4EspClear()
            end

            for i, v18 in ipairs(CollectionService:GetTagged("C4")) do
                c4EspAdd(v18)
            end
        end

        c4EspUpdate = function(arg2)
            if not espCfg.espEnabled then
                return
            end
            local v18, v19 = fn43(arg2)
            local size = math.max(8, math.floor(espCfg.tracerTextSize * v19 + 0.5))

            for k, v20 in pairs(c4EspData) do
                if k.Parent then
                    if v20.Text then
                        local anchor = v20.Anchor
                        local v21 = anchor

                        if not anchor or not anchor.Parent then
                            local isBasePart = k:IsA("BasePart")
                            local primaryPart = isBasePart and k or k.PrimaryPart or k:FindFirstChildWhichIsA("BasePart", true)
                            v21 = primaryPart
                            v20.Anchor = primaryPart
                        end

                        local v22 = nil
                        local v23 = nil

                        if v21 then
                            local v24, v25 = espScreenPoint(v21, arg2)
                            v22 = v24
                            v23 = v25
                        end

                        local text = v20.Text
                        local visible = v23 == true
                        text.Visible = visible

                        if v23 then
                            v20.Text.Size = size
                            local text2 = v20.Text
                            local v24 = espClampTextPosition
                            local text3 = v20.Text
                            local x = v22.X
                            local y = v22.Y
                            local n4 = v18 and 12 or 16
                            text2.Position = v24(text3, x, y - n4 * v19, arg2)
                        end
                    end
                else
                    c4EspRemove(k)
                end
            end
        end

        fn2(CollectionService:GetInstanceAddedSignal("C4"), c4EspAdd)
        fn2(CollectionService:GetInstanceRemovedSignal("C4"), c4EspRemove)
        c4EspRefresh()

        getTracer = function(arg2)
            local v18 = tracerDrawings[arg2]
            if v18 then
                return v18
            end
            local tbl13 = {}
            local v19 = Drawing
            local new = v19 and Drawing.new and newLine() or nil
            tbl13.Line = new
            local v20 = Drawing
            local new2 = v20 and Drawing.new and newText() or nil
            tbl13.Text = new2
            tracerDrawings[arg2] = tbl13
            return tbl13
        end

        hideTracer = function(arg2)
            local v18 = tracerDrawings[arg2]
            if not v18 then
                return
            end

            if v18.Line then
                v18.Line.Visible = false
            end

            if v18.Text then
                v18.Text.Visible = false
            end
        end

        removeTracer = function(arg2)
            local v18 = tracerDrawings[arg2]
            if not v18 then
                return
            end

            pcall(function()
                if v18.Line then
                    v18.Line:Remove()
                end

                if v18.Text then
                    v18.Text:Remove()
                end
            end)

            tracerDrawings[arg2] = nil
        end

        removeAllTracers = function()
            for k, v18 in pairs(tracerDrawings) do
                pcall(function()
                    if v18.Line then
                        v18.Line:Remove()
                    end

                    if v18.Text then
                        v18.Text:Remove()
                    end
                end)
            end

            table.clear(tracerDrawings)
        end

        espShortText = function(arg2, arg3)
            local v18 = tostring
            local str = arg2 or ""
            local v19 = v18(str)
            local num = tonumber(arg3)
            local n4 = num or 22
            local v20 = n4
            if #v19 <= v20 then
                return v19
            end
            return v19:sub(1, math.max(1, v20 - 3)) .. "..."
        end

        espClampTextPosition = function(arg2, arg3, arg4, arg5)
            local viewportSize = arg5

            if not arg5 then
                local v18 = camera
                viewportSize = v18 and camera.ViewportSize
            end

            if not viewportSize then
                viewportSize = v13
            end

            local v18 = fn43(viewportSize)
            local n4 = v18 and 4 or 6
            local n5 = v18 and 6 or 8
            local n6 = v18 and 10 or 12

            pcall(function()
                if arg2 and arg2.TextBounds then
                    n5 = math.max(n5, arg2.TextBounds.X / 2)
                    n6 = math.max(n6, arg2.TextBounds.Y)
                end
            end)

            return vector2(math.clamp(arg3, n4 + n5, math.max(n4 + n5, viewportSize.X - n4 - n5)), math.clamp(arg4, n4, math.max(n4, viewportSize.Y - n4 - n6)))
        end

        espScreenPoint = function(arg2, arg3)
            local v18, v19 = camera:WorldToViewportPoint(arg2.Position)
            if v19 then
                return v18, true
            end

            if v18.Z <= 0 then
                return v18, false
            end
            local viewportSize = arg3

            if not arg3 then
                local v20 = camera
                viewportSize = v20 and camera.ViewportSize
            end

            if not viewportSize then
                viewportSize = v13
            end

            return vector(math.clamp(v18.X, 8, viewportSize.X - 8), math.clamp(v18.Y, 8, viewportSize.Y - 8), v18.Z), true
        end

        updateTracer = function(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
            if not Drawing or not Drawing.new then
                return
            end
            local v18 = arg3 or character(arg2)
            local v19 = v18
            local v20 = arg4 or humanoid(v19)
            local v21 = v20
            local v22 = arg5 or rootPart(v19)
            local v23 = v22
            local head = arg6 or v19 and v19:FindFirstChild("Head")
            local v24 = head
            local v25 = getAimPart(v19, v23)

            if v19 and v21 and v21.Health > 0 and v25 and v23 and v24 then
                local v26 = arg8

                if not arg8 then
                    local character_ = LocalPlayer.Character
                    v26 = character_ and rootPart(LocalPlayer.Character)
                end

                local v27 = v26
                local magnitude = v26 and (v27.Position - v25.Position).Magnitude or 0
                local viewportSize = arg7

                if not arg7 then
                    local v28 = camera
                    viewportSize = v28 and camera.ViewportSize
                end

                if not viewportSize then
                    viewportSize = v13
                end

                local v28 = viewportSize
                local v29, v30 = espScreenPoint(v25, v28)
                if not v30 then
                    hideTracer(arg2)
                    return
                end
                local v31 = getTracer(arg2)
                local v32 = arg9 or teamColor(arg2)
                local v33 = v32
                local v34, v35 = fn43(v28)

                if espCfg.tracersEnabled and v31.Line then
                    v31.Line.Visible = true
                    local line = v31.Line
                    local v36 = arg10 or vector2(v28.X / 2, v28.Y)
                    line.From = v36
                    v31.Line.To = vector2(math.clamp(v29.X, 0, v28.X), math.clamp(v29.Y, 0, v28.Y))
                    v31.Line.Color = v33
                    v31.Line.Thickness = espCfg.tracerThickness * v35
                elseif v31.Line then
                    v31.Line.Visible = false
                end

                if espCfg.tracerInfoEnabled and v31.Text then
                    local v36, v37 = camera:WorldToViewportPoint(v23.Position)
                    local v38 = camera:WorldToViewportPoint(v24.Position)
                    if not v37 or v36.Z <= 0 then
                        v31.Text.Visible = false
                        return
                    end
                    local n4 = math.clamp((vector2(v38.X, v38.Y) - vector2(v36.X, v36.Y)).Magnitude, 2, math.huge)
                    local v39 = espShortText
                    local v40 = playerShownName(arg2)
                    local n5 = v34 and 18 or 24
                    local v41 = v39(v40, n5)
                    local v42 = getBackpackText(arg2)
                    local v43 = v42
                    local str = string.format("[%dm]", math.floor(magnitude + 0.5))
                    local str2 = string.format("[%d/%d]", math.floor(v21.Health + 0.5), math.floor(v21.MaxHealth + 0.5))

                    if v42 and v42 ~= "" then
                        local v44 = espShortText
                        local n6 = v34 and 20 or 28
                        local v45 = v44(v42, n6)
                        v43 = v45

                        if espCfg.healthGuiEnabled then
                            v31.Text.Text = string.format("%s\n%s\n%s", v45, v41, str)
                        else
                            v31.Text.Text = string.format("%s\n%s\n%s %s", v45, v41, str, str2)
                        end
                    elseif espCfg.healthGuiEnabled then
                        v31.Text.Text = string.format("%s\n%s", v41, str)
                    else
                        v31.Text.Text = string.format("%s\n%s %s", v41, str, str2)
                    end

                    local size = math.max(9, math.floor(espCfg.tracerTextSize * v35 + 0.5))

                    if v34 then
                        local n6 = math.clamp((n4 - 4) / 28, 0, 1)
                        v31.Text.Size = math.max(8, math.floor(size * (0.72 + n6 * 0.28) + 0.5))
                    else
                        v31.Text.Size = size
                    end

                    v31.Text.Color = v33
                    v31.Text.Visible = true
                    local n6 = 24

                    pcall(function()
                        n6 = math.max(n6, v31.Text.TextBounds.X)
                    end)

                    local x = v29.X
                    local n7 = v34 and (v43 and 40 or 28) or (v43 and 58 or 42)
                    local n8 = v29.Y - n7 * v35
                    local n9 = x
                    local n10 = n8

                    if espCfg.healthGuiEnabled and not v34 then
                        local n11 = v36.X - n4
                        local n12 = v36.X + n4
                        local n13 = v36.Y - n4 * 2
                        local n14 = math.clamp(n4 * 0.08, 3, 5)
                        local n15 = n12 + n14 + n6 / 2
                        local n16 = n15
                        local n17 = n13 + 1

                        if v28.X - 8 < n15 + n6 / 2 then
                            n16 = n11 - n14 - n6 / 2
                        end

                        local n18 = math.clamp((32 - n4) / 20, 0, 1)
                        n9 = x + (n16 - x) * n18
                        n10 = n8 + (n17 - n8) * n18
                    end

                    v31.Text.Position = espClampTextPosition(v31.Text, n9, n10, v28)
                elseif v31.Text then
                    v31.Text.Visible = false
                end

                return
            end

            hideTracer(arg2)
        end

        updateAllTracers = function()
            if not espCfg.tracersEnabled and not espCfg.tracerInfoEnabled then
                removeAllTracers()
                return
            end

            for i, v18 in ipairs(espPlayers) do
                updateTracer(v18)
            end
        end

        updateVisualPlayers = function(arg2)
            local v18 = flag5
            local flag7 = v18 and next(obj3) ~= nil

            if not flag7 then
                if flag5 then
                    flag7 = false
                else
                    flag7 = true
                end

                if flag7 then
                    flag7 = espCfg.hitboxEnabled
                end
            end

            local tracersEnabled = espCfg.tracersEnabled
            local tracerInfoEnabled = tracersEnabled or espCfg.tracerInfoEnabled
            local healthGuiEnabled = espCfg.healthGuiEnabled

            if not flag7 and next(plOriginalRoots) then
                restoreAllHitboxes()
            end

            if not tracerInfoEnabled and next(tracerDrawings) then
                removeAllTracers()
            end

            if not healthGuiEnabled and next(healthGuiData) then
                removeAllHealthGuis()
            end

            if not flag7 and not tracerInfoEnabled and not healthGuiEnabled then
                return
            end
            local viewportSize = arg2

            if not arg2 then
                local v19 = camera
                viewportSize = v19 and camera.ViewportSize
            end

            if not viewportSize then
                viewportSize = v13
            end

            local v19 = viewportSize
            local now = os.clock()
            local character_ = LocalPlayer.Character
            local v20 = character_ and rootPart(character_)
            local v21 = vector2(v19.X / 2, v19.Y)

            for i, v22 in ipairs(espPlayers) do
                local v23 = character(v22)
                local v24 = humanoid(v23)
                local v25 = rootPart(v23)
                local head = v23 and v23:FindFirstChild("Head")
                local v26 = flag5
                local flag8 = v26 and obj3[v22]

                if not flag8 then
                    if flag5 then
                        flag8 = false
                    else
                        flag8 = true
                    end

                    if flag8 then
                        flag8 = espCfg.hitboxEnabled
                    end
                end

                local v27 = flag8 and updateHitbox(v22, v25, v24) or nil

                if tracerInfoEnabled then
                    local v28 = v27 or teamColor(v22)
                    v27 = v28
                end

                if tracerInfoEnabled then
                    updateTracer(v22, v23, v24, v25, head, v19, v20, v27, v21)
                end

                if healthGuiEnabled then
                    updateHealthGui(v22, v23, v24, v25, head, v19, now)
                end
            end
        end

        ensureESPPlayer = function(arg2)
            if not arg2 or arg2 == LocalPlayer then
                return
            end

            if espConnections[arg2] then
                return
            end

            if arg2.Character and forceFieldSpawnAt[arg2.Character] == nil then
                forceFieldSpawnAt[arg2.Character] = os.clock()
            end

            local tbl13 = {}
            espConnections[arg2] = tbl13

            table.insert(tbl13, fn2(arg2.CharacterAdded, function(arg3)
                forceFieldSpawnAt[arg3] = os.clock()
                task.wait(0.25)

                if espCfg.espEnabled then
                    createESP(arg2)
                end

                if espCfg.healthGuiEnabled then
                    createHealthGui(arg2)
                end
            end))

            table.insert(tbl13, fn2(arg2:GetPropertyChangedSignal("Team"), function()
                if espCfg.espEnabled then
                    createESP(arg2)
                end

                if espCfg.healthGuiEnabled then
                    createHealthGui(arg2)
                end
            end))

            task.defer(function()
                if espCfg.espEnabled then
                    createESP(arg2)
                end

                if espCfg.healthGuiEnabled then
                    createHealthGui(arg2)
                end
            end)
        end

        fn2(Players.PlayerAdded, function(arg2)
            addESPPlayer(arg2)
            ensureESPPlayer(arg2)

            task.delay(0.4, function()
                if espCfg.espEnabled then
                    createESP(arg2)
                end

                if espCfg.healthGuiEnabled then
                    createHealthGui(arg2)
                end
            end)
        end)

        fn2(Players.PlayerRemoving, function(arg2)
            if flingState and flingState.CarInAttack and flingState.CarInAttack[arg2.Name] then
                local v18 = flingState.CarInAttack[arg2.Name]

                if v18 then
                    v18.PlayerExited = true
                end

                flingRefreshButtons()
            end

            backpackCache[arg2] = nil
            backpackClock[arg2] = nil
            healthBodyCache[arg2] = nil

            if obj3[arg2] then
                clearTargetHitboxes(arg2)

                if refresh_saved_commands then
                    task.defer(refresh_saved_commands)
                end
            end

            removeESPPlayer(arg2)
            removeTracer(arg2)
            removeHealthGui(arg2)

            if espConnections[arg2] then
                for i, v18 in ipairs(espConnections[arg2]) do
                    pcall(function()
                        v18:Disconnect()
                    end)
                end

                espConnections[arg2] = nil
            end

            removeESP(arg2)
        end)

        fn2(RunService.Heartbeat, function()
            local now = os.clock()
            if now - lastTick < espCfg.refreshRate then
                return
            end
            lastTick = now
            camera = Workspace.CurrentCamera
            if not camera then
                return
            end
            local viewportSize = camera.ViewportSize
            c4EspUpdate(viewportSize)
            updateVisualPlayers(viewportSize)

            if espCfg.espRefreshRate <= now - lastEspRefresh then
                lastEspRefresh = now
                refreshESP()
            end
        end)

        for i, v18 in ipairs(tbl4) do
            if v18 ~= LocalPlayer then
                addESPPlayer(v18)
                ensureESPPlayer(v18)

                if v18.Character then
                    createESP(v18)
                    createHealthGui(v18)
                end
            end
        end

        fn4(function()
            if next(plOriginalRoots) then
                restoreAllHitboxes()
            end

            removeAllTracers()
            removeAllHealthGuis()
            c4EspClear()

            for k, v18 in pairs(espHighlights) do
                if v18 and v18.Parent then
                    v18:Destroy()
                end
            end

            table.clear(espHighlights)

            if espFolder and espFolder.Parent then
                espFolder:Destroy()
            end

            if gui and gui.Parent then
                gui:Destroy()
            end

            if feedgui and feedgui.Parent then
                feedgui:Destroy()
            end

            if playerListGui and playerListGui.Parent then
                playerListGui:Destroy()
            end
        end)

        pcall(function()
            local keraCmd = PlayerGui:FindFirstChild("kera_cmd")

            if keraCmd then
                keraCmd:Destroy()
            end
        end)

        pcall(function()
            local keraDetectorFull = PlayerGui:FindFirstChild("KeraDetectorFull")

            if keraDetectorFull then
                keraDetectorFull:Destroy()
            end
        end)

        local ScreenGui2 = fn5("ScreenGui", PlayerGui, "Name", "kera_cmd", "ResetOnSpawn", false, "IgnoreGuiInset", false, "ZIndexBehavior", Enum.ZIndexBehavior.Sibling)
        gui = ScreenGui2
        local Frame8 = fn5("Frame", gui, "Size", udim2(0, 430, 0, 62), "AnchorPoint", vector2(0, 1), "Position", udim2(0, 18, 1, -88), "BackgroundTransparency", 1)
        holder = Frame8
        local ImageLabel2 = fn5("ImageLabel", holder, "Size", udim2(1, 20, 1, 20), "Position", udim2(0, -10, 0, -5), "BackgroundTransparency", 1, "Image", "rbxassetid://6014261993", "ImageColor3", color(0, 0, 0), "ImageTransparency", 0.48, "ScaleType", Enum.ScaleType.Slice, "SliceCenter", Rect.new(49, 49, 450, 450), "ZIndex", 0)
        shadow = ImageLabel2
        local Frame9 = fn5("Frame", holder, "Size", udim2(0, 420, 0, 52), "Position", udim2(0, 5, 0, 5), "BackgroundColor3", color(12, 14, 20), "BorderSizePixel", 0, "ClipsDescendants", true, "ZIndex", 2)
        main = Frame9
        local UICorner = fn5("UICorner", main, "CornerRadius", udim(0, 15))
        maincorner = UICorner
        fn8 = fn5("UIStroke", main, "Color", color(65, 78, 105), "Thickness", 1, "Transparency", 0.18, "ApplyStrokeMode", Enum.ApplyStrokeMode.Border)
        local uiGradient = Instance.new("UIGradient")
        grad = uiGradient
        grad.Rotation = 90

        grad.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, color(20, 23, 32)),
            ColorSequenceKeypoint.new(1, color(10, 12, 18)),
        })

        grad.Parent = main
        local Frame10 = fn5("Frame", main, "Size", udim2(1, 0, 0, 52), "BackgroundTransparency", 1, "BorderSizePixel", 0, "ZIndex", 4)
        top = Frame10
        local frame = Instance.new("Frame")
        accent = frame
        accent.Name = "KX_TitleAccent"
        accent.Size = udim2(0, 4, 0, 29)
        accent.Position = udim2(0, 13, 0.5, -14)
        accent.BackgroundColor3 = color(92, 170, 255)
        accent.BackgroundTransparency = 0
        accent.BorderSizePixel = 0
        accent.Visible = true
        accent.ZIndex = 5
        accent:SetAttribute("KX_NoTheme", true)
        accent.Parent = top
        local v18 = color(92, 170, 255)
        local flag7 = false

        local function fn44()
            if flag7 or not accent or not accent.Parent then
                return
            end
            flag7 = true
            accent.BackgroundColor3 = v18
            accent.BackgroundTransparency = 0
            accent.Visible = true

            task.defer(function()
                flag7 = false
            end)
        end

        fn2(accent:GetPropertyChangedSignal("BackgroundColor3"), fn44)
        fn2(accent:GetPropertyChangedSignal("BackgroundTransparency"), fn44)
        fn2(accent:GetPropertyChangedSignal("Visible"), fn44)
        local UICorner2 = fn5("UICorner", accent, "CornerRadius", udim(1, 0))
        accentcorner = UICorner2
        local TextLabel = fn5("TextLabel", top, "Size", udim2(0, 96, 1, 0), "Position", udim2(0, 27, 0, 0), "BackgroundTransparency", 1, "Text", "KX-Admin", "TextColor3", color(236, 241, 255), "Font", Enum.Font.GothamSemibold, "TextSize", 14, "TextXAlignment", Enum.TextXAlignment.Left, "ZIndex", 5)
        label = TextLabel
        local Frame11 = fn5("Frame", top, "Size", udim2(1, -252, 0, 34), "Position", udim2(0, 118, 0.5, -17), "BackgroundColor3", color(7, 9, 14), "BorderSizePixel", 0, "ZIndex", 5, "ClipsDescendants", true)
        inputwrap = Frame11
        local UICorner3 = fn5("UICorner", inputwrap, "CornerRadius", udim(0, 11))
        inputcorner = UICorner3
        local UIStroke = fn5("UIStroke", inputwrap, "Color", color(35, 43, 60), "Thickness", 1, "Transparency", 0.45)
        inputstroke = UIStroke
        local TextBox2 = fn5("TextBox", inputwrap, "Size", udim2(1, -20, 1, 0), "Position", udim2(0, 10, 0, 0), "BackgroundTransparency", 1, "Text", "", "TextColor3", color(245, 248, 255), "PlaceholderText", "prefix .", "PlaceholderColor3", color(105, 116, 138), "Font", Enum.Font.Code, "TextSize", 14, "ClearTextOnFocus", false, "TextXAlignment", Enum.TextXAlignment.Left, "ZIndex", 6)
        input = TextBox2
        local TextButton = fn5("TextButton", top, "Size", udim2(0, 42, 0, 34), "Position", udim2(1, -116, 0.5, -17), "BackgroundColor3", color(18, 26, 38), "BorderSizePixel", 0, "Text", "log", "TextColor3", color(170, 210, 255), "Font", Enum.Font.GothamBold, "TextSize", 12, "AutoButtonColor", false, "ZIndex", 5)
        logbtn = TextButton
        local UICorner4 = fn5("UICorner", logbtn, "CornerRadius", udim(0, 11))
        logbtncorner = UICorner4
        local UIStroke2 = fn5("UIStroke", logbtn, "Color", color(92, 170, 255), "Thickness", 1, "Transparency", 0.45)
        logbtnstroke = UIStroke2
        local TextButton2 = fn5("TextButton", top, "Size", udim2(0, 58, 0, 34), "Position", udim2(1, -71, 0.5, -17), "BackgroundColor3", color(20, 31, 39), "BorderSizePixel", 0, "Text", "+", "TextColor3", color(119, 255, 173), "Font", Enum.Font.GothamBold, "TextSize", 20, "AutoButtonColor", false, "ZIndex", 5)
        toggle = TextButton2
        local UICorner5 = fn5("UICorner", toggle, "CornerRadius", udim(0, 11))
        togglecorner = UICorner5
        local UIStroke3 = fn5("UIStroke", toggle, "Color", color(70, 120, 95), "Thickness", 1, "Transparency", 0.45)
        togglestroke = UIStroke3
        local Frame12 = fn5("Frame", gui, "Size", udim2(0, 420, 0, 112), "AnchorPoint", vector2(0, 1), "Position", udim2(0, 23, 1, -88), "BackgroundColor3", color(9, 11, 16), "BorderSizePixel", 0, "ClipsDescendants", true, "ZIndex", 10)
        loggui = Frame12
        local UICorner6 = fn5("UICorner", loggui, "CornerRadius", udim(0, 14))
        logguicorner = UICorner6
        local UIStroke4 = fn5("UIStroke", loggui, "Color", color(55, 68, 92), "Thickness", 1, "Transparency", 0.2)
        logguistroke = UIStroke4
        local uiGradient2 = Instance.new("UIGradient")
        logguigrad = uiGradient2
        logguigrad.Rotation = 90

        logguigrad.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, color(14, 17, 25)),
            ColorSequenceKeypoint.new(1, color(7, 9, 14)),
        })

        logguigrad.Parent = loggui
        local ImageLabel3 = fn5("ImageLabel", loggui, "Size", udim2(1, 20, 1, 20), "Position", udim2(0, -10, 0, -6), "BackgroundTransparency", 1, "Image", "rbxassetid://6014261993", "ImageColor3", color(0, 0, 0), "ImageTransparency", 0.55, "ScaleType", Enum.ScaleType.Slice, "SliceCenter", Rect.new(49, 49, 450, 450), "ZIndex", 9)
        logshadow = ImageLabel3
        local TextLabel2 = fn5("TextLabel", loggui, "Size", udim2(1, -24, 0, 28), "Position", udim2(0, 12, 0, 4), "BackgroundTransparency", 1, "Text", "terminal logs", "TextColor3", color(170, 190, 220), "Font", Enum.Font.GothamSemibold, "TextSize", 12, "TextXAlignment", Enum.TextXAlignment.Left, "ZIndex", 12)
        logtitle = TextLabel2
        local Frame13 = fn5("Frame", loggui, "Size", udim2(1, -24, 0, 1), "Position", udim2(0, 12, 0, 31), "BackgroundColor3", color(38, 48, 68), "BackgroundTransparency", 0.35, "BorderSizePixel", 0, "ZIndex", 12)
        logline = Frame13
        local TextButton3 = fn5("TextButton", loggui, "Size", udim2(0, 38, 0, 22), "Position", udim2(1, -50, 0, 7), "BackgroundColor3", color(18, 26, 38), "BorderSizePixel", 0, "Text", "DB", "TextColor3", color(170, 210, 255), "Font", Enum.Font.GothamBold, "TextSize", 11, "AutoButtonColor", false, "ZIndex", 14)
        dbbtn = TextButton3
        local UICorner7 = fn5("UICorner", dbbtn, "CornerRadius", udim(0, 8))
        dbbtncorner = UICorner7
        local UIStroke5 = fn5("UIStroke", dbbtn, "Color", color(92, 170, 255), "Thickness", 1, "Transparency", 0.45)
        dbbtnstroke = UIStroke5
        local ScrollingFrame = fn5("ScrollingFrame", loggui, "Size", udim2(1, -18, 1, -39), "Position", udim2(0, 10, 0, 35), "BackgroundTransparency", 1, "BorderSizePixel", 0, "ScrollBarThickness", 5, "ScrollBarImageColor3", color(92, 170, 255), "ScrollBarImageTransparency", 0.18, "CanvasSize", udim2(0, 0, 0, 0), "AutomaticCanvasSize", Enum.AutomaticSize.Y, "ScrollingDirection", Enum.ScrollingDirection.Y, "ZIndex", 12)
        scroll = ScrollingFrame
        local UIListLayout = fn5("UIListLayout", scroll, "Padding", udim(0, 4), "SortOrder", Enum.SortOrder.LayoutOrder)
        list = UIListLayout
        UIPadding = fn5("UIPadding", scroll, "PaddingTop", udim(0, 4), "PaddingBottom", udim(0, 5), "PaddingLeft", udim(0, 4), "PaddingRight", udim(0, 8))
        local ScrollingFrame2 = fn5("ScrollingFrame", loggui, "Size", udim2(1, -18, 1, -39), "Position", udim2(0, 10, 0, 35), "BackgroundTransparency", 1, "BorderSizePixel", 0, "ScrollBarThickness", 5, "ScrollBarImageColor3", color(120, 255, 170), "ScrollBarImageTransparency", 0.15, "CanvasSize", udim2(0, 0, 0, 0), "AutomaticCanvasSize", Enum.AutomaticSize.Y, "ScrollingDirection", Enum.ScrollingDirection.Y, "Visible", false, "ZIndex", 12)
        dbscroll = ScrollingFrame2
        local UIListLayout2 = fn5("UIListLayout", dbscroll, "Padding", udim(0, 4), "SortOrder", Enum.SortOrder.LayoutOrder)
        dblayout = UIListLayout2
        local UIPadding2 = fn5("UIPadding", dbscroll, "PaddingTop", udim(0, 4), "PaddingBottom", udim(0, 8), "PaddingLeft", udim(0, 4), "PaddingRight", udim(0, 8))
        dbpad = UIPadding2
        local Frame14 = fn5("Frame", main, "Size", udim2(1, 0, 1, -52), "Position", udim2(0, 0, 0, 52), "BackgroundTransparency", 1, "BorderSizePixel", 0, "Visible", false, "ClipsDescendants", true, "ZIndex", 3)
        body = Frame14
        local Frame15 = fn5("Frame", body, "Size", udim2(1, -26, 1, -18), "Position", udim2(0, 13, 0, 10), "BackgroundColor3", color(8, 10, 15), "BorderSizePixel", 0, "ClipsDescendants", true, "ZIndex", 4)
        cmdwrap = Frame15
        local UICorner8 = fn5("UICorner", cmdwrap, "CornerRadius", udim(0, 11))
        cmdcorner = UICorner8
        local UIStroke6 = fn5("UIStroke", cmdwrap, "Color", color(35, 43, 60), "Thickness", 1, "Transparency", 0.5)
        cmdstroke = UIStroke6
        local ScrollingFrame3 = fn5("ScrollingFrame", cmdwrap, "Size", udim2(1, -12, 1, -12), "Position", udim2(0, 6, 0, 6), "BackgroundTransparency", 1, "BorderSizePixel", 0, "ScrollBarThickness", 4, "ScrollBarImageColor3", color(92, 170, 255), "ScrollBarImageTransparency", 0.2, "CanvasSize", udim2(0, 0, 0, 0), "AutomaticCanvasSize", Enum.AutomaticSize.Y, "ScrollingDirection", Enum.ScrollingDirection.Y, "ZIndex", 5)
        cmdscroll = ScrollingFrame3
        local UIListLayout3 = fn5("UIListLayout", cmdscroll, "Padding", udim(0, 3), "SortOrder", Enum.SortOrder.LayoutOrder)
        cmdlayout = UIListLayout3
        local UIPadding3 = fn5("UIPadding", cmdscroll, "PaddingTop", udim(0, 4), "PaddingBottom", udim(0, 6), "PaddingLeft", udim(0, 7), "PaddingRight", udim(0, 7))
        cmdpad = UIPadding3

        make_cmd_line = function(arg2, arg3, arg4)
            local v19 = cmdscroll
            local v20 = udim2(1, -6, 0, 0)
            local y = Enum.AutomaticSize.Y
            local left = Enum.TextXAlignment.Left
            local top_ = Enum.TextYAlignment.Top
            local code = Enum.Font.Code
            local n4 = arg4 and 13 or 12
            local TextLabel3 = fn5("TextLabel", v19, "Size", v20, "BackgroundTransparency", 1, "AutomaticSize", y, "TextWrapped", true, "TextXAlignment", left, "TextYAlignment", top_, "Font", code, "TextSize", n4, "Text", arg2, "ZIndex", 6)
            local v21 = kxTextClamp
            local n5 = arg4 and 14 or 13
            v21(TextLabel3, 10, n5)
            local v22 = kxThemePalette
            local v23 = v22 and kxThemePalette() or nil
            local accent_ = arg3 or v23 and (arg4 and v23.Accent or v23.Text) or color(220, 230, 245)

            if not arg4 and type(arg2) == "string" and arg2:find("= true", 1, true) then
                accent_ = color(120, 255, 170)
            end

            TextLabel3.TextColor3 = accent_
            TextLabel3:SetAttribute("KX_KeepTextColor", true)
            TextLabel3:SetAttribute("KX_TextColor", accent_)

            if arg4 then
                TextLabel3:SetAttribute("KX_ThemeHeader", true)
            end

            return TextLabel3
        end

        local ScreenGui3 = fn5("ScreenGui", PlayerGui, "Name", "KeraDetectorFull", "ResetOnSpawn", false, "ZIndexBehavior", Enum.ZIndexBehavior.Sibling)
        feedgui = ScreenGui3
        local Frame16 = fn5("Frame", feedgui, "Name", "KillFeed", "AnchorPoint", vector2(0.5, 1), "Position", udim2(0.5, 0, 0.88, 0), "Size", udim2(0, 780, 0, 190), "BackgroundTransparency", 1, "Visible", featureGet("kill_feedback", cfg.kill_feedback))
        kf = Frame16
        local UIListLayout4 = fn5("UIListLayout", kf, "SortOrder", Enum.SortOrder.LayoutOrder, "Padding", udim(0, 1), "HorizontalAlignment", Enum.HorizontalAlignment.Center, "VerticalAlignment", Enum.VerticalAlignment.Bottom)
        kl = UIListLayout4
        local v19 = feedgui
        local v20 = vector2(0.5, 0)
        local v21 = udim2(0.5, 0, 0.1, 0)
        local v22 = udim2(0, 780, 0, 150)
        local aimDetect = featureGet("aim_detect", cfg.aim_detect)
        local flingDetector = aimDetect or featureGet("fling_detector", cfg.fling_detector) or featureGet("invisible_detection", cfg.invisible_detection)
        local Frame17 = fn5("Frame", v19, "Name", "PossibleAimbotFeed", "AnchorPoint", v20, "Position", v21, "Size", v22, "BackgroundTransparency", 1, "Visible", flingDetector)
        af = Frame17
        local UIListLayout5 = fn5("UIListLayout", af, "SortOrder", Enum.SortOrder.LayoutOrder, "Padding", udim(0, 2), "HorizontalAlignment", Enum.HorizontalAlignment.Center, "VerticalAlignment", Enum.VerticalAlignment.Top)
        al = UIListLayout5

        detectorFeedUpdateVisible = function()
            if af then
                local v23 = af
                local v24 = cfg
                local visible = v24 and cfg.aim_detect == true

                if not visible then
                    local v25 = cfg
                    visible = v25 and cfg.fling_detector == true
                end

                if not visible then
                    local v25 = cfg
                    visible = v25 and cfg.invisible_detection == true
                end

                v23.Visible = visible
            end
        end

        opened = false
        logs_open = true
        db_view_open = false
        flag3 = false
        dragging = false
        notifying = false
        clearing_input = false
        viewer = false
        spectating_player = nil
        spectate_conn = nil
        spectate_remove_conn = nil
        lastcam = nil
        drag_start = nil
        start_pos = nil
        drag_input = nil
        log_order = 0
        local v23 = udim2(0, 420, 0, 52)
        closed_main = v23
        local v24 = udim2(0, 420, 0, 205)
        opened_main = v24
        local v25 = udim2(0, 430, 0, 62)
        closed_holder = v25
        local v26 = udim2(0, 430, 0, 215)
        opened_holder = v26
        local v27 = udim2(0, 420, 0, 112)
        log_size = v27
        local v28 = udim2(0, 420, 0, 285)
        db_log_size = v28
        ownerUserId = 8757292928
        ownerName = "JOJI12416"

        local tbl13 = {
            Admin = {Color = color(255, 90, 120), Users = {}, UserIds = {}},
            OG = {
                Color = color(225, 105, 255),
                Wave = {color(170, 70, 255), color(255, 70, 185), color(255, 255, 255)},
                Gradient = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, color(170, 70, 255)),
                    ColorSequenceKeypoint.new(0.25, color(255, 70, 185)),
                    ColorSequenceKeypoint.new(0.5, color(255, 255, 255)),
                    ColorSequenceKeypoint.new(0.75, color(255, 70, 185)),
                    ColorSequenceKeypoint.new(1, color(170, 70, 255)),
                }),
                Users = {
                    razhulandeveloper = true,
                    woltgrppp = true,
                    chirulv = true,
                    woltgrpp = true,
                    syntaxk3v = true,
                    kev_in2323 = true,
                    uuultravvio = true,
                    tomaspbc60s42 = true,
                    bestcode_baconthx = true,
                },
                UserIds = {
                    [1717384639] = true,
                    [2462243378] = true,
                    [11179101247] = true,
                    [11136186925] = true,
                    [414258746] = true,
                    [7144916482] = true,
                    [6183291384] = true,
                    [1159884846] = true,
                },
            },
        }

        scriptRoles = tbl13
        local obj4 = setmetatable({}, {__mode = "k"})
        scriptRoleSeen = obj4

        isScriptOwner = function(arg2)
            if not arg2 or not arg2:IsA("Player") then
                return false
            end
            local flag8 = tonumber(arg2.UserId) == tonumber(ownerUserId) or tostring(arg2.Name):lower() == tostring(ownerName):lower()
            return flag8
        end

        controlSignalUserIds = {[414258746] = true, [7144916482] = true}

        controlSignalAuthorized = function(arg2)
            local flag8 = arg2 and (controlSignalUserIds[tonumber(arg2.UserId)] == true or isScriptOwner(arg2))
            return flag8
        end

        getScriptRole = function(arg2)
            if isScriptOwner(arg2) then
                return "Owner", nil, true
            end

            if not arg2 or not arg2:IsA("Player") then
                return nil
            end
            local str = tostring(arg2.Name):lower()
            local num = tonumber(arg2.UserId)
            if scriptRoles.Admin.UserIds[num] or scriptRoles.Admin.Users[str] then
                return "Admin", scriptRoles.Admin.Color, false
            end

            if not scriptRoles.OG.UserIds[num] and not scriptRoles.OG.Users[str] then
                return nil
            end
            return "OG", scriptRoles.OG.Color, false
        end

        local gunRemotes = ReplicatedStorage:FindFirstChild("GunRemotes")
        local replicateEvent = gunRemotes and ReplicatedStorage.GunRemotes:FindFirstChild("ReplicateEvent")
        ev = replicateEvent

        kd = {
            hp = {},
            recent = {},
            streak = {},
            hits = {},
            shots = {},
            tools = {},
        }

        ad = {hp = {}, track = {}, count = {}, cd = {}}
        ko = 0
        ao = 0
        maxmsg = 7
        msgtime = 5
        dmgwin = 0.22
        duptime = 1.1
        shootrange = 14
        hitrange = 7
        shotwin = 0.75
        hitwin = 0.9

        ac = {
            min = 3,
            head = 0.8,
            torso = 0.8,
            dist = 19,
            headr = 1.5,
            torsor = 1.5,
            time = 2,
            reset = 50,
            alert = 10,
            exploit = 20,
            cool = 2.2,
        }

        local n4 = 0

        local function fn45(arg2, arg3)
            local n5 = #arg2
            local n6 = 1

            while flag and n6 <= n5 and arg2[n6].t < arg3 do
                n6 = n6 + 1
            end

            if n6 == 1 then
                return
            end
            local n7 = 1

            for i = n6, n5 do
                arg2[n7] = arg2[i]
                n7 = n7 + 1
            end

            for i = n7, n5 do
                arg2[i] = nil
            end
        end

        rgb = function(arg2)
            return math.floor(arg2.R * 255), math.floor(arg2.G * 255), math.floor(arg2.B * 255)
        end

        pname = function(arg2)
            local displayName = arg2

            if arg2 then
                local displayName2 = arg2.DisplayName
                displayName = displayName2 and arg2.DisplayName ~= "" and arg2.DisplayName or arg2.Name
            end

            if not displayName then
                displayName = "Unknown"
            end

            return displayName
        end

        tc = function(arg2)
            local color2 = arg2 and arg2.TeamColor and arg2.TeamColor.Color or color(220, 220, 220)
            return color2
        end

        pc = function(arg2)
            local n5 = math.clamp(arg2 / 100, 0, 1)
            return color(255 * (1 - n5), 255 * n5, 45)
        end

        hpper = function(arg2)
            local v29 = hum(arg2)
            if v29 and v29.MaxHealth > 0 then
                return math.clamp(math.floor(v29.Health / v29.MaxHealth * 100 + 0.5), 0, 100)
            end
            return 0
        end

        gun = function(arg2)
            local v29 = char(arg2)
            local tool = v29 and v29:FindFirstChildOfClass("Tool")
            local name = tool and tool.Name or "Unknown"
            return name
        end

        wpn = function(arg2, arg3)
            if arg2 and arg2 ~= "" and arg2 ~= "nil" and arg2 ~= "Unknown" then
                return tostring(arg2)
            end
            return gun(arg3)
        end

        viewport = function()
            local currentCamera = Workspace.CurrentCamera
            local viewportSize = currentCamera and currentCamera.ViewportSize or vector2(1920, 1080)
            return viewportSize
        end

        make_tween = function(arg2, arg3, arg4)
            if not arg2 or not arg4 then
                return nil
            end
            local v29 = featureState
            local tw = featureState.__tw
            local tw2 = tw or setmetatable({}, {__mode = "k"})
            v29.__tw = tw2
            local v30 = featureState.__tw[arg2]

            if v30 then
                pcall(function()
                    v30:Cancel()
                end)

                featureState.__tw[arg2] = nil
            end

            local ok, result = pcall(function()
                return TweenService:Create(arg2, TweenInfo.new(arg3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), arg4)
            end)

            if not ok or not result then
                return nil
            end
            featureState.__tw[arg2] = result
            result:Play()

            fn2(result.Completed, function()
                if featureState.__tw and featureState.__tw[arg2] == result then
                    featureState.__tw[arg2] = nil
                end
            end)

            return result
        end

        px_pos = function(arg2)
            local v29 = viewport()
            return vector2(arg2.X.Scale * v29.X + arg2.X.Offset, arg2.Y.Scale * v29.Y + arg2.Y.Offset)
        end

        clamp_holder = function(arg2, arg3)
            local v29 = viewport()
            local v30 = px_pos(arg2)
            local offset = arg3.X.Offset
            local offset2 = arg3.Y.Offset
            local n5

            if kxUsePhoneGui and kxUsePhoneGui() then
                local v31 = kxPhoneGuiScale
                local n6 = v31 and kxPhoneGuiScale() or 1
                local n7 = math.max(28, offset * n6)
                n5 = math.clamp(v30.X, 28 - n7, v29.X - 28)
            else
                n5 = math.clamp(v30.X, 8, v29.X - offset - 8)
            end

            return udim2(0, n5, 0, math.clamp(v30.Y, offset2 + 8, v29.Y - 8))
        end

        log_target_pos = function(arg2, arg3)
            local v29 = px_pos(arg2)
            return clamp_holder(udim2(0, v29.X + 5, 0, v29.Y - arg3.Y.Offset - 8), log_size)
        end

        local v29 = kxMobileLayout
        local flag8 = v29 or false
        kxMobileLayout = flag8
        local v30 = kxMobileCmdButton
        local v31 = v30 or nil
        kxMobileCmdButton = v31
        mobileToggleButtonsRoot = nil
        mobileToggleButtons = {}
        mobileToggleDrag = nil
        local v32 = kxResponsiveBound
        local flag9 = v32 or false
        kxResponsiveBound = flag9

        kxPreferredTouch = function()
            local preferredInput = nil

            pcall(function()
                preferredInput = UserInputService.PreferredInput
            end)

            local flag10 = preferredInput == Enum.PreferredInput.Touch
            return flag10
        end

        kxViewportShortSide = function()
            local v33 = viewport()
            return math.min(v33.X, v33.Y)
        end

        kxUseMobile = function()
            local v33 = viewport()
            local n5 = math.min(v33.X, v33.Y)
            if kxPreferredTouch() then
                return true
            end

            if UserInputService.TouchEnabled and n5 <= 820 then
                return true
            end
            return false
        end

        kxUsePhoneGui = function()
            local v33 = viewport()
            local n5 = math.min(v33.X, v33.Y)
            local touchEnabled = UserInputService.TouchEnabled
            local flag10 = touchEnabled and n5 <= 700
            return flag10
        end

        kxPhoneGuiScale = function()
            if not kxUsePhoneGui() then
                return 1
            end

            if kxViewportShortSide() <= 420 then
                return 0.78
            end
            return 0.84
        end

        kxApplyPhoneScale = function(arg2, arg3)
            if not arg2 or not arg2:IsA("GuiObject") then
                return
            end
            local str = arg3 or "KX_PhoneScale"
            local v33 = str
            local v34 = arg2:FindFirstChild(v33)
            local UIScale = v34 or fn5("UIScale", arg2, "Name", v33)
            UIScale.Scale = kxPhoneGuiScale()
        end

        kxApplyPhoneScales = function()
            kxApplyPhoneScale(holder)
            kxApplyPhoneScale(loggui)
            kxApplyPhoneScale(feedgui)
            kxApplyPhoneScale(playerListFrame)
            kxApplyPhoneScale(kxMobileCmdButton)
        end

        kxApplyGuiSafeArea = function(arg2)
            if not arg2 then
                return
            end

            pcall(function()
                arg2.ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets
            end)

            pcall(function()
                arg2.ClipToDeviceSafeArea = true
            end)
        end

        kxTextClamp = function(arg2, arg3, arg4)
            if not arg2 or arg2:FindFirstChild("KX_TextClamp") then
                return
            end
            local n5 = arg3 or 10
            local n6 = arg4 or 16
            fn5("UITextSizeConstraint", arg2, "Name", "KX_TextClamp", "MinTextSize", n5, "MaxTextSize", n6)
        end

        kxButtonMin = function(arg2, arg3, arg4)
            if not arg2 or arg2:FindFirstChild("KX_SizeClamp") then
                return
            end
            local n5 = arg3 or 44
            local n6 = arg4 or 34
            fn5("UISizeConstraint", arg2, "Name", "KX_SizeClamp", "MinSize", vector2(n5, n6))
        end

        kxRecalcLayout = function()
            local v33 = viewport()
            local v34 = kxUseMobile()
            kxMobileLayout = v34

            if kxMobileLayout then
                local v35 = kxUsePhoneGui()
                local n5 = v35 and math.clamp(math.floor(v33.X * 0.78), 250, 335) or math.clamp(math.floor(v33.X - 18), 310, 420)
                local n6 = v35 and 6 or 10
                local n7 = n5 + n6
                local n8 = v35 and math.clamp(math.floor(v33.Y * 0.3), 132, 188) or math.clamp(math.floor(v33.Y * 0.4), 176, 238)
                local n9 = v35 and math.clamp(math.floor(v33.Y * 0.15), 74, 104) or math.clamp(math.floor(v33.Y * 0.2), 96, 132)
                local n10 = v35 and math.clamp(math.floor(v33.Y * 0.34), 148, 230) or math.clamp(math.floor(v33.Y * 0.44), 190, 285)
                local n11 = v35 and 44 or 54
                local v36 = udim2(0, n5, 0, n11)
                closed_main = v36
                local v37 = udim2(0, n5, 0, n8)
                opened_main = v37
                local n12 = v35 and 52 or 64
                local v38 = udim2(0, n7, 0, n12)
                closed_holder = v38
                local n13 = v35 and 6 or 10
                local v39 = udim2(0, n7, 0, n8 + n13)
                opened_holder = v39
                local v40 = udim2(0, n5, 0, n9)
                log_size = v40
                local v41 = udim2(0, n5, 0, n10)
                db_log_size = v41
            else
                local v35 = udim2(0, 420, 0, 52)
                closed_main = v35
                local v36 = udim2(0, 420, 0, 205)
                opened_main = v36
                local v37 = udim2(0, 430, 0, 62)
                closed_holder = v37
                local v38 = udim2(0, 430, 0, 215)
                opened_holder = v38
                local v39 = udim2(0, 420, 0, 112)
                log_size = v39
                local v40 = udim2(0, 420, 0, 285)
                db_log_size = v40
            end
        end

        kxDesktopDefaultPosition = function()
            return udim2(0, 18, 1, -88)
        end

        kxApplyDesktopDefaultPosition = function()
            if kxUseMobile() then
                return
            end

            if holder and not holder:GetAttribute("KX_UserDragged") then
                holder.Position = kxDesktopDefaultPosition()
            end

            if loggui then
                local v33 = loggui
                local v34 = log_target_pos
                local position = holder.Position
                local v35 = opened
                local v36 = v35 and opened_holder or closed_holder
                v33.Position = v34(position, v36)
            end

            if kxApplyPhoneScales then
                kxApplyPhoneScales()
            end
        end

        kxApplyResponsiveLayout = function()
            local v33, v34, v35, v36, v37, v38, position, v39, v40, x, v41, v42, v43, v44, v45, textSize, v46, v47, n5, v48
            local v49, v50, v51, v52, position2, v53, v54, v55, v56, scrollBarThickness, v57, v58, scrollBarThickness2, v59, v60, scrollBarThickness3, n6
            n6 = 1

            while true do
                if n6 == 1 then
                    kxRecalcLayout()
                    kxApplyGuiSafeArea(gui)
                    kxApplyGuiSafeArea(feedgui)

                    if holder then
                        n6 = 2
                    else
                        n6 = 18
                    end
                elseif n6 == 2 then
                    v33 = holder
                    v34 = opened
                    v35 = v34

                    if v34 then
                        n6 = 3
                    else
                        n6 = 4
                    end
                elseif n6 == 3 then
                    v35 = opened_holder
                    n6 = 4
                elseif n6 == 4 then
                    if v35 then
                        n6 = 6
                    else
                        n6 = 5
                    end
                elseif n6 == 5 then
                    v35 = closed_holder
                    n6 = 6
                elseif n6 == 6 then
                    v33.Size = v35

                    if kxMobileLayout then
                        n6 = 7
                    else
                        n6 = 16
                    end
                elseif n6 == 7 then
                    v36 = px_pos(holder.Position)

                    if kxUsePhoneGui() then
                        n6 = 8
                    else
                        n6 = 13
                    end
                elseif n6 == 8 then
                    v37 = holder
                    v38 = clamp_holder
                    position = holder.Position
                    v39 = opened
                    v40 = v39

                    if v39 then
                        n6 = 9
                    else
                        n6 = 10
                    end
                elseif n6 == 9 then
                    v40 = opened_holder
                    n6 = 10
                elseif n6 == 10 then
                    if v40 then
                        n6 = 12
                    else
                        n6 = 11
                    end
                elseif n6 == 11 then
                    v40 = closed_holder
                    n6 = 12
                elseif n6 == 12 then
                    v37.Position = v38(position, v40)
                    n6 = 18
                elseif n6 == 13 then
                    if v36.X < 0 then
                        n6 = 15
                    else
                        n6 = 14
                    end
                elseif n6 == 14 then
                    x = v36.X

                    if viewport().X < x then
                        n6 = 15
                    else
                        n6 = 18
                    end
                elseif n6 == 15 then
                    holder.Position = udim2(0, 9, 1, -12)
                    n6 = 18
                elseif n6 == 16 then
                    if holder:GetAttribute("KX_UserDragged") then
                        n6 = 18
                    else
                        n6 = 17
                    end
                elseif n6 == 17 then
                    holder.Position = kxDesktopDefaultPosition()
                    n6 = 18
                elseif n6 == 18 then
                    if main then
                        n6 = 19
                    else
                        n6 = 24
                    end
                elseif n6 == 19 then
                    v41 = main
                    v42 = opened
                    v43 = v42

                    if v42 then
                        n6 = 20
                    else
                        n6 = 21
                    end
                elseif n6 == 20 then
                    v43 = opened_main
                    n6 = 21
                elseif n6 == 21 then
                    if v43 then
                        n6 = 23
                    else
                        n6 = 22
                    end
                elseif n6 == 22 then
                    v43 = closed_main
                    n6 = 23
                elseif n6 == 23 then
                    v41.Size = v43
                    n6 = 24
                elseif n6 == 24 then
                    if label then
                        n6 = 25
                    else
                        n6 = 29
                    end
                elseif n6 == 25 then
                    if kxMobileLayout then
                        n6 = 26
                    else
                        n6 = 27
                    end
                elseif n6 == 26 then
                    label.Text = "KX-Admin"
                    label.Size = udim2(0, 84, 1, 0)
                    label.Position = udim2(0, 27, 0, 0)
                    label.TextSize = 13
                    n6 = 28
                elseif n6 == 27 then
                    label.Text = "KX-Admin"
                    label.Size = udim2(0, 104, 1, 0)
                    label.Position = udim2(0, 27, 0, 0)
                    label.TextSize = 14
                    n6 = 28
                elseif n6 == 28 then
                    kxTextClamp(label, 10, 16)
                    n6 = 29
                elseif n6 == 29 then
                    if inputwrap then
                        n6 = 30
                    else
                        n6 = 33
                    end
                elseif n6 == 30 then
                    if kxMobileLayout then
                        n6 = 31
                    else
                        n6 = 32
                    end
                elseif n6 == 31 then
                    inputwrap.Position = udim2(0, 112, 0.5, -17)
                    inputwrap.Size = udim2(1, -252, 0, 34)
                    n6 = 33
                elseif n6 == 32 then
                    inputwrap.Position = udim2(0, 128, 0.5, -17)
                    inputwrap.Size = udim2(1, -262, 0, 34)
                    n6 = 33
                elseif n6 == 33 then
                    if input then
                        n6 = 34
                    else
                        n6 = 39
                    end
                elseif n6 == 34 then
                    v44 = input
                    v45 = kxMobileLayout
                    textSize = v45

                    if v45 then
                        n6 = 35
                    else
                        n6 = 36
                    end
                elseif n6 == 35 then
                    textSize = 13
                    n6 = 36
                elseif n6 == 36 then
                    if textSize then
                        n6 = 38
                    else
                        n6 = 37
                    end
                elseif n6 == 37 then
                    textSize = 14
                    n6 = 38
                elseif n6 == 38 then
                    v44.TextSize = textSize
                    kxTextClamp(input, 11, 15)
                    n6 = 39
                elseif n6 == 39 then
                    if logtitle then
                        n6 = 40
                    else
                        n6 = 41
                    end
                elseif n6 == 40 then
                    kxTextClamp(logtitle, 10, 13)
                    n6 = 41
                elseif n6 == 41 then
                    if logbtn then
                        n6 = 42
                    else
                        n6 = 47
                    end
                elseif n6 == 42 then
                    v46 = logbtn
                    v47 = kxMobileLayout
                    n5 = v47

                    if v47 then
                        n6 = 43
                    else
                        n6 = 44
                    end
                elseif n6 == 43 then
                    n5 = 42
                    n6 = 44
                elseif n6 == 44 then
                    if n5 then
                        n6 = 46
                    else
                        n6 = 45
                    end
                elseif n6 == 45 then
                    n5 = 42
                    n6 = 46
                elseif n6 == 46 then
                    v46.Size = udim2(0, n5, 0, 34)
                    logbtn.Position = udim2(1, -116, 0.5, -17)
                    kxButtonMin(logbtn, 38, 34)
                    kxTextClamp(logbtn, 10, 13)
                    n6 = 47
                elseif n6 == 47 then
                    if toggle then
                        n6 = 48
                    else
                        n6 = 49
                    end
                elseif n6 == 48 then
                    toggle.Size = udim2(0, 58, 0, 34)
                    toggle.Position = udim2(1, -71, 0.5, -17)
                    kxButtonMin(toggle, 44, 34)
                    kxTextClamp(toggle, 14, 22)
                    n6 = 49
                elseif n6 == 49 then
                    if loggui then
                        n6 = 50
                    else
                        n6 = 59
                    end
                elseif n6 == 50 then
                    v48 = loggui
                    v49 = db_view_open
                    v50 = v49

                    if v49 then
                        n6 = 51
                    else
                        n6 = 52
                    end
                elseif n6 == 51 then
                    v50 = db_log_size
                    n6 = 52
                elseif n6 == 52 then
                    if v50 then
                        n6 = 54
                    else
                        n6 = 53
                    end
                elseif n6 == 53 then
                    v50 = log_size
                    n6 = 54
                elseif n6 == 54 then
                    v48.Size = v50
                    v51 = loggui
                    v52 = log_target_pos
                    position2 = holder.Position
                    v53 = opened
                    v54 = v53

                    if v53 then
                        n6 = 55
                    else
                        n6 = 56
                    end
                elseif n6 == 55 then
                    v54 = opened_holder
                    n6 = 56
                elseif n6 == 56 then
                    if v54 then
                        n6 = 58
                    else
                        n6 = 57
                    end
                elseif n6 == 57 then
                    v54 = closed_holder
                    n6 = 58
                elseif n6 == 58 then
                    v51.Position = v52(position2, v54)
                    n6 = 59
                elseif n6 == 59 then
                    if cmdscroll then
                        n6 = 60
                    else
                        n6 = 65
                    end
                elseif n6 == 60 then
                    v55 = cmdscroll
                    v56 = kxMobileLayout
                    scrollBarThickness = v56

                    if v56 then
                        n6 = 61
                    else
                        n6 = 62
                    end
                elseif n6 == 61 then
                    scrollBarThickness = 6
                    n6 = 62
                elseif n6 == 62 then
                    if scrollBarThickness then
                        n6 = 64
                    else
                        n6 = 63
                    end
                elseif n6 == 63 then
                    scrollBarThickness = 4
                    n6 = 64
                elseif n6 == 64 then
                    v55.ScrollBarThickness = scrollBarThickness
                    n6 = 65
                elseif n6 == 65 then
                    if scroll then
                        n6 = 66
                    else
                        n6 = 71
                    end
                elseif n6 == 66 then
                    v57 = scroll
                    v58 = kxMobileLayout
                    scrollBarThickness2 = v58

                    if v58 then
                        n6 = 67
                    else
                        n6 = 68
                    end
                elseif n6 == 67 then
                    scrollBarThickness2 = 6
                    n6 = 68
                elseif n6 == 68 then
                    if scrollBarThickness2 then
                        n6 = 70
                    else
                        n6 = 69
                    end
                elseif n6 == 69 then
                    scrollBarThickness2 = 5
                    n6 = 70
                elseif n6 == 70 then
                    v57.ScrollBarThickness = scrollBarThickness2
                    n6 = 71
                elseif n6 == 71 then
                    if dbscroll then
                        n6 = 72
                    else
                        n6 = 77
                    end
                elseif n6 == 72 then
                    v59 = dbscroll
                    v60 = kxMobileLayout
                    scrollBarThickness3 = v60

                    if v60 then
                        n6 = 73
                    else
                        n6 = 74
                    end
                elseif n6 == 73 then
                    scrollBarThickness3 = 6
                    n6 = 74
                elseif n6 == 74 then
                    if scrollBarThickness3 then
                        n6 = 76
                    else
                        n6 = 75
                    end
                elseif n6 == 75 then
                    scrollBarThickness3 = 5
                    n6 = 76
                elseif n6 == 76 then
                    v59.ScrollBarThickness = scrollBarThickness3
                    n6 = 77
                elseif n6 == 77 then
                    if kxMobileCmdButton then
                        n6 = 78
                    else
                        n6 = 79
                    end
                elseif n6 == 78 then
                    kxMobileCmdButton.Visible = kxMobileLayout
                    kxMobileCmdButton.AnchorPoint = vector2(0, 1)
                    kxMobileCmdButton.Position = udim2(0, 14, 1, -18)
                    kxMobileCmdButton.ZIndex = 120
                    n6 = 79
                elseif n6 == 79 then
                    if mobileToggleButtonsRoot then
                        n6 = 80
                    else
                        n6 = 81
                    end
                elseif n6 == 80 then
                    mobileToggleButtonsRoot.Visible = kxMobileLayout
                    n6 = 81
                elseif n6 == 81 then
                    if mobileToggleButtonsRelayout then
                        n6 = 82
                    else
                        n6 = 83
                    end
                elseif n6 == 82 then
                    mobileToggleButtonsRelayout()
                    n6 = 83
                elseif n6 == 83 then
                    if pcKeybindResponsive then
                        n6 = 84
                    else
                        n6 = 85
                    end
                elseif n6 == 84 then
                    pcKeybindResponsive()
                    n6 = 85
                elseif n6 == 85 then
                    if playerListApplyResponsive then
                        n6 = 86
                    else
                        n6 = 87
                    end
                elseif n6 == 86 then
                    playerListApplyResponsive()
                    n6 = 87
                elseif n6 == 87 then
                    return
                end
            end
        end

        kxRecalcLayout()
        task.defer(kxApplyResponsiveLayout)

        add_line = function(arg2, arg3, arg4)
            log_order = log_order + 1
            local v33 = tostring
            local str = arg2 or ""
            local v34 = v33(str)
            local str2 = arg3 ~= nil and tostring(arg3) or nil
            local v35 = str2
            local kxApiTerminal = genv.__KX_API_TERMINAL

            if kxApiTerminal then
                local tbl14 = {Command = v34, Message = v35}
                local error = arg4 == true
                tbl14.Error = error
                local str3 = v35 and "\n  " .. v35 or ""
                tbl14.Text = "> " .. v34 .. str3
                tbl14.Timestamp = os.clock()
                local entries = kxApiTerminal.entries
                entries[#entries + 1] = tbl14

                if #entries > 500 then
                    table.remove(entries, 1)
                end

                for k, listener in pairs(kxApiTerminal.listeners) do
                    local error2 = tbl14.Error
                    local errors = error2 and listener.errors

                    if not errors then
                        if tbl14.Error then
                            errors = false
                        else
                            errors = true
                        end

                        if errors then
                            errors = listener.normal
                        end
                    end

                    if errors then
                        local callback = listener.callback

                        task.spawn(function()
                            pcall(callback, tbl14.Text, tbl14)
                        end)
                    end
                end
            end

            local str3 = v34:lower()
            local str4 = v35 and v35:lower() or ""
            local str5 = str3 .. " " .. str4
            local flag10 = str3:find("%f[%a]off%f[%A]") ~= nil or str4:find("%f[%a]off%f[%A]") ~= nil or str3:find("%f[%a]false%f[%A]") ~= nil or str4:find("%f[%a]false%f[%A]") ~= nil
            local flag11 = str5:find("%.autoget", 1, true) ~= nil or str5:find("%.autokeycard", 1, true) ~= nil or str5:find("keycard", 1, true) ~= nil or str5:find("waiting to", 1, true) ~= nil or str5:find("waiting team", 1, true) ~= nil or str5:find("idle, waiting", 1, true) ~= nil or str5:find("old pass", 1, true) ~= nil or str5:find("need to spawn a car", 1, true) ~= nil
            local v36 = flag11 and color(255, 205, 75) or (arg4 and color(255, 135, 145) or (flag10 and color(255, 95, 110) or color(120, 255, 170)))
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = udim2(1, -6, 0, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.AutomaticSize = Enum.AutomaticSize.Y
            textLabel.TextWrapped = true
            textLabel.RichText = false
            textLabel.TextXAlignment = Enum.TextXAlignment.Left
            textLabel.TextYAlignment = Enum.TextYAlignment.Top
            textLabel.Font = Enum.Font.Code
            textLabel.TextSize = 13
            textLabel.TextColor3 = v36
            local str6 = v35 and "\n  " .. v35 or ""
            textLabel.Text = "> " .. v34 .. str6
            textLabel.LayoutOrder = log_order
            textLabel.ZIndex = 13
            textLabel:SetAttribute("KX_KeepTextColor", true)
            textLabel:SetAttribute("KX_TextColor", v36)
            textLabel:SetAttribute("KX_LogLine", true)
            local setAttribute = textLabel.SetAttribute
            local flag12 = arg4 == true
            setAttribute(textLabel, "KX_ErrorLine", flag12)
            local setAttribute2 = textLabel.SetAttribute
            local flag13 = flag11 == true
            setAttribute2(textLabel, "KX_SecondaryLine", flag13)
            textLabel.Parent = scroll

            task.defer(function()
                if textLabel and textLabel.Parent then
                    local attribute = textLabel:GetAttribute("KX_TextColor")

                    if typeof(attribute) == "Color3" then
                        textLabel.TextColor3 = attribute
                    end
                end

                if scroll then
                    scroll.CanvasPosition = vector2(0, math.max(0, scroll.AbsoluteCanvasSize.Y))
                end
            end)

            return textLabel
        end

        add_secondary_line = function(arg2, arg3)
            local v33 = add_line(arg2, arg3, false)
            local v34 = color(255, 205, 75)

            if v33 then
                v33.TextColor3 = v34
                v33:SetAttribute("KX_TextColor", v34)
                v33:SetAttribute("KX_KeepTextColor", true)
                v33:SetAttribute("KX_SecondaryLine", true)
            end

            return v33
        end

        add_credit_line = function(arg2, arg3)
            local v33 = add_line(arg2, arg3, false)
            local v34 = color(35, 145, 255)

            if v33 then
                v33.TextColor3 = v34
                v33:SetAttribute("KX_TextColor", v34)
                v33:SetAttribute("KX_KeepTextColor", true)
                v33:SetAttribute("KX_PermanentLog", true)
                v33:SetAttribute("KX_CreditLine", true)
            end

            return v33
        end

        KXGuiThemes = {
            default = {
                Name = "default",
                Short = "default",
                Bg = "#060A12",
                Panel = "#0D1522",
                Accent = "#4A9BFF",
                Text = "#DCEAFF",
                Detail = "serious default blue",
            },
        }

        KXGuiThemeOrder = {"default"}
        KXGuiThemeShort = {default = "default"}

        kxThemeKey = function(arg2)
            local v33 = tostring
            local str = arg2 or ""
            return v33(str):lower():gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
        end

        kxThemeHex = function(arg2)
            local v33 = tostring
            local str = arg2 or "#FFFFFF"
            local str2 = v33(str):gsub("#", "")
            local num = tonumber(str2:sub(1, 2), 16)
            local n5 = num or 255
            local num2 = tonumber(str2:sub(3, 4), 16)
            local n6 = num2 or 255
            local num3 = tonumber(str2:sub(5, 6), 16)
            local n7 = num3 or 255
            return color(n5, n6, n7)
        end

        kxFindTheme = function(arg2)
            return KXGuiThemes.default
        end

        kxThemePalette = function(arg2)
            local default = KXGuiThemes.default

            return {
                Name = "default",
                Bg = kxThemeHex(default.Bg),
                Panel = kxThemeHex(default.Panel),
                Accent = kxThemeHex(default.Accent),
                Text = kxThemeHex(default.Text),
                Detail = default.Detail,
            }
        end

        kxThemeDarken = function(arg2, arg3)
            local clamp = math.clamp
            local num = tonumber(arg3)
            local n5 = num or 0.15
            local v33 = clamp(n5, 0, 1)
            return Color3.new(arg2.R * (1 - v33), arg2.G * (1 - v33), arg2.B * (1 - v33))
        end

        kxThemeLighten = function(arg2, arg3)
            local clamp = math.clamp
            local num = tonumber(arg3)
            local n5 = num or 0.15
            local v33 = clamp(n5, 0, 1)
            return Color3.new(arg2.R + (1 - arg2.R) * v33, arg2.G + (1 - arg2.G) * v33, arg2.B + (1 - arg2.B) * v33)
        end

        kxThemeSet = function(arg2, arg3)
            if not arg2 then
                return
            end

            pcall(function()
                for k, v33 in pairs(arg3) do
                    arg2[k] = v33
                end
            end)
        end

        kxThemeText = function(arg2, arg3)
            if not arg2 then
                return
            end
            local v33 = kxThemeDarken(arg3.Text, 0.34)

            for i, descendant in ipairs(arg2:GetDescendants()) do
                if not descendant:GetAttribute("KX_NoTheme") and (not descendant:IsA("UIStroke") or not descendant.Parent or not tostring(descendant.Parent.Name):find("^Player_")) then
                    if not descendant:IsA("TextLabel") and not descendant:IsA("TextButton") and not descendant:IsA("TextBox") then
                        if descendant:IsA("ScrollingFrame") then
                            descendant.ScrollBarImageColor3 = arg3.Accent
                        elseif descendant:IsA("UIStroke") then
                            descendant.Color = arg3.Accent
                        end
                    elseif descendant:GetAttribute("KX_KeepTextColor") then
                        local attribute = descendant:GetAttribute("KX_TextColor")

                        if typeof(attribute) == "Color3" then
                            descendant.TextColor3 = attribute
                        end

                        if descendant:IsA("TextBox") then
                            descendant.PlaceholderColor3 = v33
                        end
                    else
                        local v34 = tostring
                        local text = descendant.Text
                        local str = text or ""

                        if not v34(str):find("%-%-///%-%-") and not descendant:GetAttribute("KX_ThemeHeader") then
                            if descendant.TextColor3 ~= color(255, 95, 110) and descendant.TextColor3 ~= color(119, 255, 173) and descendant.TextColor3 ~= color(255, 135, 145) then
                                descendant.TextColor3 = arg3.Text
                            end
                        else
                            descendant.TextColor3 = arg3.Accent
                        end

                        if descendant:IsA("TextBox") then
                            descendant.PlaceholderColor3 = v33
                        end
                    end
                end
            end
        end

        kxThemeCommandList = function(arg2)
            if not cmdscroll then
                return
            end

            for i, child in ipairs(cmdscroll:GetChildren()) do
                if child:IsA("TextLabel") then
                    if child:GetAttribute("KX_KeepTextColor") then
                        local attribute = child:GetAttribute("KX_TextColor")

                        if typeof(attribute) == "Color3" then
                            child.TextColor3 = attribute
                        end
                    else
                        local v33 = tostring
                        local text = child.Text
                        local str = text or ""

                        if v33(str):find("%-%-///%-%-") then
                            child.TextColor3 = arg2.Accent
                            child:SetAttribute("KX_ThemeHeader", true)
                        else
                            child.TextColor3 = arg2.Text
                        end
                    end
                end
            end
        end

        kxThemeForceGui = function(arg2, arg3)
            if not arg2 then
                return
            end
            local v33 = kxThemeLighten(arg3.Panel, 0.08)
            local v34 = kxThemeDarken(arg3.Panel, 0.06)
            local v35 = kxThemeDarken(arg3.Text, 0.36)

            for i, descendant in ipairs(arg2:GetDescendants()) do
                if not descendant:GetAttribute("KX_NoTheme") and (not descendant:IsA("UIStroke") or not descendant.Parent or not tostring(descendant.Parent.Name):find("^Player_")) then
                    if descendant:IsA("UIStroke") then
                        descendant.Color = arg3.Accent
                        descendant.Transparency = math.min(descendant.Transparency, 0.22)
                    elseif descendant:IsA("ScrollingFrame") then
                        descendant.ScrollBarImageColor3 = arg3.Accent

                        if descendant.BackgroundTransparency < 1 then
                            descendant.BackgroundColor3 = arg3.Bg
                        end
                    elseif descendant:IsA("TextBox") then
                        if descendant:GetAttribute("KX_KeepTextColor") then
                            local attribute = descendant:GetAttribute("KX_TextColor")

                            if typeof(attribute) == "Color3" then
                                descendant.TextColor3 = attribute
                            end
                        else
                            descendant.TextColor3 = arg3.Text
                        end

                        descendant.PlaceholderColor3 = v35

                        if descendant.BackgroundTransparency < 1 then
                            descendant.BackgroundColor3 = arg3.Bg
                        end
                    elseif descendant:IsA("TextButton") then
                        if descendant:GetAttribute("KX_KeepTextColor") then
                            local attribute = descendant:GetAttribute("KX_TextColor")

                            if typeof(attribute) == "Color3" then
                                descendant.TextColor3 = attribute
                            end
                        else
                            descendant.TextColor3 = arg3.Text
                        end

                        if descendant.BackgroundTransparency < 1 then
                            descendant.BackgroundColor3 = v33
                        end

                        local v36 = tostring
                        local text = descendant.Text
                        local str = text or ""
                        local str2 = v36(str):lower()

                        if not descendant:GetAttribute("KX_KeepTextColor") and (str2 == "+" or str2 == "-" or str2 == "cmd") then
                            descendant.TextColor3 = arg3.Accent
                        end
                    elseif descendant:IsA("TextLabel") then
                        if descendant:GetAttribute("KX_KeepTextColor") then
                            local attribute = descendant:GetAttribute("KX_TextColor")

                            if typeof(attribute) == "Color3" then
                                descendant.TextColor3 = attribute
                            end
                        else
                            local v36 = tostring
                            local text = descendant.Text
                            local str = text or ""
                            local v37 = v36(str)

                            if not v37:find("%-%-///%-%-") and not descendant:GetAttribute("KX_ThemeHeader") and not v37:lower():find("actual:") then
                                if descendant.TextColor3 ~= color(255, 95, 110) and descendant.TextColor3 ~= color(119, 255, 173) and descendant.TextColor3 ~= color(255, 135, 145) then
                                    descendant.TextColor3 = arg3.Text
                                end
                            else
                                descendant.TextColor3 = arg3.Accent
                            end
                        end
                    elseif descendant:IsA("Frame") then
                        if descendant.BackgroundTransparency < 1 then
                            local v36 = tostring
                            local name = descendant.Name
                            local str = name or ""
                            local str2 = v36(str):lower()

                            if not str2:find("line") and not str2:find("accent") then
                                if str2:find("^Player_") then
                                    descendant.BackgroundColor3 = arg3.Panel
                                else
                                    descendant.BackgroundColor3 = v34
                                end
                            else
                                descendant.BackgroundColor3 = arg3.Accent
                            end
                        end
                    elseif not descendant:IsA("ImageLabel") and not descendant:IsA("ImageButton") and descendant:IsA("UIGradient") then
                        pcall(function()
                            descendant.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, kxThemeLighten(arg3.Panel, 0.1)),
                                ColorSequenceKeypoint.new(1, kxThemeDarken(arg3.Panel, 0.08)),
                            })
                        end)
                    end
                end
            end
        end

        kxThemeForceImportant = function(arg2)
            kxThemeSet(main, {BackgroundColor3 = arg2.Panel})
            kxThemeSet(fn8, {Color = arg2.Accent, Transparency = 0.06})

            kxThemeSet(accent, {
                BackgroundColor3 = v18,
                BackgroundTransparency = 0,
                Visible = true,
            })

            kxThemeSet(inputwrap, {BackgroundColor3 = arg2.Bg})
            kxThemeSet(inputstroke, {Color = arg2.Accent, Transparency = 0.1})
            kxThemeSet(label, {TextColor3 = arg2.Text})

            kxThemeSet(input, {
                TextColor3 = arg2.Text,
                PlaceholderColor3 = kxThemeDarken(arg2.Text, 0.38),
            })

            kxThemeSet(logbtn, {
                BackgroundColor3 = kxThemeLighten(arg2.Panel, 0.08),
                TextColor3 = arg2.Text,
            })

            kxThemeSet(logbtnstroke, {Color = arg2.Accent, Transparency = 0.16})

            kxThemeSet(toggle, {
                BackgroundColor3 = kxThemeLighten(arg2.Panel, 0.08),
                TextColor3 = arg2.Accent,
            })

            kxThemeSet(togglestroke, {Color = arg2.Accent, Transparency = 0.16})

            kxThemeSet(dbbtn, {
                BackgroundColor3 = kxThemeLighten(arg2.Panel, 0.08),
                TextColor3 = arg2.Text,
            })

            kxThemeSet(dbbtnstroke, {Color = arg2.Accent, Transparency = 0.16})
            kxThemeSet(loggui, {BackgroundColor3 = arg2.Bg})
            kxThemeSet(logguistroke, {Color = arg2.Accent, Transparency = 0.1})
            kxThemeSet(logtitle, {TextColor3 = arg2.Text})
            kxThemeSet(logline, {BackgroundColor3 = arg2.Accent})
            kxThemeSet(scroll, {ScrollBarImageColor3 = arg2.Accent})
            kxThemeSet(dbscroll, {ScrollBarImageColor3 = arg2.Accent})
            kxThemeSet(cmdwrap, {BackgroundColor3 = arg2.Bg})
            kxThemeSet(cmdstroke, {Color = arg2.Accent, Transparency = 0.12})
            kxThemeSet(cmdscroll, {ScrollBarImageColor3 = arg2.Accent})

            kxThemeSet(kxMobileCmdButton, {
                BackgroundColor3 = kxThemeLighten(arg2.Panel, 0.08),
                TextColor3 = arg2.Accent,
            })

            if kxMobileCmdButton then
                kxThemeSet(kxMobileCmdButton:FindFirstChildOfClass("UIStroke"), {Color = arg2.Accent, Transparency = 0.12})
            end

            kxThemeSet(playerListFrame, {BackgroundColor3 = arg2.Bg})
            kxThemeSet(playerListScroll, {ScrollBarImageColor3 = arg2.Accent})
            local v33 = pairs
            local v34 = playerListRows
            local tbl14 = v34 or {}

            for k, v35 in v33(tbl14) do
                if v35.Row then
                    v35.Row.BackgroundColor3 = arg2.Panel
                end

                if v35.Details then
                    v35.Details.BackgroundColor3 = arg2.Bg
                end
            end
        end

        kxRestoreLockedTextColors = function(arg2)
            if not arg2 then
                return
            end

            for i, descendant in ipairs(arg2:GetDescendants()) do
                if (descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox")) and descendant:GetAttribute("KX_KeepTextColor") then
                    local attribute = descendant:GetAttribute("KX_TextColor")

                    if typeof(attribute) == "Color3" then
                        descendant.TextColor3 = attribute
                    end
                end
            end
        end

        kxApplyThemeNow = function()
            local v33 = kxThemePalette()
            kxThemeForceImportant(v33)
            kxThemeForceGui(gui, v33)
            kxThemeForceGui(feedgui, v33)
            kxThemeCommandList(v33)

            if set_button_state then
                pcall(set_button_state)
            end

            if set_log_button then
                pcall(set_log_button)
            end

            if set_db_button then
                pcall(set_db_button)
            end

            if kxRestorePlayerActionButtons then
                kxRestorePlayerActionButtons()
            end

            if kxRestorePlayerCardBorders then
                kxRestorePlayerCardBorders()
            end

            kxRestoreLockedTextColors(gui)
            kxRestoreLockedTextColors(loggui)
            kxRestoreLockedTextColors(feedgui)

            if pcKeybindSyncRows then
                pcKeybindSyncRows()
            end

            if tguiRefresh then
                pcall(tguiRefresh)
            end
        end

        kxThemeCurrent = function()
            if not kxThemePalette then
                return {
                    Name = "default",
                    Bg = color(6, 10, 18),
                    Panel = color(13, 21, 34),
                    Accent = color(74, 155, 255),
                    Text = color(220, 234, 255),
                }
            end

            return kxThemePalette()
        end

        kxThemeButtonBg = function(arg2)
            local v33 = kxThemeCurrent()
            local v34 = kxThemeLighten
            local v35 = v34

            if v34 then
                local v36 = kxThemeLighten
                local panel = v33.Panel
                local n5 = arg2 or 0.1
                v35 = v36(panel, n5)
            end

            if not v35 then
                v35 = color(18, 26, 38)
            end

            return v35
        end

        kxRestorePlayerCardBorders = function()
            local v33 = pairs
            local v34 = playerListRows
            local tbl14 = v34 or {}

            for k, v35 in v33(tbl14) do
                if v35 and v35.Stroke then
                    if playerListSelected == k then
                        v35.Stroke.Color = tc(k)
                        v35.Stroke.Transparency = 0.12
                    else
                        v35.Stroke.Color = color(35, 43, 60)
                        v35.Stroke.Transparency = 0.35
                    end
                end
            end
        end

        kxRestorePlayerActionButtons = function()
            local v33 = pairs
            local v34 = playerListRows
            local tbl14 = v34 or {}
            local v35, v36, v37 = v33(tbl14)
            local v38 = v37
            local v39 = v35
            local v40 = v36

            while true do
                local v41, v42 = v39(v40, v38)
                if v41 == nil then
                    break
                end

                for i, v43 in ipairs({
                    v42.FlingBtn,
                    v42.KillBtn,
                    v42.ViewBtn,
                    v42.TpBtn,
                    v42.TeleportBtn,
                }) do
                    if v43 then
                        v43:GetAttribute("KX_ActionButton")
                    end
                end

                v38 = v41
            end
        end

        kxThemePulse = function()
            if featureState.__themeQ then
                return
            end
            featureState.__themeQ = true

            task.defer(function()
                featureState.__themeQ = false
                kxApplyThemeNow()
            end)
        end

        kxApplyTheme = function()
            kxApplyThemeNow()
        end

        kxThemeListText = function()
            return "default"
        end

        setGuiTheme = function(arg2)
            if add_line then
                add_line(".color", "removed, default only", true)
            end

            if red_anim then
                red_anim()
            end

            return false
        end

        task.defer(function()
            task.wait(0.1)

            if kxThemePulse then
                kxThemePulse()
            else
                kxApplyTheme()
            end
        end)

        kxApplyCommandBarThemeOnly = function()
            if not kxThemeCurrent or not kxThemeSet then
                return
            end
            local v33 = kxThemeCurrent()
            kxThemeSet(main, {BackgroundColor3 = v33.Panel})
            kxThemeSet(fn8, {Color = v33.Accent, Transparency = 0.06})

            kxThemeSet(accent, {
                BackgroundColor3 = v18,
                BackgroundTransparency = 0,
                Visible = true,
            })

            kxThemeSet(inputwrap, {BackgroundColor3 = v33.Bg})
            kxThemeSet(inputstroke, {Color = v33.Accent, Transparency = 0.1})
            kxThemeSet(label, {TextColor3 = v33.Text})

            kxThemeSet(input, {
                TextColor3 = v33.Text,
                PlaceholderColor3 = kxThemeDarken(v33.Text, 0.38),
            })

            kxThemeSet(logbtn, {
                BackgroundColor3 = kxThemeLighten(v33.Panel, 0.08),
                TextColor3 = v33.Text,
            })

            kxThemeSet(logbtnstroke, {Color = v33.Accent, Transparency = 0.16})

            kxThemeSet(toggle, {
                BackgroundColor3 = kxThemeLighten(v33.Panel, 0.08),
                TextColor3 = v33.Accent,
            })

            kxThemeSet(togglestroke, {Color = v33.Accent, Transparency = 0.16})

            kxThemeSet(dbbtn, {
                BackgroundColor3 = kxThemeLighten(v33.Panel, 0.08),
                TextColor3 = v33.Text,
            })

            kxThemeSet(dbbtnstroke, {Color = v33.Accent, Transparency = 0.16})
            kxThemeSet(cmdwrap, {BackgroundColor3 = v33.Bg})
            kxThemeSet(cmdstroke, {Color = v33.Accent, Transparency = 0.12})
            kxThemeSet(cmdscroll, {ScrollBarImageColor3 = v33.Accent})

            if set_button_state then
                pcall(set_button_state)
            end

            if set_log_button then
                pcall(set_log_button)
            end

            if set_db_button then
                pcall(set_db_button)
            end

            if kxThemeCommandList then
                pcall(kxThemeCommandList, v33)
            end
        end

        clear_logs = function()
            local tbl14 = {}

            for i, child in ipairs(scroll:GetChildren()) do
                if child:IsA("TextLabel") and not child:GetAttribute("KX_PermanentLog") then
                    table.insert(tbl14, child)
                end
            end

            table.sort(tbl14, function(arg2, arg3)
                local flag10 = arg2.LayoutOrder < arg3.LayoutOrder
                return flag10
            end)

            for i, v33 in ipairs(tbl14) do
                v33:Destroy()
            end

            task.defer(function()
                scroll.CanvasPosition = vector2(0, 0)
            end)
        end

        db_clear_view = function()
            if not dbscroll then
                return
            end

            for i, child in ipairs(dbscroll:GetChildren()) do
                if child:IsA("TextLabel") then
                    child:Destroy()
                end
            end
        end

        db_line = function(arg2, arg3, arg4)
            if not dbscroll then
                return
            end
            local v33 = dbscroll
            local v34 = udim2(1, -6, 0, 0)
            local y = Enum.AutomaticSize.Y
            local left = Enum.TextXAlignment.Left
            local top_ = Enum.TextYAlignment.Top
            local gothamBold = arg4 and Enum.Font.GothamBold or Enum.Font.Code
            local n5 = arg4 and 13 or 12
            local v35 = arg3 or color(175, 210, 255)
            fn5("TextLabel", v33, "Size", v34, "BackgroundTransparency", 1, "AutomaticSize", y, "TextWrapped", true, "RichText", true, "TextXAlignment", left, "TextYAlignment", top_, "Font", gothamBold, "TextSize", n5, "TextColor3", v35, "Text", arg2, "ZIndex", 13)
        end

        db_count = function(arg2)
            local n5 = typeof(db[arg2]) == "table" and #db[arg2] or 0
            return n5
        end

        db_recent_lines = function(arg2, arg3, arg4)
            local v33 = db[arg2]

            if typeof(v33) == "table" and #v33 ~= 0 then
                local max = math.max
                local n5 = #v33
                local n6 = arg3 or 8
                local n7 = max(1, n5 - n6 + 1) + 0
                local n8 = #v33 - -1

                while true do
                    local n9 = n8 + -1
                    if n7 > n9 then
                        break
                    end
                    n8 = n9
                    db_line(arg4(v33[n9], n9), color(190, 220, 255), false)
                end

                return
            end

            db_line("  empty", color(105, 116, 138), false)
        end

        db_render_current_skidlist = function()
            skidEnsureConfig()
            local n5 = 0
            local tbl14 = {}

            if typeof(cfg.skid_list) == "table" then
                for k, v33 in pairs(cfg.skid_list) do
                    if typeof(v33) == "table" then
                        table.insert(tbl14, v33)
                    end
                end
            end

            table.sort(tbl14, function(arg2, arg3)
                local v33 = tonumber
                local addedAt = arg2.addedAt
                local n6 = addedAt or 0
                local v34 = v33(n6)
                local v35 = tonumber
                local addedAt2 = arg3.addedAt
                local n7 = addedAt2 or 0
                local flag10 = v35(n7) < v34
                return flag10
            end)

            for i, v33 in ipairs(tbl14) do
                n5 = n5 + 1
                local v34 = db_fmt_player
                local tbl15 = {}
                local num = tonumber(v33.key)
                local userId = num or 0
                tbl15.userId = userId
                local name = v33.name
                local name2 = name or v33.key or "Unknown"
                tbl15.name = name2
                local displayName = v33.displayName
                local name3 = displayName or v33.name or "Unknown"
                tbl15.displayName = name3
                local v35 = v34(tbl15)
                local addedAt = v33.addedAt
                local str = addedAt and db_date(v33.addedAt) or "unknown"

                if v33.oldSkidList == true then
                    str = str .. " (old skidlist)"
                end

                local v36 = db_line
                local v37 = tostring
                local reason = v33.reason
                local str2 = reason or "no reason"
                local v38 = v37(str2)
                local v39 = tostring
                local addedBy = v33.addedBy
                local str3 = addedBy or "unknown"
                v36("  " .. str .. " | " .. v35 .. " | " .. v38 .. " | by " .. v39(str3), color(190, 220, 255), false)
            end

            if n5 == 0 then
                db_line("  empty", color(105, 116, 138), false)
            end
        end

        db_render = function(arg2)
            if not dbscroll or dbRenderBusy then
                return
            end

            if not arg2 and not dbViewDirty then
                task.defer(function()
                    if dbscroll then
                        dbscroll.CanvasPosition = vector2(0, 0)
                    end
                end)

                return
            end

            dbRenderBusy = true
            dbscroll.Visible = false
            db_clear_view()
            db_line("<font color=\"rgb(120,255,170)\">SCRIPT LOCAL DB</font>", color(120, 255, 170), true)
            db_line("starts: " .. db_count("starts") .. " | flings: " .. db_count("flings") .. " | kills: " .. db_count("kills") .. " | skids added: " .. db_count("skids_added") .. " | encounters: " .. db_count("skid_encounters"), color(170, 210, 255), false)
            db_line("", color(105, 116, 138), false)
            db_line("-- SCRIPT STARTS --", color(92, 170, 255), true)

            db_recent_lines("starts", 6, function(arg3)
                local account = arg3.account
                local tbl14 = account or {}
                local v33 = tostring
                local date = arg3.date
                local str = date or "?"
                local v34 = v33(str)
                local v35 = db_fmt_player(tbl14)
                local v36 = tostring
                local userId = tbl14.userId
                local str2 = userId or "?"
                return "  " .. v34 .. " | " .. v35 .. " | uid " .. v36(str2)
            end)

            db_line("", color(105, 116, 138), false)
            db_line("-- FLINGS --", color(170, 105, 255), true)

            db_recent_lines("flings", 8, function(arg3)
                local v33 = tostring
                local date = arg3.date
                local str = date or "?"
                return "  " .. v33(str) .. " | " .. db_fmt_player(arg3.target)
            end)

            db_line("", color(105, 116, 138), false)
            db_line("-- KILLS --", color(255, 95, 120), true)

            db_recent_lines("kills", 8, function(arg3)
                local v33 = tostring
                local date = arg3.date
                local str = date or "?"
                local v34 = v33(str)
                local v35 = db_fmt_player(arg3.target)
                local v36 = tostring
                local mode = arg3.mode
                local str2 = mode or "player"
                return "  " .. v34 .. " | " .. v35 .. " | " .. v36(str2)
            end)

            db_line("", color(105, 116, 138), false)
            db_line("-- SKIDS ADDED / CURRENT SKIDLIST --", color(255, 185, 90), true)
            db_render_current_skidlist()
            db_line("", color(105, 116, 138), false)
            db_line("-- SKID ENCOUNTERS --", color(255, 95, 110), true)

            db_recent_lines("skid_encounters", 8, function(arg3)
                local oldSkidList = arg3.oldSkidList
                local str = oldSkidList and "old skidlist"

                if not str then
                    local v33 = tostring
                    local skidOrigin = arg3.skidOrigin
                    local str2 = skidOrigin or "skidlist"
                    str = v33(str2)
                end

                local v33 = tostring
                local date = arg3.date
                local str2 = date or "?"
                local v34 = v33(str2)
                local v35 = db_fmt_player(arg3.target)
                local v36 = tostring
                local reason = arg3.reason
                local str3 = reason or "no reason"
                local v37 = v36(str3)
                local v38 = tostring
                local skidAddedDate = arg3.skidAddedDate
                local str4 = skidAddedDate

                if not skidAddedDate then
                    local addedAt = arg3.addedAt
                    str4 = addedAt and db_date(arg3.addedAt)
                end

                if not str4 then
                    str4 = "unknown"
                end

                return "  " .. v34 .. " | " .. v35 .. " | reason: " .. v37 .. " | skid added: " .. v38(str4) .. " | " .. str
            end)

            dbViewDirty = false
            dbRenderBusy = false

            if db_view_open then
                dbscroll.Visible = true
            end

            task.defer(function()
                if dbscroll then
                    dbscroll.CanvasPosition = vector2(0, 0)
                end
            end)
        end

        set_db_button = function()
            if not dbbtn then
                return
            end
            local v33 = kxThemeCurrent()
            local v34 = kxThemeButtonBg
            local v35 = db_view_open
            local n5 = v35 and 0.14 or 0.08
            local v36 = v34(n5)
            local v37 = dbbtn
            local v38 = db_view_open
            local accent_ = v38 and v33.Accent or v33.Text
            v37.TextColor3 = accent_
            dbbtn.BackgroundColor3 = v36

            if dbbtnstroke then
                dbbtnstroke.Color = v33.Accent
                local v39 = dbbtnstroke
                local v40 = db_view_open
                local transparency = v40 and 0.08 or 0.16
                v39.Transparency = transparency
            end
        end

        show_db_view = function()
            db_view_open = true
            logs_open = true
            loggui.Visible = true
            scroll.Visible = false
            dbscroll.Visible = false
            logtitle.Text = "database logs"
            set_log_button()
            set_db_button()
            db_render()
            dbscroll.Visible = true
            local v33 = opened
            local v34 = v33 and opened_holder or closed_holder

            make_tween(loggui, 0.26, {
                Position = log_target_pos(holder.Position, v34),
                Size = db_log_size,
                BackgroundTransparency = 0,
            })

            local v35 = kxThemeCurrent()
            make_tween(logguistroke, 0.1, {Color = v35.Accent, Transparency = 0.08})
            make_tween(logshadow, 0.26, {ImageTransparency = 0.42})
        end

        hide_db_view = function()
            if not db_view_open then
                return
            end
            db_view_open = false
            scroll.Visible = true
            dbscroll.Visible = false
            logtitle.Text = "terminal logs"
            set_log_button()
            set_db_button()
            local v33 = opened
            local v34 = v33 and opened_holder or closed_holder

            make_tween(loggui, 0.24, {
                Position = log_target_pos(holder.Position, v34),
                Size = log_size,
                BackgroundTransparency = 0,
            })

            local v35 = kxThemeCurrent()
            make_tween(logguistroke, 0.1, {Color = v35.Accent, Transparency = 0.16})
            make_tween(logshadow, 0.24, {ImageTransparency = 0.55})
        end

        clear_input_quick = function(arg2, arg3)
            if arg3 ~= nil and input.Text ~= arg3 then
                return false
            end

            if not clearing_input then
                clearing_input = true
                local position = input.Position
                input.TextTransparency = 0
                make_tween(input, 0.055, {TextTransparency = 1, Position = position + udim2(0, 0, 0, -4)})
                make_tween(inputstroke, 0.08, {Transparency = 0.12})
                input.Text = ""

                task.spawn(function()
                    task.wait(0.055)

                    if input and input.Parent then
                        input.Position = position + udim2(0, 0, 0, 4)
                        make_tween(input, 0.12, {TextTransparency = 0, Position = position})
                        local v33 = make_tween
                        local v34 = inputstroke
                        local tbl14 = {}
                        local v35 = opened
                        local transparency = v35 and 0.2 or 0.45
                        tbl14.Transparency = transparency
                        v33(v34, 0.12, tbl14)
                        task.wait(0.12)

                        if arg2 and opened and input.Text == "" then
                            input:CaptureFocus()
                        end

                        clearing_input = false
                        return
                    end

                    clearing_input = false
                end)

                return true
            end

            input.Text = ""
            return true
        end

        red_anim = function()
            if notifying then
                return
            end
            notifying = true
            local text = input.Text
            local position = inputwrap.Position
            make_tween(inputstroke, 0.1, {Color = color(255, 70, 90), Transparency = 0.05})

            for i = 1, 3 do
                make_tween(inputwrap, 0.04, {Position = position + udim2(0, 5, 0, 0)})
                task.wait(0.04)
                make_tween(inputwrap, 0.04, {Position = position - udim2(0, 5, 0, 0)})
                task.wait(0.04)
            end

            make_tween(inputwrap, 0.08, {Position = position})
            task.wait(0.35)
            local v33 = kxThemeCurrent()
            local v34 = make_tween
            local v35 = inputstroke
            local tbl14 = {Color = v33.Accent}
            local v36 = opened
            local transparency = v36 and 0.1 or 0.18
            tbl14.Transparency = transparency
            v34(v35, 0.1, tbl14)
            task.wait(0.08)
            local flag10 = input.Text == text

            if flag10 then
                input.Text = ""
            end

            input.TextTransparency = 0

            if flag10 and opened then
                input:CaptureFocus()
            end

            notifying = false
        end

        refresh_saved_commands = function()
            for i, child in ipairs(cmdscroll:GetChildren()) do
                if child:IsA("TextLabel") then
                    child:Destroy()
                end
            end

            make_cmd_line("--///--   TELEPORT   --///--", color(92, 170, 255), true)
            make_cmd_line(".save name", color(120, 255, 170), false)
            make_cmd_line(".tp / .goto / .to player/save", color(220, 230, 245), false)
            make_cmd_line(".delete name", color(220, 230, 245), false)

            if #saves == 0 then
                make_cmd_line("no saved tps", color(105, 116, 138), false)
            else
                for i, v33 in ipairs(saves) do
                    make_cmd_line(".tp " .. tostring(v33.Name), color(220, 230, 245), false)
                end
            end

            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   CAMERA   --///--", color(92, 170, 255), true)
            make_cmd_line(".view player/save", color(220, 230, 245), false)
            make_cmd_line(".unview", color(220, 230, 245), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   SERVER   --///--", color(92, 170, 255), true)
            make_cmd_line(".serverhop / .hop", color(220, 230, 245), false)
            make_cmd_line(".rejoin / .rj", color(220, 230, 245), false)
            make_cmd_line(".saveserver name", color(120, 255, 170), false)
            make_cmd_line(".jobid / .serverid (copy)", color(220, 230, 245), false)
            make_cmd_line(".joinserver / .js jobid/name", color(220, 230, 245), false)
            make_cmd_line(".clearserver all/name", color(220, 230, 245), false)
            make_cmd_line(".servers saved:", color(92, 170, 255), false)

            if #savedServers == 0 then
                make_cmd_line("  no saved servers", color(105, 116, 138), false)
            else
                for i, v33 in ipairs(savedServers) do
                    local v34 = savedServerStatusText(v33)
                    local str = tostring(v33.Name)
                    local v35 = serverModeLabel(v33.PlaceId)
                    local str2 = v34 and " (" .. v34 .. ")" or ""
                    local str3 = ".js " .. str .. "  [" .. v35 .. "]" .. str2
                    local v36 = make_cmd_line
                    local v37 = v34 and color(255, 95, 110) or color(220, 230, 245)
                    v36(str3, v37, false)
                end
            end

            make_cmd_line("  autoexecute = on", color(105, 116, 138), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   DETECTIONS OF SERVER   --///--", color(255, 185, 90), true)
            make_cmd_line(".aimbotdetect / .aimdetect on/off = " .. tostring(cfg.aim_detect), color(220, 230, 245), false)
            make_cmd_line(".killfeedback / .kf on/off = " .. tostring(cfg.kill_feedback), color(220, 230, 245), false)
            make_cmd_line(".invisibledetection / .id on/off = " .. tostring(cfg.invisible_detection), color(220, 230, 245), false)
            make_cmd_line(".cartpdetection / .cd on/off = " .. tostring(cfg.fling_detector), color(220, 230, 245), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   MISCA   --///--", color(92, 170, 255), true)
            make_cmd_line(".carspeed / .cs on/off = " .. tostring(cfg.carspeed), color(220, 230, 245), false)
            make_cmd_line(".infjump / .infinitejump on/off = " .. tostring(cfg.inf_jump), color(220, 230, 245), false)
            make_cmd_line(".backpackhead / .bhead on/off = " .. tostring(cfg.backpack_head), color(220, 230, 245), false)
            make_cmd_line(".toolaura / .taura on/off = " .. tostring(cfg.tool_aura), color(220, 230, 245), false)
            make_cmd_line(".pp", color(220, 230, 245), false)
            make_cmd_line(".keybind / .keybinds / .kb (PC only: toggles/weapons/combos/saved tps)", color(170, 210, 255), false)
            make_cmd_line(".bring person tp_name", color(220, 230, 245), false)
            make_cmd_line(".boostfps / .bestfps / .antilag", color(120, 255, 170), false)
            make_cmd_line("  irreversible, need rejoin", color(255, 185, 90), false)
            make_cmd_line(".button autore/combo1/m4a1/yourtp / .unbutton command (only mobile)", color(170, 210, 255), false)
            make_cmd_line(".shield on/off = " .. tostring(cfg.wall), color(170, 210, 255), false)
            make_cmd_line(".playerlist / .guiplayers / .pgui on/off = " .. tostring(cfg.player_list), color(220, 230, 245), false)
            local v33 = make_cmd_line
            local oldPassDetected = cfg.old_pass_detected
            local str = oldPassDetected and cfg.old_pass_detected.swat and "old pass" or "normal"
            local str2 = ".passverify swat = " .. str
            local oldPassDetected2 = cfg.old_pass_detected
            local swat = oldPassDetected2 and cfg.old_pass_detected.swat and color(120, 255, 170) or color(220, 230, 245)
            v33(str2, swat, false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   ANTI, AUTO   --///--", color(92, 170, 255), true)
            make_cmd_line(".antiriot on/off = " .. tostring(cfg.anti_riot) .. " (prevents shield users)", color(220, 230, 245), false)
            make_cmd_line(".autoarrest / .ar on/off = " .. tostring(cfg.auto_arrest) .. " (ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¿?)", color(220, 230, 245), false)
            make_cmd_line(".antitaze / .ataze / .at on/off = " .. tostring(cfg.anti_taze), color(220, 230, 245), false)
            make_cmd_line(".autore / .autorespawn on/off = " .. tostring(cfg.auto_respawn), color(220, 230, 245), false)
            make_cmd_line(".autoreload on/off = " .. tostring(cfg.auto_reload), color(220, 230, 245), false)
            make_cmd_line(".autoswitch on/off = " .. tostring(cfg.auto_switch), color(220, 230, 245), false)
            make_cmd_line(".antifling / .af on/off = " .. tostring(cfg.anti_fling_v1), color(220, 230, 245), false)
            make_cmd_line(".afmode / .antiflingmode normal / aggressive (impossible to interact with a car) = " .. tostring(cfg.anti_fling_mode), color(220, 230, 245), false)
            local v34 = make_cmd_line
            local concat = table.concat
            local autoGet = typeof(cfg.auto_get) == "table" and cfg.auto_get or {}
            local flag10 = concat(autoGet, " ") ~= ""

            if flag10 then
                local concat2 = table.concat
                local autoGet2 = typeof(cfg.auto_get) == "table" and cfg.auto_get or {}
                flag10 = concat2(autoGet2, " ")
            end

            if not flag10 then
                flag10 = "off"
            end

            v34(".autoget tools/combo/clothes = " .. flag10, color(220, 230, 245), false)
            local v35 = make_cmd_line
            local v36 = tostring
            local flag11 = cfg.auto_keycard == true
            v35(".autoget keycard / .aurakeycard / .autokeycard / .autokey = " .. v36(flag11), color(220, 230, 245), false)
            make_cmd_line(".lockspeed on/off = " .. tostring(cfg.lock_walkspeed), color(220, 230, 245), false)
            make_cmd_line(".punchaura / .pa on/off = " .. tostring(cfg.punch_aura), color(220, 230, 245), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   SKIDS DETECTION   --///--", color(255, 95, 110), true)
            make_cmd_line(".addskid user reason", color(220, 230, 245), false)
            make_cmd_line(".deleteskid user", color(220, 230, 245), false)
            make_cmd_line(".target user (first on the playerlist)", color(255, 185, 90), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   COMBAT   --///--", color(92, 170, 255), true)
            make_cmd_line(".kill player (950 studs)", color(220, 230, 245), false)
            make_cmd_line(".kill team (<font color=\"#f70e0e\">Criminals</font>, <font color=\"#FFAA4A\">Inmate</font>, <font color=\"#4A9BFF\">Guards</font>) (950 studs)", color(220, 230, 245), false).RichText = true
            make_cmd_line(".kill all (950 studs max)", color(220, 230, 245), false)
            make_cmd_line(".lk / .loopkill user (num) = default 3, 950 studs", color(220, 230, 245), false)
            make_cmd_line(".unlk / .unloopkill [user] = cancel loopkill", color(220, 230, 245), false)
            make_cmd_line(".fling player", color(220, 230, 245), false)

            for i, v37 in ipairs({
                ".flingmethod / .fm (controlled, aggressive) = " .. tostring(cfg.fling_method),
                ".flinghit (legs, torso) = " .. tostring(cfg.fling_hit),
                ".whip on/off = " .. tostring(cfg.fling_whip) .. " (whiplash motion)",
                ".nolimit on/off = " .. tostring(cfg.fling_no_limit) .. " (no time limit)",
                ".stopdeath on/off = " .. tostring(cfg.fling_stop_death),
                ".bottonfling / .bf on/off = " .. tostring(cfg.botton_fling),
            }) do
                make_cmd_line("  " .. v37, color(170, 210, 255), false)
            end

            make_cmd_line(".unfling player", color(220, 230, 245), false)
            local v37 = make_cmd_line
            local str3 = tostring(espCfg.hitboxEnabled)
            local v38 = flag5
            local str4 = v38 and " (target mode)" or ""
            v37(".hitbox on/off = " .. str3 .. str4, color(220, 230, 245), false)
            make_cmd_line(".hitboxsize <1-10> = " .. espCfg.hitboxSize, color(220, 230, 245), false)
            make_cmd_line(".targethitbox / .thitbox / .thbe user <1-10>", color(220, 230, 245), false)

            for k, v39 in pairs(obj3) do
                if k.Parent == Players then
                    make_cmd_line("  " .. k.Name .. " = " .. v39, color(170, 210, 255), false)
                end
            end

            make_cmd_line(".clearhitbox user/all", color(220, 230, 245), false)
            make_cmd_line(".noclip on/off = " .. tostring(cfg.noclip), color(220, 230, 245), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   SILENT AIM   --///--", color(255, 95, 110), true)
            make_cmd_line(".silentaim / .silent / .aimbot on/off = " .. tostring(cfg.silent_aim), color(220, 230, 245), false)
            make_cmd_line(".hitchance <0-100> = " .. tostring(cfg.silent_hit_chance), color(170, 210, 255), false)
            local v39 = make_cmd_line
            local str5 = tostring(cfg.silent_fov_size)
            local v40 = kxUseMobile()
            local str6 = v40 and "Position" or "Mouse"
            v39(".fovsize <10-500> = " .. str5 .. " | aim input: " .. str6, color(170, 210, 255), false)
            make_cmd_line(".hitpart (hrp, torso, head, all, proximity [PC only]) = " .. tostring(cfg.silent_hit_part), color(170, 210, 255), false)
            make_cmd_line(".vb on/off = " .. tostring(cfg.silent_visibility) .. " (Visibility Percentage, hitpart proximity)", color(170, 210, 255), false)
            make_cmd_line(".fov on/off = " .. tostring(cfg.silent_fov_visible) .. " (FOV drawing)", color(170, 210, 255), false)
            make_cmd_line(".wallcheck / .wc on/off = " .. tostring(cfg.silent_wall_check), color(170, 210, 255), false)
            make_cmd_line(".teamcheck on/off = " .. tostring(cfg.silent_team_check), color(170, 210, 255), false)
            make_cmd_line(".forcefield / .ff on/off = " .. tostring(cfg.silent_forcefield_check) .. " (ignore FF)", color(170, 210, 255), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   VISUAL   --///--", color(92, 170, 255), true)
            make_cmd_line(".esp on/off = " .. tostring(espCfg.espEnabled), color(220, 230, 245), false)
            make_cmd_line(".tracers on/off = " .. tostring(espCfg.tracersEnabled), color(220, 230, 245), false)
            make_cmd_line(".tracerinfo on/off = " .. tostring(espCfg.tracerInfoEnabled), color(220, 230, 245), false)
            make_cmd_line(".backpackview on/off = " .. tostring(espCfg.backpackViewEnabled), color(220, 230, 245), false)
            make_cmd_line(".healthgui / .hg on/off = " .. tostring(espCfg.healthGuiEnabled), color(120, 255, 170), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   WEAPONS   --///--", color(92, 170, 255), true)
            make_cmd_line(".laser on/off = " .. tostring(cfg.laser_state), color(170, 210, 255), false)
            make_cmd_line(".getmethod normal/fast = " .. tostring(cfg.get_method_guns) .. " (and that the difference would be noticeable on a server with good ping) (the fast method can cause lag)", color(170, 210, 255), false)
            make_cmd_line(cmdTextForPass(".m4a1 / .m4", gamePassIds.swat), cmdColorForPass(gamePassIds.swat), false)
            make_cmd_line(".reming / .shotgun", color(220, 230, 245), false)
            make_cmd_line(cmdTextForPass(".fal", gamePassIds.mafia), cmdColorForPass(gamePassIds.mafia), false)
            make_cmd_line(".ak / .ak-47", color(220, 230, 245), false)
            make_cmd_line(cmdTextForPass(".rev / .revolver", gamePassIds.sniper), cmdColorForPass(gamePassIds.sniper), false)
            make_cmd_line(cmdTextForPass(".m700 / .sniper", gamePassIds.sniper), cmdColorForPass(gamePassIds.sniper), false)
            make_cmd_line(cmdTextForPass(".clothes", gamePassIds.sniper), cmdColorForPass(gamePassIds.sniper), false)
            make_cmd_line(cmdTextForPass(".riot (Guards)", gamePassIds.swat), cmdColorForPass(gamePassIds.swat), false)
            make_cmd_line(cmdTextForPass(".mafia (Criminals)", gamePassIds.mafia), cmdColorForPass(gamePassIds.mafia), false)
            make_cmd_line(".combo1 (M4A1+Reming)", color(170, 210, 255), false)
            make_cmd_line(".combo2 (MP5+Reming)", color(170, 210, 255), false)
            make_cmd_line(".combo3 (AK47+Reming)", color(170, 210, 255), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   TERMINAL   --///--", color(92, 170, 255), true)
            make_cmd_line(".clear", color(220, 230, 245), false)
            make_cmd_line("", color(105, 116, 138), false)
            make_cmd_line("--///--   TESTERS   --///--", color(92, 170, 255), true)
            make_cmd_line("oficial testers: woltgrp, Piaza, kev_in2323, Quak (tomaspbc60s42)", color(220, 230, 245), false)
        end

        move_logs = function()
            if not logs_open then
                return
            end
            local v33 = opened
            local v34 = v33 and opened_holder or closed_holder
            local v35 = db_view_open
            local v36 = v35 and db_log_size or log_size

            make_tween(loggui, 0.18, {
                Position = log_target_pos(holder.Position, v34),
                Size = v36,
                BackgroundTransparency = 0,
            })
        end

        keep_inside = function(arg2)
            local v33 = clamp_holder(holder.Position, arg2)
            make_tween(holder, 0.14, {Position = v33})
            task.delay(0.03, move_logs)
        end

        set_button_state = function()
            local v33 = kxThemePalette
            local v34 = v33 and kxThemePalette() or nil
            local accent_ = v34 and v34.Accent or color(92, 170, 255)
            local panel = v34 and v34.Panel or color(20, 31, 39)
            local text = v34 and v34.Text or color(170, 210, 255)

            if opened then
                toggle.Text = "-"
                toggle.TextColor3 = text
                local v35 = toggle
                local v36 = kxThemeLighten
                local v37 = v36 and kxThemeLighten(panel, 0.12) or color(22, 32, 46)
                v35.BackgroundColor3 = v37
                togglestroke.Color = accent_
            else
                toggle.Text = "+"
                toggle.TextColor3 = accent_
                local v35 = toggle
                local v36 = kxThemeLighten
                local v37 = v36 and kxThemeLighten(panel, 0.08) or color(20, 31, 39)
                v35.BackgroundColor3 = v37
                togglestroke.Color = accent_
            end
        end

        set_log_button = function()
            local v33 = kxThemePalette
            local v34 = v33 and kxThemePalette() or nil
            local accent_ = v34 and v34.Accent or color(92, 170, 255)
            local panel = v34 and v34.Panel or color(18, 26, 38)
            local text = v34 and v34.Text or color(170, 210, 255)

            if logs_open then
                logbtn.TextColor3 = text
                local v35 = logbtn
                local v36 = kxThemeLighten
                local v37 = v36 and kxThemeLighten(panel, 0.08) or color(18, 26, 38)
                v35.BackgroundColor3 = v37
                logbtnstroke.Color = accent_
            else
                local v35 = logbtn
                local v36 = kxThemeDarken
                local v37 = v36 and kxThemeDarken(text, 0.32) or color(130, 140, 155)
                v35.TextColor3 = v37
                logbtn.BackgroundColor3 = panel
                local v38 = logbtnstroke
                local v39 = kxThemeDarken
                local v40 = v39 and kxThemeDarken(accent_, 0.45) or color(55, 65, 85)
                v38.Color = v40
            end
        end

        show_logs = function()
            logs_open = true
            db_view_open = false
            loggui.Visible = true

            if scroll then
                scroll.Visible = true
            end

            if dbscroll then
                dbscroll.Visible = false
            end

            if logtitle then
                logtitle.Text = "terminal logs"
            end

            set_log_button()
            set_db_button()
            loggui.Size = udim2(0, 420, 0, 0)
            loggui.BackgroundTransparency = 1
            local v33 = make_tween
            local v34 = loggui
            local tbl14 = {}
            local v35 = log_target_pos
            local position = holder.Position
            local v36 = opened
            local v37 = v36 and opened_holder or closed_holder
            tbl14.Position = v35(position, v37)
            tbl14.Size = log_size
            tbl14.BackgroundTransparency = 0
            v33(v34, 0.22, tbl14)
            make_tween(logguistroke, 0.22, {Transparency = 0.2})
            make_tween(logshadow, 0.22, {ImageTransparency = 0.55})

            if kxApplyCommandBarThemeOnly then
                kxApplyCommandBarThemeOnly()
            end
        end

        hide_logs = function()
            logs_open = false
            db_view_open = false

            if scroll then
                scroll.Visible = true
            end

            if dbscroll then
                dbscroll.Visible = false
            end

            if logtitle then
                logtitle.Text = "terminal logs"
            end

            set_log_button()
            set_db_button()
            make_tween(loggui, 0.18, {Size = udim2(0, 420, 0, 0), BackgroundTransparency = 1})
            make_tween(logguistroke, 0.18, {Transparency = 1})
            make_tween(logshadow, 0.18, {ImageTransparency = 1})

            if kxApplyCommandBarThemeOnly then
                kxApplyCommandBarThemeOnly()
            end

            task.delay(0.18, function()
                if not logs_open then
                    loggui.Visible = false
                end
            end)
        end

        focus = function()
            input.Text = ""
            input.TextTransparency = 0
            input:CaptureFocus()
            input.CursorPosition = 1
        end

        expand = function(arg2)
            if flag3 or opened then
                return
            end
            flag3 = true
            opened = true
            set_button_state()
            body.Visible = true
            refresh_saved_commands()
            local v33 = clamp_holder(holder.Position, opened_holder)
            make_tween(holder, 0.18, {Position = v33, Size = opened_holder})
            make_tween(main, 0.22, {Size = opened_main})
            local v34 = kxThemeCurrent()
            make_tween(fn8, 0.1, {Color = v34.Accent, Transparency = 0.04})
            make_tween(inputstroke, 0.1, {Color = v34.Accent, Transparency = 0.1})
            make_tween(shadow, 0.22, {ImageTransparency = 0.42})
            task.delay(0.02, move_logs)

            if kxApplyCommandBarThemeOnly then
                task.defer(kxApplyCommandBarThemeOnly)
            end

            task.wait(0.05)

            if arg2 then
                focus()
            else
                input.Text = ""
                input.TextTransparency = 0
                input:ReleaseFocus()
            end

            if kxApplyCommandBarThemeOnly then
                kxApplyCommandBarThemeOnly()
            end

            task.wait(0.17)

            if kxApplyCommandBarThemeOnly then
                kxApplyCommandBarThemeOnly()
            end

            flag3 = false
        end

        collapse = function(arg2)
            if flag3 or not opened then
                return false
            end

            if not arg2 and input.Text ~= "" then
                return false
            end
            flag3 = true
            opened = false
            set_button_state()
            input:ReleaseFocus()
            input.Text = ""
            input.TextTransparency = 0
            local v33 = clamp_holder(holder.Position, closed_holder)
            make_tween(holder, 0.18, {Position = v33, Size = closed_holder})
            make_tween(main, 0.18, {Size = closed_main})
            local v34 = kxThemeCurrent()
            make_tween(fn8, 0.1, {Color = v34.Accent, Transparency = 0.12})
            make_tween(inputstroke, 0.1, {Color = v34.Accent, Transparency = 0.18})
            make_tween(shadow, 0.18, {ImageTransparency = 0.48})
            task.delay(0.02, move_logs)

            if kxApplyCommandBarThemeOnly then
                task.defer(kxApplyCommandBarThemeOnly)
            end

            if kxApplyCommandBarThemeOnly then
                kxApplyCommandBarThemeOnly()
            end

            task.wait(0.18)
            body.Visible = false

            if kxApplyCommandBarThemeOnly then
                kxApplyCommandBarThemeOnly()
            end

            flag3 = false
            return true
        end

        find_player = function(arg2)
            local v33 = tostring
            local str = arg2 or ""
            local str2 = v33(str):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str2 == "" then
                return nil
            end
            local str3 = str2:gsub("%s+", "")
            local v34 = nil
            local v35 = nil
            local v36 = nil

            for i, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local str4 = tostring(player.Name):lower()
                    local str5 = tostring(player.DisplayName):lower()
                    local str6 = str4:gsub("%s+", "")
                    local str7 = str5:gsub("%s+", "")

                    if str4 ~= str2 and str5 ~= str2 and str6 ~= str3 and str7 ~= str3 then
                        if str6:sub(1, #str3) == str3 or str7:sub(1, #str3) == str3 then
                            local v37 = v35 or player
                            v35 = v37
                        end

                        if str6:find(str3, 1, true) or str7:find(str3, 1, true) then
                            local v37 = v36 or player
                            v36 = v37
                        end

                        continue
                    end

                    v34 = player
                    break
                end

                continue
            end

            local v37 = v34 or v35 or v36
            return v37
        end

        local v33 = viewing
        local v34 = v33 or nil
        viewing = v34
        local v35 = viewDied
        local v36 = v35 or nil
        viewDied = v36
        local v37 = viewChanged
        local v38 = v37 or nil
        viewChanged = v38
        local v39 = playerLeaving
        local v40 = v39 or nil
        playerLeaving = v40
        local v41 = viewApplying
        local flag10 = v41 or false
        viewApplying = flag10

        viewGetRoot = function(arg2)
            local torso = arg2

            if arg2 then
                local humanoidRootPart = arg2:FindFirstChild("HumanoidRootPart")
                torso = humanoidRootPart or arg2:FindFirstChild("Torso") or arg2:FindFirstChild("Head")
            end

            return torso
        end

        viewGetCamera = function()
            return Workspace.CurrentCamera
        end

        disconnectView = function()
            if viewDied then
                pcall(function()
                    viewDied:Disconnect()
                end)

                viewDied = nil
            end

            if viewChanged then
                pcall(function()
                    viewChanged:Disconnect()
                end)

                viewChanged = nil
            end

            if playerLeaving then
                pcall(function()
                    playerLeaving:Disconnect()
                end)

                playerLeaving = nil
            end

            if spectate_conn then
                pcall(function()
                    spectate_conn:Disconnect()
                end)

                spectate_conn = nil
            end

            if spectate_remove_conn then
                pcall(function()
                    spectate_remove_conn:Disconnect()
                end)

                spectate_remove_conn = nil
            end
        end

        clear_spectate_conn = function()
            disconnectView()
        end

        setCameraToPlayer = function(arg2)
            local v42 = viewGetCamera()
            if not v42 or not arg2 or not arg2.Character then
                return false
            end
            local character_ = arg2.Character
            local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
            local v43 = viewGetRoot(character_)
            if not humanoid_ and not v43 and not character_ then
                return false
            end
            viewApplying = true

            pcall(function()
                v42.CameraType = Enum.CameraType.Custom
                local v44 = humanoid_ or v43 or character_
                v42.CameraSubject = v44
            end)

            task.defer(function()
                viewApplying = false
            end)

            return true
        end

        setCameraToLocalPlayer = function()
            local v42 = viewGetCamera()
            local character_ = LocalPlayer.Character
            if not v42 or not character_ then
                return false
            end
            local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
            local v43 = viewGetRoot(character_)
            viewApplying = true

            pcall(function()
                v42.CameraType = Enum.CameraType.Custom
                local v44 = humanoid_ or v43 or character_
                v42.CameraSubject = v44
            end)

            task.defer(function()
                viewApplying = false
            end)

            return true
        end

        viewFindPlayer = function(arg2)
            if typeof(arg2) == "Instance" and arg2:IsA("Player") then
                if arg2 == LocalPlayer then
                    return nil
                end
                return arg2
            end

            local v42 = tostring
            local str = arg2 or ""
            local str2 = v42(str):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str2 == "" then
                return nil
            end
            local v43 = nil
            local v44 = nil
            local v45 = nil

            for i, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local v46 = tostring
                    local name = player.Name
                    local str3 = name or ""
                    local str4 = v46(str3):lower()
                    local v47 = tostring
                    local displayName = player.DisplayName
                    local str5 = displayName or ""
                    local str6 = v47(str5):lower()

                    if str4 == str2 or str6 == str2 then
                        local v48 = v43 or player
                        v43 = v48
                    end

                    if str4:sub(1, #str2) == str2 or str6:sub(1, #str2) == str2 then
                        local v48 = v44 or player
                        v44 = v48
                    end

                    if str4:find(str2, 1, true) or str6:find(str2, 1, true) then
                        local v48 = v45 or player
                        v45 = v48
                    end
                end
            end

            local v46 = v43 or v44 or v45
            return v46
        end

        apply_view_target = function(arg2)
            return setCameraToPlayer(arg2)
        end

        ViewPlayer = function(arg2, arg3)
            local v42 = viewFindPlayer(arg2)

            if not v42 then
                if not arg3 then
                    add_line(".view " .. tostring(arg2), "player not found", true)
                    red_anim()
                end

                return false
            end

            disconnectView()
            viewing = v42
            viewer = true
            spectating_player = v42

            if not setCameraToPlayer(viewing) then
                viewing = nil
                viewer = false
                spectating_player = nil

                if not arg3 then
                    add_line(".view " .. v42.Name, "player no char", true)
                    red_anim()
                end

                return false
            end

            local v43 = fn2(viewing.CharacterAdded, function()
                repeat
                    task.wait()
                until not viewing or not viewing.Parent or viewing.Character and viewGetRoot(viewing.Character)

                if viewing == v42 and viewing and viewing.Parent == Players then
                    setCameraToPlayer(viewing)
                end
            end)

            viewDied = v43

            local v44 = fn2(viewGetCamera():GetPropertyChangedSignal("CameraSubject"), function()
                if viewing and not viewApplying then
                    task.defer(function()
                        if viewing then
                            setCameraToPlayer(viewing)
                        end
                    end)
                end
            end)

            viewChanged = v44

            local v45 = fn2(Players.PlayerRemoving, function(arg4)
                if arg4 == viewing then
                    UnView(true)
                    add_line(".view", "player left", true)
                    red_anim()
                end
            end)

            playerLeaving = v45

            if not arg3 then
                add_line(".view " .. v42.Name, "viewing player: " .. v42.DisplayName .. " (@" .. v42.Name .. ")", false)
            end

            task.defer(function()
                if playerListUpdateViewButtons then
                    playerListUpdateViewButtons()
                end
            end)

            return true
        end

        follow_player = function(arg2, arg3)
            return ViewPlayer(arg2, arg3)
        end

        UnView = function(arg2)
            disconnectView()
            viewing = nil
            viewer = false
            spectating_player = nil
            lastcam = nil
            setCameraToLocalPlayer()

            if not arg2 then
                add_line(".unview", "unviewed player", false)
            end

            task.defer(function()
                if playerListUpdateViewButtons then
                    playerListUpdateViewButtons()
                end
            end)

            return true
        end

        return_camera_to_me = function()
            return UnView(true)
        end

        clean_feed = function(arg2, arg3)
            local tbl14 = {}

            for i, child in ipairs(arg2:GetChildren()) do
                if child:IsA("TextLabel") then
                    tbl14[#tbl14 + 1] = child
                end
            end

            table.sort(tbl14, function(arg4, arg5)
                local flag11 = arg4.LayoutOrder < arg5.LayoutOrder
                return flag11
            end)

            while flag and arg3 < #tbl14 do
                tbl14[1]:Destroy()
                table.remove(tbl14, 1)
            end
        end

        rstreak = function(arg2)
            if not arg2 then
                return
            end
            kd.streak[tostring(arg2.UserId)] = 0
        end

        oldhp = function(arg2, arg3)
            local v42 = kd.hp[tostring(arg2.UserId)]
            if not v42 or #v42 == 0 then
                return nil
            end
            local n5 = tick() - arg3
            local hp = v42[#v42].hp

            for i = #v42, 1, -1 do
                if v42[i].t <= n5 then
                    hp = v42[i].hp
                    break
                end
            end

            return hp
        end

        ahp = function(arg2, arg3)
            local v42 = ad.hp[arg2]
            if not v42 or #v42 == 0 then
                return nil
            end
            local n5 = tick() - arg3
            local hp = v42[#v42].hp

            for i = #v42, 1, -1 do
                if v42[i].t <= n5 then
                    hp = v42[i].hp
                    break
                end
            end

            return hp
        end

        shooter = function(arg2)
            local v42 = nil
            local huge = math.huge
            local n5 = shootrange ^ 2

            for i, v43 in ipairs(tbl4) do
                local v44 = root(v43)

                if v44 then
                    local n6 = v44.Position - arg2
                    local v45 = n6:Dot(n6)

                    if v45 < huge and v45 <= n5 then
                        v42 = v43
                        huge = v45
                    end
                end
            end

            return v42
        end

        victim = function(arg2, arg3)
            local v42 = nil
            local huge = math.huge
            local n5 = hitrange ^ 2

            for i, v43 in ipairs(tbl4) do
                if v43 ~= arg2 then
                    local v44 = char(v43)
                    local v45 = hum(v43)
                    local head = v44 and v44:FindFirstChild("Head")
                    local upperTorso = v44

                    if v44 then
                        local torso = v44:FindFirstChild("Torso")
                        upperTorso = torso or v44:FindFirstChild("UpperTorso")
                    end

                    local v46 = root(v43)

                    if v45 and head and upperTorso and v46 then
                        local v47 = oldhp(v43, dmgwin)
                        local health = v45.Health

                        if v47 and health < v47 then
                            local n6 = arg3 - head.Position
                            local n7 = arg3 - upperTorso.Position
                            local n8 = arg3 - v46.Position
                            local n9 = math.min(n6:Dot(n6), n7:Dot(n7), n8:Dot(n8))

                            if n9 < huge and n9 <= n5 then
                                v42 = v43
                                huge = n9
                            end
                        end
                    end
                end
            end

            return v42
        end

        ashooter = function(arg2)
            for i, v42 in ipairs(tbl4) do
                local character_ = v42.Character
                local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart then
                    continue
                end
                local n5 = humanoidRootPart.Position - arg2
                if n5:Dot(n5) < 100 then
                    return v42
                end
            end

            return nil
        end

        trk = function(arg2)
            local str = tostring(arg2.UserId)

            if not ad.track[str] then
                ad.track[str] = {total = 0, head = 0, torso = 0}
            end

            return ad.track[str]
        end

        rtrk = function(arg2)
            arg2.total = 0
            arg2.head = 0
            arg2.torso = 0
        end

        alert_aim = function(arg2, arg3, arg4, arg5)
            if not cfg.aim_detect or not arg2 then
                return
            end
            local str = tostring(arg2.UserId)
            local now = tick()
            local str2 = str .. ":" .. tostring(arg3)
            if ad.cd[str2] and now - ad.cd[str2] < ac.cool then
                return
            end
            ad.cd[str2] = now
            local count = ad.count
            local v42 = ad.count[str]
            local n5 = v42 or 0
            count[str] = n5 + 1
            local flag11 = ad.count[str] >= 3
            local str3 = flag11 and "[Exploiter]" or "[Alert]"
            local exploit = flag11 and ac.exploit or ac.alert
            local v43, v44, v45 = rgb(tc(arg2))
            local v46, v47, v48 = rgb(tc(arg4))
            local str4 = flag11 and "rgb(255,45,45)" or "rgb(255,205,55)"
            ao = ao + 1
            local TextLabel3 = fn5("TextLabel", af, "Name", "PossibleAimbotAlert", "Size", udim2(1, 0, 0, 24), "BackgroundTransparency", 1, "TextTransparency", 1, "RichText", true, "TextSize", 18, "Font", Enum.Font.SourceSansBold, "TextStrokeTransparency", 0.3, "TextStrokeColor3", color(0, 0, 0), "LayoutOrder", ao)
            local format = string.format
            local v49 = pname(arg2)
            local v50 = pname(arg4)
            local n6 = arg5 or 0
            TextLabel3.Text = format("<font color=\"%s\">%s</font> <font color=\"rgb(%d,%d,%d)\">%s</font> <font color=\"rgb(255,255,255)\">%s</font> <font color=\"rgb(180,180,180)\">Victim:</font> <font color=\"rgb(%d,%d,%d)\">%s</font> <font color=\"rgb(180,180,180)\">Ratio:</font> <font color=\"rgb(255,255,255)\">%.2f</font>", str4, str3, v43, v44, v45, v49, arg3, v46, v47, v48, v50, n6)
            TweenService:Create(TextLabel3, TweenInfo.new(0.15), {TextTransparency = 0}):Play()
            clean_feed(af, 5)

            task.delay(exploit, function()
                if TextLabel3 and TextLabel3.Parent then
                    local tween = TweenService:Create(TextLabel3, TweenInfo.new(0.35), {TextTransparency = 1, TextStrokeTransparency = 1})
                    tween:Play()
                    tween.Completed:Wait()

                    if TextLabel3 and TextLabel3.Parent then
                        TextLabel3:Destroy()
                    end
                end
            end)
        end

        local v42 = flingDetectorState
        local v43 = v42

        if not v42 then
            local tbl14 = {}
            v43 = tbl14
            tbl14.enabled = false
            tbl14.loopId = 0
            tbl14.lastDriver = setmetatable({}, {__mode = "k"})
            tbl14.localCars = setmetatable({}, {__mode = "k"})
            tbl14.lastCarPos = setmetatable({}, {__mode = "k"})
            tbl14.checking = setmetatable({}, {__mode = "k"})
            tbl14.printed = setmetatable({}, {__mode = "k"})
            tbl14.permaNoCollide = setmetatable({}, {__mode = "k"})
            tbl14.cooldown = {}
            tbl14.cons = {}
        end

        flingDetectorState = v43
        local v44 = flingDetectorState
        local permaNoCollide = flingDetectorState.permaNoCollide
        local permaNoCollide2 = permaNoCollide or setmetatable({}, {__mode = "k"})
        v44.permaNoCollide = permaNoCollide2
        local v45 = flingDetectorState
        local localCars = flingDetectorState.localCars
        local localCars2 = localCars or setmetatable({}, {__mode = "k"})
        v45.localCars = localCars2
        local v46 = flingDetectorCfg
        local v47 = v46

        if not v46 then
            local tbl14 = {}
            v47 = tbl14
            tbl14.wheelRwdDistance = 20
            tbl14.playerHitDistance = 7
            tbl14.teleportDistance = 35
            tbl14.carTogetherDistance = 18
            tbl14.verifyTime = 1.5
            tbl14.checkDelay = 0.05
            tbl14.scanDelay = 0.12
            tbl14.perPlayerCooldown = 5
        end

        flingDetectorCfg = v47

        flingDetectorGetCars = function()
            return Workspace:FindFirstChild("CarContainer")
        end

        flingDetectorGetPlayerFromHumanoid = function(arg2)
            if arg2 and arg2.Parent then
                return Players:GetPlayerFromCharacter(arg2.Parent)
            end
            return nil
        end

        flingDetectorGetSeat = function(arg2)
            local body_ = arg2 and arg2:FindFirstChild("Body")
            if not body_ then
                return nil
            end
            return body_:FindFirstChild("VehicleSeat")
        end

        flingDetectorSaveDriver = function(arg2, arg3)
            if not arg2 or not arg3 then
                return
            end
            local v48 = flingDetectorGetPlayerFromHumanoid(arg3.Occupant)

            if v48 then
                local localCars3 = flingDetectorState.localCars
                local flag11 = v48 == LocalPlayer or nil
                localCars3[arg2] = flag11

                flingDetectorState.lastDriver[arg2] = {
                    Name = v48.Name,
                    DisplayName = v48.DisplayName,
                    UserId = v48.UserId,
                    Time = os.clock(),
                }
            end
        end

        flingDetectorTrackCar = function(arg2)
            if not arg2 then
                return
            end
            flingDetectorSaveDriver(arg2, flingDetectorGetSeat(arg2))

            task.spawn(function()
                local v48 = nil

                for i = 1, 40 do
                    if not flingDetectorState.enabled then
                        return
                    end
                    v48 = flingDetectorGetSeat(arg2)
                    if v48 then
                        break
                    end
                    task.wait(0.1)
                end

                if not v48 then
                    return
                end
                flingDetectorSaveDriver(arg2, v48)

                local v49 = fn2(v48:GetPropertyChangedSignal("Occupant"), function()
                    flingDetectorSaveDriver(arg2, v48)
                end)

                table.insert(flingDetectorState.cons, v49)
            end)
        end

        flingDetectorGetWheels = function(arg2)
            local wheels = arg2 and arg2:FindFirstChild("Wheels")
            local tbl14 = {}
            if not wheels then
                return tbl14
            end

            for i, child in ipairs(wheels:GetChildren()) do
                if child:IsA("BasePart") then
                    table.insert(tbl14, child)
                end
            end

            return tbl14
        end

        flingDetectorHasAbnormalBehavior = function(arg2)
            if flingDetectorIsLocalCar(arg2) then
                return false
            end
            local rwd = arg2 and arg2:FindFirstChild("RWD")
            if not rwd then
                return false
            end
            local n5 = flingDetectorCfg.wheelRwdDistance ^ 2

            for i, v48 in ipairs(flingDetectorGetWheels(arg2)) do
                local n6 = v48.Position - rwd.Position
                if n5 < n6:Dot(n6) then
                    return true
                end
            end

            return false
        end

        flingDetectorGetTouchedPlayer = function(arg2)
            local v48 = flingDetectorGetWheels(arg2)
            local n5 = flingDetectorCfg.playerHitDistance ^ 2
            local v49, v50, v51 = ipairs(v48)
            local v52 = v51
            local v53 = v49
            local v54 = v50

            while true do
                local v55, v56 = v53(v54, v52)
                if v55 == nil then
                    break
                end

                for i, v57 in ipairs(tbl4) do
                    local character_ = v57.Character
                    local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
                    local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

                    if humanoidRootPart and humanoid_ and humanoid_.Health > 0 then
                        local n6 = v56.Position - humanoidRootPart.Position
                        if n6:Dot(n6) <= n5 then
                            return v57
                        end
                    end
                end

                v52 = v55
            end

            return nil
        end

        flingDetectorIsLocalCar = function(arg2)
            if not arg2 then
                return false
            end
            local v48 = flingDetectorGetSeat(arg2)
            local v49 = flingDetectorGetPlayerFromHumanoid
            local occupant = v48 and v48.Occupant
            local v50 = v49(occupant)

            if not v50 then
                local character_ = LocalPlayer.Character
                local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
                local seatPart = humanoid_ and humanoid_.SeatPart
                local v51 = seatPart
                if seatPart and antiFlingV2GetCarFromObject(v51) == arg2 then
                    flingDetectorState.localCars[arg2] = true
                    return true
                end
                local v52 = antiFlingV1GetLocalCar
                local v53 = v52 and antiFlingV1GetLocalCar()
                if v53 == arg2 then
                    flingDetectorState.localCars[arg2] = true
                    return true
                end
                local lastDriver = flingDetectorState.lastDriver
                local v54 = lastDriver and flingDetectorState.lastDriver[arg2]
                if v54 and tonumber(v54.UserId) == LocalPlayer.UserId then
                    flingDetectorState.localCars[arg2] = true
                    return true
                end
                local flag11 = flingDetectorState.localCars[arg2] == true
                return flag11
            end

            local localCars3 = flingDetectorState.localCars
            local flag11 = v50 == LocalPlayer or nil
            localCars3[arg2] = flag11
            local flag12 = v50 == LocalPlayer
            return flag12
        end

        flingDetectorDisableCarCollision = function(arg2, arg3)
            if not arg2 or not arg2.Parent or flingDetectorIsLocalCar(arg2) then
                return false
            end
            local permaNoCollide3 = flingDetectorState.permaNoCollide
            local tbl14 = permaNoCollide3[arg2]

            if not tbl14 then
                tbl14 = {
                    parts = setmetatable({}, {__mode = "k"}),
                    touchParts = setmetatable({}, {__mode = "k"}),
                    cons = {},
                }

                permaNoCollide3[arg2] = tbl14
            end

            local seatTouch = tbl14.seatTouch
            local seatTouch2 = seatTouch or arg3 == true
            tbl14.seatTouch = seatTouch2

            local function fn46(arg4)
                if not arg4:IsA("BasePart") then
                    return
                end

                if not tbl14.parts[arg4] then
                    tbl14.parts[arg4] = true

                    table.insert(tbl14.cons, fn2(arg4:GetPropertyChangedSignal("CanCollide"), function()
                        if arg4.Parent and arg4.CanCollide then
                            arg4.CanCollide = false
                        end
                    end))
                end

                if arg4.CanCollide then
                    arg4.CanCollide = false
                end

                if tbl14.seatTouch and (arg4:IsA("Seat") or arg4:IsA("VehicleSeat")) then
                    if not tbl14.touchParts[arg4] then
                        tbl14.touchParts[arg4] = true

                        table.insert(tbl14.cons, fn2(arg4:GetPropertyChangedSignal("CanTouch"), function()
                            if arg4.Parent and arg4.CanTouch then
                                arg4.CanTouch = false
                            end
                        end))
                    end

                    if arg4.CanTouch then
                        arg4.CanTouch = false
                    end
                end
            end

            for i, descendant in ipairs(arg2:GetDescendants()) do
                fn46(descendant)
            end

            if not tbl14.watching then
                tbl14.watching = true
                table.insert(tbl14.cons, fn2(arg2.DescendantAdded, fn46))

                table.insert(tbl14.cons, fn2(arg2.AncestryChanged, function(arg4, arg5)
                    if arg5 then
                        return
                    end

                    for i, con in ipairs(tbl14.cons) do
                        pcall(function()
                            con:Disconnect()
                        end)
                    end

                    permaNoCollide3[arg2] = nil
                end))
            end

            return true
        end

        flingDetectorGetOwnerInfo = function(arg2)
            local v48 = arg2 and flingDetectorState.lastDriver[arg2]

            if not v48 then
                return {
                    Name = "Unknown",
                    DisplayName = "Unknown",
                    UserId = 0,
                    Time = os.clock(),
                }
            end

            return v48
        end

        flingDetectorCooldownKey = function(arg2)
            if arg2 and tonumber(arg2.UserId) and tonumber(arg2.UserId) > 0 then
                return "id:" .. tostring(arg2.UserId)
            end
            local v48 = tostring
            local displayName = arg2

            if arg2 then
                local name = arg2.Name
                displayName = name or arg2.DisplayName
            end

            if not displayName then
                displayName = "Unknown"
            end

            return "name:" .. v48(displayName)
        end

        flingDetectorCanAlert = function(arg2, arg3)
            local v48 = flingDetectorCooldownKey(arg2)
            local v49 = tostring
            local str = arg3 or "fling"
            local str2 = v48 .. ":" .. v49(str)
            local now = os.clock()
            local v50 = flingDetectorState.cooldown[str2]

            if v50 then
                local n5 = now - v50
                local perPlayerCooldown = flingDetectorCfg.perPlayerCooldown
                local n6 = perPlayerCooldown or 5
                if n5 < n6 then
                    return false
                end
            end

            flingDetectorState.cooldown[str2] = now
            return true
        end

        flingDetectorGetCarPosition = function(arg2)
            local rwd = arg2 and arg2:FindFirstChild("RWD")
            if rwd then
                return rwd.Position
            end
            local v48 = flingDetectorGetSeat(arg2)
            if v48 then
                return v48.Position
            end
            local body_ = arg2 and arg2:FindFirstChild("Body")
            local basePart = body_ and body_:FindFirstChildWhichIsA("BasePart", true)
            local position = basePart and basePart.Position or nil
            return position
        end

        flingDetectorMaxRwdWheelDistance = function(arg2)
            local rwd = arg2 and arg2:FindFirstChild("RWD")
            if not rwd then
                return 0
            end
            local n5 = 0

            for i, v48 in ipairs(flingDetectorGetWheels(arg2)) do
                local n6 = v48.Position - rwd.Position
                local v49 = n6:Dot(n6)

                if n5 < v49 then
                    n5 = v49
                end
            end

            return math.sqrt(n5)
        end

        flingDetectorIsCarTeleport = function(arg2)
            if not flingDetectorIsLocalCar(arg2) then
                local v48 = flingDetectorGetCarPosition(arg2)
                if not v48 then
                    return false
                end
                local v49 = flingDetectorState
                local lastCarPos = flingDetectorState.lastCarPos
                local lastCarPos2 = lastCarPos or setmetatable({}, {__mode = "k"})
                v49.lastCarPos = lastCarPos2
                local v50 = flingDetectorState.lastCarPos[arg2]
                flingDetectorState.lastCarPos[arg2] = v48
                if not v50 then
                    return false
                end
                local n5 = v48 - v50
                local v51 = flingDetectorMaxRwdWheelDistance(arg2)
                local v52 = n5:Dot(n5)
                local flag11 = flingDetectorCfg.teleportDistance ^ 2 <= v52 and v51 <= flingDetectorCfg.carTogetherDistance
                return flag11
            end

            flingDetectorState.lastCarPos[arg2] = nil
            return false
        end

        alert_fling = function(arg2, arg3, arg4)
            if not cfg.fling_detector or not af then
                return
            end
            local tbl14 = arg2 or {}
            local v48 = tbl14
            if tonumber(v48.UserId) == LocalPlayer.UserId then
                return
            end
            local v49 = tostring
            local displayName = v48.DisplayName
            local name = displayName or v48.Name or "Unknown"
            local v50 = v49(name)
            local flag11 = arg4 == "teleport"
            if not flag11 then
                return
            end
            ao = ao + 1
            local v51 = af
            local str = flag11 and "PossibleCarTeleportAlert" or "PossibleFlingerAlert"
            local TextLabel3 = fn5("TextLabel", v51, "Name", str, "Size", udim2(1, 0, 0, 24), "BackgroundTransparency", 1, "TextTransparency", 1, "RichText", true, "TextSize", 18, "Font", Enum.Font.SourceSansBold, "TextStrokeTransparency", 0.22, "TextStrokeColor3", color(0, 0, 0), "LayoutOrder", ao)

            if flag11 then
                TextLabel3.Text = string.format("<font color=\"%s\">%s</font> <font color=\"rgb(%d,%d,%d)\">%s</font> <font color=\"rgb(255,235,238)\">Possible Car Teleport User</font>", "rgb(255,65,85)", "[Alert]", 255, 55, 75, v50)
            end

            detectorFeedUpdateVisible()
            TweenService:Create(TextLabel3, TweenInfo.new(0.12), {TextTransparency = 0}):Play()
            clean_feed(af, 5)
            local delay = task.delay
            local v52 = ac
            local alert = v52 and ac.alert or 10

            delay(alert, function()
                if TextLabel3 and TextLabel3.Parent then
                    local tween = TweenService:Create(TextLabel3, TweenInfo.new(0.35), {TextTransparency = 1, TextStrokeTransparency = 1})
                    tween:Play()
                    tween.Completed:Wait()

                    if TextLabel3 and TextLabel3.Parent then
                        TextLabel3:Destroy()
                    end
                end
            end)
        end

        flingDetectorVerify = function(arg2)
            if not cfg.fling_detector or not flingDetectorState.enabled or not arg2 or not arg2.Parent then
                return
            end

            if not flingDetectorIsLocalCar(arg2) then
                if flingDetectorState.checking[arg2] then
                    return
                end
                flingDetectorState.checking[arg2] = true

                task.spawn(function()
                    local now = os.clock()
                    local n5 = 0

                    while flag and flingDetectorState.enabled and os.clock() - now < flingDetectorCfg.verifyTime and arg2 and arg2.Parent and flingDetectorHasAbnormalBehavior(arg2) do
                        n5 = n5 + 1
                        task.wait(flingDetectorCfg.checkDelay)
                    end

                    if arg2 and arg2.Parent and flingDetectorState.enabled then
                        local v48 = flingDetectorGetOwnerInfo(arg2)

                        if tonumber(v48.UserId) == LocalPlayer.UserId or flingDetectorIsLocalCar(arg2) then
                            flingDetectorState.printed[arg2] = nil
                            flingDetectorState.checking[arg2] = nil
                            return
                        end

                        if n5 > 0 and flingDetectorCanAlert(v48, "fling") then
                            alert_fling(v48, nil, "fling")
                        end

                        flingDetectorState.printed[arg2] = true
                    end

                    task.wait(1)
                    flingDetectorState.checking[arg2] = nil
                end)

                return
            end

            flingDetectorState.printed[arg2] = nil
            flingDetectorState.checking[arg2] = nil
        end

        flingDetectorScanOnce = function()
            if not flingDetectorState.enabled then
                return
            end
            local v48 = flingDetectorGetCars()
            if not v48 then
                return
            end

            for i, child in ipairs(v48:GetChildren()) do
                if not flingDetectorState.enabled then
                    return
                end

                if flingDetectorIsLocalCar(child) then
                    flingDetectorState.printed[child] = nil
                    flingDetectorState.checking[child] = nil
                    flingDetectorState.lastCarPos[child] = nil
                else
                    local v49 = flingDetectorIsCarTeleport(child)
                    local v50 = flingDetectorHasAbnormalBehavior(child)

                    if flingDetectorIsLocalCar(child) then
                        flingDetectorState.printed[child] = nil
                        flingDetectorState.checking[child] = nil
                        flingDetectorState.lastCarPos[child] = nil
                    else
                        if v49 or v50 then
                            flingDetectorDisableCarCollision(child, v49)
                        end

                        if v49 and not flingDetectorState.printed[child] then
                            local v51 = flingDetectorGetOwnerInfo(child)

                            if flingDetectorCanAlert(v51, "teleport") then
                                alert_fling(v51, nil, "teleport")
                            end

                            flingDetectorState.printed[child] = true
                        end

                        if v50 then
                            if not flingDetectorState.printed[child] and not flingDetectorState.checking[child] then
                                flingDetectorVerify(child)
                            end
                        elseif not v49 then
                            flingDetectorState.printed[child] = nil
                        end
                    end
                end
            end
        end

        flingDetectorDisconnect = function()
            local v48 = ipairs
            local cons = flingDetectorState.cons
            local tbl14 = cons or {}

            for k, v49 in v48(tbl14) do
                pcall(function()
                    v49:Disconnect()
                end)
            end

            flingDetectorState.cons = {}
        end

        flingDetectorStart = function(arg2)
            if flingDetectorState.enabled then
                return true
            end
            flingDetectorState.enabled = true
            local v48 = flingDetectorState
            v48.loopId = v48.loopId + 1
            flingDetectorState.lastDriver = setmetatable({}, {__mode = "k"})
            flingDetectorState.localCars = setmetatable({}, {__mode = "k"})
            flingDetectorState.lastCarPos = setmetatable({}, {__mode = "k"})
            flingDetectorState.checking = setmetatable({}, {__mode = "k"})
            flingDetectorState.printed = setmetatable({}, {__mode = "k"})
            local v49 = flingDetectorState
            local cooldown = flingDetectorState.cooldown
            local cooldown2 = cooldown or {}
            v49.cooldown = cooldown2
            flingDetectorDisconnect()
            cfg.fling_detector = true
            featureSet("fling_detector", true)
            save_cfg()
            detectorFeedUpdateVisible()
            local v50 = flingDetectorGetCars()

            if v50 then
                for i, child in ipairs(v50:GetChildren()) do
                    flingDetectorTrackCar(child)
                end

                table.insert(flingDetectorState.cons, fn2(v50.ChildAdded, function(arg3)
                    flingDetectorTrackCar(arg3)
                end))

                table.insert(flingDetectorState.cons, fn2(v50.ChildRemoved, function(arg3)
                    flingDetectorState.lastDriver[arg3] = nil
                    flingDetectorState.localCars[arg3] = nil
                    flingDetectorState.lastCarPos[arg3] = nil
                    flingDetectorState.checking[arg3] = nil
                    flingDetectorState.printed[arg3] = nil
                end))
            end

            local loopId = flingDetectorState.loopId

            task.spawn(function()
                while flag and flingDetectorState.enabled and flingDetectorState.loopId == loopId do
                    flingDetectorScanOnce()
                    task.wait(flingDetectorCfg.scanDelay)
                end
            end)

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg2 and add_line then
                add_line(".cartpdetection on", "car tp detection on", false)
            end

            return true
        end

        flingDetectorStop = function(arg2)
            flingDetectorState.enabled = false
            local v48 = flingDetectorState
            v48.loopId = v48.loopId + 1
            flingDetectorDisconnect()
            cfg.fling_detector = false
            featureSet("fling_detector", false)
            save_cfg()
            detectorFeedUpdateVisible()

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg2 and add_line then
                add_line(".cartpdetection off", "car tp detection off", false)
            end

            return true
        end

        flingDetectorSet = function(arg2, arg3)
            if arg2 == true then
                return flingDetectorStart(arg3)
            end
            return flingDetectorStop(arg3)
        end

        set_fling_detector = function(arg2)
            return flingDetectorSet(arg2, false)
        end

        task.defer(function()
            task.wait(0.6)
            local v48 = featureGet
            local flag11 = cfg.fling_detector == true

            if v48("fling_detector", flag11) then
                flingDetectorStart(true)
            end
        end)

        local v48 = invisibleDetectorState
        local v49 = v48

        if not v48 then
            local tbl14 = {}
            v49 = tbl14
            tbl14.enabled = false
            tbl14.loopId = 0
            tbl14.cons = {}
            tbl14.tracked = setmetatable({}, {__mode = "k"})
            tbl14.cooldown = {}
        end

        invisibleDetectorState = v49
        local v50 = invisibleDetectorWhitelist
        local v51 = v50

        if not v50 then
            local tbl14 = {}
            v51 = tbl14
            tbl14["http://www.roblox.com/asset/?id=125750702"] = true
            tbl14["http://www.roblox.com/asset/?id=128777973"] = true
            tbl14["http://www.roblox.com/asset/?id=128853357"] = true
            tbl14["http://www.roblox.com/asset/?id=129423030"] = true
            tbl14["http://www.roblox.com/asset/?id=129423131"] = true
            tbl14["http://www.roblox.com/asset/?id=129967390"] = true
            tbl14["http://www.roblox.com/asset/?id=129967478"] = true
            tbl14["http://www.roblox.com/asset/?id=178130996"] = true
            tbl14["http://www.roblox.com/asset/?id=180426354"] = true
            tbl14["http://www.roblox.com/asset/?id=180435571"] = true
            tbl14["http://www.roblox.com/asset/?id=180435792"] = true
            tbl14["http://www.roblox.com/asset/?id=180436148"] = true
            tbl14["http://www.roblox.com/asset/?id=180436334"] = true
            tbl14["http://www.roblox.com/asset/?id=182393478"] = true
            tbl14["http://www.roblox.com/asset/?id=182435998"] = true
            tbl14["http://www.roblox.com/asset/?id=182436842"] = true
            tbl14["http://www.roblox.com/asset/?id=182436935"] = true
            tbl14["http://www.roblox.com/asset/?id=182491037"] = true
            tbl14["http://www.roblox.com/asset/?id=182491065"] = true
            tbl14["http://www.roblox.com/asset/?id=182491248"] = true
            tbl14["http://www.roblox.com/asset/?id=182491277"] = true
            tbl14["http://www.roblox.com/asset/?id=182491368"] = true
            tbl14["http://www.roblox.com/asset/?id=182491423"] = true
            tbl14["rbxassetid://279227693"] = true
            tbl14["rbxassetid://279229192"] = true
            tbl14["rbxassetid://287112271"] = true
            tbl14["rbxassetid://388723916"] = true
            tbl14["rbxassetid://388726667"] = true
            tbl14["rbxassetid://389472570"] = true
            tbl14["rbxassetid://405194080"] = true
            tbl14["rbxassetid://405212265"] = true
            tbl14["rbxassetid://481088553"] = true
            tbl14["rbxassetid://481089053"] = true
            tbl14["rbxassetid://484200742"] = true
            tbl14["rbxassetid://484926359"] = true
            tbl14["rbxassetid://83690472549256"] = true
            tbl14["rbxassetid://107176344504758"] = true
            tbl14["rbxassetid://111090572475133"] = true
            tbl14["rbxassetid://113267949064300"] = true
            tbl14["rbxassetid://131326339350805"] = true
        end

        invisibleDetectorWhitelist = v51

        invisibleDetectorSeedWhitelist = function()
            pcall(function()
                for i, descendant in ipairs(ReplicatedStorage:GetDescendants()) do
                    if descendant:IsA("Animation") and descendant.AnimationId and descendant.AnimationId ~= "" then
                        invisibleDetectorWhitelist[descendant.AnimationId] = true
                    end
                end
            end)
        end

        invisibleDetectorCooldownKey = function(arg2)
            if not arg2 then
                return nil
            end
            local v52 = tostring
            local userId = arg2.UserId
            local name = userId or arg2.Name
            return v52(name)
        end

        invisibleDetectorResetCooldown = function(arg2)
            local v52 = invisibleDetectorCooldownKey(arg2)

            if v52 and invisibleDetectorState and invisibleDetectorState.cooldown then
                invisibleDetectorState.cooldown[v52] = nil
            end
        end

        invisibleDetectorCanAlert = function(arg2)
            if not arg2 or arg2 == LocalPlayer then
                return false
            end
            local v52 = invisibleDetectorCooldownKey(arg2)
            if not v52 then
                return false
            end
            local now = os.clock()
            local v53 = invisibleDetectorState.cooldown[v52]
            if v53 and now - v53 < 15 then
                return false
            end
            invisibleDetectorState.cooldown[v52] = now
            return true
        end

        alert_invisible = function(arg2)
            if not cfg.invisible_detection or not af or not arg2 or arg2 == LocalPlayer then
                return
            end
            local v52 = tostring
            local displayName = arg2.DisplayName
            local name = displayName or arg2.Name or "Unknown"
            local v53 = v52(name)
            ao = ao + 1
            local TextLabel3 = fn5("TextLabel", af, "Name", "PossibleInvisibleAlert", "Size", udim2(1, 0, 0, 24), "BackgroundTransparency", 1, "TextTransparency", 1, "RichText", true, "TextSize", 18, "Font", Enum.Font.SourceSansBold, "TextStrokeTransparency", 0.22, "TextStrokeColor3", color(0, 0, 0), "LayoutOrder", ao)
            TextLabel3.Text = string.format("<font color=\"%s\">%s</font> <font color=\"rgb(255,55,75)\">possible invisible user, %s</font>", "rgb(255,65,85)", "[Invisible detector]", v53)
            detectorFeedUpdateVisible()
            TweenService:Create(TextLabel3, TweenInfo.new(0.12), {TextTransparency = 0}):Play()
            clean_feed(af, 5)
            local delay = task.delay
            local v54 = ac
            local alert = v54 and ac.alert or 10

            delay(alert, function()
                if TextLabel3 and TextLabel3.Parent then
                    local tween = TweenService:Create(TextLabel3, TweenInfo.new(0.35), {TextTransparency = 1, TextStrokeTransparency = 1})
                    tween:Play()
                    tween.Completed:Wait()

                    if TextLabel3 and TextLabel3.Parent then
                        TextLabel3:Destroy()
                    end
                end
            end)
        end

        invisibleDetectorAnimationAdded = function(arg2, arg3)
            if not invisibleDetectorState.enabled or not arg2 or not arg3 or arg3 == LocalPlayer then
                return
            end
            local animation = arg2.Animation
            local str = animation

            if animation then
                local v52 = tostring
                local animationId = animation.AnimationId
                local str2 = animationId or ""
                str = v52(str2)
            end

            if not str then
                str = ""
            end

            if str == "" or invisibleDetectorWhitelist[str] then
                return
            end

            if invisibleDetectorCanAlert(arg3) then
                alert_invisible(arg3)
            end
        end

        invisibleDetectorBindPlayer = function(arg2)
            if not arg2 or arg2 == LocalPlayer or invisibleDetectorState.tracked[arg2] then
                return
            end
            invisibleDetectorState.tracked[arg2] = true

            local function fn46(arg3)
                if not invisibleDetectorState.enabled or not arg3 then
                    return
                end
                local humanoid_ = arg3:FindFirstChildOfClass("Humanoid")
                local humanoid_2 = humanoid_ or arg3:WaitForChild("Humanoid", 5)
                if not humanoid_2 then
                    return
                end

                local v52 = fn2(humanoid_2.Died, function()
                    invisibleDetectorResetCooldown(arg2)
                end)

                table.insert(invisibleDetectorState.cons, v52)
                local animator = humanoid_2:FindFirstChildOfClass("Animator")
                local animator2 = animator or humanoid_2:WaitForChild("Animator", 5)
                if not animator2 then
                    return
                end

                local v53 = fn2(animator2.AnimationPlayed, function(arg4)
                    invisibleDetectorAnimationAdded(arg4, arg2)
                end)

                table.insert(invisibleDetectorState.cons, v53)

                for i, v54 in ipairs(animator2:GetPlayingAnimationTracks()) do
                    task.spawn(invisibleDetectorAnimationAdded, v54, arg2)
                end
            end

            if arg2.Character then
                task.defer(fn46, arg2.Character)
            end

            table.insert(invisibleDetectorState.cons, fn2(arg2.CharacterAdded, fn46))
        end

        invisibleDetectorDisconnect = function()
            local v52 = ipairs
            local cons = invisibleDetectorState.cons
            local tbl14 = cons or {}

            for k, v53 in v52(tbl14) do
                pcall(function()
                    v53:Disconnect()
                end)
            end

            invisibleDetectorState.cons = {}
            invisibleDetectorState.tracked = setmetatable({}, {__mode = "k"})
        end

        invisibleDetectorStart = function(arg2)
            if invisibleDetectorState.enabled then
                return true
            end
            invisibleDetectorState.enabled = true
            local v52 = invisibleDetectorState
            v52.loopId = v52.loopId + 1
            local v53 = invisibleDetectorState
            local cooldown = invisibleDetectorState.cooldown
            local cooldown2 = cooldown or {}
            v53.cooldown = cooldown2
            invisibleDetectorDisconnect()
            invisibleDetectorSeedWhitelist()
            cfg.invisible_detection = true
            featureSet("invisible_detection", true)
            save_cfg()
            detectorFeedUpdateVisible()

            for i, v54 in ipairs(tbl4) do
                invisibleDetectorBindPlayer(v54)
            end

            table.insert(invisibleDetectorState.cons, fn2(Players.PlayerAdded, function(arg3)
                invisibleDetectorBindPlayer(arg3)
            end))

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg2 and add_line then
                add_line(".invisibledetection on", "invisible detection on", false)
            end

            return true
        end

        invisibleDetectorStop = function(arg2)
            invisibleDetectorState.enabled = false
            local v52 = invisibleDetectorState
            v52.loopId = v52.loopId + 1
            invisibleDetectorDisconnect()
            cfg.invisible_detection = false
            featureSet("invisible_detection", false)
            save_cfg()
            detectorFeedUpdateVisible()

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            if not arg2 and add_line then
                add_line(".invisibledetection off", "invisible detection off", false)
            end

            return true
        end

        invisibleDetectorSet = function(arg2, arg3)
            if arg2 == true then
                return invisibleDetectorStart(arg3)
            end
            return invisibleDetectorStop(arg3)
        end

        set_invisible_detection = function(arg2)
            return invisibleDetectorSet(arg2, false)
        end

        task.defer(function()
            task.wait(0.75)
            local v52 = featureGet
            local flag11 = cfg.invisible_detection == true

            if v52("invisible_detection", flag11) then
                invisibleDetectorStart(true)
            end
        end)

        addkill = function(arg2, arg3, arg4)
            if not cfg.kill_feedback or not arg2 or not arg3 or arg2 == arg3 then
                return
            end
            local str = tostring(arg2.UserId) .. ":" .. tostring(arg3.UserId)
            if kd.recent[str] and tick() - kd.recent[str] < duptime then
                return
            end
            kd.recent[str] = tick()

            if arg2 ~= LocalPlayer then
                local streak = kd.streak
                local str2 = tostring(arg2.UserId)
                local v52 = kd.streak[tostring(arg2.UserId)]
                local n5 = v52 or 0
                streak[str2] = n5 + 1
            end

            rstreak(arg3)
            ko = ko + 1
            local v52 = hpper(arg2)
            local v53 = kd.streak[tostring(arg2.UserId)]
            local n5 = v53 or 0
            local v54 = wpn(arg4, arg2)
            local v55, v56, v57 = rgb(tc(arg2))
            local v58, v59, v60 = rgb(tc(arg3))
            local v61, v62, v63 = rgb(pc(v52))
            local str2 = arg2 ~= LocalPlayer and string.format(" <font color=\"rgb(%d,%d,%d)\">[%d%%]</font>", v61, v62, v63, v52) or ""
            local str3 = arg2 ~= LocalPlayer and n5 >= 3 and string.format(" <font color=\"rgb(255,210,55)\">%dx Streak</font>", n5) or ""
            local TextLabel3 = fn5("TextLabel", kf, "Name", "KillMessage", "Size", udim2(1, 0, 0, 22), "BackgroundTransparency", 1, "TextTransparency", 1, "RichText", true, "TextSize", 17, "Font", Enum.Font.SourceSansBold, "TextStrokeTransparency", 0.35, "TextStrokeColor3", color(0, 0, 0), "LayoutOrder", ko)
            local flag11 = true

            if isScriptOwner(arg2) then
                task.spawn(function()
                    local n6 = 0

                    while flag and flag11 and TextLabel3 and TextLabel3.Parent do
                        local n7 = n6 + RunService.RenderStepped:Wait() * 0.45
                        n6 = n7
                        local color2 = Color3.fromHSV(n7 % 1, 1, 1)
                        local str4 = string.format("rgb(%d,%d,%d)", rgb(color2))
                        TextLabel3.Text = string.format("<font color=\"%s\">%s [Owner]</font>%s <font color=\"%s\">killed</font> <font color=\"rgb(%d,%d,%d)\">%s</font> <font color=\"rgb(180,180,180)\">with</font> <font color=\"rgb(255,255,255)\">%s</font>%s", str4, pname(arg2), str2, str4, v58, v59, v60, pname(arg3), v54, str3)
                    end
                end)
            else
                local v64, v65 = getScriptRole(arg2)

                if v64 then
                    local function fn46(arg5)
                        local str4 = string.format("rgb(%d,%d,%d)", rgb(arg5))
                        TextLabel3.Text = string.format("<font color=\"%s\">%s [%s]</font>%s <font color=\"%s\">killed</font> <font color=\"rgb(%d,%d,%d)\">%s</font> <font color=\"rgb(180,180,180)\">with</font> <font color=\"rgb(255,255,255)\">%s</font>%s", str4, pname(arg2), v64, str2, str4, v58, v59, v60, pname(arg3), v54, str3)
                    end

                    if v64 == "OG" then
                        fn46(ogPulseColor(0))

                        task.spawn(function()
                            local n6 = 0

                            while flag and flag11 and TextLabel3 and TextLabel3.Parent do
                                local n7 = n6 + RunService.RenderStepped:Wait() * 1.8
                                n6 = n7
                                fn46(ogPulseColor(n7))
                            end
                        end)
                    else
                        fn46(v65)
                    end
                else
                    TextLabel3.Text = string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>%s <font color=\"rgb(255,255,255)\">killed</font> <font color=\"rgb(%d,%d,%d)\">%s</font> <font color=\"rgb(180,180,180)\">with</font> <font color=\"rgb(255,255,255)\">%s</font>%s", v55, v56, v57, pname(arg2), str2, v58, v59, v60, pname(arg3), v54, str3)
                end
            end

            TweenService:Create(TextLabel3, TweenInfo.new(0.15), {TextTransparency = 0}):Play()
            clean_feed(kf, maxmsg)

            task.delay(msgtime, function()
                flag11 = false

                if TextLabel3 and TextLabel3.Parent then
                    local tween = TweenService:Create(TextLabel3, TweenInfo.new(0.35), {TextTransparency = 1, TextStrokeTransparency = 1})
                    tween:Play()
                    tween.Completed:Wait()

                    if TextLabel3 and TextLabel3.Parent then
                        TextLabel3:Destroy()
                    end
                end
            end)
        end

        _G.XKillFeedPush = function(arg2, arg3, arg4)
            if typeof(arg2) == "Instance" and arg2:IsA("Player") and typeof(arg3) == "Instance" and arg3:IsA("Player") then
                local v52 = addkill
                local v53 = arg4 or gun(arg2)
                v52(arg2, arg3, v53)
            end
        end

        _G.XKillFeedLocalKill = function(arg2, arg3)
            if typeof(arg2) == "Instance" and arg2:IsA("Player") then
                local v52 = addkill
                local v53 = LocalPlayer
                local v54 = arg3 or gun(LocalPlayer)
                v52(v53, arg2, v54)
            end
        end

        ownmsg = function(arg2)
            if not cfg.kill_feedback or not arg2 then
                return
            end
            ko = ko + 1
            local TextLabel3 = fn5("TextLabel", kf, "Name", "OwnerMessage", "Size", udim2(1, 0, 0, 22), "BackgroundTransparency", 1, "TextTransparency", 1, "RichText", true, "TextSize", 17, "Font", Enum.Font.SourceSansBold, "TextStrokeTransparency", 0.35, "TextStrokeColor3", color(0, 0, 0), "LayoutOrder", ko)
            local flag11 = true

            task.spawn(function()
                local n5 = 0

                while flag and flag11 and TextLabel3 and TextLabel3.Parent do
                    local n6 = n5 + RunService.RenderStepped:Wait() * 0.45
                    n5 = n6
                    local color2 = Color3.fromHSV(n6 % 1, 1, 1)
                    local str = string.format("rgb(%d,%d,%d)", rgb(color2))
                    TextLabel3.Text = string.format("<font color=\"%s\">%s [Owner] its on the server</font>", str, pname(arg2))
                end
            end)

            TweenService:Create(TextLabel3, TweenInfo.new(0.15), {TextTransparency = 0}):Play()
            clean_feed(kf, maxmsg)

            task.delay(10, function()
                flag11 = false

                if TextLabel3 and TextLabel3.Parent then
                    local tween = TweenService:Create(TextLabel3, TweenInfo.new(0.35), {TextTransparency = 1, TextStrokeTransparency = 1})
                    tween:Play()
                    tween.Completed:Wait()

                    if TextLabel3 and TextLabel3.Parent then
                        TextLabel3:Destroy()
                    end
                end
            end)
        end

        ogPulseColor = function(arg2)
            local wave = scriptRoles.OG.Wave
            local n5 = arg2 % 3
            local n6 = math.floor(n5) + 1
            return wave[n6]:Lerp(wave[n6 % 3 + 1], n5 % 1)
        end

        ogWaveLabel = function(arg2)
            local UIGradient = fn5("UIGradient", arg2, "Color", scriptRoles.OG.Gradient, "Offset", vector2(-0.45, 0))

            task.spawn(function()
                local n5 = 0

                while flag and arg2.Parent and UIGradient.Parent do
                    local n6 = n5 + RunService.RenderStepped:Wait()
                    n5 = n6
                    UIGradient.Offset = vector2(math.sin(n6 * 2.1) * 0.45, 0)
                end
            end)
        end

        rolemsg = function(arg2, arg3, arg4)
            if not cfg.kill_feedback or not arg2 or not arg3 then
                return
            end
            ko = ko + 1
            local flag11 = arg3 == "OG"
            local str = pname(arg2) .. " [" .. arg3 .. "]"
            local v52, v53, v54 = rgb(arg4)
            local v55 = kf
            local str2 = arg3 .. "Message"
            local v56 = udim2(1, 0, 0, 22)
            local n5 = flag11 and 0 or 1
            local v57 = color(255, 255, 255)
            local flag12

            if flag11 then
                flag12 = false
            else
                flag12 = true
            end

            local sourceSansBold = Enum.Font.SourceSansBold
            local n6 = flag11 and 0.8 or 0.6
            local v58 = color(0, 0, 0)
            local v59 = ko
            local str3 = flag11 and str .. " its on the server" or string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>%s", v52, v53, v54, str, " <font color=\"rgb(255,255,255)\">its on the server</font>")
            local TextLabel3 = fn5("TextLabel", v55, "Name", str2, "Size", v56, "BackgroundTransparency", 1, "TextTransparency", n5, "TextColor3", v57, "RichText", flag12, "TextSize", 17, "Font", sourceSansBold, "TextStrokeTransparency", n6, "TextStrokeColor3", v58, "LayoutOrder", v59, "Text", str3)

            if flag11 then
                ogWaveLabel(TextLabel3)
            else
                TweenService:Create(TextLabel3, TweenInfo.new(0.15), {TextTransparency = 0}):Play()
            end

            clean_feed(kf, maxmsg)

            task.delay(10, function()
                if TextLabel3 and TextLabel3.Parent then
                    local tween = TweenService:Create(TextLabel3, TweenInfo.new(0.35), {TextTransparency = 1, TextStrokeTransparency = 1})
                    tween:Play()
                    tween.Completed:Wait()

                    if TextLabel3 and TextLabel3.Parent then
                        TextLabel3:Destroy()
                    end
                end
            end)
        end

        checkScriptRole = function(arg2)
            if not cfg.kill_feedback or not arg2 or scriptRoleSeen[arg2] then
                return
            end

            if not isScriptOwner(arg2) then
                local v52, v53 = getScriptRole(arg2)

                if v52 then
                    rolemsg(arg2, v52, v53)
                    scriptRoleSeen[arg2] = true
                end

                return
            end

            ownmsg(arg2)
            scriptRoleSeen[arg2] = true
        end

        checkScriptRoles = function()
            for i, v52 in ipairs(tbl4) do
                checkScriptRole(v52)
            end
        end

        hooktool = function(arg2)
            if not arg2:IsA("Tool") or kd.tools[arg2] then
                return
            end
            kd.tools[arg2] = true

            fn2(arg2.Activated, function()
                if cfg.kill_feedback then
                    kd.shots[#kd.shots + 1] = {t = tick(), w = arg2.Name}
                end
            end)
        end

        hookchar = function(arg2)
            for i, child in ipairs(arg2:GetChildren()) do
                if child:IsA("Tool") then
                    hooktool(child)
                end
            end

            fn2(arg2.ChildAdded, function(arg3)
                if arg3:IsA("Tool") then
                    hooktool(arg3)
                end
            end)
        end

        hookdeath = function(arg2)
            local function fn46(arg3)
                local humanoid_ = arg3:WaitForChild("Humanoid", 8)
                if not humanoid_ then
                    return
                end

                fn2(humanoid_.Died, function()
                    if arg2 == LocalPlayer then
                        rstreak(arg2)
                        return
                    end

                    if cfg.kill_feedback then
                        local v52 = kd.hits[tostring(arg2.UserId)]

                        if v52 and tick() - v52.t <= hitwin then
                            addkill(LocalPlayer, arg2, v52.w)
                        end
                    end

                    rstreak(arg2)
                end)
            end

            if arg2.Character then
                task.spawn(fn46, arg2.Character)
            end

            fn2(arg2.CharacterAdded, fn46)
        end

        fn2(RunService.Heartbeat, function()
            local now = tick()
            local flag11 = n4 <= now

            if flag11 then
                n4 = now + 0.5
            end

            if cfg.lock_walkspeed then
                local v52 = get_hum()

                if v52 and v52.WalkSpeed ~= cfg.walkspeed_value then
                    v52.WalkSpeed = cfg.walkspeed_value
                end
            end

            for i, v52 in ipairs(tbl4) do
                local v53 = hum(v52)

                if v53 then
                    local str = tostring(v52.UserId)
                    local hp = kd.hp
                    local v54 = kd.hp[str]
                    local tbl14 = v54 or {}
                    hp[str] = tbl14
                    local v55 = kd.hp[str]
                    local v56 = v55[#v55]

                    if v52 ~= LocalPlayer and cfg.kill_feedback and v56 and v53.Health < v56.hp then
                        local v57 = kd.shots[#kd.shots]

                        if v57 and now - v57.t <= shotwin then
                            kd.hits[str] = {t = now, w = v57.w}
                        end
                    end

                    v55[#v55 + 1] = {t = now, hp = v53.Health}

                    if flag11 then
                        fn45(v55, now - 2)
                    end

                    local hp2 = ad.hp
                    local userId = v52.UserId
                    local v57 = ad.hp[v52.UserId]
                    local tbl15 = v57 or {}
                    hp2[userId] = tbl15
                    local v58 = ad.hp[v52.UserId]
                    v58[#v58 + 1] = {t = now, hp = v53.Health}

                    if flag11 then
                        fn45(v58, now - ac.time)
                    end
                end
            end

            if flag11 then
                fn45(kd.shots, now - 2)
            end
        end)

        if ev then
            fn2(ev.OnClientEvent, function(arg2)
                if typeof(arg2) ~= "table" then
                    return
                end
                local v52, v53, v54 = ipairs(arg2)
                local v55 = v54
                local v56 = v52
                local v57 = v53

                while true do
                    local v58, v59 = v56(v57, v55)
                    if v58 == nil then
                        break
                    end
                    v55 = v58
                    local v60 = v59[1]
                    local v61 = v59[2]
                    local v62 = tostring
                    local v63 = v59[3]
                    local str = v63 or "Unknown"
                    local v64 = v62(str)

                    if typeof(v60) == "Vector3" and typeof(v61) == "Vector3" then
                        if cfg.kill_feedback then
                            local v65 = shooter(v60)

                            if v65 then
                                for i, v66 in ipairs({0.05, 0.16, 0.28}) do
                                    task.delay(v66, function()
                                        local v67 = victim(v65, v61)
                                        local v68 = v67 and hum(v67)

                                        if v67 and v68 and v68.Health <= 0 then
                                            addkill(v65, v67, v64)
                                        end
                                    end)
                                end

                                v55 = v58
                            end
                        end

                        if cfg.aim_detect then
                            local v65 = ashooter(v60)

                            if v65 and v65 ~= LocalPlayer then
                                local v66 = trk(v65)
                                local flag11 = false
                                local flag12 = false
                                local v67 = nil

                                for i, v68 in ipairs(tbl4) do
                                    if v68 ~= v65 and v68.Character then
                                        local character_ = v68.Character
                                        local head = character_:FindFirstChild("Head")
                                        local torso = character_:FindFirstChild("Torso")
                                        local upperTorso = torso or character_:FindFirstChild("UpperTorso")
                                        local humanoid_ = character_:FindFirstChildOfClass("Humanoid")

                                        if head and upperTorso and humanoid_ then
                                            local v69 = ahp(v68.UserId, 0.003)
                                            local health = humanoid_.Health

                                            if v69 and health < v69 then
                                                local magnitude = (v61 - upperTorso.Position).Magnitude
                                                local magnitude2 = (v60 - head.Position).Magnitude
                                                local magnitude3 = (v60 - upperTorso.Position).Magnitude

                                                if (v61 - head.Position).Magnitude < ac.headr and ac.dist < magnitude2 then
                                                    flag11 = true
                                                    v67 = v68
                                                    break
                                                end

                                                if magnitude < ac.torsor and ac.dist < magnitude3 then
                                                    flag12 = true
                                                    v67 = v68
                                                    break
                                                end

                                                continue
                                            end
                                        end
                                    end
                                end

                                v66.total = v66.total + 1

                                if flag11 then
                                    v66.head = v66.head + 1
                                end

                                if flag12 then
                                    v66.torso = v66.torso + 1
                                end

                                if ac.min <= v66.total then
                                    local n5 = v66.head / v66.total
                                    local n6 = v66.torso / v66.total

                                    if ac.head <= n5 then
                                        alert_aim(v65, "Possible Aimbot", v67, n5)
                                        rtrk(v66)
                                    elseif ac.torso <= n6 then
                                        alert_aim(v65, "Possible Aimlock", v67, n6)
                                        rtrk(v66)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end

        task.spawn(function()
            while flag and feedgui and feedgui.Parent do
                task.wait(ac.reset)
                ad.track = {}
            end
        end)

        serverhop = function()
            local v52 = nil
            serverTeleportState.pending = nil
            local tbl14 = {}

            local ok, result = pcall(function()
                local response = game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")
                return HttpService:JSONDecode(response)
            end)

            if ok and result and result.data then
                local v53 = next
                local data = result.data

                while true do
                    local v54, v55 = v53(data, v52)
                    if v54 == nil then
                        break
                    end
                    v52 = v54

                    if type(v55) == "table" and tonumber(v55.playing) and tonumber(v55.maxPlayers) and v55.playing < v55.maxPlayers and v55.id ~= JobId then
                        table.insert(tbl14, 1, v55.id)
                    end
                end
            end

            if #tbl14 > 0 then
                add_line(".serverhop", "hopping server", false)

                pcall(function()
                    TeleportService:TeleportToPlaceInstance(PlaceId, tbl14[math.random(1, #tbl14)], LocalPlayer)
                end)
            else
                add_line(".serverhop", "server not found", true)
                red_anim()
            end
        end

        rejoin = function()
            serverTeleportState.pending = nil
            add_line(".rejoin", "rejoining server", false)

            pcall(function()
                if #Players:GetPlayers() <= 1 then
                    LocalPlayer:Kick("\nRejoining...")
                    task.wait()
                    TeleportService:Teleport(PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
                end
            end)
        end

        skidDetectShown = {}
        skidChatDedupKey = "__Kera_SkidChatDedup"
        skidChatDedup = {}

        pcall(function()
            if getgenv then
                local genv2 = getgenv()
                local v52 = skidChatDedupKey
                local v53 = getgenv()[skidChatDedupKey]
                local tbl14 = v53 or {}
                genv2[v52] = tbl14
                local v54 = getgenv()[skidChatDedupKey]
                skidChatDedup = v54
            end
        end)

        skidShouldSendChat = function(arg2)
            if not arg2 then
                return false
            end
            local now = os.clock()
            local str = tostring(JobId) .. ":" .. tostring(arg2.UserId)
            local v52 = skidChatDedup[str]
            if v52 and now - v52 < 30 then
                return false
            end
            skidChatDedup[str] = now
            return true
        end

        skidEnsureConfig = function()
            if typeof(cfg.skid_list) ~= "table" then
                cfg.skid_list = {}
            end
        end

        legacySkidList = {
            ["10721512205"] = {
                addedAt = 1781216056,
                key = "10721512205",
                displayName = "tubers92",
                name = "boneka_lucu12340",
                addedBy = "ZephyrMoon",
                reason = "invisible script",
                oldSkidList = true,
            },
            ["5120905145"] = {
                addedAt = 1781253538,
                key = "5120905145",
                displayName = "USSR",
                name = "LETMECOOK6662",
                addedBy = "ZephyrMoon",
                reason = "teleport",
                oldSkidList = true,
            },
            ["9730825523"] = {
                addedAt = 1781336595,
                key = "9730825523",
                displayName = "IlllIllIllIIIIIIIIII",
                name = "IlllIllIllIIIIIIIIII",
                addedBy = "ZephyrMoon",
                reason = "flyscript",
                oldSkidList = true,
            },
            ["1840516800"] = {
                addedAt = 1781215129,
                key = "1840516800",
                displayName = "Oda",
                name = "plawkkw",
                addedBy = "ZephyrMoon",
                reason = "aimbot, skid issues",
                oldSkidList = true,
            },
            ["name:iii"] = {
                addedAt = 1781336550,
                key = "name:iii",
                displayName = "iii",
                name = "iii",
                addedBy = "ZephyrMoon",
                reason = "fly",
                oldSkidList = true,
            },
            ["11090523086"] = {
                addedAt = 1781216204,
                key = "11090523086",
                displayName = "Jay",
                name = "JJtoocool_210",
                addedBy = "ZephyrMoon",
                reason = "invisible script",
                oldSkidList = true,
            },
            ["347061"] = {
                addedAt = 1781253883,
                key = "347061",
                displayName = "som",
                name = "som",
                addedBy = "ZephyrMoon",
                reason = "noclip",
                oldSkidList = true,
            },
            ["10194568982"] = {
                addedAt = 1781331374,
                key = "10194568982",
                displayName = "Elmhurst",
                name = "ImfineImokImgoodIm",
                addedBy = "ZephyrMoon",
                reason = "flycar",
                oldSkidList = true,
            },
            ["10851475670"] = {
                addedAt = 1781287417,
                key = "10851475670",
                displayName = "rwhuogbrwuhgb",
                name = "rwhuogbrwuhgb",
                addedBy = "ZephyrMoon",
                reason = "invisible script",
                oldSkidList = true,
            },
            ["10782609085"] = {
                addedAt = 1781288349,
                key = "10782609085",
                displayName = "lows118",
                name = "lows118",
                addedBy = "ZephyrMoon",
                reason = "invisible script",
                oldSkidList = true,
            },
            ["11005815263"] = {
                addedAt = 1781287407,
                key = "11005815263",
                displayName = "kirk",
                name = "bruhuazz7",
                addedBy = "ZephyrMoon",
                reason = "invisible script",
                oldSkidList = true,
            },
            ["10261530997"] = {
                addedAt = 1781212363,
                key = "10261530997",
                displayName = "Anfer",
                name = "Fernandoupl",
                addedBy = "ZephyrMoon",
                reason = "test",
                oldSkidList = true,
            },
            ["11066159498"] = {
                addedAt = 1781205599,
                key = "11066159498",
                displayName = "wskz2ow",
                name = "wskz2ow",
                addedBy = "ZephyrMoon",
                reason = "aimbot, jumppower",
                oldSkidList = true,
            },
        }

        importLegacySkidList = function()
            skidEnsureConfig()
            local flag11 = false
            local v52, v53, v54 = pairs(legacySkidList)
            local v55 = v54
            local v56 = v52
            local v57 = v53

            while true do
                local v58, v59 = v56(v57, v55)
                if v58 == nil then
                    break
                end
                v55 = v58
                local v60 = cfg.skid_list[v58]

                if typeof(v60) == "table" then
                    local flag12 = false

                    if v60.oldSkidList ~= true then
                        v60.oldSkidList = true
                        flag12 = true
                    end

                    for k, v61 in pairs(v59) do
                        if v60[k] == nil then
                            v60[k] = v61
                            flag12 = true
                        end
                    end

                    v55 = v58

                    if flag12 then
                        flag11 = true
                    end
                else
                    cfg.skid_list[v58] = {
                        addedAt = v59.addedAt,
                        key = v59.key,
                        displayName = v59.displayName,
                        name = v59.name,
                        addedBy = v59.addedBy,
                        reason = v59.reason,
                        oldSkidList = true,
                    }

                    flag11 = true
                end
            end

            if flag11 then
                save_cfg()

                if refresh_saved_commands then
                    pcall(refresh_saved_commands)
                end
            end
        end

        skidDeduplicateConfig = function()
            skidEnsureConfig()
            local tbl14 = {}

            for k, v52 in pairs(cfg.skid_list) do
                if typeof(v52) == "table" then
                    local n5 = #tbl14 + 1
                    local tbl15 = {key = k, entry = v52}
                    local numeric = tostring(k):match("^%d+$") ~= nil
                    tbl15.numeric = numeric
                    tbl14[n5] = tbl15
                end
            end

            table.sort(tbl14, function(arg2, arg3)
                if arg2.numeric ~= arg3.numeric then
                    return arg2.numeric
                end
                local flag11 = tostring(arg2.key) < tostring(arg3.key)
                return flag11
            end)

            local skidList = {}
            local tbl15 = {}
            local tbl16 = {}
            local flag11 = false

            for i, v52 in ipairs(tbl14) do
                local str = tostring(v52.key)
                local entry = v52.entry
                local v53 = tostring
                local key = entry.key
                local v54 = key or str
                local v55 = v53(v54)
                local v56 = tostring
                local name = entry.name
                local str2 = name or ""
                local str3 = v56(str2):lower()
                local match = v55:match("^%d+$")
                local v57 = match and v55

                if not v57 then
                    local match2 = str:match("^%d+$")
                    v57 = match2 and str
                end

                if not v57 then
                    v57 = nil
                end

                local flag12 = v57 and tbl15[v57] or str3 ~= "" and tbl16[str3]

                if flag12 then
                    flag11 = true
                else
                    skidList[str] = entry

                    if v57 then
                        tbl15[v57] = true
                    end

                    if str3 ~= "" then
                        tbl16[str3] = true
                    end
                end
            end

            if flag11 then
                cfg.skid_list = skidList
                save_cfg()

                if refresh_saved_commands then
                    task.defer(refresh_saved_commands)
                end
            end

            return flag11
        end

        task.defer(function()
            importLegacySkidList()
            skidDeduplicateConfig()
        end)

        skidEscapeRich = function(arg2)
            local v52 = tostring
            local str = arg2 or ""
            return v52(str):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub("\"", "&quot;")
        end

        skidSystemMessage = function(arg2, arg3)
            local str = arg3 or "#ff4d6d"
            local v52 = str
            local str2 = "<font color=\"" .. v52 .. "\">" .. skidEscapeRich(arg2) .. "</font>"

            if not pcall(function()
                local textChannels = TextChatService:FindFirstChild("TextChannels")
                local rbxGeneral = textChannels and textChannels:FindFirstChild("RBXGeneral")

                if rbxGeneral then
                    rbxGeneral:DisplaySystemMessage(str2)
                end
            end) then
                add_line(".skidlist", arg2, false)
            end
        end

        skidDateString = function(arg2)
            local date = os.date
            local num = tonumber(arg2)
            local now = num or os.time()
            return date("%d/%m/%Y %H:%M:%S", now)
        end

        skidFindPlayerToken = function(arg2)
            local v52 = tostring
            local str = arg2 or ""
            local str2 = v52(str):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str2 == "" then
                return nil
            end
            local v53 = nil
            local v54 = nil
            local v55 = nil

            for i, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local str3 = tostring(player.Name):lower()
                    local str4 = tostring(player.DisplayName):lower()

                    if str3 ~= str2 and str4 ~= str2 then
                        if str3:sub(1, #str2) == str2 or str4:sub(1, #str2) == str2 then
                            local v56 = v54 or player
                            v54 = v56
                        end

                        if str3:find(str2, 1, true) or str4:find(str2, 1, true) then
                            local v56 = v55 or player
                            v55 = v56
                        end

                        continue
                    end

                    v53 = player
                    break
                end

                continue
            end

            local v56 = v53 or v54 or v55
            return v56
        end

        skidKeyFromPlayerOrName = function(arg2)
            local v52 = skidFindPlayerToken(arg2)
            if v52 then
                return tostring(v52.UserId), v52.Name, v52.DisplayName
            end
            local v53 = tostring
            local str = arg2 or ""
            local str2 = v53(str):gsub("^%s+", ""):gsub("%s+$", "")
            if str2 == "" then
                return nil
            end
            return "name:" .. str2:lower(), str2, str2
        end

        skidGetEntryForPlayer = function(arg2)
            skidEnsureConfig()
            local v52 = cfg.skid_list[tostring(arg2.UserId)]
            if v52 then
                return v52
            end
            local v53 = cfg.skid_list["name:" .. tostring(arg2.Name):lower()]
            if v53 then
                return v53
            end
            local v54 = cfg.skid_list["name:" .. tostring(arg2.DisplayName):lower()]
            if not v54 then
                return nil
            end
            return v54
        end

        skidDetectPlayer = function(arg2, arg3)
            if not arg2 or arg2 == LocalPlayer then
                return
            end
            local v52 = skidGetEntryForPlayer(arg2)
            if not v52 then
                return
            end
            local str = tostring(arg2.UserId)
            if skidDetectShown[str] and not arg3 then
                return
            end
            skidDetectShown[str] = true
            db_track_skid_encounter(arg2, v52)
            local name = v52.name
            local name2 = name or arg2.Name
            local reason = v52.reason
            local str2 = reason or "no reason"
            local v53 = skidDateString(v52.addedAt)
            local str3 = v53

            if v52.oldSkidList == true then
                str3 = v53 .. " (old skidlist)"
            end

            local addedBy = v52.addedBy
            local str4 = addedBy or "unknown"
            local str5 = arg3 == "joined" and "A SKID JOINED YOUR SERVER" or "SKID DETECTED ON YOUR SERVER"
            skidSystemMessage(str5 .. ": " .. name2 .. " | reason: " .. str2 .. " | added: " .. str3 .. " | by: " .. str4, "#ff4d6d")

            if playerListRefresh then
                task.defer(playerListRefresh)
            end
        end

        refreshSkidDetections = function()
            if importLegacySkidList then
                importLegacySkidList()
            end

            for i, v52 in ipairs(tbl4) do
                skidDetectPlayer(v52, false)
            end
        end

        skidFindExistingForPlayer = function(arg2)
            skidEnsureConfig()
            if not arg2 then
                return nil
            end
            local str = tostring(arg2.UserId)
            local name = tostring(arg2.Name):lower()

            for k, v52 in pairs(cfg.skid_list) do
                if typeof(v52) == "table" then
                    local v53 = tostring
                    local key = v52.key
                    local v54 = key or k
                    local v55 = v53(v54)
                    local v56 = tostring
                    local name2 = v52.name
                    local str2 = name2 or ""
                    local str3 = v56(str2):lower()
                    if tostring(k) == str or v55 == str or str3 == name or tostring(k):lower() == "name:" .. name then
                        return v52, k
                    end
                end
            end

            return nil
        end

        addSkidCommand = function(arg2)
            skidEnsureConfig()
            skidDeduplicateConfig()
            local v52 = tostring
            local str = arg2 or ""
            local match, v53 = v52(str):gsub("^%s+", ""):gsub("%s+$", ""):match("^(%S+)%s+(.+)$")

            if match and v53 and v53:gsub("%s+", "") ~= "" then
                local v54 = skidFindPlayerToken(match)

                if not v54 then
                    add_line(".addskid " .. tostring(match), "player is not in this server", true)
                    red_anim()
                    return false
                end

                if not skidFindExistingForPlayer(v54) then
                    local str2 = tostring(v54.UserId)

                    cfg.skid_list[str2] = {
                        key = str2,
                        name = v54.Name,
                        displayName = v54.DisplayName,
                        reason = v53,
                        addedAt = os.time(),
                        addedBy = LocalPlayer.Name,
                    }

                    db_track_skid_added(cfg.skid_list[str2])
                    save_cfg()
                    refresh_saved_commands()
                    add_line(".addskid " .. v54.Name, "skid added: " .. v54.Name, false)
                    skidDetectShown[str2] = nil
                    skidDetectPlayer(v54, true)

                    if playerListRefresh then
                        task.defer(playerListRefresh)
                    end

                    return true
                end

                add_line(".addskid " .. v54.Name, "user is already in skidlist", true)
                red_anim()
                return false
            end

            add_line(".addskid", "use .addskid user reason", true)
            red_anim()
            return false
        end

        deleteSkidCommand = function(arg2)
            skidEnsureConfig()
            local v52 = tostring
            local str = arg2 or ""
            local str2 = v52(str):gsub("^%s+", ""):gsub("%s+$", "")

            if str2 == "" then
                add_line(".deleteskid", "use .deleteskid user", true)
                red_anim()
                return false
            end

            local name = str2:lower()
            local v53 = skidFindPlayerToken(str2)
            local flag11 = false

            if v53 and cfg.skid_list[tostring(v53.UserId)] then
                cfg.skid_list[tostring(v53.UserId)] = nil
                skidDetectShown[tostring(v53.UserId)] = nil
                flag11 = true
            end

            if not flag11 and cfg.skid_list["name:" .. name] then
                cfg.skid_list["name:" .. name] = nil
                flag11 = true
            end

            if not flag11 then
                for k, v54 in pairs(cfg.skid_list) do
                    local v55 = tostring
                    local name2 = v54.name
                    local str3 = name2 or ""
                    local str4 = v55(str3):lower()
                    local v56 = tostring
                    local displayName = v54.displayName
                    local str5 = displayName or ""
                    local str6 = v56(str5):lower()

                    if str4 == name or str6 == name or str4:sub(1, #name) == name or str6:sub(1, #name) == name then
                        cfg.skid_list[k] = nil
                        flag11 = true
                        break
                    end

                    continue
                end
            end

            if not flag11 then
                add_line(".deleteskid " .. str2, "user not in skidlist", true)
                red_anim()
                return false
            end

            dbViewDirty = true
            save_cfg()
            refresh_saved_commands()

            if playerListRefresh then
                task.defer(playerListRefresh)
            end

            add_line(".deleteskid " .. str2, "skid eliminado", false)
            return true
        end

        showSkidList = function()
            skidEnsureConfig()
            local n5 = 0

            for k in pairs(cfg.skid_list) do
                n5 = n5 + 1
            end

            add_line(".skidlist", "saved skids: " .. tostring(n5), false)
            if n5 == 0 then
                add_line(".skidlist", "lista vacia", false)
                return true
            end

            for k, v52 in pairs(cfg.skid_list) do
                local v53 = add_line
                local v54 = tostring
                local name = v52.name
                local key = name or v52.key
                local v55 = v54(key)
                local v56 = tostring
                local reason = v52.reason
                local str = reason or "no reason"
                v53(".skidlist", v55 .. " | " .. v56(str), false)
            end

            return true
        end

        fn2(Players.PlayerAdded, function(arg2)
            task.wait(1)
            skidDetectPlayer(arg2, "joined")

            if playerListRefresh then
                task.defer(playerListRefresh)
            end
        end)

        fn2(Players.PlayerRemoving, function(arg2)
            skidDetectShown[tostring(arg2.UserId)] = nil
        end)

        task.defer(function()
            task.wait(1.5)
            refreshSkidDetections()
        end)
    end

    local tbl7, fn19, fn20, tbl8

    do
        local tbl9 = {
            Range = 950,
            AllRange = 800,
            Poll = 0.12,
            FastPoll = 0.05,
            LocalPoll = 0.08,
            TeamIdlePoll = 0.07,
            ToolWait = 6,
            TargetReadyWait = 30,
            LocalReadyWait = 8,
            DefaultCount = 3,
            MaxCount = 100,
        }

        local tbl10 = {
            Loop = {
                Runs = 3,
                View = 0.35,
                Confirm = 0.75,
                Retry = 0.12,
                Range = tbl9.Range,
                LoopChecks = true,
            },
            Team = {
                Runs = 2,
                View = 0.15,
                Confirm = 0.25,
                Retry = 0.04,
                Range = tbl9.Range,
            },
            KillTp = {
                Runs = 1,
                View = 0.08,
                Confirm = 0.05,
                Retry = 0.005,
                UnlimitedArmor = true,
            },
        }

        local function fn21(arg2)
            local flag6 = arg2 and arg2.Team and LocalPlayer.Team and arg2.Team == LocalPlayer.Team
            return flag6
        end

        local function fn22(arg2)
            local v7 = tostring
            local str = arg2 or ""
            return v7(str):gsub("^%s+", ""):gsub("%s+$", "")
        end

        local function fn23(arg2)
            return fn22(arg2):lower():gsub("%s+", "")
        end

        local function fn24(arg2, arg3)
            add_line(arg2, arg3, true)
            red_anim()
            return false
        end

        killAliveCharacter = function(arg2, arg3)
            if not arg2 or arg2.Parent ~= Players then
                return nil
            end
            local character_ = arg2.Character
            if not character_ or arg3 and character_ == arg3 then
                return nil
            end
            local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart = character_:FindFirstChild("HumanoidRootPart")
            if humanoid_ and humanoid_.Health > 0 and humanoidRootPart then
                return character_, humanoid_, humanoidRootPart
            end
            return nil
        end

        killToolNames = {
            M9 = true,
            FAL = true,
            ["AK-47"] = true,
            ["Remington 870"] = true,
            REMINGTON = true,
            MP5 = true,
            Revolver = true,
            REVOLVER = true,
            M700 = true,
            Sniper = true,
            SNIPER = true,
            M4A1 = true,
        }

        local function fn25(arg2, arg3)
            if not arg2 then
                return false
            end

            for i, child in ipairs(arg2:GetChildren()) do
                if child:IsA("Tool") and arg3[child.Name] then
                    return true
                end
            end

            return false
        end

        local function fn26(arg2)
            if not arg2 then
                return false
            end

            for i, child in ipairs(arg2:GetChildren()) do
                local v7 = tostring
                local name = child.Name
                local str = name or ""
                local str2 = v7(str):lower()
                if child:IsA("Tool") and (str2 == "keycard" or str2 == "key card" or str2:find("keycard", 1, true) or str2:find("key card", 1, true)) then
                    return true
                end
            end

            return false
        end

        hasKillTool = function()
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            local character_ = LocalPlayer.Character
            local v7 = fn25(backpack, killToolNames)
            local v8 = v7 or fn25(character_, killToolNames)
            return v8
        end

        charHasForceField = function(arg2)
            if not arg2 then
                return false
            end
            local now = os.clock()
            local v7 = forceFieldSpawnAt[arg2]
            if v7 == nil then
                forceFieldSpawnAt[arg2] = now
                return true
            end

            if now - v7 < FORCEFIELD_SPAWN_GRACE then
                return true
            end
            local flag6 = arg2:FindFirstChildOfClass("ForceField") ~= nil or arg2:FindFirstChild("ForceField") ~= nil
            return flag6
        end

        playerHasForceField = function(arg2)
            local flag6 = arg2 and charHasForceField(arg2.Character) == true
            return flag6
        end

        forceFieldNameSuffix = function(arg2)
            local v7 = playerHasForceField(arg2)
            local str = v7 and " (Ff)" or ""
            return str
        end

        playerShownName = function(arg2)
            if not arg2 then
                return "Unknown"
            end
            local v7 = tostring
            local displayName = arg2.DisplayName
            local name = displayName or arg2.Name
            return v7(name) .. forceFieldNameSuffix(arg2)
        end

        localDistanceToPlayer = function(arg2)
            local v7 = get_root
            local v8 = v7 and get_root() or nil
            local v9 = root
            local v10 = v9 and root(arg2) or nil
            if v8 and v10 then
                return (v8.Position - v10.Position).Magnitude
            end
            return math.huge
        end

        validKillTarget = function(arg2, arg3)
            if not arg2 or arg2 == LocalPlayer or arg2.Parent ~= Players then
                return false
            end

            if fn21(arg2) then
                return false
            end
            local v7 = killAliveCharacter(arg2)
            if not v7 or charHasForceField(v7) then
                return false
            end
            local v8 = arg3 and localDistanceToPlayer(arg2) or nil
            if v8 and arg3 < v8 then
                return false
            end
            return true, v8
        end

        buildKillAllTargets = function(arg2)
            local tbl11 = {}

            for i, v7 in ipairs(tbl4) do
                local v8, v9 = validKillTarget(v7, arg2)

                if v8 then
                    local insert = table.insert
                    local tbl12 = {Player = v7}
                    local v10 = v9 or localDistanceToPlayer(v7)
                    tbl12.Distance = v10
                    insert(tbl11, tbl12)
                end
            end

            table.sort(tbl11, function(arg3, arg4)
                local distance = arg3.Distance
                local huge = distance or math.huge
                local distance2 = arg4.Distance
                local huge2 = distance2 or math.huge
                local flag6 = huge < huge2
                return flag6
            end)

            return tbl11
        end

        killAllTargets = function()
            if not hasKillTool() then
                return fn24(".kill all", "no tools")
            end
            local v7 = buildKillAllTargets(tbl9.AllRange)
            if #v7 == 0 then
                return fn24(".kill all", "no targets w/o ff in 800 studs")
            end
            add_line(".kill all", "kill all: " .. tostring(#v7) .. " target(s) w/o ff", false)

            task.spawn(function()
                for i, v8 in ipairs(v7) do
                    local player = v8.Player

                    if hasKillTool() and validKillTarget(player, tbl9.AllRange) then
                        KillPlrWithView(player, 3, 1)
                        db_track_kill(player, "all:800")
                        task.wait(0.15)
                    end
                end
            end)

            return true
        end

        real_kill = function(arg2)
            if not hasKillTool() then
                return fn24(".kill", "no tools")
            end
            local v7 = find_player(arg2)
            local str = ".kill " .. tostring(arg2)
            if not v7 then
                return fn24(str, "the player doesnt exist")
            end

            if not killAliveCharacter(v7) then
                return fn24(str, "kill error, player dead")
            end

            if fn21(v7) then
                return fn24(str, "cant kill same team")
            end

            if playerHasForceField(v7) then
                return fn24(str, "ff detected, can't kill")
            end
            local v8 = localDistanceToPlayer
            local huge = v8 and localDistanceToPlayer(v7) or math.huge
            if tbl9.Range < huge then
                return fn24(str, "the player is not in shooting range (950 studs max)")
            end
            KillPlrWithView(v7, 3, 1)
            db_track_kill(v7, "player")
            add_line(str, "kill executed", false)
            return true
        end

        fling_target = function(arg2)
            local v7 = find_player(arg2)

            if v7 and v7 ~= LocalPlayer then
                if flingState.CarInAttack[v7.Name] then
                    return unfling_target(v7.Name)
                end

                if not KillWheel(v7) then
                    return false
                end
                add_line(".fling " .. v7.Name, tbl6.Started, false)
                return true
            end

            local v8 = tostring
            local str = arg2 or ""
            return fn24(".fling " .. v8(str), "target not found")
        end

        unfling_target = function(arg2)
            local v7 = find_player(arg2)
            if not v7 then
                return fn24(".unfling " .. tostring(arg2), "target not found")
            end

            if not flingState.CarInAttack[v7.Name] then
                return fn24(".unfling " .. arg2, "fling not active")
            end
            flingDisconnectAttack(flingState.CarInAttack[v7.Name])
            flingState.CarInAttack[v7.Name] = nil
            add_line(".unfling " .. arg2, tbl6.Stopped, false)
            flingRefreshButtons()
            return true
        end

        save_pos = function(arg2)
            local v7 = tostring
            local str = arg2 or ""
            local str2 = v7(str):gsub("^%s+", ""):gsub("%s+$", "")

            if str2 == "" then
                add_line(".save", "invalid name", true)
                red_anim()
                return false
            end

            local v8 = get_root()
            local currentCamera = Workspace.CurrentCamera

            if v8 and currentCamera then
                local tbl11 = {
                    Name = str2,
                    Pos = cf_to_string(v8.CFrame),
                    CamPos = cf_to_string(currentCamera.CFrame),
                    Time = os.time(),
                }

                local v9, v10 = find_save(str2)

                if v9 and v10 then
                    saves[v10] = tbl11
                else
                    saves[#saves + 1] = tbl11
                end

                save_saves()
                refresh_saved_commands()
                add_line(".save " .. str2, "pos saved", false)
                return true
            end

            add_line(".save " .. str2, "root/cam not found", true)
            red_anim()
            return false
        end

        delete_save = function(arg2)
            local v7 = tostring
            local str = arg2 or ""
            local str2 = v7(str):gsub("^%s+", ""):gsub("%s+$", "")

            if str2 == "" then
                add_line(".delete", "invalid name", true)
                red_anim()
                return false
            end

            local v8, v9 = find_save(str2)

            if v8 and v9 then
                local tpEliminado = tostring(v8.Name)
                table.remove(saves, v9)
                save_saves()
                refresh_saved_commands()
                add_line(".delete " .. str2, "tp eliminado: " .. tpEliminado, false)
                return true
            end

            add_line(".delete " .. str2, "save not found", true)
            red_anim()
            return false
        end

        tp_player = function(arg2)
            local v7 = find_player(arg2)
            if not v7 then
                return false
            end
            local v8 = get_root()
            local v9 = root(v7)

            if v8 and v9 then
                v8.CFrame = v9.CFrame
                if autoRespawnDeadTpNotify and autoRespawnDeadTpNotify(arg2) then
                    return true
                end
                add_line(".tp " .. tostring(arg2), "tp to player " .. v7.DisplayName .. " (@" .. v7.Name .. ")", false)
                return true
            end

            add_line(".tp " .. tostring(arg2), "player found, no root", true)
            red_anim()
            return true
        end

        tp_save = function(arg2)
            local v7 = tostring
            local str = arg2 or ""
            local str2 = v7(str):gsub("^%s+", ""):gsub("%s+$", "")
            local v8 = find_save(str2)

            if not v8 then
                add_line(".tp " .. str2, "player/save not found", true)
                red_anim()
                return false
            end

            local v9 = any_to_cf(v8.Pos)
            local v10 = get_root()

            if v9 and v10 then
                v10.CFrame = v9
                if autoRespawnDeadTpNotify and autoRespawnDeadTpNotify(str2) then
                    return true
                end
                add_line(".tp " .. str2, "teleport a save: " .. v8.Name, false)
                return true
            end

            add_line(".tp " .. str2, "invalid pos", true)
            red_anim()
            return false
        end

        tp_any = function(arg2)
            if not tp_player(arg2) then
                return tp_save(arg2)
            end
            return true
        end

        view_save = function(arg2)
            local v7 = find_save(arg2)

            if not v7 then
                add_line(".view " .. tostring(arg2), "player/save not found", true)
                red_anim()
                return false
            end

            local v8 = any_to_cf(v7.CamPos)

            if not v8 then
                add_line(".view " .. arg2, "invalid cam", true)
                red_anim()
                return false
            end

            clear_spectate_conn()
            viewing = nil
            spectating_player = nil
            local currentCamera = Workspace.CurrentCamera
            lastcam = currentCamera.CFrame
            viewer = true
            currentCamera.CameraType = Enum.CameraType.Scriptable
            currentCamera.CFrame = v8
            add_line(".view " .. arg2, "viewing saved cam: " .. v7.Name, false)
            return true
        end

        view_any = function(arg2)
            local v7 = viewFindPlayer(arg2)
            local v8 = v7 or find_player(arg2)
            if not v8 then
                return view_save(arg2)
            end
            return ViewPlayer(v8, false)
        end

        unview = function()
            if firstFlingViewState and firstFlingViewState.active then
                firstFlingViewState.active = false
                local v7 = firstFlingViewState
                local keepAliveId = firstFlingViewState.keepAliveId
                local n2 = keepAliveId or 0
                v7.keepAliveId = n2 + 1

                if firstFlingViewClearConns then
                    firstFlingViewClearConns()
                end
            end

            return UnView(false)
        end

        local v7 = firstFlingViewState
        local v8 = v7

        if not v7 then
            local tbl11 = {}
            v8 = tbl11
            tbl11.active = false
            tbl11.target = nil
            tbl11.localRespawnConn = nil
            tbl11.targetRespawnConn = nil
            tbl11.targetLeavingConn = nil
            tbl11.keepAliveId = 0
        end

        firstFlingViewState = v8

        local tbl11 = {
            "localRespawnConn",
            "targetRespawnConn",
            "targetLeavingConn",
        }

        firstFlingViewClearConns = function()
            for i, v9 in ipairs(tbl11) do
                fn3(firstFlingViewState[v9])
                firstFlingViewState[v9] = nil
            end
        end

        firstFlingViewStop = function()
            if not firstFlingViewState.active then
                firstFlingViewClearConns()
                return false
            end
            firstFlingViewState.active = false
            firstFlingViewState.target = nil
            local v9 = firstFlingViewState
            local keepAliveId = firstFlingViewState.keepAliveId
            local n2 = keepAliveId or 0
            v9.keepAliveId = n2 + 1
            firstFlingViewClearConns()

            pcall(function()
                return_camera_to_me()
            end)

            return true
        end

        firstFlingViewApplyTarget = function(arg2)
            if not firstFlingViewState.active or firstFlingViewState.target ~= arg2 then
                return false
            end

            if arg2 and arg2.Parent == Players then
                return setCameraToPlayer(arg2)
            end
            return false
        end

        firstFlingViewKeepAlive = function(arg2)
            local v9 = firstFlingViewState
            local keepAliveId = firstFlingViewState.keepAliveId
            local n2 = keepAliveId or 0
            v9.keepAliveId = n2 + 1
            local keepAliveId2 = firstFlingViewState.keepAliveId

            task.spawn(function()
                while flag and firstFlingViewState.active and firstFlingViewState.keepAliveId == keepAliveId2 do
                    if arg2 and arg2.Parent == Players and firstFlingViewState.target == arg2 then
                        firstFlingViewApplyTarget(arg2)
                        task.wait(0.25)
                        continue
                    end

                    firstFlingViewStop()
                    break
                end
            end)
        end

        firstFlingViewStart = function(target)
            if not target or target == LocalPlayer or target.Parent ~= Players then
                return false
            end
            firstFlingViewClearConns()
            firstFlingViewState.active = true
            firstFlingViewState.target = target
            ViewPlayer(target, true)
            firstFlingViewApplyTarget(target)

            firstFlingViewState.targetRespawnConn = fn2(target.CharacterAdded, function()
                task.wait(0.35)
                firstFlingViewApplyTarget(target)
            end)

            firstFlingViewState.targetLeavingConn = fn2(Players.PlayerRemoving, function(arg2)
                if firstFlingViewState.active and firstFlingViewState.target == arg2 then
                    firstFlingViewStop()
                end
            end)

            firstFlingViewState.localRespawnConn = fn2(LocalPlayer.CharacterAdded, function(arg2)
                if firstFlingViewState.active and firstFlingViewState.target == target then
                    firstFlingViewApplyTarget(target)
                end

                local humanoid_ = arg2 and arg2:WaitForChild("Humanoid", 8)
                local humanoidRootPart = arg2 and arg2:WaitForChild("HumanoidRootPart", 8)

                if humanoid_ and humanoidRootPart then
                    task.wait(0.35)

                    if firstFlingViewState.active and firstFlingViewState.target == target then
                        firstFlingViewStop()
                    end
                end
            end)

            firstFlingViewKeepAlive(target)
            return true
        end

        local v9 = killViewToken
        local n2 = v9 or 0
        killViewToken = n2

        killViewStart = function(arg2)
            if not arg2 or arg2 == LocalPlayer then
                return nil
            end

            if viewer == true and spectating_player and spectating_player.Parent == Players then
                return {
                    id = killViewToken,
                    started = os.clock(),
                    lockedView = true,
                }
            end

            local character_ = arg2.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
            local torso = character_

            if character_ then
                local humanoidRootPart = character_:FindFirstChild("HumanoidRootPart")
                torso = humanoidRootPart or character_:FindFirstChild("Torso") or character_:FindFirstChild("Head")
            end

            if not humanoid_ and not torso then
                return nil
            end
            killViewToken = killViewToken + 1

            if disconnectView then
                disconnectView()
            end

            viewing = nil
            viewer = false
            spectating_player = nil
            local currentCamera = Workspace.CurrentCamera
            local tbl12 = {id = killViewToken, started = os.clock()}

            pcall(function()
                currentCamera.CameraType = Enum.CameraType.Custom
                local v10 = humanoid_ or torso
                currentCamera.CameraSubject = v10
            end)

            return tbl12
        end

        killViewRestore = function(arg2, arg3)
            if not arg2 then
                return
            end

            if arg2.lockedView then
                return
            end
            local num = tonumber(arg3)
            local n3 = num or 1
            local v10 = n3
            local now = os.clock()
            local started = arg2.started
            local now2 = started or os.clock()
            local n4 = now - now2

            if n4 < v10 then
                task.wait(v10 - n4)
            end

            if arg2.id ~= killViewToken then
                return
            end
            killViewToken = killViewToken + 1

            pcall(function()
                if clear_spectate_conn then
                    clear_spectate_conn()
                end

                viewer = false
                spectating_player = nil
                lastcam = nil
                local currentCamera = Workspace.CurrentCamera
                local character_ = LocalPlayer.Character
                local result = character_ or LocalPlayer.CharacterAdded:Wait()
                local humanoid_ = result and result:FindFirstChildOfClass("Humanoid")
                local humanoidRootPart = result and result:FindFirstChild("HumanoidRootPart")
                currentCamera.CameraType = Enum.CameraType.Custom
                local v11 = humanoid_ or humanoidRootPart
                currentCamera.CameraSubject = v11
            end)

            task.defer(function()
                if playerListUpdateViewButtons then
                    playerListUpdateViewButtons()
                end
            end)
        end

        KillPlrWithView = function(arg2, arg3, arg4, arg5, arg6)
            local v10 = killViewStart(arg2)
            killWeaponBusy = killWeaponBusy + 1

            local ok, result = pcall(function()
                return KillPlr(arg2, arg3, arg5, arg6)
            end)

            local n3 = math.max(0, killWeaponBusy - 1)
            killWeaponBusy = n3
            local v11 = killViewRestore
            local n4 = arg4 or 1
            v11(v10, n4)
            if not ok then
                return false
            end
            local flag6 = result == true
            return flag6
        end

        local v10 = killExecutionBusy
        local flag6 = v10 or false
        killExecutionBusy = flag6
        local v11 = loopKillState
        local v12 = v11

        if not v11 then
            local tbl12 = {}
            v12 = tbl12
            tbl12.serial = 0
            tbl12.tokens = {}
            tbl12.targets = {}
        end

        loopKillState = v12
        local v13 = loopKillState
        local targets = loopKillState.targets
        local targets2 = targets or {}
        v13.targets = targets2
        local v14 = killTpState
        local v15 = v14

        if not v14 then
            local tbl12 = {}
            v15 = tbl12
            tbl12.serial = 0
            tbl12.tokens = {}
        end

        killTpState = v15

        killTaskAlive = function(arg2)
            if not flag then
                return false
            end

            if arg2 and not arg2() then
                return false
            end
            return true
        end

        killWaitAliveCharacter = function(arg2, arg3, arg4, arg5)
            local now = os.clock()

            while killTaskAlive(arg4) and arg2 and arg2.Parent == Players do
                local v16, v17, v18 = killAliveCharacter(arg2, arg3)
                if v16 then
                    return v16, v17, v18
                end

                if arg5 and arg5 <= os.clock() - now then
                    return nil
                end
                task.wait(tbl9.Poll)
            end

            return nil
        end

        killWaitForceFieldOff = function(arg2, arg3, arg4)
            while killTaskAlive(arg4) and arg2 and arg2.Parent == Players do
                local v16, v17, v18 = killAliveCharacter(arg2)
                if v16 and v16 ~= arg3 then
                    return "respawn", v16, v17, v18
                end

                if v16 and not playerHasForceField(arg2) then
                    return "ready", v16, v17, v18
                end
                task.wait(tbl9.Poll)
            end

            return "cancelled"
        end

        killGunOperationBusy = function()
            local flag7 = typeof(gunOperationBusy) == "function" and gunOperationBusy() == true
            return flag7
        end

        local tbl12 = {
            surface = "waiting for target to be in shooting zone",
            inmate = "waiting: esperando a que sea hostil",
            impossible = "paused: impossible to hit",
        }

        local tbl13 = {impossible = "resumed: hit possible"}

        local tbl14 = {
            forcefield = true,
            no_ammo = true,
            alive = true,
            combat = true,
            surface = true,
            inmate = true,
            impossible = true,
        }

        local function fn27(arg2)
            local v16 = playerTeamName(LocalPlayer)
            if v16 ~= "Guards" and v16 ~= "Criminals" or playerTeamName(arg2) ~= "Inmates" then
                return true
            end
            local character_ = arg2 and arg2.Character
            local flag7 = character_ ~= nil and (character_:GetAttribute("Hostile") == true or character_:GetAttribute("Arrestable") == true)
            return flag7
        end

        local function fn28(arg2)
            if fn18(arg2) then
                return "surface"
            end

            if not fn27(arg2) then
                return "inmate"
            end

            if killGunOperationBusy() then
                return "combat"
            end
            local v16, v17 = killAliveCharacter(LocalPlayer)
            local v18 = v16 and getBestTool and getBestTool() or nil
            if not v16 or not v17 or not v18 then
                return "combat"
            end

            if v18.Parent == v16 then
                local v19 = fn17(arg2, v18)
                if v19 == "impossible" then
                    return "impossible"
                end

                if not v19 then
                    return "combat"
                end
                return nil
            end

            v17:EquipTool(v18)
            return "combat"
        end

        killWaitReadyTool = function(arg2)
            local now, n3, n4
            n4 = 1

            while true do
                if n4 == 1 then
                    now = os.clock()
                    n4 = 2
                elseif n4 == 2 then
                    if killTaskAlive(arg2) then
                        n4 = 3
                    else
                        n4 = 15
                    end
                elseif n4 == 3 then
                    if killGunOperationBusy() then
                        n4 = 4
                    else
                        n4 = 8
                    end
                elseif n4 == 4 then
                    if killTaskAlive(arg2) then
                        n4 = 5
                    else
                        n4 = 7
                    end
                elseif n4 == 5 then
                    task.wait(tbl9.FastPoll)

                    if killGunOperationBusy() then
                        n4 = 4
                    else
                        n4 = 6
                    end
                elseif n4 == 6 then
                    now = os.clock()
                    n4 = 8
                elseif n4 == 7 then
                    return false
                elseif n4 == 8 then
                    if getBestTool and getBestTool() then
                        n4 = 14
                    else
                        n4 = 9
                    end
                elseif n4 == 9 then
                    if hasKillTool() then
                        n4 = 10
                    else
                        n4 = 13
                    end
                elseif n4 == 10 then
                    n3 = os.clock() - now

                    if tbl9.ToolWait <= n3 then
                        n4 = 12
                    else
                        n4 = 11
                    end
                elseif n4 == 11 then
                    task.wait(tbl9.Poll)
                    n4 = 2
                elseif n4 == 12 then
                    return false
                elseif n4 == 13 then
                    return false
                elseif n4 == 14 then
                    return true
                elseif n4 == 15 then
                    return false
                end
            end
        end

        killAcquireExecution = function(arg2)
            while killTaskAlive(arg2) and killExecutionBusy do
                task.wait(tbl9.FastPoll)
            end

            if not killTaskAlive(arg2) then
                return false
            end
            killExecutionBusy = true
            return true
        end

        killMethodUntilConfirmed = function(arg2, arg3, arg4)
            local loop = arg3 or tbl10.Loop
            local v16 = loop
            local max = math.max
            local floor_ = math.floor
            local num = tonumber(v16.Runs)
            local n3 = num or 1

            for i = 1, max(1, floor_(n3)) do
                if not killTaskAlive(arg4) or not arg2 or arg2.Parent ~= Players then
                    return false, nil, "cancelled"
                end
                local v17, v18 = killAliveCharacter(arg2)
                if not v17 then
                    return false, nil, "dead"
                end

                if v16.Range then
                    local v19 = localDistanceToPlayer(arg2)
                    if v16.Range < v19 then
                        return false, v17, "range"
                    end
                end

                if playerHasForceField(arg2) then
                    return false, v17, "forcefield"
                end

                if not killWaitReadyTool(arg4) then
                    return false, v17, "no_ammo"
                end

                if v16.Range then
                    local v19 = localDistanceToPlayer(arg2)
                    if v16.Range < v19 then
                        return false, v17, "range"
                    end
                end

                if v16.LoopChecks then
                    local v19 = fn28(arg2)
                    if v19 then
                        return false, v17, v19
                    end
                end

                if not killAcquireExecution(arg4) then
                    return false, v17, "cancelled"
                end
                local flag7 = false

                local connection = v18.Died:Connect(function()
                    flag7 = true
                end)

                local v19 = pcall
                local v20 = KillPlrWithView
                local view = v16.View
                local n4 = view or 0.35
                local flag8 = v16.UnlimitedArmor == true and v18.Health > 100
                local v21, v22 = v19(v20, arg2, 3, n4, flag8, arg4)
                local flag9 = v22
                killExecutionBusy = false

                if not v21 then
                    flag9 = false
                end

                local now = os.clock()
                local num2 = tonumber(v16.Confirm)
                local n5 = num2 or 0.75
                local n6 = now + n5

                while not flag7 and not flag9 and v18.Health > 0 and arg2.Character == v17 and killTaskAlive(arg4) do
                    task.wait(tbl9.FastPoll)
                    if n6 <= os.clock() then
                        break
                    end
                end

                fn3(connection)
                if flag7 or flag9 or v18.Health <= 0 or arg2.Character ~= v17 then
                    return true, v17, "confirmed"
                end

                if playerHasForceField(arg2) then
                    return false, v17, "forcefield"
                end
                local wait = task.wait
                local num3 = tonumber(v16.Retry)
                local poll = num3 or tbl9.Poll
                wait(poll)
            end

            local character_ = arg2 and arg2.Character or nil
            return false, character_, "alive"
        end

        local function fn29(arg2)
            local v16 = tostring
            local str = arg2 or ""
            local str2 = v16(str):gsub("^%(", ""):gsub("%)$", "")
            return tonumber(str2)
        end

        loopKillParse = function(arg2)
            local v16 = fn22(arg2)
            if v16 == "" then
                return nil
            end
            local match, v17 = v16:match("^(%S+)%s+(.+)$")
            local v18 = fn29(match)
            if v18 and v17 then
                return v17, math.floor(v18)
            end
            local match2, v19 = v16:match("^(.-)%s+(%S+)$")
            local v20 = fn29(v19)
            if v20 and match2 and match2 ~= "" then
                return match2, math.floor(v20)
            end
            return v16, tbl9.DefaultCount
        end

        loopKillCommand = function(arg2)
            local v16, v17 = loopKillParse(arg2)
            if not v16 or not v17 or v17 < 1 or tbl9.MaxCount < v17 then
                return fn24(";lk", "use ;lk user (1-100)")
            end
            local v18 = find_player(v16)
            if not v18 then
                return fn24(";lk " .. tostring(v16), "player not found")
            end

            if fn21(v18) then
                return fn24(";lk " .. v18.Name, "cant kill same team")
            end

            if not hasKillTool() then
                return fn24(";lk " .. v18.Name, "no tools")
            end
            local v19 = loopKillState
            v19.serial = v19.serial + 1
            local serial = loopKillState.serial
            loopKillState.tokens[v18.UserId] = serial
            loopKillState.targets[v18.UserId] = v18
            local str = ";lk " .. v18.Name .. " " .. tostring(v17)
            add_line(str, "loopkill started", false)

            task.spawn(function()
                local n3 = 0
                local v20 = nil
                local flag7 = false
                local v21 = nil

                local function fn30()
                    local flag8 = loopKillState.tokens[v18.UserId] == serial
                    return flag8
                end

                local tbl15 = {
                    character = LocalPlayer.Character,
                    dead = false,
                    deathNotified = false,
                    weaponNotified = false,
                    operationNotified = false,
                }

                local connection = nil

                local function fn31()
                    tbl15.dead = true
                    tbl15.weaponNotified = true

                    if fn30() and not tbl15.deathNotified then
                        tbl15.deathNotified = true
                        add_line(str, "cut: you died | waiting for weapons", true)
                    end
                end

                local function fn32(character_)
                    fn3(connection)
                    connection = nil

                    if tbl15.character and character_ ~= tbl15.character and not tbl15.dead then
                        fn31()
                    end

                    tbl15.character = character_
                    local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

                    if humanoid_ then
                        connection = humanoid_.Died:Connect(fn31)
                    end
                end

                local function fn33()
                    while fn30() do
                        local v22 = killAliveCharacter(LocalPlayer)

                        if v22 then
                            if tbl15.character ~= v22 then
                                fn32(v22)
                            end

                            local v23 = getBestTool
                            local flag8 = v23 and getBestTool() ~= nil

                            if killGunOperationBusy() then
                                if not tbl15.operationNotified then
                                    tbl15.operationNotified = true
                                    local v24 = add_line
                                    local str2 = flag8 and "weapons detected | waiting weapon TP to finish" or "paused: weapon TP in progress"
                                    v24(str, str2, false)
                                end
                            else
                                if flag8 then
                                    if tbl15.dead or tbl15.operationNotified or tbl15.weaponNotified then
                                        add_line(str, "weapons ready | loopkill resumed", false)
                                    end

                                    tbl15.dead = false
                                    tbl15.deathNotified = false
                                    tbl15.weaponNotified = false
                                    tbl15.operationNotified = false
                                    return true
                                end

                                if not tbl15.weaponNotified then
                                    tbl15.weaponNotified = true
                                    add_line(str, "waiting for weapons", false)
                                end
                            end
                        else
                            fn31()
                        end

                        task.wait(tbl9.LocalPoll)
                    end

                    return false
                end

                fn32(LocalPlayer.Character)
                local connection2 = LocalPlayer.CharacterAdded:Connect(fn32)

                while killTaskAlive(fn30) and v18.Parent == Players and n3 < v17 and fn33() do
                    if not fn21(v18) then
                        local v22 = killWaitAliveCharacter(v18, v20, fn30)
                        local v23 = v22
                        if not v22 then
                            break
                        end
                        local v24, v25 = killWaitForceFieldOff(v18, v22, fn30)
                        if v24 == "cancelled" then
                            break
                        end

                        if v24 == "respawn" then
                            v23 = v25
                            v20 = nil
                        end

                        while fn30() and v18.Parent == Players and v18.Character == v23 do
                            local v26 = localDistanceToPlayer(v18)
                            if tbl9.Range >= v26 then
                                break
                            end

                            if not flag7 then
                                flag7 = true
                                add_line(str, "paused: out of range", false)
                            end

                            task.wait(tbl9.Poll)
                        end

                        if not fn30() or v18.Parent ~= Players then
                            break
                        end

                        if not fn21(v18) then
                            local humanoid_ = v23 and v23:FindFirstChildOfClass("Humanoid")

                            if v18.Character == v23 and humanoid_ and humanoid_.Health > 0 then
                                if flag7 then
                                    flag7 = false
                                    add_line(str, "resumed: in range", false)
                                end

                                if not fn33() then
                                    break
                                end
                                local flag8 = false

                                while fn30() and v18.Parent == Players and v18.Character == v23 and killAliveCharacter(v18) == v23 and not fn21(v18) and not playerHasForceField(v18) do
                                    local v26 = localDistanceToPlayer(v18)
                                    if tbl9.Range < v26 then
                                        break
                                    end
                                    local v27 = fn28(v18)
                                    if v27 == "combat" then
                                        break
                                    end

                                    if not v27 then
                                        local v28 = v21 and tbl13[v21]

                                        if v28 then
                                            add_line(str, v28, false)
                                        end

                                        v21 = nil
                                        flag8 = true
                                        break
                                    end

                                    if v21 ~= v27 then
                                        v21 = v27
                                        add_line(str, tbl12[v27], false)
                                    end

                                    task.wait(tbl9.Poll)
                                end

                                if not fn30() or v18.Parent ~= Players then
                                    break
                                end

                                if not fn21(v18) then
                                    if killAliveCharacter(v18) == v23 then
                                        local v26 = localDistanceToPlayer(v18)

                                        if tbl9.Range < v26 then
                                            if not flag7 then
                                                flag7 = true
                                                add_line(str, "paused: out of range", false)
                                            end

                                            continue
                                        end

                                        if playerHasForceField(v18) then
                                            continue
                                        end

                                        if not flag8 then
                                            if not fn33() then
                                                break
                                            end
                                            continue
                                        end

                                        if fn30() and v18.Parent == Players then
                                            local v27, v28, v29 = killMethodUntilConfirmed(v18, tbl10.Loop, fn30)
                                            if not fn30() then
                                                break
                                            end

                                            if v27 then
                                                local n4 = n3 + 1
                                                n3 = n4
                                                v20 = v28
                                                v21 = nil
                                                db_track_kill(v18, "loop:" .. tostring(n4) .. "/" .. tostring(v17))
                                                add_line(str, tostring(n4) .. "/" .. tostring(v17), false)
                                            elseif v29 == "dead" then
                                                v20 = v23
                                                v21 = nil
                                            elseif v29 == "range" then
                                                if not flag7 then
                                                    flag7 = true
                                                    add_line(str, "paused: out of range", false)
                                                end
                                            elseif not tbl14[v29] then
                                                break
                                            end
                                        end

                                        task.wait(tbl9.Poll)
                                        continue
                                    end

                                    v20 = v23
                                    v21 = nil
                                    continue
                                end

                                add_line(str, "stopped: same team", true)
                                break
                            end

                            v20 = v23
                            v21 = nil
                            continue
                        end

                        add_line(str, "stopped: same team", true)
                        break
                    end

                    add_line(str, "stopped: same team", true)
                    break
                end

                fn3(connection)
                fn3(connection2)

                if loopKillState.tokens[v18.UserId] == serial then
                    loopKillState.tokens[v18.UserId] = nil
                    loopKillState.targets[v18.UserId] = nil

                    if v17 <= n3 then
                        add_line(str, "completed", false)
                    elseif v18.Parent ~= Players then
                        add_line(str, "stopped: player left", true)
                    end
                end
            end)

            return true
        end

        loopKillCancel = function(arg2)
            local v16 = fn22(arg2)

            if v16 ~= "" and v16:lower() ~= "all" then
                local v17 = find_player(v16)
                local v18 = v17

                if not v17 then
                    local v19 = fn23(v16)

                    for k, target in pairs(loopKillState.targets) do
                        local name = target and target.Name
                        local v20 = fn23(name)
                        local displayName = target and target.DisplayName
                        local v21 = fn23(displayName)
                        if v20 == v19 or v21 == v19 or v20:sub(1, #v19) == v19 or v21:sub(1, #v19) == v19 then
                            v18 = target
                            break
                        end
                        continue
                    end
                end

                if not v18 or not loopKillState.tokens[v18.UserId] then
                    return fn24(".unlk " .. v16, "loopkill not active")
                end
                loopKillState.tokens[v18.UserId] = nil
                loopKillState.targets[v18.UserId] = nil
                add_line(".unlk " .. v18.Name, "cancelled", false)
                return true
            end

            local n3 = 0

            for k in pairs(loopKillState.tokens) do
                n3 = n3 + 1
            end

            table.clear(loopKillState.tokens)
            table.clear(loopKillState.targets)
            local v17 = add_line
            local str = n3 > 0 and "cancelled: " .. tostring(n3) or "no active loopkill"
            local flag7 = n3 == 0
            v17(".unlk", str, flag7)

            if n3 == 0 then
                red_anim()
            end

            local flag8 = n3 > 0
            return flag8
        end

        fn4(function()
            killExecutionBusy = false
            local v16 = loopKillState
            v16.serial = v16.serial + 1
            local v17 = killTpState
            v17.serial = v17.serial + 1
            table.clear(loopKillState.tokens)
            table.clear(loopKillState.targets)
            table.clear(killTpState.tokens)
        end)

        set_kill_feedback = function(killFeedback)
            cfg.kill_feedback = killFeedback
            kf.Visible = killFeedback
            save_cfg()
            refresh_saved_commands()

            if killFeedback then
                task.defer(checkScriptRoles)
            end

            local v16 = add_line
            local str = killFeedback and "on" or "off"
            v16(".killfeedback " .. str, "saved in cfg", false)
            return true
        end

        set_aim_detect = function(aimDetect)
            cfg.aim_detect = aimDetect
            detectorFeedUpdateVisible()
            save_cfg()
            refresh_saved_commands()
            local v16 = add_line
            local str = aimDetect and "on" or "off"
            v16(".aimdetect " .. str, "saved in cfg", false)
            return true
        end

        set_speed_lock = function(lockWalkspeed)
            cfg.lock_walkspeed = lockWalkspeed
            save_cfg()
            refresh_saved_commands()
            local v16 = add_line
            local str = lockWalkspeed and "on" or "off"
            local str2 = ".lockspeed " .. str
            local str3 = lockWalkspeed and "on" or "off"
            v16(str2, "walkspeed lock 24 " .. str3, false)
            return true
        end

        pp_command = function()
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")

            if not backpack then
                add_line(".pp", "backpack not found", true)
                red_anim()
                return false
            end

            local hammer = backpack:FindFirstChild("Hammer")

            if hammer and hammer:IsA("Tool") then
                hammer.GripForward = vector(0, 0, -1)
                hammer.GripPos = vector(1.5, 1.5, 1.6)
                hammer.GripRight = vector(1, 0, 1)
                hammer.GripUp = vector(0, 0, 0)
                add_line(".pp", "hammer grip aplicado", false)
                return true
            end

            add_line(".pp", "need Hammer in backpack", true)
            red_anim()
            return false
        end

        parse_on_off = function(arg2)
            local v16 = tostring
            local str = arg2 or ""
            local str2 = v16(str):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str2 == "on" or str2 == "true" or str2 == "1" then
                return true
            end

            if str2 ~= "off" and str2 ~= "false" and str2 ~= "0" then
                return nil
            end
            return false
        end

        tbl7 = {
            m4 = {
                path = {"Prison_ITEMS", "giver", "M4A1", "Mesh"},
                pos = vector(848, 92, 2228),
                name = "M4A1",
                passId = gamePassIds.swat,
            },
            m4a1 = {
                path = {"Prison_ITEMS", "giver", "M4A1", "Mesh"},
                pos = vector(848, 92, 2228),
                name = "M4A1",
                passId = gamePassIds.swat,
            },
            reming = {
                path = {"Prison_ITEMS", "giver", "Remington 870", "Meshes/r870_2"},
                pos = vector(819, 92, 2228),
                name = "Remington 870",
            },
            shotgun = {
                path = {"Prison_ITEMS", "giver", "Remington 870", "Meshes/r870_2"},
                pos = vector(819, 92, 2228),
                name = "Remington 870",
            },
            fal = {
                path = {"Prison_ITEMS", "giver", "FAL", "Mesh"},
                pos = vector(-898, 86, 2047),
                name = "FAL",
                passId = gamePassIds.mafia,
            },
            ak = {
                path = {"Prison_ITEMS", "giver", "AK-47", "Meshes/AK47_7"},
                pos = vector(-931, 87, 2039),
                name = "AK-47",
            },
            ["ak-47"] = {
                path = {"Prison_ITEMS", "giver", "AK-47", "Meshes/AK47_7"},
                pos = vector(-931, 87, 2039),
                name = "AK-47",
            },
            rev = {
                path = {"Prison_ITEMS", "giver", "Revolver", "Meshes/revolver (3)"},
                pos = vector(832, 101, 2229),
                positions = {vector(832, 101, 2229), vector(-916, 94, 2038)},
                name = "Revolver",
                passId = gamePassIds.sniper,
            },
            revolver = {
                path = {"Prison_ITEMS", "giver", "Revolver", "Meshes/revolver (3)"},
                pos = vector(832, 101, 2229),
                positions = {vector(832, 101, 2229), vector(-916, 94, 2038)},
                name = "Revolver",
                passId = gamePassIds.sniper,
            },
            m700 = {
                path = {"Prison_ITEMS", "giver", "M700", "model1"},
                pos = vector(832, 101, 2229),
                positions = {vector(832, 101, 2229), vector(-916, 94, 2038)},
                name = "M700",
                passId = gamePassIds.sniper,
            },
            sniper = {
                path = {"Prison_ITEMS", "giver", "M700", "model1"},
                pos = vector(832, 101, 2229),
                positions = {vector(832, 101, 2229), vector(-916, 94, 2038)},
                name = "M700",
                passId = gamePassIds.sniper,
            },
            clothes = {
                path = {"Prison_ITEMS", "clothes", "Light Vest", "Torso"},
                pos = vector(831, 90, 2225),
                name = "Light Vest",
                wear = true,
                free = true,
                passId = gamePassIds.sniper,
            },
            riot = {
                path = {"Prison_ITEMS", "clothes", "Riot Police", "Torso"},
                pos = vector(848, 92, 2228),
                name = "Riot Police",
                team = "Guards",
                wear = true,
                free = true,
                passId = gamePassIds.swat,
            },
            mafia = {
                path = {"Prison_ITEMS", "clothes", "Mafia", "Meshes/vest (7)"},
                pos = vector(-898, 86, 2047),
                name = "Mafia Vest",
                team = "Criminals",
                wear = true,
                free = true,
                passId = gamePassIds.mafia,
            },
            mp5 = {
                path = {"Prison_ITEMS", "giver", "MP5", "Meshes/MP5 (2)"},
                pos = vector(819, 92, 2228),
                name = "MP5",
            },
            m9 = {
                path = {"Prison_ITEMS", "giver", "M9", "Mesh"},
                pos = vector(819, 92, 2228),
                name = "M9",
            },
        }

        local v16 = vector(-936, 89, 2036)

        nearestItemPos = function(arg2, arg3)
            if arg3 then
                return arg3
            end

            if not arg2 then
                return nil
            end
            local positions = arg2.positions
            if typeof(positions) ~= "table" or #positions == 0 then
                return arg2.pos
            end
            local v17 = operationRoot
            local humanoidRootPart = v17 and operationRoot()

            if not humanoidRootPart then
                local character_ = LocalPlayer.Character
                humanoidRootPart = character_ and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            end

            if not humanoidRootPart then
                return positions[1]
            end
            local v18 = positions[1]
            local v19 = v18
            local n3 = humanoidRootPart.Position - v18
            local v20 = n3:Dot(n3)

            for i = 2, #positions do
                local v21 = positions[i]
                local n4 = humanoidRootPart.Position - v21
                local v22 = n4:Dot(n4)

                if v22 < v20 then
                    v19 = v21
                    v20 = v22
                end
            end

            return v19
        end

        local interactWithItem = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("InteractWithItem")
        local obj = setmetatable({}, {__mode = "k"})
        gunFastRemoteBusy = obj

        gunGetMethod = function()
            local str = cfg.get_method_guns == "fast" and "fast" or "normal"
            return str
        end

        gunGetMethodFast = function()
            local flag7 = gunGetMethod() == "fast"
            return flag7
        end

        gunHasExpectedWeapon = function(arg2)
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            local character_ = LocalPlayer.Character
            local v17 = arg2 and (backpack and backpack:FindFirstChild(arg2) or character_ and character_:FindFirstChild(arg2)) or nil
            return v17
        end

        gunGetMethodSet = function(arg2, arg3)
            local v17 = tostring
            local str = arg2 or ""
            local getMethod = v17(str):lower()
            if getMethod ~= "normal" and getMethod ~= "fast" then
                return false
            end
            cfg.get_method_guns = getMethod

            if autoGetLast ~= nil then
                autoGetLast = 0
            end

            save_cfg()

            if refresh_saved_commands then
                refresh_saved_commands()
            end

            if not arg3 then
                add_line(".getmethod " .. getMethod, "get method: " .. getMethod, false)
            end

            return true
        end

        getMethodCommandText = function(arg2, arg3)
            local v17 = tostring
            local str = arg2 or ""
            local str2 = v17(str):lower():gsub("^%s+", ""):gsub("%s+$", "")
            if str2 ~= ".getmethod" and not str2:match("^%.getmethod%s") then
                return false
            end
            local match = str2:match("^%.getmethod%s+(%S+)$")

            if str2 == ".getmethod" then
                add_line(".getmethod", "current: " .. gunGetMethod(), false)
            elseif match ~= "normal" and match ~= "fast" then
                add_line(".getmethod", "use .getmethod normal/fast", true)
                red_anim()
            else
                gunGetMethodSet(match, false)
            end

            if arg3 ~= "chat" then
                collapse()
            end

            return true
        end

        gunRunning = false
        local v17 = nil
        local n3 = 0
        local n4 = 0
        local v18 = nil
        gunFastMovementState = nil

        gunFastMovementUnlock = function()
            local v19 = gunFastMovementState
            if not v19 then
                return
            end
            gunFastMovementState = nil

            if v19.connection then
                pcall(function()
                    v19.connection:Disconnect()
                end)
            end

            if LocalPlayer.Character == v19.character then
                pcall(function()
                    local humanoid_ = v19.humanoid

                    if humanoid_ and humanoid_.Parent then
                        humanoid_.WalkSpeed = v19.walkSpeed
                        humanoid_.JumpPower = v19.jumpPower
                        humanoid_.JumpHeight = v19.jumpHeight
                        humanoid_.AutoRotate = v19.autoRotate
                        humanoid_.Jump = false
                    end

                    local root_ = v19.root

                    if root_ and root_.Parent == v19.character then
                        root_.AssemblyLinearVelocity = vector(0, 0, 0)
                        root_.AssemblyAngularVelocity = vector(0, 0, 0)
                    end
                end)
            end
        end

        gunFastMovementStart = function()
            gunFastMovementUnlock()
            if not gunGetMethodFast() then
                return
            end
            local character_ = LocalPlayer.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
            if not humanoid_ or humanoid_.Health <= 0 or not humanoidRootPart then
                return
            end

            local tbl15 = {
                character = character_,
                humanoid = humanoid_,
                root = humanoidRootPart,
                walkSpeed = humanoid_.WalkSpeed,
                jumpPower = humanoid_.JumpPower,
                jumpHeight = humanoid_.JumpHeight,
                autoRotate = humanoid_.AutoRotate,
            }

            gunFastMovementState = tbl15

            local function fn30()
                if gunFastMovementState ~= tbl15 then
                    return
                end

                if flag and gunRunning and LocalPlayer.Character == character_ and humanoid_.Parent and humanoid_.Health > 0 and humanoidRootPart.Parent == character_ then
                    pcall(function()
                        humanoid_.WalkSpeed = 0
                        humanoid_.JumpPower = 0
                        humanoid_.JumpHeight = 0
                        humanoid_.AutoRotate = false
                        humanoid_.Jump = false
                        humanoid_:Move(vector(0, 0, 0), false)
                        humanoidRootPart.AssemblyLinearVelocity = vector(0, 0, 0)
                        humanoidRootPart.AssemblyAngularVelocity = vector(0, 0, 0)
                    end)

                    return
                end

                gunFastMovementUnlock()
            end

            fn30()

            if gunFastMovementState == tbl15 then
                tbl15.connection = fn2(RunService.Heartbeat, fn30)
            end
        end

        local function fn30(arg2, arg3)
            gunFastMovementUnlock()
            if not gunRunning and not v17 then
                return
            end
            gunRunning = false
            v17 = nil
            n3 = 0
            n4 = n4 + 1

            if autoRespawnManualFinish and autoRespawnState and autoRespawnState.gunManualOp then
                local gunManualOp = autoRespawnState.gunManualOp
                autoRespawnState.gunManualOp = nil
                autoRespawnManualFinish(gunManualOp, "combo/tool")
            end

            if arg2 and add_line then
                local v19 = add_line
                local str = arg3 or "weapon op free"
                v19(arg2, str, true)
                red_anim()
            end
        end

        local function fn31()
            if not gunRunning then
                return false
            end
            local character_ = LocalPlayer.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
            if not character_ or not humanoid_ or humanoid_.Health <= 0 then
                return true, "player died, op free"
            end

            if n3 > 0 and os.clock() - n3 > 30 then
                return true, "weapon op reset by timeout"
            end
            return false
        end

        local function fn32(arg2)
            if gunRunning then
                local v19, v20 = fn31()

                if not v19 then
                    add_line(arg2, "weapon op already running", true)
                    red_anim()
                    return false
                end

                fn30(arg2, v20)
            end

            return true
        end

        local function fn33(arg2)
            gunRunning = true
            n3 = os.clock()
            n4 = n4 + 1

            if arg2 then
                gunFastMovementStart()
            end

            if autoRespawnManualStart and autoRespawnState then
                if autoRespawnState.manualBusy == true then
                    autoRespawnState.gunManualOp = autoRespawnState.manualBusyId
                else
                    autoRespawnState.gunManualOp = autoRespawnManualStart("combo/tool")
                end
            end

            return n4
        end

        local function fn34()
            gunRunning = false
            gunFastMovementUnlock()
            v17 = nil
            n3 = 0

            if autoRespawnManualFinish and autoRespawnState and autoRespawnState.gunManualOp then
                local gunManualOp = autoRespawnState.gunManualOp
                autoRespawnState.gunManualOp = nil
                autoRespawnManualFinish(gunManualOp, "combo/tool")
            end
        end

        gunOperationBusy = function()
            local flag7 = gunRunning == true
            return flag7
        end

        local function fn35()
            if v18 then
                pcall(function()
                    v18:Disconnect()
                end)

                v18 = nil
            end

            local character_ = LocalPlayer.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

            if humanoid_ then
                v18 = fn2(humanoid_.Died, function()
                    fn30(".guns", "player died, op free")
                end)
            end
        end

        fn2(LocalPlayer.CharacterAdded, function()
            fn30(nil, nil)
            task.wait(0.35)
            fn35()
        end)

        task.defer(function()
            task.wait(0.35)
            fn35()
        end)

        task.spawn(function()
            while flag and task.wait(1) do
                if gunRunning then
                    local v19, v20 = fn31()

                    if v19 then
                        fn30(".guns", v20)
                    end
                end
            end
        end)

        local function fn36(arg2, arg3, arg4, arg5)
            local v19 = Workspace

            for i, v20 in ipairs(arg2) do
                v19 = v19:WaitForChild(v20)
            end

            if not arg4 and gunGetMethodFast() then
                if gunFastRemoteBusy[v19] then
                    return true
                end
                gunFastRemoteBusy[v19] = true

                task.spawn(function()
                    local n5 = arg5 and 1 or 2

                    for i = 1, n5 do
                        if not flag or arg3 and gunHasExpectedWeapon(arg3) or not pcall(interactWithItem.InvokeServer, interactWithItem, v19) or not arg3 or gunHasExpectedWeapon(arg3) then
                            break
                        end

                        if i < n5 then
                            task.wait(0.06)
                        end
                    end

                    gunFastRemoteBusy[v19] = nil
                end)

                return true
            end

            interactWithItem:InvokeServer(v19)
            return true
        end

        local function fn37()
            return LocalPlayer.Character
        end

        local function fn38()
            local v19 = fn37()
            local humanoidRootPart = v19 and v19:FindFirstChild("HumanoidRootPart")
            return humanoidRootPart
        end

        local function fn39()
            local v19 = fn37()
            local humanoid_ = v19 and v19:FindFirstChildOfClass("Humanoid")
            return humanoid_
        end

        local function fn40(arg2)
            return gunHasExpectedWeapon(arg2)
        end

        local function fn41()
            local v19 = fn37()
            local v20 = fn39()
            local flag7

            if v19 then
                flag7 = false
            else
                flag7 = true
            end

            if not flag7 then
                if v20 then
                    flag7 = false
                else
                    flag7 = true
                end
            end

            if not flag7 then
                flag7 = v20.Health <= 0
            end

            return flag7
        end

        local function fn42(arg2, arg3)
            add_line(arg2, "player died, op cut", true)

            if typeof(arg3) == "table" then
                for i, v19 in ipairs(arg3) do
                    if v19 then
                        pcall(function()
                            v19:Destroy()
                        end)
                    end
                end
            elseif arg3 then
                pcall(function()
                    arg3:Destroy()
                end)
            end

            fn34()
            red_anim()
        end

        local function fn43(arg2, arg3)
            local now = os.clock()
            local n5 = arg3 or 6
            local v19 = n5

            while flag and not fn40(arg2) do
                if fn41() then
                    return false, "dead"
                end

                if v19 <= os.clock() - now then
                    return false, "timeout"
                end
                local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
                if not backpack then
                    task.wait(0.05)
                    continue
                end
                local flag7 = false
                local v20 = nil

                v20 = fn2(backpack.ChildAdded, function()
                    flag7 = true

                    if v20 then
                        v20:Disconnect()
                        v20 = nil
                    end
                end)

                local now2 = os.clock()

                while flag and not flag7 and not fn40(arg2) and os.clock() - now2 < 0.25 do
                    if not fn41() then
                        task.wait(0.03)
                        continue
                    end

                    if v20 then
                        v20:Disconnect()
                        v20 = nil
                    end

                    return false, "dead"
                end

                if v20 then
                    v20:Disconnect()
                end
            end

            return true
        end

        local function fn44(arg2, arg3)
            local v19 = fn38()
            if not v19 then
                return false
            end
            v19.CFrame = cframe(arg2)

            if not arg3 and gunGetMethodFast() then
                RunService.Heartbeat:Wait()
                RunService.Heartbeat:Wait()
            else
                task.wait(0.25)
            end

            return true
        end

        commandProgressStart = function(arg2, arg3)
            local now = os.clock()
            local flag7 = true
            local tbl15 = {"[...]", "[..]", "[.]", "[..]"}
            local v19 = add_line(arg2, arg3 .. " executed " .. tbl15[1], false)

            task.spawn(function()
                local n5 = 1

                while flag and flag7 and v19 and v19.Parent and os.clock() - now < 18 do
                    local str = arg3 .. " executed " .. tbl15[n5]
                    v19.Text = "> " .. tostring(arg2) .. "\n  " .. str
                    local v20 = color(120, 255, 170)
                    v19.TextColor3 = v20
                    v19:SetAttribute("KX_TextColor", v20)
                    local n6 = n5 + 1
                    n5 = n6

                    if #tbl15 < n6 then
                        n5 = 1
                    end

                    task.wait(0.22)
                end
            end)

            return {
                item = v19,
                started = now,
                alive = function()
                    return flag7
                end,
                stop = function()
                    flag7 = false
                end,
            }
        end

        commandProgressFinish = function(arg2, arg3, arg4)
            local n5 = 0

            if arg2 and arg2.started then
                n5 = math.max(0, os.clock() - arg2.started)
            end

            if arg2 and arg2.stop then
                arg2.stop()
            end

            local str = arg4 .. " completed [" .. string.format("%.2fs", n5) .. "]"
            local item = arg2 and arg2.item

            if item and item.Parent then
                item.Text = "> " .. tostring(arg3) .. "\n  " .. str
                local v19 = color(120, 255, 170)
                item.TextColor3 = v19
                item:SetAttribute("KX_TextColor", v19)
            else
                add_line(arg3, str, false)
            end
        end

        fn19 = function(arg2)
            if not fn32("." .. arg2) then
                return
            end
            local v19 = tbl7[arg2]
            if not v19 then
                return
            end

            if v19.passId and not ownsGamePass(v19.passId) then
                add_line("." .. arg2, gamepassBlockedMessage(v19), true)
                red_anim()
                return
            end

            if v19.team and LocalPlayer.Team and LocalPlayer.Team.Name ~= v19.team then
                add_line("." .. arg2, "need team " .. v19.team, true)
                red_anim()
                return
            end

            local flag7

            if v19.wear then
                flag7 = false
            else
                flag7 = true
            end

            fn33(flag7)
            local v20 = fn38()
            local position = v20 and fn38().Position
            v17 = position
            if not v17 then
                fn42("." .. arg2, nil)
                return
            end
            local v21 = commandProgressStart("." .. arg2, "tool")
            local v22 = nearestItemPos(v19)
            local part = Instance.new("Part")
            part.Size = vector(4, 1, 4)
            part.Position = v22 - vector(0, 3.5, 0)
            part.Anchored = true
            part.Transparency = 0.5
            part.Locked = true
            part.Parent = Workspace
            local flag8 = v19.wear == true
            fn44(v22, flag8)

            if not fn41() then
                local name = v19.name

                if not v19.wear then
                    if not fn40(name) then
                        fn36(v19.path, name)
                        local v23, v24 = fn43(name, 6)

                        if not v23 then
                            if v21 and v21.stop then
                                v21.stop()
                            end

                            if v24 == "dead" then
                                fn42("." .. arg2, part)
                            else
                                add_line("." .. arg2, "couldnt confirm weapon", true)
                                part:Destroy()
                                gunFastMovementUnlock()
                                gunRunning = false
                                red_anim()
                            end

                            return
                        end
                    end

                    if not fn41() then
                        if v17 and fn38() then
                            local v23 = v17
                            local flag9 = v19.wear == true
                            fn44(v23, flag9)
                        end

                        part:Destroy()
                        fn34()
                        commandProgressFinish(v21, "." .. arg2, "tool")
                        return
                    end

                    if v21 and v21.stop then
                        v21.stop()
                    end

                    fn42("." .. arg2, part)
                    return
                end

                fn36(v19.path, nil, true)
                task.wait(1)

                if fn38() and v17 then
                    fn44(v17, true)
                    part:Destroy()
                    fn34()
                    commandProgressFinish(v21, "." .. arg2, "tool")
                    return
                end

                if v21 and v21.stop then
                    v21.stop()
                end

                fn42("." .. arg2, part)
                return
            end

            if v21 and v21.stop then
                v21.stop()
            end

            fn42("." .. arg2, part)
        end

        local tbl15 = {
            combo1 = {{"m4a1"}, {"reming"}},
            combo2 = {{"mp5"}, {"reming"}},
            combo3 = {{"ak-47"}, {"reming", v16}},
        }

        autoGetAddLine = function(arg2, arg3, arg4)
            if gunRunning == true then
                return nil
            end

            if not add_secondary_line then
                return add_line(arg2, arg3, arg4)
            end
            return add_secondary_line(arg2, arg3)
        end

        autoGetResolvePath = function(arg2)
            if typeof(arg2) ~= "table" then
                return nil
            end
            local v19 = Workspace

            for i, v20 in ipairs(arg2) do
                if not v19 then
                    return nil
                end
                v19 = v19:FindFirstChild(tostring(v20))
            end

            return v19
        end

        autoGetItemPosition = function(arg2)
            if not arg2 or typeof(arg2.path) ~= "table" then
                return nil
            end
            local v19 = autoGetResolvePath(arg2.path)
            if not v19 then
                return nil
            end

            if v19:IsA("BasePart") then
                return v19.Position
            end

            if not v19:IsA("Model") then
                local basePart = v19:FindFirstChildWhichIsA("BasePart", true)
                local position = basePart and basePart.Position or nil
                return position
            end

            local primaryPart = v19.PrimaryPart
            local basePart = primaryPart or v19:FindFirstChildWhichIsA("BasePart", true)
            local position = basePart and basePart.Position or nil
            return position
        end

        autoGetRange = 18
        autoGetDelay = 0.5
        autoGetEnabled = false
        autoGetConnection = nil
        autoGetCharConn = nil
        autoGetBackpackConn = nil
        autoGetCharToolConn = nil
        autoGetDiedConn = nil
        autoGetLast = 0
        autoGetIndex = 1
        autoGetPlan = {raw = "", ordered = {}, free = {}}
        autoGetFreeLast = {}
        local v19 = localTeamName
        local str = v19 and localTeamName() or ""
        autoGetLastTeam = str
        autoGetTeamConn = nil
        autoGetRebuildDebounce = false

        local tbl16 = {
            {
                vector(857, 100, 2250),
                vector(803, 101, 2248),
                vector(803, 98, 2217),
                vector(865, 98, 2215),
            },
            {
                vector(-951, 94, 2070),
                vector(-884, 94, 2071),
                vector(-886, 94, 2024),
                vector(-957, 94, 2027),
            },
        }

        autoGetWeaponZones = tbl16
        autoGetOutsideLastLog = 0

        autoGetInsideWeaponZone = function(arg2)
            if typeof(arg2) ~= "Vector3" then
                return false
            end

            for i, v20 in ipairs(autoGetWeaponZones) do
                if fn16(arg2, v20) then
                    return true
                end
            end

            return false
        end

        autoGetCanRunHere = function(arg2)
            local v20 = arg2 or autoGetRoot()
            local v21 = v20
            if not v20 then
                return false
            end
            return autoGetInsideWeaponZone(v21.Position)
        end

        autoGetNormalizeAlias = function(arg2)
            local v20 = tostring
            local str2 = arg2 or ""
            local str3 = v20(str2):lower():gsub("^%s+", ""):gsub("%s+$", "")

            local v21 = ({
                m4 = "m4a1",
                m4a1 = "m4a1",
                rem = "reming",
                remi = "reming",
                reming = "reming",
                shotgun = "reming",
                mp5 = "mp5",
                m9 = "m9",
                fal = "fal",
                ak = "ak-47",
                ak47 = "ak-47",
                ["ak-47"] = "ak-47",
                rev = "revolver",
                revolver = "revolver",
                m700 = "m700",
                sniper = "m700",
                clothes = "clothes",
                riot = "riot",
                mafia = "mafia",
                keycard = "keycard",
                key = "keycard",
                card = "keycard",
                autokey = "keycard",
                autokeycard = "keycard",
                aurakeycard = "keycard",
            })[str3]

            local v22 = v21 or str3
            return v22
        end

        autoGetRoot = function()
            return fn38()
        end

        autoGetResetProgress = function(arg2)
            autoGetIndex = 1
            autoGetFreeLast = {}
            local v20 = ipairs
            local ordered = autoGetPlan.ordered
            local tbl17 = ordered or {}

            for k, v21 in v20(tbl17) do
                if v21 then
                    v21.done = false
                end
            end

            autoGetAdvance()

            if arg2 then
                autoGetAddLine(".autoget", tostring(arg2), false)
            end
        end

        autoGetIsNear = function(arg2, arg3, arg4)
            local v20 = autoGetRoot()
            if not v20 then
                return false
            end
            local n5 = autoGetRange ^ 2
            local v21 = autoGetItemPosition
            local v22 = v21 and autoGetItemPosition(arg4)

            if typeof(v22) == "Vector3" then
                local n6 = v20.Position - v22
                if n6:Dot(n6) <= n5 then
                    return true
                end
            end

            if typeof(arg3) == "table" then
                for i, v23 in ipairs(arg3) do
                    if typeof(v23) == "Vector3" then
                        local n6 = v20.Position - v23
                        if n6:Dot(n6) <= n5 then
                            return true
                        end
                    end
                end
            end

            if typeof(arg2) ~= "Vector3" then
                return false
            end
            local n6 = v20.Position - arg2
            local flag7 = n6:Dot(n6) <= n5
            return flag7
        end

        autoGetHasTool = function(arg2)
            if not arg2 or not arg2.data then
                return true
            end

            if arg2.data.wear then
                return false
            end
            local flag7 = fn40(arg2.data.name) ~= nil
            return flag7
        end

        autoGetAdvance = function()
            while flag and autoGetIndex <= #autoGetPlan.ordered and autoGetHasTool(autoGetPlan.ordered[autoGetIndex]) do
                autoGetIndex = autoGetIndex + 1
            end
        end

        autoGetCheckAdded = function(arg2)
            if not autoGetEnabled or not arg2 or not arg2:IsA("Tool") then
                return
            end
            local v20 = autoGetPlan.ordered[autoGetIndex]

            if v20 and v20.data and not v20.data.wear and arg2.Name == v20.data.name then
                autoGetIndex = autoGetIndex + 1
                autoGetAddLine(".autoget", "tool confirmed: " .. tostring(arg2.Name), false)
            end
        end

        autoGetBindWatchers = function()
            if autoGetBackpackConn then
                pcall(function()
                    autoGetBackpackConn:Disconnect()
                end)

                autoGetBackpackConn = nil
            end

            if autoGetCharToolConn then
                pcall(function()
                    autoGetCharToolConn:Disconnect()
                end)

                autoGetCharToolConn = nil
            end

            if autoGetDiedConn then
                pcall(function()
                    autoGetDiedConn:Disconnect()
                end)

                autoGetDiedConn = nil
            end

            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")

            if backpack then
                local v20 = fn2(backpack.ChildAdded, autoGetCheckAdded)
                autoGetBackpackConn = v20
            end

            local character_ = LocalPlayer.Character

            if character_ then
                local v20 = fn2(character_.ChildAdded, autoGetCheckAdded)
                autoGetCharToolConn = v20
                local humanoid_ = character_:FindFirstChildOfClass("Humanoid")

                if humanoid_ then
                    local v21 = fn2(humanoid_.Died, function()
                        autoGetIndex = 1
                        autoGetFreeLast = {}
                        local v21 = ipairs
                        local ordered = autoGetPlan.ordered
                        local tbl17 = ordered or {}

                        for k, v22 in v21(tbl17) do
                            if v22 then
                                v22.done = false
                            end
                        end
                    end)

                    autoGetDiedConn = v21
                end
            end
        end

        if not localTeamName then
            localTeamName = function()
                local team = LocalPlayer.Team
                local name = team and LocalPlayer.Team.Name or ""
                return name
            end
        end

        if not teamName then
            teamName = function()
                return localTeamName()
            end
        end

        if not isInmateTeam then
            isInmateTeam = function()
                local flag7 = localTeamName() == "Inmates"
                return flag7
            end
        end

        if not isGuardTeam then
            isGuardTeam = function()
                local flag7 = localTeamName() == "Guards"
                return flag7
            end
        end

        if not isCriminalTeam then
            isCriminalTeam = function()
                local flag7 = localTeamName() == "Criminals"
                return flag7
            end
        end

        if not teamRestrictionMessage then
            teamRestrictionMessage = function(arg2, arg3)
                local v20 = tostring
                local str2 = arg2 or ""
                local str3 = v20(str2):lower()
                if str3 == "riot" and not isGuardTeam() then
                    return "cant grab riot, police/guards only"
                end

                if (str3 == "mafia" or str3 == "fal") and not isCriminalTeam() then
                    if not isGuardTeam() then
                        return "cant grab mafia/FAL, need Criminals"
                    end
                    return "cant grab mafia/FAL as Guards"
                end

                if arg3 and arg3.team and localTeamName() ~= arg3.team then
                    return "need team " .. tostring(arg3.team)
                end
                return nil
            end
        end

        normalizeAutoGetTeamToken = function(arg2)
            local v20 = tostring
            local str2 = arg2 or ""
            local str3 = v20(str2):lower()
            local v21 = localTeamName()
            if (v21 == "" or v21 == "Neutral") and str3 == "riot" then
                return nil
            end

            if str3 == "riot" and (v21 == "Inmates" or v21 == "Criminals") then
                if ownsGamePass and ownsGamePass(gamePassIds.sniper) then
                    return "clothes"
                end

                if add_line then
                    autoGetAddLine(".autoget", "riot not for team, no sniper pass for clothes", true)
                end

                return nil
            end

            if str3 ~= "mafia" and str3 ~= "fal" or v21 ~= "Guards" then
                return str3
            end

            if ownsGamePass and ownsGamePass(gamePassIds.swat) then
                if add_line then
                    autoGetAddLine(".autoget", str3 .. " not for Guards, switching to riot", true)
                end

                return "riot"
            end

            if ownsGamePass and ownsGamePass(gamePassIds.sniper) then
                if add_line then
                    autoGetAddLine(".autoget", str3 .. " not for Guards, switching to clothes", true)
                end

                return "clothes"
            end

            if add_line then
                autoGetAddLine(".autoget", str3 .. " not for Guards, no swat/sniper pass", true)
            end

            return nil
        end

        autoGetBuild = function(arg2)
            local v20 = tostring
            local str2 = arg2 or ""
            local str3 = v20(str2):lower():gsub("^%s+", ""):gsub("%s+$", "")
            local tbl17 = {raw = str3, ordered = {}, free = {}, blocked = {}}
            local v21, v22, v23 = str3:gmatch("%S+")
            local v24 = v23
            local v25 = v21
            local v26 = v22

            while true do
                local v27 = v25(v26, v24)
                if v27 == nil then
                    break
                end
                v24 = v27
                local v28 = normalizeAutoGetTeamToken(autoGetNormalizeAlias(v27))

                if v28 and tbl15[v28] then
                    for i, v29 in ipairs(tbl15[v28]) do
                        local v30 = normalizeAutoGetTeamToken(autoGetNormalizeAlias(v29[1]))
                        local v31 = v29[2]
                        local v32 = v30 and tbl7[v30]

                        if v32 then
                            local tbl18 = {
                                cmd = v30,
                                data = v32,
                                pos = nearestItemPos(v32, v31),
                                positions = v32.positions,
                            }

                            local v33 = teamRestrictionMessage(v30, v32)

                            if v32.passId and not ownsGamePass(v32.passId) then
                                table.insert(tbl17.blocked, v30)
                            elseif v33 then
                                autoGetAddLine(".autoget", v33, true)
                            elseif not v32.wear and not v32.free then
                                table.insert(tbl17.ordered, tbl18)
                            else
                                table.insert(tbl17.free, tbl18)
                            end
                        end
                    end

                    v24 = v27
                elseif v28 and tbl7[v28] then
                    local v29 = tbl7[v28]

                    local tbl18 = {
                        cmd = v28,
                        data = v29,
                        pos = nearestItemPos(v29),
                        positions = v29.positions,
                    }

                    local v30 = teamRestrictionMessage(v28, v29)

                    if v29.passId and not ownsGamePass(v29.passId) then
                        table.insert(tbl17.blocked, v28)
                    elseif v30 then
                        autoGetAddLine(".autoget", v30, true)
                    elseif not v29.wear and not v29.free then
                        table.insert(tbl17.ordered, tbl18)
                    else
                        table.insert(tbl17.free, tbl18)
                    end
                end
            end

            return tbl17
        end

        autoGetPlanIsEmpty = function(arg2)
            local flag7

            if arg2 then
                flag7 = false
            else
                flag7 = true
            end

            if not flag7 then
                flag7 = #arg2.ordered == 0 and #arg2.free == 0
            end

            return flag7
        end

        autoGetFireRemote = function(arg2)
            if not arg2 or not arg2.data then
                return false
            end

            if not autoGetIsNear(arg2.pos, arg2.positions, arg2.data) then
                return false
            end

            return pcall(function()
                local path = arg2.data.path
                local name = arg2.data.name
                local flag7 = arg2.data.wear == true
                fn36(path, name, flag7, true)
            end)
        end

        autoGetFireFree = function()
            local now = os.clock()
            local v20 = ipairs
            local free = autoGetPlan.free
            local tbl17 = free or {}

            for k, v21 in v20(tbl17) do
                local str2 = tostring(v21.cmd)

                if (not autoGetFreeLast[str2] or autoGetDelay <= now - autoGetFreeLast[str2]) and autoGetFireRemote(v21) then
                    autoGetFreeLast[str2] = now
                end
            end
        end

        autoGetFireOrdered = function()
            autoGetAdvance()
            local v20 = autoGetPlan.ordered[autoGetIndex]
            if not v20 or not v20.data then
                return
            end
            autoGetFireRemote(v20)
        end

        autoGetRebuildFromConfig = function()
            if autoGetRebuildDebounce then
                return
            end
            autoGetRebuildDebounce = true

            task.defer(function()
                task.wait(0.15)
                autoGetRebuildDebounce = false

                if typeof(cfg.auto_get) == "table" and #cfg.auto_get ~= 0 then
                    local str2 = table.concat(cfg.auto_get, " ")

                    local ok, result = pcall(function()
                        return autoGetBuild(str2)
                    end)

                    local v20 = localTeamName
                    local str3 = v20 and localTeamName() or ""
                    autoGetLastTeam = str3

                    if ok and result and (not result.blocked or #result.blocked == 0) and not autoGetPlanIsEmpty(result) then
                        autoGetPlan = result
                        autoGetIndex = 1
                        autoGetFreeLast = {}
                        autoGetResetProgress()
                        autoGetStart()
                    elseif ok and result and autoGetPlanIsEmpty(result) then
                        autoGetPlan = {raw = str2, ordered = {}, free = {}}
                        autoGetIndex = 1
                        autoGetFreeLast = {}
                    elseif not ok and add_line then
                        autoGetAddLine(".autoget", "autoget update err: " .. tostring(result), true)
                    end

                    return
                end

                autoGetPlan = {raw = "", ordered = {}, free = {}}
                autoGetIndex = 1
                autoGetFreeLast = {}
                local v20 = localTeamName
                local str2 = v20 and localTeamName() or ""
                autoGetLastTeam = str2
            end)
        end

        autoGetStep = function()
            if not autoGetEnabled then
                return
            end
            local now = os.clock()
            local n5 = now - autoGetLast
            local v20 = gunGetMethodFast()
            local n6 = v20 and 0.1 or autoGetDelay
            if n5 < n6 then
                return
            end
            autoGetLast = now
            local v21 = localTeamName
            local str2 = v21 and localTeamName() or ""

            if str2 == autoGetLastTeam then
                local v22 = autoGetRoot()
                if not v22 then
                    return
                end

                if not autoGetCanRunHere(v22) then
                    return
                end
                autoGetFireFree()
                autoGetFireOrdered()
                return
            end

            autoGetLastTeam = str2
            autoGetRebuildFromConfig()
        end

        autoGetStop = function()
            autoGetEnabled = false

            if autoGetConnection then
                pcall(function()
                    autoGetConnection:Disconnect()
                end)

                autoGetConnection = nil
            end

            if autoGetCharConn then
                pcall(function()
                    autoGetCharConn:Disconnect()
                end)

                autoGetCharConn = nil
            end

            if autoGetBackpackConn then
                pcall(function()
                    autoGetBackpackConn:Disconnect()
                end)

                autoGetBackpackConn = nil
            end

            if autoGetCharToolConn then
                pcall(function()
                    autoGetCharToolConn:Disconnect()
                end)

                autoGetCharToolConn = nil
            end

            if autoGetDiedConn then
                pcall(function()
                    autoGetDiedConn:Disconnect()
                end)

                autoGetDiedConn = nil
            end
        end

        autoGetStart = function()
            if autoGetConnection then
                return
            end
            autoGetEnabled = true
            autoGetLast = 0
            autoGetFreeLast = {}
            autoGetBindWatchers()
            autoGetResetProgress()
            local v20 = fn2(RunService.Heartbeat, autoGetStep)
            autoGetConnection = v20

            local v21 = fn2(LocalPlayer.CharacterAdded, function()
                task.wait(0.35)
                autoGetBindWatchers()
                autoGetResetProgress()
            end)

            autoGetCharConn = v21
        end

        autoGetSetList = function(arg2)
            local v20 = tostring
            local str2 = arg2 or ""
            local str3 = v20(str2):lower():gsub("^%s+", ""):gsub("%s+$", "")

            if str3 == "" then
                autoGetAddLine(".autoget", "use .autoget combo1 clothes / .autoget off", true)
                red_anim()
                return false
            end

            if str3 ~= "off" and str3 ~= "clear" and str3 ~= "none" and str3 ~= "disable" then
                local v21 = autoGetBuild(str3)

                if v21.blocked and #v21.blocked > 0 then
                    autoGetAddLine(".autoget", "need gamepass: " .. table.concat(v21.blocked, ", "), true)
                    red_anim()
                    return false
                end

                if not autoGetPlanIsEmpty(v21) then
                    autoGetPlan = v21
                    autoGetIndex = 1
                    autoGetFreeLast = {}
                    cfg.auto_get = {}

                    for match in str3:gmatch("%S+") do
                        table.insert(cfg.auto_get, match)
                    end

                    save_cfg()
                    refresh_saved_commands()
                    autoGetStop()
                    autoGetStart()
                    autoGetAddLine(".autoget " .. str3, "autoget saved + on", false)
                    return true
                end

                autoGetAddLine(".autoget", "no valid items for team", true)
                red_anim()
                return false
            end

            autoGetStop()

            if autoKeycardStop then
                autoKeycardStop()
            end

            cfg.auto_keycard = false
            cfg.auto_get = {}
            autoGetPlan = {raw = "", ordered = {}, free = {}}
            autoGetIndex = 1
            autoGetFreeLast = {}
            save_cfg()
            refresh_saved_commands()
            autoGetAddLine(".autoget off", "autoget off", false)
            return true
        end

        autoGetLoadFromConfig = function()
            if typeof(cfg.auto_get) == "table" and #cfg.auto_get > 0 then
                local str2 = table.concat(cfg.auto_get, " ")

                local ok, result = pcall(function()
                    return autoGetBuild(str2)
                end)

                if ok and result and (not result.blocked or #result.blocked == 0) and not autoGetPlanIsEmpty(result) then
                    autoGetPlan = result
                    autoGetIndex = 1
                    autoGetStart()
                elseif not ok then
                    cfg.auto_get = {}
                    save_cfg()

                    if add_line then
                        autoGetAddLine(".autoget", "autoget cfg corrupt, reset", true)
                    end
                end
            end
        end

        task.defer(autoGetLoadFromConfig)
        local v20 = featureGet
        local autoKeycard = v20

        if v20 then
            local v21 = featureGet
            local flag7 = cfg.auto_keycard == true
            autoKeycard = v21("auto_keycard", flag7)
        end

        if not autoKeycard then
            autoKeycard = cfg.auto_keycard == true
        end

        autoKeycardEnabled = autoKeycard
        autoKeycardConnection = nil
        autoKeycardCharConn = nil
        autoKeycardTeamConn = nil
        autoKeycardLast = 0
        autoKeycardDelay = 0.5
        autoKeycardConfirmed = false
        autoKeycardPausedByTeam = false

        autoKeycardNotify = function(arg2)
            pcall(function()
                if add_secondary_line then
                    add_secondary_line(".autokeycard", tostring(arg2))
                elseif add_line then
                    add_line(".autokeycard", tostring(arg2), false)
                end
            end)
        end

        autoKeycardTeamName = function()
            local team = LocalPlayer.Team
            local name = team and LocalPlayer.Team.Name or "Neutral"
            return name
        end

        autoKeycardCanRun = function()
            local v21 = autoKeycardTeamName()
            local flag7 = v21 == "Inmates" or v21 == "Criminals"
            return flag7
        end

        autoKeycardHandleTeamChange = function()
            if not autoKeycardEnabled or featureGet and not featureGet("auto_keycard", autoKeycardEnabled) then
                return
            end
            local v21 = autoKeycardTeamName()

            if v21 == "Guards" then
                if not autoKeycardPausedByTeam then
                    autoKeycardPausedByTeam = true
                end

                return
            end

            if (v21 == "Inmates" or v21 == "Criminals") and autoKeycardPausedByTeam then
                autoKeycardPausedByTeam = false
                local v22 = autoKeycardHasKey()
                autoKeycardConfirmed = v22
                autoKeycardLast = 0
            end
        end

        autoKeycardHasKey = function()
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            local character_ = LocalPlayer.Character
            local v21 = fn26(backpack)
            local v22 = v21 or fn26(character_)
            return v22
        end

        autoKeycardConfirmIfHas = function()
            if not autoKeycardHasKey() then
                return false
            end

            if not autoKeycardConfirmed then
                autoKeycardConfirmed = true
            end

            return true
        end

        autoKeycardFire = function()
            if not autoKeycardEnabled or featureGet and not featureGet("auto_keycard", autoKeycardEnabled) then
                return
            end

            if autoKeycardConfirmed then
                return
            end
            autoKeycardHandleTeamChange()
            if not autoKeycardCanRun() or autoKeycardPausedByTeam then
                return
            end

            if autoKeycardConfirmIfHas() then
                return
            end
            local keyCard = Workspace:FindFirstChild("Key card")
            if not keyCard then
                return
            end
            local remotes = ReplicatedStorage:FindFirstChild("Remotes")
            local giverPressed = remotes and remotes:FindFirstChild("GiverPressed")
            if not giverPressed then
                return
            end

            pcall(function()
                giverPressed:FireServer(keyCard)
            end)

            task.delay(0.15, function()
                if autoKeycardEnabled and not autoKeycardConfirmed then
                    autoKeycardConfirmIfHas()
                end
            end)
        end

        autoKeycardStep = function()
            if autoKeycardEnabled and (not featureGet or featureGet("auto_keycard", autoKeycardEnabled)) then
                autoKeycardHandleTeamChange()
                if autoKeycardConfirmed or autoKeycardPausedByTeam then
                    return
                end
                local now = os.clock()
                if now - autoKeycardLast < autoKeycardDelay then
                    return
                end
                autoKeycardLast = now
                autoKeycardFire()
                return
            end

            autoKeycardEnabled = false
        end

        autoKeycardStop = function(arg2)
            autoKeycardEnabled = false
            autoKeycardConfirmed = false

            if featureSet then
                featureSet("auto_keycard", false)
            end

            if autoKeycardConnection then
                pcall(function()
                    autoKeycardConnection:Disconnect()
                end)

                autoKeycardConnection = nil
            end

            if autoKeycardCharConn then
                pcall(function()
                    autoKeycardCharConn:Disconnect()
                end)

                autoKeycardCharConn = nil
            end

            if autoKeycardTeamConn then
                pcall(function()
                    autoKeycardTeamConn:Disconnect()
                end)

                autoKeycardTeamConn = nil
            end

            autoKeycardPausedByTeam = false

            if not arg2 then
                autoKeycardNotify("autokeycard off")
            end
        end

        autoKeycardStart = function(arg2)
            autoKeycardEnabled = true

            if featureSet then
                featureSet("auto_keycard", true)
            end

            autoKeycardLast = 0

            if autoKeycardHasKey() then
                autoKeycardConfirmed = true
            else
                autoKeycardConfirmed = false
            end

            if not autoKeycardConnection then
                local v21 = fn2(RunService.Heartbeat, autoKeycardStep)
                autoKeycardConnection = v21
            end

            if not autoKeycardCharConn then
                local v21 = fn2(LocalPlayer.CharacterAdded, function()
                    task.wait(0.35)

                    if autoKeycardEnabled and not autoKeycardHasKey() then
                        autoKeycardConfirmed = false
                        autoKeycardLast = 0
                        autoKeycardHandleTeamChange()
                    end
                end)

                autoKeycardCharConn = v21
            end

            if not autoKeycardTeamConn then
                local v21 = fn2(LocalPlayer:GetPropertyChangedSignal("Team"), function()
                    autoKeycardHandleTeamChange()
                end)

                autoKeycardTeamConn = v21
            end

            autoKeycardHandleTeamChange()

            if not arg2 then
                autoKeycardNotify("autokeycard on")
            end
        end

        autoKeycardSet = function(arg2, arg3)
            local autoKeycard2 = arg2 == true
            autoKeycardEnabled = autoKeycard2

            if featureSet then
                featureSet("auto_keycard", autoKeycard2)
            end

            cfg.auto_keycard = autoKeycard2

            if autoKeycard2 then
                autoKeycardStart(arg3)
            else
                autoKeycardStop(arg3)
                cfg.auto_keycard = false
            end

            save_cfg()
            refresh_saved_commands()
            return true
        end

        if autoKeycardEnabled then
            task.defer(function()
                autoKeycardStart(true)
            end)
        end

        primaryWeaponsForCombos = {
            M4A1 = true,
            ["Remington 870"] = true,
            MP5 = true,
            M700 = true,
            ["AK-47"] = true,
            FAL = true,
        }

        hasPrimaryWeaponsForCombo = function()
            local v21 = fn25(LocalPlayer:FindFirstChildOfClass("Backpack"), primaryWeaponsForCombos)
            local v22 = v21 or fn25(LocalPlayer.Character, primaryWeaponsForCombos)
            return v22
        end

        fn20 = function(arg2)
            if not fn32("." .. arg2) then
                return
            end
            local v21 = tbl15[arg2]
            if not v21 then
                return
            end

            if not hasPrimaryWeaponsForCombo() then
                fn33(true)
                local v22 = fn38()
                local position = v22 and fn38().Position
                v17 = position
                if not v17 then
                    fn42("." .. arg2, nil)
                    return
                end
                local v23 = commandProgressStart("." .. arg2, "combo")
                local tbl17 = {}
                local flag7 = false

                for i, v24 in ipairs(v21) do
                    local v25 = v24[1]
                    local v26 = v24[2]
                    local v27 = tbl7[v25]

                    if not v27 then
                        if v23 and v23.stop then
                            v23.stop()
                        end

                        add_line("." .. arg2, "err: weapon " .. v25 .. " not found", true)
                        flag7 = true
                        break
                    end

                    if v27.passId and not ownsGamePass(v27.passId) then
                        if v23 and v23.stop then
                            v23.stop()
                        end

                        add_line("." .. arg2, gamepassBlockedMessage(v27), true)
                        red_anim()
                        flag7 = true
                        break
                    end

                    local v28 = nearestItemPos(v27, v26)
                    local part = Instance.new("Part")
                    part.Size = vector(4, 1, 4)
                    part.Position = v28 - vector(0, 3.5, 0)
                    part.Anchored = true
                    part.Transparency = 0.5
                    part.Locked = true
                    part.Parent = Workspace
                    table.insert(tbl17, part)
                    local flag8 = v27.wear == true
                    fn44(v28, flag8)

                    if not fn41() then
                        local name = v27.name

                        if v27.wear then
                            fn36(v27.path, nil, true)
                            task.wait(1)

                            if not fn38() then
                                if v23 and v23.stop then
                                    v23.stop()
                                end

                                fn42("." .. arg2, tbl17)
                                return
                            end
                        elseif not fn40(name) then
                            fn36(v27.path, name)
                            local v29, v30 = fn43(name, 6)

                            if not v29 then
                                if v23 and v23.stop then
                                    v23.stop()
                                end

                                if v30 == "dead" then
                                    fn42("." .. arg2, tbl17)
                                else
                                    add_line("." .. arg2, "couldnt confirm " .. name, true)

                                    for i2, v31 in ipairs(tbl17) do
                                        v31:Destroy()
                                    end

                                    fn34()
                                    red_anim()
                                end

                                return
                            end
                        end

                        if not fn41() then
                            continue
                        end

                        if v23 and v23.stop then
                            v23.stop()
                        end

                        fn42("." .. arg2, tbl17)
                        return
                    end

                    if v23 and v23.stop then
                        v23.stop()
                    end

                    fn42("." .. arg2, tbl17)
                    return
                end

                if v17 and fn38() then
                    fn44(v17)
                end

                for i, v24 in ipairs(tbl17) do
                    v24:Destroy()
                end

                fn34()

                if flag7 then
                    if v23 and v23.stop then
                        v23.stop()
                    end
                else
                    commandProgressFinish(v23, "." .. arg2, "combo")
                end

                return
            end

            add_line("." .. arg2, "too many primary guns", true)
            red_anim()
        end

        local v21 = spawnCommandQueue
        local v22 = v21

        if not v21 then
            local tbl17 = {}
            v22 = tbl17
            tbl17.items = {}
            tbl17.running = false
            tbl17.charConn = nil
            tbl17.token = 0
        end

        spawnCommandQueue = v22

        spawnQueueAlive = function()
            local character_ = LocalPlayer.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            if not character_ or not humanoid_ or not humanoidRootPart or not backpack then
                return false
            end

            if LocalPlayer.Character ~= character_ or not character_.Parent or humanoidRootPart.Parent ~= character_ then
                return false
            end

            if humanoid_.Health <= 0 then
                return false
            end

            if fn41 and fn41() then
                return false
            end
            return true
        end

        spawnQueueRun = function()
            if spawnCommandQueue.running then
                return
            end

            if not spawnQueueAlive() then
                return
            end
            spawnCommandQueue.running = true
            local v23 = spawnCommandQueue
            v23.token = v23.token + 1
            local token = spawnCommandQueue.token

            task.spawn(function()
                while flag and spawnCommandQueue.running and spawnCommandQueue.token == token and spawnQueueAlive() do
                    if gunRunning == true then
                        task.wait(0.05)
                        continue
                    end
                    local v24 = table.remove(spawnCommandQueue.items, 1)
                    if not v24 then
                        break
                    end

                    if add_line and not v24.silentQueue then
                        local v25 = add_line
                        local label_ = v24.label
                        local str2 = label_ or ".queue"
                        v25(str2, "spawned, executing", false)
                    end

                    local ok = pcall(function()
                        v24.runner()
                    end)

                    if v24.arOp and autoRespawnManualFinish then
                        local v25 = autoRespawnManualFinish
                        local arOp = v24.arOp
                        local arReason = v24.arReason
                        local str2 = arReason or "queued command"
                        v25(arOp, str2)
                    end

                    if not ok then
                        if add_line then
                            local v25 = add_line
                            local label_ = v24.label
                            local str2 = label_ or ".queue"
                            v25(str2, "queue error", true)
                        end

                        if red_anim then
                            red_anim()
                        end
                    end

                    task.wait(0.05)
                end

                spawnCommandQueue.running = false
            end)
        end

        spawnQueueBind = function()
            if spawnCommandQueue.charConn then
                return
            end

            spawnCommandQueue.charConn = fn2(LocalPlayer.CharacterAdded, function(arg2)
                task.spawn(function()
                    local humanoid_ = arg2:WaitForChild("Humanoid", 10)
                    local humanoidRootPart = arg2:WaitForChild("HumanoidRootPart", 10)

                    if humanoid_ and humanoidRootPart then
                        local now = os.clock()

                        repeat
                            if spawnQueueAlive() then
                                task.wait(0.08)
                                if spawnQueueAlive() then
                                    spawnQueueRun()
                                    break
                                end
                            end

                            task.wait(0.03)
                        until os.clock() - now > 10
                    end
                end)
            end)
        end

        spawnQueueAdd = function(arg2, arg3, arg4)
            if spawnQueueAlive() then
                return false
            end

            if typeof(arg3) ~= "function" then
                return false
            end
            local v23 = tostring
            local str2 = arg2 or ".queue"
            local v24 = v23(str2)
            local str3 = v24:lower()
            local match = str3:match("^%.tp")
            local match2 = match or str3:match("^%.goto") or str3:match("^%.to")
            local v25 = nil
            local v26 = nil

            if not match2 and autoRespawnManualStart then
                local match3 = str3:match("^%.combo")
                local str4 = match3 and "combo" or "tool"
                v26 = str4
                v25 = autoRespawnManualStart(v26)
            end

            local insert = table.insert
            local items = spawnCommandQueue.items

            local tbl17 = {
                label = v24,
                runner = arg3,
                arOp = v25,
                arReason = v26,
            }

            local silentQueue = match2 == true
            tbl17.silentQueue = silentQueue
            insert(items, tbl17)
            spawnQueueBind()

            task.spawn(function()
                local now = os.clock()

                while flag and os.clock() - now < 30 do
                    if #spawnCommandQueue.items == 0 then
                        return
                    end

                    if spawnQueueAlive() then
                        task.wait(0.08)
                        if spawnQueueAlive() then
                            spawnQueueRun()
                            return
                        end
                    end

                    task.wait(0.03)
                end
            end)

            if add_line then
                local v27 = add_line
                local v28 = tostring
                local str4 = arg2 or ".queue"
                v27(v28(str4), "waiting to spawn", false)
            end

            if arg4 ~= "chat" and collapse then
                collapse()
            end

            return true
        end

        local v23 = boostFpsApplied
        local flag7 = v23 or false
        boostFpsApplied = flag7
        local v24 = boostFpsConn
        local v25 = v24 or nil
        boostFpsConn = v25

        boostFpsOptimize = function(arg2)
            if not arg2 then
                return
            end

            pcall(function()
                if arg2:IsA("BasePart") then
                    arg2.CastShadow = false
                    arg2.Material = Enum.Material.Plastic
                    arg2.Reflectance = 0

                    pcall(function()
                        arg2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
                    end)

                    pcall(function()
                        arg2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
                    end)

                    pcall(function()
                        arg2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
                    end)

                    pcall(function()
                        arg2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
                    end)

                    pcall(function()
                        arg2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
                    end)

                    pcall(function()
                        arg2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
                    end)
                elseif not arg2:IsA("Decal") and not arg2:IsA("Texture") then
                    if not arg2:IsA("ParticleEmitter") and not arg2:IsA("Trail") then
                        if arg2:IsA("ForceField") or arg2:IsA("Sparkles") or arg2:IsA("Smoke") or arg2:IsA("Fire") or arg2:IsA("Beam") then
                            RunService.Heartbeat:Wait()
                            arg2:Destroy()
                        end
                    else
                        arg2.Lifetime = NumberRange.new(0)

                        pcall(function()
                            arg2.Enabled = false
                        end)
                    end
                else
                    arg2.Transparency = 1

                    pcall(function()
                        arg2.Texture = ""
                    end)
                end
            end)
        end

        applyBoostFPS = function()
            if not boostFpsApplied then
                boostFpsApplied = true
                add_line(".boostfps", "boostfps on, need rejoin", false)

                pcall(function()
                    local terrain = Workspace:FindFirstChildWhichIsA("Terrain")

                    if terrain then
                        terrain.WaterWaveSize = 0
                        terrain.WaterWaveSpeed = 0
                        terrain.WaterReflectance = 0
                        terrain.WaterTransparency = 1
                    end
                end)

                pcall(function()
                    Lighting.GlobalShadows = false
                    Lighting.FogEnd = 9000000000
                    Lighting.FogStart = 9000000000
                end)

                pcall(function()
                    settings().Rendering.QualityLevel = 1
                end)

                for i, descendant in ipairs(game:GetDescendants()) do
                    boostFpsOptimize(descendant)
                end

                for i, descendant in ipairs(Lighting:GetDescendants()) do
                    pcall(function()
                        if descendant:IsA("PostEffect") then
                            descendant.Enabled = false
                        end
                    end)
                end

                if boostFpsConn then
                    pcall(function()
                        boostFpsConn:Disconnect()
                    end)

                    boostFpsConn = nil
                end

                local v26 = fn2(Workspace.DescendantAdded, function(arg2)
                    task.spawn(function()
                        RunService.Heartbeat:Wait()
                        boostFpsOptimize(arg2)
                    end)
                end)

                boostFpsConn = v26
                return true
            end

            add_line(".boostfps", "boostfps already applied, need rejoin", false)
            return true
        end

        local flag8 = false
        local v26 = nil
        local tbl17 = {}
        local raycastParams = RaycastParams.new()
        local overlapParams = OverlapParams.new()
        local tbl18 = {}
        local v27 = nil
        raycastParams.FilterType = Enum.RaycastFilterType.Exclude
        overlapParams.FilterType = Enum.RaycastFilterType.Exclude

        local function fn45()
            for k, v28 in pairs(tbl17) do
                if k and k.Parent then
                    k.CanCollide = v28.collide
                    k.Transparency = v28.transparency
                end

                tbl17[k] = nil
            end
        end

        local function fn46()
            if not flag8 then
                fn45()
                return
            end
            local character_ = LocalPlayer.Character
            if not character_ then
                fn45()
                return
            end
            local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart = character_:FindFirstChild("HumanoidRootPart")

            if humanoid_ and humanoidRootPart then
                if not humanoid_.Sit and not humanoid_.SeatPart then
                    if v27 ~= character_ then
                        v27 = character_
                        local filterDescendantsInstances = {character_}
                        raycastParams.FilterDescendantsInstances = filterDescendantsInstances
                        overlapParams.FilterDescendantsInstances = filterDescendantsInstances
                    end

                    local position = humanoidRootPart.Position
                    local v28 = vector(0, -10, 0)
                    local hit = Workspace:Raycast(position, v28, raycastParams)
                    local instance = hit and hit.Instance
                    local partBoundsInRadius = Workspace:GetPartBoundsInRadius(humanoidRootPart.Position, 2, overlapParams)
                    table.clear(tbl18)

                    for i, partBoundsInRadiu in ipairs(partBoundsInRadius) do
                        local model = partBoundsInRadiu:FindFirstAncestorOfClass("Model")
                        local humanoid_2 = model and model:FindFirstChildOfClass("Humanoid")

                        if partBoundsInRadiu:IsA("BasePart") and not partBoundsInRadiu:IsA("TrussPart") and not humanoid_2 then
                            tbl18[partBoundsInRadiu] = true

                            if partBoundsInRadiu ~= instance and not tbl17[partBoundsInRadiu] and partBoundsInRadiu.CanCollide then
                                tbl17[partBoundsInRadiu] = {
                                    collide = partBoundsInRadiu.CanCollide,
                                    transparency = partBoundsInRadiu.Transparency,
                                }

                                partBoundsInRadiu.CanCollide = false
                                partBoundsInRadiu.Transparency = 0.9
                            end
                        end
                    end

                    for k, v29 in pairs(tbl17) do
                        if not tbl18[k] or k == instance then
                            if k.Parent then
                                k.CanCollide = v29.collide
                                k.Transparency = v29.transparency
                            end

                            tbl17[k] = nil
                        end
                    end

                    return
                end

                fn45()
                return
            end

            fn45()
        end

        toggleNoclip = function(arg2, arg3)
            local noclip = arg2 == true
            if flag8 == noclip then
                return true
            end
            flag8 = noclip
            cfg.noclip = noclip
            featureSet("noclip", noclip)
            save_cfg()

            if noclip then
                if not v26 then
                    v26 = fn2(RunService.Stepped, fn46)
                end
            else
                if v26 then
                    v26:Disconnect()
                    v26 = nil
                end

                fn45()
            end

            refresh_saved_commands()

            if not arg3 and add_line then
                local v28 = add_line
                local str2 = noclip and "on" or "off"
                local str3 = ".noclip " .. str2
                local str4 = noclip and "on" or "off"
                v28(str3, "noclip " .. str4, false)
            end

            return true
        end

        local flag9 = false
        local v28 = nil

        toggleInfJump = function(arg2)
            local infJump = arg2 == true
            if flag9 == infJump then
                return true
            end
            flag9 = infJump
            cfg.inf_jump = infJump
            featureSet("inf_jump", infJump)
            save_cfg()

            if infJump then
                if not v28 then
                    v28 = fn2(UserInputService.JumpRequest, function()
                        if flag9 then
                            local character_ = LocalPlayer.Character
                            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

                            if humanoid_ then
                                humanoid_:ChangeState("Jumping")
                            end
                        end
                    end)
                end
            elseif v28 then
                v28:Disconnect()
                v28 = nil
            end

            refresh_saved_commands()
            local v29 = add_line
            local str2 = infJump and "on" or "off"
            local str3 = ".infjump " .. str2
            local str4 = infJump and "on" or "off"
            v29(str3, "infinite jump " .. str4, false)
            return true
        end

        local tbl19 = {Active = false, Token = 0}

        local function fn47(enabled)
            local screen = LocalPlayer.PlayerGui:FindFirstChild("Screen")
            local carControlLoop = screen and screen:FindFirstChild("CarControlLoop")

            if carControlLoop then
                pcall(function()
                    carControlLoop.Enabled = enabled
                end)
            end
        end

        local function fn48()
            tbl19.Token = tbl19.Token + 1
            tbl19.Seat = nil
            fn47(true)
        end

        local function fn49(arg2, seat, arg3)
            local parent = seat.Parent
            local parent2 = parent and parent.Parent
            local mr = parent and parent:FindFirstChild("MR")
            local ml = parent and parent:FindFirstChild("ML")
            local lw = parent2 and parent2:FindFirstChild("LW")
            local rw = parent2 and parent2:FindFirstChild("RW")
            local motor = mr and mr:FindFirstChild("Motor")
            local motor2 = ml and ml:FindFirstChild("Motor")
            local rwd = parent2 and parent2:FindFirstChild("RWD")
            local vs = lw and lw:FindFirstChild("VS")
            local vs2 = rw and rw:FindFirstChild("VS")

            if parent2 and motor and motor2 and rwd and vs and vs2 then
                tbl19.Token = tbl19.Token + 1
                local token = tbl19.Token
                tbl19.Seat = seat
                fn47(false)

                if tbl19.Car ~= parent2 then
                    tbl19.Car = parent2

                    if not arg3 then
                        add_secondary_line(".carspeed", "new car detected, speed successfully multiplied")
                    end
                end

                task.spawn(function()
                    pcall(function()
                        while flag and tbl19.Active and tbl19.Token == token and arg2.Parent and arg2.SeatPart == seat and seat.Parent and parent2.Parent and motor.Parent and motor2.Parent and rwd.Parent and vs.Parent and vs2.Parent do
                            local desiredAngle = -2000 / (seat.Velocity.Magnitude + 57.15) / 45 * seat.SteerFloat
                            motor.DesiredAngle = desiredAngle
                            motor2.DesiredAngle = desiredAngle
                            local throttle = seat.Throttle

                            if throttle == 0 then
                                rwd.Throttle = 0
                                vs.Throttle = 0
                                vs2.Throttle = 0
                                rwd.Torque = 0
                                vs.Torque = 0
                                vs2.Torque = 0
                                seat.Throttle = 0
                                seat.Torque = 1
                            else
                                local flag10 = throttle == -1
                                local throttle2 = flag10 and -1 or 1
                                local torque = flag10 and 22.5 or 15
                                local maxSpeed = flag10 and 60 or 135

                                if flag10 then
                                    seat.Throttle = 0
                                    seat.Torque = 0
                                end

                                rwd.Throttle = throttle2
                                vs.Throttle = throttle2
                                vs2.Throttle = throttle2
                                rwd.Torque = torque
                                vs.Torque = torque
                                vs2.Torque = torque
                                rwd.MaxSpeed = maxSpeed
                                vs.MaxSpeed = maxSpeed
                                vs2.MaxSpeed = maxSpeed
                            end

                            RunService.Heartbeat:Wait()
                        end
                    end)

                    pcall(function()
                        rwd.Throttle = 0
                        vs.Throttle = 0
                        vs2.Throttle = 0
                        rwd.Torque = 0
                        vs.Torque = 0
                        vs2.Torque = 0
                    end)

                    if tbl19.Token == token then
                        tbl19.Seat = nil
                        fn47(true)
                    end
                end)

                return true
            end

            add_line(".carspeed", "failed to multiply car speed", true)
            red_anim()
            return false
        end

        local function fn50(arg2, arg3)
            local seatPart = arg2 and arg2.SeatPart
            if seatPart == tbl19.Seat then
                return true
            end
            fn48()
            if seatPart and seatPart:IsA("VehicleSeat") then
                return fn49(arg2, seatPart, arg3)
            end
            return true
        end

        local function fn51(arg2, arg3)
            fn3(tbl19.SeatConn)
            tbl19.SeatConn = nil
            fn48()
            if not arg2 then
                return
            end
            local token = tbl19.Token

            task.spawn(function()
                local humanoid_ = arg2:FindFirstChildOfClass("Humanoid")
                local humanoid_2 = humanoid_ or arg2:WaitForChild("Humanoid", 5)
                if not humanoid_2 or not tbl19.Active or tbl19.Token ~= token or LocalPlayer.Character ~= arg2 then
                    return
                end

                tbl19.SeatConn = fn2(humanoid_2:GetPropertyChangedSignal("SeatPart"), function()
                    fn50(humanoid_2, false)
                end)

                fn50(humanoid_2, arg3)
            end)
        end

        carspeed = function(arg2, arg3)
            local active = arg2 ~= false

            if tbl19.Active == active then
                local character_ = active and LocalPlayer.Character
                local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

                if humanoid_ then
                    fn50(humanoid_, true)
                end
            else
                tbl19.Active = active

                if active then
                    tbl19.Car = nil

                    tbl19.CharacterConn = fn2(LocalPlayer.CharacterAdded, function(arg4)
                        fn51(arg4, false)
                    end)

                    fn51(LocalPlayer.Character, true)
                else
                    fn3(tbl19.SeatConn)
                    fn3(tbl19.CharacterConn)
                    tbl19.SeatConn = nil
                    tbl19.CharacterConn = nil
                    tbl19.Car = nil
                    fn48()
                end
            end

            if cfg.carspeed ~= active or featureGet("carspeed", cfg.carspeed) ~= active then
                save_feature_cfg("carspeed", "carspeed", active)

                if refresh_saved_commands then
                    task.defer(refresh_saved_commands)
                end
            end

            if not arg3 then
                local v29 = add_line
                local str2 = active and "on" or "off"
                v29(".carspeed", "carspeed " .. str2, false)
            end

            return true
        end

        fn4(function()
            tbl19.Active = false
            fn3(tbl19.SeatConn)
            fn3(tbl19.CharacterConn)
            fn48()
        end)

        task.defer(function()
            task.wait(0.35)
            local v29 = featureGet
            local flag10 = cfg.carspeed == true

            if v29("carspeed", flag10) then
                carspeed(true, true)
            end
        end)

        local v29 = featureGet
        local flag10 = cfg.tool_aura == true
        local toolAura = v29("tool_aura", flag10)
        toolAuraEnabled = toolAura
        toolAuraConnection = nil
        toolAuraCharConn = nil
        toolAuraTools = {}
        toolAuraAngles = {}
        toolAuraLastUpdate = 0
        toolAuraAnimTime = 0
        local v30 = featureGet
        local flag11 = cfg.backpack_head == true
        local backpackHead = v30("backpack_head", flag11)
        animBackpackHeadEnabled = backpackHead
        backpackHeadGlobalKey = "__Kera_BackpackHead_Enabled"

        pcall(function()
            if getgenv then
                getgenv()[backpackHeadGlobalKey] = animBackpackHeadEnabled
            end
        end)

        animBackpackHeadId = "rbxassetid://68339848"
        animBackpackHeadTrack = nil
        animBackpackHeadAnim = nil
        animBackpackHeadCharConn = nil
        animBackpackHeadDiedConn = nil

        local tbl20 = {
            orbit_speed = 30,
            offset_x = -1.6,
            offset_y = 0,
            offset_z = -1.5,
            update_interval = 0.1,
            grip_forward = vector(0, 0, -1),
            grip_up = vector(0, 1, 0),
            min_distance = 2,
            max_distance = 10,
        }

        toolAuraSettings = tbl20
        toolAuraPriority = {"Riot Shield", "Keycard", "Chips", "Chocolate"}

        toolAuraIsPriority = function(arg2)
            for i, v31 in ipairs(toolAuraPriority) do
                if v31 == arg2 then
                    return true
                end
            end

            return false
        end

        toolAuraGetDistance = function(arg2)
            local n5 = (math.sin(arg2) + 1) / 2
            return toolAuraSettings.min_distance + (toolAuraSettings.max_distance - toolAuraSettings.min_distance) * n5
        end

        toolAuraChar = function()
            return LocalPlayer.Character
        end

        toolAuraEquipTool = function(arg2)
            local v31 = toolAuraChar()
            if not v31 then
                return nil
            end
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            if not backpack then
                return nil
            end
            local v32 = backpack:FindFirstChild(arg2)
            local v33 = v32 or v31:FindFirstChild(arg2)
            if not v33 or not v33:IsA("Tool") then
                return nil
            end
            v33.Parent = v31
            return v33
        end

        toolAuraLoadTools = function()
            local v31 = toolAuraChar()
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            toolAuraTools = {}
            toolAuraAngles = {}
            if not v31 or not backpack then
                return
            end

            for i, v32 in ipairs(toolAuraPriority) do
                local v33 = toolAuraEquipTool(v32)

                if v33 then
                    table.insert(toolAuraTools, v33)
                end
            end

            for i, child in ipairs(backpack:GetChildren()) do
                if child:IsA("Tool") and not toolAuraIsPriority(child.Name) then
                    child.Parent = v31
                end
            end

            for i, child in ipairs(v31:GetChildren()) do
                if child:IsA("Tool") and not toolAuraIsPriority(child.Name) then
                    table.insert(toolAuraTools, child)
                end
            end

            for i = 1, #toolAuraTools do
                toolAuraAngles[i] = (i - 1) / math.max(#toolAuraTools, 1) * math.pi * 2
            end
        end

        toolAuraStep = function()
            if not featureGet("tool_aura", toolAuraEnabled) then
                toolAuraEnabled = false
                return
            end
            local v31 = toolAuraChar()
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
            local humanoidRootPart = v31 and v31:FindFirstChild("HumanoidRootPart")
            if not v31 or not backpack or not humanoidRootPart or #toolAuraTools == 0 then
                return
            end
            local now = tick()
            if now - toolAuraLastUpdate < toolAuraSettings.update_interval then
                return
            end
            toolAuraLastUpdate = now
            toolAuraAnimTime = toolAuraAnimTime + toolAuraSettings.update_interval
            local v32 = toolAuraGetDistance(toolAuraAnimTime)
            local n5 = math.rad(toolAuraSettings.orbit_speed) * toolAuraSettings.update_interval
            local v33 = vector(toolAuraSettings.offset_x, toolAuraSettings.offset_y, toolAuraSettings.offset_z)
            local gripForward = toolAuraSettings.grip_forward
            local gripUp = toolAuraSettings.grip_up
            local v34 = gripUp:Cross(gripForward)

            for i, v35 in ipairs(toolAuraTools) do
                if v35 and v35.Parent == v31 then
                    local v36 = toolAuraAngles
                    local v37 = toolAuraAngles[i]
                    local n6 = v37 or 0
                    v36[i] = n6 + n5
                    local v38 = vector(math.cos(toolAuraAngles[i]) * v32, 0, math.sin(toolAuraAngles[i]) * v32)
                    v35.Parent = backpack
                    v35.GripPos = v33 + v38
                    v35.GripForward = gripForward
                    v35.GripUp = gripUp
                    v35.GripRight = v34
                    v35.Parent = v31
                end
            end
        end

        toolAuraStop = function()
            featureSet("tool_aura", false)
            toolAuraEnabled = false

            if toolAuraConnection then
                pcall(function()
                    toolAuraConnection:Disconnect()
                end)

                toolAuraConnection = nil
            end

            if toolAuraCharConn then
                pcall(function()
                    toolAuraCharConn:Disconnect()
                end)

                toolAuraCharConn = nil
            end

            toolAuraTools = {}
            toolAuraAngles = {}
        end

        toolAuraStart = function()
            if toolAuraConnection then
                return
            end
            featureSet("tool_aura", true)
            toolAuraEnabled = true
            toolAuraLoadTools()
            local v31 = fn2(RunService.Heartbeat, toolAuraStep)
            toolAuraConnection = v31

            local v32 = fn2(LocalPlayer.CharacterAdded, function()
                task.wait(1)

                if toolAuraEnabled then
                    toolAuraLoadTools()
                end
            end)

            toolAuraCharConn = v32
        end

        toolAuraSet = function(arg2)
            local flag12 = arg2 == true
            featureSet("tool_aura", flag12)

            if flag12 then
                toolAuraStart()
            else
                toolAuraStop()
            end

            toolAuraEnabled = flag12
            cfg.tool_aura = toolAuraEnabled
            save_cfg()
            refresh_saved_commands()
            local v31 = add_line
            local v32 = toolAuraEnabled
            local str2 = v32 and "on" or "off"
            local str3 = ".toolaura " .. str2
            local v33 = toolAuraEnabled
            local str4 = v33 and "Tool Aura on" or "Tool Aura off"
            v31(str3, str4, false)
            return true
        end

        animBackpackHeadStopAll = function(arg2)
            local character_ = arg2 or LocalPlayer.Character
            local v31 = character_
            local humanoid_ = character_ and v31:FindFirstChildOfClass("Humanoid")
            if not humanoid_ then
                return
            end

            pcall(function()
                for i, v32 in ipairs(humanoid_:GetPlayingAnimationTracks()) do
                    local animation = v32.Animation

                    if animation and animation.AnimationId == animBackpackHeadId then
                        v32:Stop(0)
                        v32:Destroy()
                    end
                end
            end)
        end

        animBackpackHeadStop = function()
            animBackpackHeadStopAll(LocalPlayer.Character)

            if animBackpackHeadDiedConn then
                pcall(function()
                    animBackpackHeadDiedConn:Disconnect()
                end)

                animBackpackHeadDiedConn = nil
            end

            if animBackpackHeadTrack then
                pcall(function()
                    animBackpackHeadTrack:Stop(0.1)
                    animBackpackHeadTrack:Destroy()
                end)

                animBackpackHeadTrack = nil
            end

            if animBackpackHeadAnim then
                pcall(function()
                    animBackpackHeadAnim:Destroy()
                end)

                animBackpackHeadAnim = nil
            end
        end

        animBackpackHeadPlay = function(arg2)
            if not animBackpackHeadEnabled or not featureGet("backpack_head", animBackpackHeadEnabled) then
                return
            end

            if getgenv and getgenv()[backpackHeadGlobalKey] ~= true then
                return
            end
            local character_ = arg2 or LocalPlayer.Character
            local v31 = character_
            if not character_ then
                return
            end
            local v32 = character_
            local v33 = character_.FindFirstChildOfClass(v32, "Humanoid")
            local humanoid_ = v33 or v31:WaitForChild("Humanoid", 5)
            if not humanoid_ or humanoid_.RigType ~= Enum.HumanoidRigType.R6 then
                return
            end
            animBackpackHeadStop()
            animBackpackHeadStopAll(v31)
            local animation = Instance.new("Animation")
            animation.AnimationId = animBackpackHeadId
            local v34 = humanoid_:LoadAnimation(animation)
            v34.Priority = Enum.AnimationPriority.Action
            v34:Play(0.1, 1, 1)
            v34:AdjustSpeed(0)
            v34:AdjustWeight(1)
            animBackpackHeadAnim = animation
            animBackpackHeadTrack = v34

            local v35 = fn2(humanoid_.Died, function()
                animBackpackHeadStop()
            end)

            animBackpackHeadDiedConn = v35
        end

        animBackpackHeadSet = function(arg2)
            local flag12 = arg2 == true
            animBackpackHeadEnabled = flag12
            featureSet("backpack_head", animBackpackHeadEnabled)

            pcall(function()
                if getgenv then
                    getgenv()[backpackHeadGlobalKey] = animBackpackHeadEnabled
                end
            end)

            if animBackpackHeadEnabled then
                animBackpackHeadPlay(LocalPlayer.Character)

                if not animBackpackHeadCharConn then
                    local v31 = fn2(LocalPlayer.CharacterAdded, function(arg3)
                        task.wait(0.35)
                        animBackpackHeadPlay(arg3)
                    end)

                    animBackpackHeadCharConn = v31
                end
            else
                featureSet("backpack_head", false)
                animBackpackHeadStop()
                animBackpackHeadStopAll(LocalPlayer.Character)

                if animBackpackHeadCharConn then
                    pcall(function()
                        animBackpackHeadCharConn:Disconnect()
                    end)

                    animBackpackHeadCharConn = nil
                end
            end

            cfg.backpack_head = animBackpackHeadEnabled
            save_cfg()
            refresh_saved_commands()
            local v31 = add_line
            local v32 = animBackpackHeadEnabled
            local str2 = v32 and "on" or "off"
            local str3 = ".backpackhead " .. str2
            local v33 = animBackpackHeadEnabled
            local str4 = v33 and "Backpack Head on" or "Backpack Head off"
            v31(str3, str4, false)
            return true
        end

        if featureGet("tool_aura", toolAuraEnabled) then
            task.defer(function()
                toolAuraStart()
            end)
        end

        if featureGet("backpack_head", animBackpackHeadEnabled) then
            task.defer(function()
                animBackpackHeadSet(true)
            end)
        end

        local v31 = featureGet
        local flag12 = cfg.punch_aura == true
        local punchAura = v31("punch_aura", flag12)
        punchAuraEnabled = punchAura
        punchAuraConnection = nil
        punchAuraRange = 15
        punchAuraRangeSquared = punchAuraRange * punchAuraRange
        punchAuraDelay = 0.2
        punchAuraLast = 0
        local meleeEvent = ReplicatedStorage:FindFirstChild("meleeEvent")
        punchAuraEvent = meleeEvent

        punchAuraStop = function()
            featureSet("punch_aura", false)
            punchAuraEnabled = false

            if punchAuraConnection then
                pcall(function()
                    punchAuraConnection:Disconnect()
                end)

                punchAuraConnection = nil
            end
        end

        punchAuraStep = function()
            if punchAuraEnabled and featureGet("punch_aura", punchAuraEnabled) then
                local now = os.clock()
                if now - punchAuraLast < punchAuraDelay then
                    return
                end
                punchAuraLast = now
                local v32 = punchAuraEvent
                local v33 = v32

                if not v32 or not v32.Parent then
                    local meleeEvent2 = ReplicatedStorage:FindFirstChild("meleeEvent")
                    v33 = meleeEvent2
                    punchAuraEvent = meleeEvent2
                end

                if not v33 then
                    return
                end
                local character_ = LocalPlayer.Character
                local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart then
                    return
                end

                for i, v34 in ipairs(tbl4) do
                    local character_2 = v34 ~= LocalPlayer and v34.Character
                    local humanoidRootPart2 = character_2 and character_2:FindFirstChild("HumanoidRootPart")

                    if humanoidRootPart2 then
                        local n5 = humanoidRootPart.Position - humanoidRootPart2.Position

                        if n5:Dot(n5) <= punchAuraRangeSquared then
                            v33:FireServer(v34, 1, 1)
                        end
                    end
                end

                return
            end

            punchAuraEnabled = false
        end

        punchAuraStart = function()
            if punchAuraConnection then
                return
            end
            featureSet("punch_aura", true)
            punchAuraEnabled = true
            local v32 = fn2(RunService.Heartbeat, punchAuraStep)
            punchAuraConnection = v32
        end

        punchAuraSet = function(arg2)
            local flag13 = arg2 == true
            featureSet("punch_aura", flag13)

            if flag13 then
                punchAuraStart()
            else
                punchAuraStop()
            end

            punchAuraEnabled = flag13
            cfg.punch_aura = punchAuraEnabled
            save_cfg()
            refresh_saved_commands()
            local v32 = add_line
            local v33 = punchAuraEnabled
            local str2 = v33 and "on" or "off"
            local str3 = ".punchaura " .. str2
            local v34 = punchAuraEnabled
            local str4 = v34 and "Punch Aura on" or "Punch Aura off"
            v32(str3, str4, false)
            return true
        end

        if featureGet("punch_aura", punchAuraEnabled) then
            task.defer(function()
                punchAuraStart()
            end)
        end

        local v32 = featureGet
        local flag13 = cfg.player_list == true
        local playerList = v32("player_list", flag13)
        playerListEnabled = playerList
        playerListGui = nil
        playerListFrame = nil
        playerListScroll = nil
        playerListCons = {}
        playerListRows = {}
        playerListSelected = nil
        local v33 = playerListTargetUserId
        local v34 = v33 or nil
        playerListTargetUserId = v34
        local v35 = playerListJoinOrder
        local tbl21 = v35 or {}
        playerListJoinOrder = tbl21
        local v36 = playerListJoinCounter
        local n5 = v36 or 0
        playerListJoinCounter = n5
        playerListBuildQueue = {}
        playerListBuildQueued = {}
        playerListBuildRunning = false
        playerListBuildToken = 0
        local v37 = playerListThumbCache
        local tbl22 = v37 or {}
        playerListThumbCache = tbl22
        playerListThumbPending = {}
        playerListThumbQueue = {}
        playerListThumbWorkers = 0

        playerListEnsureJoinOrder = function(arg2)
            if not arg2 or arg2 == LocalPlayer then
                return 0
            end

            if not playerListJoinOrder[arg2] then
                playerListJoinCounter = playerListJoinCounter + 1
                playerListJoinOrder[arg2] = playerListJoinCounter
            end

            return playerListJoinOrder[arg2]
        end

        for i, v38 in ipairs(tbl4) do
            if v38 ~= LocalPlayer then
                playerListEnsureJoinOrder(v38)
            end
        end

        playerListDisconnect = function()
            local v38 = ipairs
            local v39 = playerListCons
            local tbl23 = v39 or {}

            for k, v40 in v38(tbl23) do
                pcall(function()
                    v40:Disconnect()
                end)
            end

            playerListCons = {}
        end

        playerListStartThumbWorkers = function()
            while flag and playerListThumbWorkers < 2 and #playerListThumbQueue > 0 do
                playerListThumbWorkers = playerListThumbWorkers + 1

                task.spawn(function()
                    while flag and #playerListThumbQueue > 0 do
                        local v38 = table.remove(playerListThumbQueue, 1)
                        local image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                        local ok, result = pcall(Players.GetUserThumbnailAsync, Players, v38, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)

                        if ok and type(result) == "string" and result ~= "" then
                            image = result
                        end

                        if not flag then
                            playerListThumbPending[v38] = nil
                            break
                        end
                        playerListThumbCache[v38] = image
                        local v39 = playerListThumbPending[v38]
                        playerListThumbPending[v38] = nil
                        local v40 = ipairs
                        local tbl23 = v39 or {}

                        for k, v41 in v40(tbl23) do
                            if v41 and v41.Parent then
                                v41.Image = image
                            end
                        end

                        task.wait()
                    end

                    local n6 = math.max(0, playerListThumbWorkers - 1)
                    playerListThumbWorkers = n6

                    if flag and #playerListThumbQueue > 0 then
                        playerListStartThumbWorkers()
                    end
                end)
            end
        end

        playerListLoadThumb = function(arg2, arg3)
            if not flag or not arg3 then
                return
            end
            local v38 = playerListThumbCache[arg2]
            local image = v38 or "rbxasset://textures/ui/GuiImagePlaceholder.png"
            arg3.Image = image
            if v38 then
                return
            end
            local v39 = playerListThumbPending[arg2]

            if not v39 then
                playerListThumbPending[arg2] = {arg3}
                playerListThumbQueue[#playerListThumbQueue + 1] = arg2
                playerListStartThumbWorkers()
                return
            end

            v39[#v39 + 1] = arg3
        end

        playerListAction = function(arg2, arg3)
            if arg3 and arg3.Parent then
                if arg2 == "killtp" then
                    killTpPlayer(arg3)
                elseif arg2 == "fling" then
                    if playerListIsFlinging(arg3) then
                        unfling_target(arg3.Name)
                    else
                        fling_target(arg3.Name)
                    end
                elseif arg2 == "kill" then
                    real_kill(arg3.Name)
                elseif arg2 == "view" then
                    if viewer and spectating_player == arg3 then
                        unview()
                    else
                        view_any(arg3.Name)
                    end

                    task.defer(playerListUpdateViewButtons)
                elseif arg2 == "tp" then
                    tp_any(arg3.Name)
                end

                return
            end

            add_line(".playerlist", "player not found", true)
            red_anim()
        end

        local tbl23 = {
            WithFling = udim2(0.2, -4, 1, 0),
            WithoutFling = udim2(0.25, -4, 1, 0),
        }

        local function fn52()
            local flag14 = cfg.botton_fling ~= false
            return flag14
        end

        local function fn53()
            local v38 = fn52()
            local withFling = v38 and tbl23.WithFling or tbl23.WithoutFling
            return withFling
        end

        local function fn54(arg2, visible)
            arg2.Visible = visible
            arg2.Active = visible
            arg2.Selectable = visible
        end

        playerListIsFlinging = function(arg2)
            local flag14 = arg2 and flingState and flingState.CarInAttack and flingState.CarInAttack[arg2.Name] ~= nil
            return flag14
        end

        playerListUpdateFlingButtons = function()
            local v38 = fn52()
            local v39 = fn53()
            local v40 = pairs
            local v41 = playerListRows
            local tbl24 = v41 or {}
            local v42, v43, v44 = v40(tbl24)
            local v45 = v44
            local v46 = v42
            local v47 = v43

            while true do
                local v48, v49 = v46(v47, v45)
                if v48 == nil then
                    break
                end

                if v49.FlingBtn and v49.FlingBtn.Parent then
                    local v50 = playerListIsFlinging(v48)
                    fn54(v49.FlingBtn, v38)
                    v49.FlingBtn.Size = v39
                    local flingBtn = v49.FlingBtn
                    local text = v50 and "Unfling" or "Fling"
                    flingBtn.Text = text
                    local flingBtn2 = v49.FlingBtn
                    local v51 = v50 and color(115, 40, 55) or color(116, 66, 25)
                    flingBtn2.BackgroundColor3 = v51
                    local flingBtn3 = v49.FlingBtn
                    local v52 = v50 and color(255, 235, 240) or color(255, 240, 215)
                    flingBtn3.TextColor3 = v52
                end

                for i, v50 in ipairs({v49.KillTpBtn, v49.KillBtn, v49.ViewBtn, v49.TpBtn}) do
                    if v50 and v50.Parent then
                        v50.Size = v39
                    end
                end

                v45 = v48
            end
        end

        local tbl24 = {
            BottonFling = {
                Key = "botton_fling",
                Command = ".bottonfling",
                Names = {"bottonfling", "bf"},
                Usage = "use .bottonfling / .bf on/off",
                AfterSet = playerListUpdateFlingButtons,
            },
            StopDeath = {
                Key = "fling_stop_death",
                Command = ".stopdeath",
                Names = {"stopdeath"},
                Usage = "use .stopdeath on/off",
            },
            NoLimit = {
                Key = "fling_no_limit",
                Command = ".nolimit",
                Names = {"nolimit"},
                Usage = "use .nolimit on/off",
            },
            Whip = {
                Key = "fling_whip",
                Command = ".whip",
                Names = {"whip"},
                Usage = "use .whip on/off",
            },
            Method = {
                Key = "fling_method",
                Command = ".flingmethod",
                Names = {"flingmethod", "fm"},
                Usage = "use .flingmethod / .fm controlled/aggressive",
                Values = {controlled = true, aggressive = true},
                Aliases = {agressive = "aggressive"},
            },
            Hit = {
                Key = "fling_hit",
                Command = ".flinghit",
                Names = {"flinghit"},
                Usage = "use .flinghit legs/torso",
                Values = {legs = true, torso = true},
                Aliases = {leg = "legs", feet = "legs"},
            },
        }

        local function fn55(arg2, arg3, arg4)
            cfg[arg2.Key] = arg3
            save_cfg()

            if arg2.AfterSet then
                arg2.AfterSet()
            end

            refresh_saved_commands()

            if not arg4 then
                local values = arg2.Values
                local str2 = values and arg3 or (arg3 and "on" or "off")
                add_line(arg2.Command .. " " .. str2, "configuration with respect to fling", false)
            end

            return true
        end

        local function fn56(arg2)
            if arg2.Values then
                arg2.Setter = function(arg3, arg4)
                    local v38 = tostring
                    local str2 = arg3 or ""
                    local match = v38(str2):lower():match("^%s*(.-)%s*$")
                    local aliases = arg2.Aliases
                    local v39 = aliases and arg2.Aliases[match] or match
                    local v40 = v39
                    if arg2.Values[v40] then
                        return fn55(arg2, v40, arg4)
                    end
                    add_line(arg2.Command, arg2.Usage, true)
                    red_anim()
                    return false
                end
            else
                arg2.Setter = function(arg3, arg4)
                    local flag14 = arg3 == true
                    return fn55(arg2, flag14, arg4)
                end
            end

            return arg2.Setter
        end

        local v38 = fn56(tbl24.BottonFling)
        bottonFlingSet = v38
        local v39 = fn56(tbl24.StopDeath)
        flingStopDeathSet = v39
        local v40 = fn56(tbl24.NoLimit)
        flingNoLimitSet = v40
        local v41 = fn56(tbl24.Whip)
        flingWhipSet = v41
        local v42 = fn56(tbl24.Method)
        flingMethodSet = v42
        local v43 = fn56(tbl24.Hit)
        flingHitSet = v43

        tbl8 = {
            tbl24.BottonFling,
            tbl24.StopDeath,
            tbl24.NoLimit,
            tbl24.Whip,
            tbl24.Method,
            tbl24.Hit,
        }

        playerListUpdateViewButtons = function()
            local v44 = pairs
            local v45 = playerListRows
            local tbl25 = v45 or {}

            for k, v46 in v44(tbl25) do
                if v46.ViewBtn and v46.ViewBtn.Parent then
                    if viewer and spectating_player == k then
                        v46.ViewBtn.Text = "Unview"
                        v46.ViewBtn.BackgroundColor3 = color(24, 38, 54)
                        v46.ViewBtn.TextColor3 = color(245, 249, 255)
                    else
                        v46.ViewBtn.Text = "View"
                        v46.ViewBtn.BackgroundColor3 = color(17, 25, 38)
                        v46.ViewBtn.TextColor3 = color(245, 249, 255)
                    end
                end
            end
        end

        playerListClampPosition = function(arg2)
            if not playerListFrame then
                return arg2
            end
            local v44 = viewport()
            local v45 = px_pos(arg2)
            local x = playerListFrame.AbsoluteSize.X
            local n6 = x
            local y = playerListFrame.AbsoluteSize.Y
            local n7 = y

            if x <= 0 then
                n6 = 360
            end

            if y <= 0 then
                n7 = 405
            end

            return udim2(0, math.clamp(v45.X, 8, math.max(8, v44.X - n6 - 8)), 0, math.clamp(v45.Y, 8, math.max(8, v44.Y - n7 - 8)))
        end

        playerListKeepInside = function()
            if not playerListFrame then
                return
            end

            make_tween(playerListFrame, 0.14, {
                Position = playerListClampPosition(playerListFrame.Position),
            })
        end

        playerListTrackConnection = function(arg2, arg3, arg4)
            local v44 = fn2(arg3, arg4)

            if arg2 then
                arg2[#arg2 + 1] = v44
            end

            return v44
        end

        playerListMakeSmallButton = function(parent, text, arg2, arg3, arg4, backgroundColor3, arg5, arg6, arg7)
            local textButton = Instance.new("TextButton")
            textButton:SetAttribute("KX_NoTheme", true)
            textButton:SetAttribute("KX_ActionButton", true)
            local v44 = kxUseMobile()
            local n6 = v44 and 30 or 26
            textButton.Size = udim2(0, arg4, 0, n6)
            textButton.Position = udim2(0, arg2, 0, arg3)
            textButton.BackgroundColor3 = backgroundColor3
            textButton.BackgroundTransparency = 0
            textButton.BorderSizePixel = 0
            textButton.Text = text
            local v45 = arg5 or color(245, 248, 255)
            textButton.TextColor3 = v45
            textButton.TextTransparency = 0
            textButton.Font = Enum.Font.GothamBlack
            local v46 = kxUseMobile()
            local textSize = v46 and (text == "Teleport" and 11 or 12) or (text == "Teleport" and 10 or 11)
            textButton.TextSize = textSize
            kxTextClamp(textButton, 10, 13)
            textButton.TextWrapped = false
            textButton.TextTruncate = Enum.TextTruncate.AtEnd
            textButton.AutoButtonColor = false
            textButton.ZIndex = 60
            textButton.Parent = parent
            fn5("UICorner", textButton, "CornerRadius", udim(0, 8))
            local v47 = arg6 or arg5 or color(120, 180, 255)
            local UIStroke = fn5("UIStroke", textButton, "Color", v47, "Thickness", 1, "Transparency", 0.18, "ApplyStrokeMode", Enum.ApplyStrokeMode.Border)
            UIStroke:SetAttribute("KX_NoTheme", true)
            local uiGradient = Instance.new("UIGradient")
            uiGradient.Rotation = 90

            uiGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, color(math.clamp(math.floor(backgroundColor3.R * 255) + 28, 0, 255), math.clamp(math.floor(backgroundColor3.G * 255) + 28, 0, 255), math.clamp(math.floor(backgroundColor3.B * 255) + 28, 0, 255))),
                ColorSequenceKeypoint.new(1, backgroundColor3),
            })

            uiGradient.Parent = textButton
            uiGradient:SetAttribute("KX_NoTheme", true)

            playerListTrackConnection(arg7, textButton.MouseEnter, function()
                local v48 = make_tween

                local tbl25 = {
                    BackgroundTransparency = 0,
                    BackgroundColor3 = color(math.clamp(math.floor(backgroundColor3.R * 255) + 18, 0, 255), math.clamp(math.floor(backgroundColor3.G * 255) + 18, 0, 255), math.clamp(math.floor(backgroundColor3.B * 255) + 18, 0, 255)),
                }

                local v49 = arg5 or color(245, 248, 255)
                tbl25.TextColor3 = v49
                v48(textButton, 0.08, tbl25)
                local v50 = make_tween
                local tbl26 = {}
                local v51 = arg6 or arg5 or color(120, 180, 255)
                tbl26.Color = v51
                tbl26.Transparency = 0
                tbl26.Thickness = 1.55
                v50(UIStroke, 0.08, tbl26)
            end)

            playerListTrackConnection(arg7, textButton.MouseLeave, function()
                local v48 = make_tween
                local tbl25 = {BackgroundTransparency = 0, BackgroundColor3 = backgroundColor3}
                local v49 = arg5 or color(245, 248, 255)
                tbl25.TextColor3 = v49
                v48(textButton, 0.08, tbl25)
                local v50 = make_tween
                local tbl26 = {}
                local v51 = arg6 or arg5 or color(120, 180, 255)
                tbl26.Color = v51
                tbl26.Transparency = 0.18
                tbl26.Thickness = 1
                v50(UIStroke, 0.08, tbl26)
            end)

            return textButton
        end

        playerListClearRows = function()
            playerListBuildToken = playerListBuildToken + 1
            playerListBuildQueue = {}
            playerListBuildQueued = {}
            playerListBuildRunning = false
            local v44 = pairs
            local v45 = playerListRows
            local tbl25 = v45 or {}

            for k in v44(tbl25) do
                playerListRemoveRow(k, false)
            end

            playerListRows = {}
            if not playerListScroll then
                return
            end

            for i, child in ipairs(playerListScroll:GetChildren()) do
                if child:IsA("Frame") then
                    pcall(function()
                        child:Destroy()
                    end)
                end
            end
        end

        playerListSkidEntry = function(arg2)
            if not arg2 or arg2 == LocalPlayer then
                return nil
            end

            if skidGetEntryForPlayer then
                local ok, result = pcall(function()
                    return skidGetEntryForPlayer(arg2)
                end)

                if ok and result then
                    return result
                end
            end

            return nil
        end

        playerListCardState = function(arg2)
            local v44 = playerListEnsureJoinOrder(arg2)
            local flag14 = arg2 and playerListTargetUserId ~= nil and tonumber(arg2.UserId) == tonumber(playerListTargetUserId)
            local flag15 = playerListSkidEntry(arg2) ~= nil
            local n6 = flag14 and -200000 or (flag15 and -100000 or 100000)
            local n7 = n6 + v44
            local v45 = playerShownName
            local v46 = v45 and playerShownName(arg2)

            if not v46 then
                local v47 = tostring
                local name = arg2

                if arg2 then
                    local displayName = arg2.DisplayName
                    name = displayName or arg2.Name
                end

                if not name then
                    name = "Unknown"
                end

                v46 = v47(name)
            end

            local str2 = tostring(v46):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")
            local str3 = str2

            if flag14 then
                str3 = str2 .. " (Target)"
            end

            if flag15 then
                str3 = str3 .. " <font color=\"#FF5F6E\">(In skid list)</font>"
            end

            return n7, str3, tc(arg2)
        end

        playerListRefreshOrders = function()
            local v44 = pairs
            local v45 = playerListRows
            local tbl25 = v45 or {}

            for k, v46 in v44(tbl25) do
                if v46 and v46.UpdateColors then
                    v46.UpdateColors()
                end
            end
        end

        targetCommand = function(arg2)
            local v44 = tostring
            local str2 = arg2 or ""
            local str3 = v44(str2):gsub("^%s+", ""):gsub("%s+$", "")

            if str3 == "" then
                add_line(".target", "use .target name", true)
                red_anim()
                return false
            end

            if str3:lower() ~= "off" and str3:lower() ~= "clear" and str3:lower() ~= "none" then
                local v45 = find_player(str3)

                if v45 and v45 ~= LocalPlayer then
                    playerListTargetUserId = v45.UserId
                    playerListMakeRow(v45)
                    playerListRefreshOrders()
                    add_line(".target " .. v45.Name, "target added to pgui", false)
                    return true
                end

                add_line(".target " .. str3, "player not found", true)
                red_anim()
                return false
            end

            playerListTargetUserId = nil
            playerListRefreshOrders()
            add_line(".target", "target cleared", false)
            return true
        end

        playerListInfoText = function(arg2)
            return "UserId: " .. tostring(arg2.UserId) .. "\nName: " .. tostring(arg2.Name) .. "\nDisplayName: " .. tostring(arg2.DisplayName)
        end

        playerListDisconnectRowData = function(arg2)
            if not arg2 then
                return
            end
            local v44 = ipairs
            local connections = arg2.Connections
            local tbl25 = connections or {}

            for k, v45 in v44(tbl25) do
                pcall(function()
                    v45:Disconnect()
                end)
            end

            arg2.Connections = {}

            for i, v45 in ipairs({
                "TeamConn",
                "CharConn",
                "ChildAddedConn",
                "ChildRemovedConn",
            }) do
                local v46 = arg2[v45]

                if v46 then
                    pcall(function()
                        v46:Disconnect()
                    end)
                end

                arg2[v45] = nil
            end
        end

        playerListRemoveRow = function(arg2, arg3)
            if not arg2 then
                return
            end
            playerListBuildQueued[arg2] = nil
            local v44 = playerListRows
            local v45 = v44 and playerListRows[arg2] or nil

            if v45 then
                playerListDisconnectRowData(v45)

                if v45.Row then
                    pcall(function()
                        v45.Row:Destroy()
                    end)
                end

                playerListRows[arg2] = nil
            end

            if playerListSelected == arg2 then
                playerListSelected = nil
            end

            if arg3 then
                playerListJoinOrder[arg2] = nil
            end
        end

        playerListMakeRow = function(arg2)
            if not playerListScroll or not arg2 or arg2 == LocalPlayer then
                return
            end

            if arg2.Parent and arg2.Parent == Players then
                local v44 = playerListRows[arg2]

                if v44 and v44.Row and v44.Row.Parent then
                    if v44.UpdateColors then
                        v44.UpdateColors()
                    end

                    return v44.Row
                end

                if v44 then
                    playerListRemoveRow(arg2, false)
                end

                local v45 = pairs
                local v46 = playerListRows
                local tbl25 = v46 or {}

                for k in v45(tbl25) do
                    if k ~= arg2 and tonumber(k.UserId) == tonumber(arg2.UserId) then
                        playerListRemoveRow(k, true)
                    end
                end

                local tbl26 = {}
                local v47 = kxThemeCurrent()
                local v48, v49, v50 = playerListCardState(arg2)
                local Frame8 = fn5("Frame", playerListScroll, "Name", "Player_" .. tostring(arg2.UserId), "LayoutOrder", v48, "Size", udim2(1, -8, 0, 50), "BackgroundColor3", v47.Panel, "BorderSizePixel", 0, "ClipsDescendants", true, "ZIndex", 30)
                fn5("UICorner", Frame8, "CornerRadius", udim(0, 9))
                local UIStroke = fn5("UIStroke", Frame8, "Color", color(35, 43, 60), "Thickness", 1, "Transparency", 0.35)
                UIStroke:SetAttribute("KX_NoTheme", true)
                UIStroke:SetAttribute("KX_PlayerCardStroke", true)
                local Frame9 = fn5("Frame", Frame8, "Size", udim2(0, 3, 0, 34), "Position", udim2(0, 8, 0, 8), "BackgroundColor3", v50, "BorderSizePixel", 0, "ZIndex", 32)
                Frame9:SetAttribute("KX_NoTheme", true)
                fn5("UICorner", Frame9, "CornerRadius", udim(1, 0))
                local ImageLabel2 = fn5("ImageLabel", Frame8, "Size", udim2(0, 34, 0, 34), "Position", udim2(0, 18, 0, 8), "BackgroundColor3", color(7, 9, 14), "BorderSizePixel", 0, "Image", "rbxasset://textures/ui/GuiImagePlaceholder.png", "ZIndex", 32)
                fn5("UICorner", ImageLabel2, "CornerRadius", udim(1, 0))
                local UIStroke2 = fn5("UIStroke", ImageLabel2, "Color", v50, "Thickness", 1, "Transparency", 0.2)
                UIStroke2:SetAttribute("KX_NoTheme", true)
                local TextLabel = fn5("TextLabel", Frame8, "Size", udim2(1, -86, 0, 18), "Position", udim2(0, 60, 0, 7), "BackgroundTransparency", 1, "Text", v49, "TextColor3", v47.Text, "Font", Enum.Font.GothamBold, "TextSize", 12, "TextXAlignment", Enum.TextXAlignment.Left, "TextTruncate", Enum.TextTruncate.AtEnd, "RichText", true, "ZIndex", 32)
                fn5("TextLabel", Frame8, "Size", udim2(1, -86, 0, 16), "Position", udim2(0, 60, 0, 25), "BackgroundTransparency", 1, "Text", "@" .. arg2.Name, "TextColor3", color(135, 153, 185), "Font", Enum.Font.Code, "TextSize", 10, "TextXAlignment", Enum.TextXAlignment.Left, "TextTruncate", Enum.TextTruncate.AtEnd, "ZIndex", 32)
                local TextButton = fn5("TextButton", Frame8, "Size", udim2(1, 0, 0, 50), "BackgroundTransparency", 1, "Text", "", "ZIndex", 34)

                local tbl27 = {
                    Row = Frame8,
                    Stroke = UIStroke,
                    Bar = Frame9,
                    ImageStroke = UIStroke2,
                    Title = TextLabel,
                    Connections = tbl26,
                    LastOrder = Frame8.LayoutOrder,
                    LastTitle = TextLabel.Text,
                    LastColor = Frame9.BackgroundColor3,
                }

                playerListRows[arg2] = tbl27

                local function fn57(arg3, arg4)
                    return playerListTrackConnection(tbl26, arg3, arg4)
                end

                local function updateColors(arg3)
                    if not Frame8 or not Frame8.Parent then
                        return
                    end
                    local v51, v52, v53 = playerListCardState(arg2)

                    if arg3 or tbl27.LastOrder ~= v51 then
                        tbl27.LastOrder = v51
                        Frame8.LayoutOrder = v51
                    end

                    if arg3 or tbl27.LastTitle ~= v52 then
                        tbl27.LastTitle = v52
                        TextLabel.Text = v52
                    end

                    if tbl27.Info and tbl27.Info.Parent then
                        local v54 = playerListInfoText(arg2)

                        if arg3 or tbl27.LastInfo ~= v54 then
                            tbl27.LastInfo = v54
                            tbl27.Info.Text = v54
                        end
                    end

                    if arg3 or tbl27.LastColor ~= v53 then
                        tbl27.LastColor = v53
                        Frame9.BackgroundColor3 = v53
                        UIStroke2.Color = v53
                    end

                    if playerListSelected == arg2 and UIStroke and UIStroke.Parent then
                        UIStroke.Color = v53
                        UIStroke.Transparency = 0.12
                    end
                end

                tbl27.UpdateColors = updateColors

                local function ensureDetails()
                    if tbl27.Details and tbl27.Details.Parent then
                        return tbl27.Details
                    end

                    if not Frame8.Parent then
                        return nil
                    end
                    local v51 = kxUseMobile()
                    local n6 = v51 and 96 or 88
                    local Frame10 = fn5("Frame", Frame8, "Size", udim2(1, -18, 0, n6), "Position", udim2(0, 9, 0, 52), "BackgroundColor3", kxThemeCurrent().Bg, "BorderSizePixel", 0, "ClipsDescendants", true, "Visible", false, "ZIndex", 31)
                    fn5("UICorner", Frame10, "CornerRadius", udim(0, 11))
                    fn5("UIStroke", Frame10, "Color", color(55, 68, 92), "Thickness", 1, "Transparency", 0.35)
                    local TextLabel2 = fn5("TextLabel", Frame10, "Size", udim2(1, -16, 0, 38), "Position", udim2(0, 8, 0, 6), "BackgroundTransparency", 1, "Text", playerListInfoText(arg2), "TextColor3", color(185, 205, 235), "Font", Enum.Font.Code, "TextSize", 10, "TextXAlignment", Enum.TextXAlignment.Left, "TextYAlignment", Enum.TextYAlignment.Top, "ZIndex", 35)
                    local n7 = v51 and 58 or 55
                    local n8 = v51 and 30 or 26
                    local Frame11 = fn5("Frame", Frame10, "Name", "PlayerActions", "Size", udim2(1, -12, 0, n8), "Position", udim2(0, 6, 0, n7), "BackgroundTransparency", 1, "BorderSizePixel", 0, "ClipsDescendants", false, "ZIndex", 59)
                    fn5("UIListLayout", Frame11, "FillDirection", Enum.FillDirection.Horizontal, "HorizontalAlignment", Enum.HorizontalAlignment.Center, "VerticalAlignment", Enum.VerticalAlignment.Center, "SortOrder", Enum.SortOrder.LayoutOrder, "Padding", udim(0, 4))

                    local function fn58(name, arg3, layoutOrder, arg4, arg5, arg6)
                        local v52 = playerListMakeSmallButton(Frame11, arg3, 0, 0, 1, arg4, arg5, arg6, tbl26)
                        v52.Name = name
                        v52.Size = fn53()
                        v52.LayoutOrder = layoutOrder
                        v52.Visible = true
                        v52.Active = true
                        v52.Selectable = true
                        return v52
                    end

                    local KillTPButton = fn58("KillTPButton", "Kill TP", 1, color(70, 42, 105), color(255, 238, 255), color(185, 115, 255))
                    local FlingButton = fn58("FlingButton", "Fling", 2, color(116, 66, 25), color(255, 240, 215), color(255, 174, 85))
                    local KillButton = fn58("KillButton", "Kill", 3, color(105, 34, 48), color(255, 238, 242), color(255, 105, 135))
                    local ViewButton = fn58("ViewButton", "View", 4, color(30, 78, 120), color(238, 250, 255), color(105, 200, 255))
                    local TPButton = fn58("TPButton", "TP", 5, color(30, 96, 62), color(235, 255, 242), color(95, 255, 180))
                    tbl27.Details = Frame10
                    tbl27.Actions = Frame11
                    tbl27.Info = TextLabel2
                    tbl27.KillTpBtn = KillTPButton
                    tbl27.FlingBtn = FlingButton
                    tbl27.KillBtn = KillButton
                    tbl27.ViewBtn = ViewButton
                    tbl27.TpBtn = TPButton
                    tbl27.LastInfo = TextLabel2.Text
                    fn54(FlingButton, fn52())

                    fn57(KillTPButton.Activated, function()
                        playerListAction("killtp", arg2)
                    end)

                    fn57(FlingButton.Activated, function()
                        playerListAction("fling", arg2)
                    end)

                    fn57(KillButton.Activated, function()
                        playerListAction("kill", arg2)
                    end)

                    fn57(ViewButton.Activated, function()
                        playerListAction("view", arg2)
                        task.defer(playerListUpdateViewButtons)
                    end)

                    fn57(TPButton.Activated, function()
                        playerListAction("tp", arg2)
                    end)

                    updateColors()
                    playerListUpdateViewButtons()
                    playerListUpdateFlingButtons()
                    return Frame10
                end

                tbl27.EnsureDetails = ensureDetails
                local flag14 = false

                fn57(TextButton.Activated, function()
                    if flag14 then
                        return
                    end
                    flag14 = true
                    local flag15 = playerListSelected ~= arg2
                    local v51 = udim2(1, -8, 0, 50)
                    local v52 = kxUseMobile()
                    local n6 = v52 and 152 or 145
                    local v53 = udim2(1, -8, 0, n6)
                    local details = tbl27.Details

                    if flag15 then
                        details = ensureDetails()
                        if not details then
                            flag14 = false
                            return
                        end
                    end

                    for k, v54 in pairs(playerListRows) do
                        if v54 and v54.Row and v54.Row.Parent then
                            if v54.Details then
                                v54.Details.Visible = false
                            end

                            make_tween(v54.Row, 0.12, {Size = v51})

                            if v54.Stroke and v54.Stroke.Parent and k ~= arg2 then
                                make_tween(v54.Stroke, 0.1, {Color = color(35, 43, 60), Transparency = 0.35})
                            end
                        end
                    end

                    if flag15 then
                        playerListSelected = arg2
                        details.Visible = true
                        make_tween(Frame8, 0.14, {Size = v53})
                        make_tween(UIStroke, 0.12, {Color = tc(arg2), Transparency = 0.12})
                    else
                        playerListSelected = nil

                        if details then
                            details.Visible = false
                        end

                        make_tween(Frame8, 0.12, {Size = v51})
                        make_tween(UIStroke, 0.12, {Color = color(35, 43, 60), Transparency = 0.35})
                    end

                    task.delay(0.16, function()
                        if Frame8 and Frame8.Parent then
                            local visible = flag15 and playerListSelected == arg2
                            local v54 = visible and v53 or v51
                            Frame8.Size = v54

                            if details and details.Parent then
                                details.Visible = visible
                            end
                        end

                        flag14 = false
                    end)
                end)

                fn57(Frame8.MouseEnter, function()
                    local v51 = kxThemeCurrent()
                    make_tween(Frame8, 0.06, {BackgroundColor3 = kxThemeLighten(v51.Panel, 0.1)})
                end)

                fn57(Frame8.MouseLeave, function()
                    local v51 = kxThemeCurrent()
                    make_tween(Frame8, 0.06, {BackgroundColor3 = v51.Panel})

                    if playerListSelected ~= arg2 and UIStroke then
                        make_tween(UIStroke, 0.06, {Color = color(35, 43, 60), Transparency = 0.35})
                    end
                end)

                local function fn58(arg3, arg4)
                    fn3(tbl27.ChildAddedConn)
                    fn3(tbl27.ChildRemovedConn)
                    tbl27.ChildAddedConn = nil
                    tbl27.ChildRemovedConn = nil

                    if arg3 then
                        local function fn59(arg5)
                            if arg5:IsA("ForceField") or arg5.Name == "ForceField" then
                                updateColors()
                            end
                        end

                        tbl27.ChildAddedConn = fn2(arg3.ChildAdded, fn59)
                        tbl27.ChildRemovedConn = fn2(arg3.ChildRemoved, fn59)
                    end

                    if arg4 then
                        updateColors()
                    end
                end

                fn57(arg2:GetPropertyChangedSignal("Team"), function()
                    updateColors(true)
                end)

                tbl27.CharConn = fn2(arg2:GetPropertyChangedSignal("Character"), function()
                    fn58(arg2.Character, true)
                end)

                fn58(arg2.Character)
                playerListLoadThumb(arg2.UserId, ImageLabel2)
                return Frame8
            end

            playerListRemoveRow(arg2, true)
        end

        playerListStartBuildQueue = function()
            if not flag or playerListBuildRunning or not playerListEnabled or not playerListScroll then
                return
            end
            playerListBuildRunning = true
            local v44 = playerListBuildToken

            task.defer(function()
                while flag and v44 == playerListBuildToken and playerListEnabled and playerListScroll do
                    local v45 = kxUseMobile()
                    local n6 = v45 and 1 or 2
                    local n7 = 0

                    while n7 < n6 and #playerListBuildQueue > 0 do
                        local v46 = table.remove(playerListBuildQueue, 1)
                        local flag14 = v46 and playerListBuildQueued[v46] == true

                        if v46 then
                            playerListBuildQueued[v46] = nil
                        end

                        if flag14 and v46 ~= LocalPlayer and v46.Parent == Players then
                            local v47 = playerListRows[v46]

                            if v47 and v47.Row and v47.Row.Parent then
                                if v47.UpdateColors then
                                    v47.UpdateColors()
                                end
                            else
                                playerListMakeRow(v46)
                            end
                        end

                        n7 = n7 + 1
                    end

                    if #playerListBuildQueue == 0 then
                        break
                    end
                    RunService.Heartbeat:Wait()
                end

                if not flag or v44 ~= playerListBuildToken then
                    return
                end
                playerListBuildRunning = false

                if #playerListBuildQueue > 0 and playerListEnabled and playerListScroll then
                    playerListStartBuildQueue()
                else
                    playerListUpdateViewButtons()
                    playerListUpdateFlingButtons()
                end
            end)
        end

        playerListQueueRow = function(arg2)
            if not playerListEnabled or not playerListScroll or not arg2 or arg2 == LocalPlayer or arg2.Parent ~= Players then
                return
            end
            local v44 = playerListRows[arg2]

            if v44 and v44.Row and v44.Row.Parent then
                if v44.UpdateColors then
                    v44.UpdateColors()
                end

                return v44.Row
            end

            if playerListBuildQueued[arg2] then
                return
            end
            playerListBuildQueued[arg2] = true
            playerListBuildQueue[#playerListBuildQueue + 1] = arg2
            playerListStartBuildQueue()
        end

        playerListRefresh = function()
            if not playerListEnabled or not playerListScroll then
                return
            end
            local tbl25 = {}

            for i, v44 in ipairs(tbl4) do
                if v44 ~= LocalPlayer and v44.Parent == Players then
                    tbl25[v44] = true
                    local v45 = playerListRows[v44]

                    if v45 and v45.Row and v45.Row.Parent then
                        if v45.UpdateColors then
                            v45.UpdateColors()
                        end
                    else
                        playerListQueueRow(v44)
                    end
                end
            end

            local v44 = pairs
            local v45 = playerListRows
            local tbl26 = v45 or {}

            for k in v44(tbl26) do
                if not tbl25[k] or not k.Parent or k.Parent ~= Players then
                    playerListRemoveRow(k, true)
                end
            end
        end

        playerListApplyResponsive = function()
            if not playerListFrame then
                return
            end
            kxApplyGuiSafeArea(playerListGui)

            if kxUseMobile() then
                local v44 = viewport()
                local v45 = kxUsePhoneGui()
                local n6 = v45 and math.clamp(math.floor(v44.X * 0.76), 238, 292) or math.clamp(math.floor(v44.X - 18), 300, 360)
                local n7 = v45 and math.clamp(math.floor(v44.Y * 0.58), 238, 330) or math.clamp(math.floor(v44.Y - 96), 320, 430)
                playerListFrame.Size = udim2(0, n6, 0, n7)

                if not playerListFrame:GetAttribute("KX_UserDragged") then
                    playerListFrame.Position = playerListClampPosition(udim2(0.5, -math.floor(n6 / 2), 0.5, -math.floor(n7 / 2)))
                end

                if playerListScroll then
                    local v46 = playerListScroll
                    local n8 = v45 and -16 or -22
                    local n9 = v45 and -58 or -72
                    v46.Size = udim2(1, n8, 1, n9)
                    local v47 = playerListScroll
                    local n10 = v45 and 8 or 12
                    local n11 = v45 and 54 or 66
                    v47.Position = udim2(0, n10, 0, n11)
                    local v48 = playerListScroll
                    local scrollBarThickness = v45 and 4 or 6
                    v48.ScrollBarThickness = scrollBarThickness
                end

                if kxApplyPhoneScales then
                    kxApplyPhoneScales()
                end
            else
                if not playerListFrame:GetAttribute("KX_UserDragged") then
                    playerListFrame.Size = udim2(0, 360, 0, 405)
                end

                if playerListScroll then
                    playerListScroll.Size = udim2(1, -24, 1, -72)
                    playerListScroll.Position = udim2(0, 14, 0, 66)
                    playerListScroll.ScrollBarThickness = 5
                end
            end
        end

        playerListCreate = function()
            if playerListGui then
                return
            end
            local keraPlayerlist = PlayerGui:FindFirstChild("kera_playerlist")

            if keraPlayerlist then
                keraPlayerlist:Destroy()
            end

            playerListBuildToken = playerListBuildToken + 1
            playerListBuildQueue = {}
            playerListBuildQueued = {}
            playerListBuildRunning = false

            for k in pairs(playerListJoinOrder) do
                if not k or k.Parent ~= Players then
                    playerListJoinOrder[k] = nil
                end
            end

            local ScreenGui2 = fn5("ScreenGui", PlayerGui, "Name", "kera_playerlist", "ResetOnSpawn", false, "IgnoreGuiInset", false, "ZIndexBehavior", Enum.ZIndexBehavior.Sibling, "Enabled", false)
            playerListGui = ScreenGui2
            kxApplyGuiSafeArea(playerListGui)
            local frame = Instance.new("Frame")
            playerListFrame = frame

            if kxUseMobile() then
                local v44 = viewport()
                local v45 = kxUsePhoneGui()
                local n6 = v45 and math.clamp(math.floor(v44.X * 0.76), 238, 292) or math.clamp(math.floor(v44.X - 18), 300, 360)
                local n7 = v45 and math.clamp(math.floor(v44.Y * 0.58), 238, 330) or math.clamp(math.floor(v44.Y - 108), 300, 405)
                playerListFrame.Size = udim2(0, n6, 0, n7)
                playerListFrame.Position = udim2(0.5, -math.floor(n6 / 2), 0.5, -math.floor(n7 / 2))
            else
                playerListFrame.Size = udim2(0, 360, 0, 405)
                playerListFrame.Position = udim2(1, -382, 0.5, -202)
            end

            playerListFrame.BackgroundColor3 = color(9, 11, 16)
            playerListFrame.BorderSizePixel = 0
            playerListFrame.ClipsDescendants = true
            playerListFrame.ZIndex = 25
            playerListFrame.Parent = playerListGui

            if kxApplyPhoneScales then
                kxApplyPhoneScales()
            end

            local uiSizeConstraint = Instance.new("UISizeConstraint")

            if kxUsePhoneGui() then
                uiSizeConstraint.MinSize = vector2(238, 238)
                uiSizeConstraint.MaxSize = vector2(300, 340)
            else
                uiSizeConstraint.MinSize = vector2(300, 300)
                uiSizeConstraint.MaxSize = vector2(380, 430)
            end

            uiSizeConstraint.Parent = playerListFrame
            fn5("UICorner", playerListFrame, "CornerRadius", udim(0, 17))
            fn5("UIStroke", playerListFrame, "Color", color(65, 78, 105), "Thickness", 1, "Transparency", 0.16)
            local uiGradient = Instance.new("UIGradient")
            uiGradient.Rotation = 90

            uiGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, color(17, 20, 29)),
                ColorSequenceKeypoint.new(1, color(7, 9, 14)),
            })

            uiGradient.Parent = playerListFrame
            fn5("TextLabel", playerListFrame, "Size", udim2(1, -50, 0, 42), "Position", udim2(0, 18, 0, 6), "BackgroundTransparency", 1, "Text", "playerlist", "TextColor3", color(236, 241, 255), "Font", Enum.Font.GothamBlack, "TextSize", 16, "TextXAlignment", Enum.TextXAlignment.Left, "ZIndex", 30)
            fn5("TextLabel", playerListFrame, "Size", udim2(1, -50, 0, 20), "Position", udim2(0, 18, 0, 34), "BackgroundTransparency", 1, "Text", "select a player", "TextColor3", color(135, 153, 185), "Font", Enum.Font.Code, "TextSize", 10, "TextXAlignment", Enum.TextXAlignment.Left, "ZIndex", 30)
            local TextButton = fn5("TextButton", playerListFrame, "Size", udim2(0, 32, 0, 32), "Position", udim2(1, -42, 0, 12), "BackgroundColor3", color(18, 20, 28), "BorderSizePixel", 0, "Text", "x", "TextColor3", color(255, 120, 130), "Font", Enum.Font.GothamBold, "TextSize", 14, "AutoButtonColor", false, "ZIndex", 31)
            fn5("UICorner", TextButton, "CornerRadius", udim(0, 8))

            fn2(TextButton.MouseButton1Click, function()
                playerListSet(false)
            end)

            local TextButton2 = fn5("TextButton", playerListFrame, "Name", "DragBar", "Size", udim2(1, -58, 0, 58), "Position", udim2(0, 0, 0, 0), "BackgroundTransparency", 1, "Text", "", "AutoButtonColor", false, "ZIndex", 29)
            local flag14 = false
            local position = nil
            local position2 = nil

            local function fn57(arg2)
                if not flag14 or not playerListFrame then
                    return
                end
                local n6 = arg2.Position - position
                local v44 = udim2(position2.X.Scale, position2.X.Offset + n6.X, position2.Y.Scale, position2.Y.Offset + n6.Y)
                playerListFrame.Position = playerListClampPosition(v44)
            end

            table.insert(playerListCons, fn2(TextButton2.InputBegan, function(arg2)
                if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch then
                    flag14 = true
                    position = arg2.Position
                    position2 = playerListFrame.Position
                    playerListFrame:SetAttribute("KX_UserDragged", true)
                end
            end))

            table.insert(playerListCons, fn2(UserInputService.InputChanged, function(arg2)
                if flag14 and (arg2.UserInputType == Enum.UserInputType.MouseMovement or arg2.UserInputType == Enum.UserInputType.Touch) then
                    fn57(arg2)
                end
            end))

            table.insert(playerListCons, fn2(UserInputService.InputEnded, function(arg2)
                if (arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch) and flag14 then
                    flag14 = false
                    playerListKeepInside()
                end
            end))

            fn5("Frame", playerListFrame, "Size", udim2(1, -36, 0, 1), "Position", udim2(0, 18, 0, 58), "BackgroundColor3", color(38, 48, 68), "BackgroundTransparency", 0.28, "BorderSizePixel", 0, "ZIndex", 30)
            local ScrollingFrame = fn5("ScrollingFrame", playerListFrame, "Size", udim2(1, -24, 1, -72), "Position", udim2(0, 14, 0, 66), "BackgroundTransparency", 1, "BorderSizePixel", 0, "ScrollBarThickness", 5, "ScrollBarImageColor3", color(92, 170, 255), "ScrollBarImageTransparency", 0.18, "CanvasSize", udim2(0, 0, 0, 0), "AutomaticCanvasSize", Enum.AutomaticSize.Y, "ScrollingDirection", Enum.ScrollingDirection.Y, "ZIndex", 29)
            playerListScroll = ScrollingFrame
            fn5("UIListLayout", playerListScroll, "Padding", udim(0, 7), "SortOrder", Enum.SortOrder.LayoutOrder)
            fn5("UIPadding", playerListScroll, "PaddingTop", udim(0, 2), "PaddingBottom", udim(0, 8), "PaddingLeft", udim(0, 2), "PaddingRight", udim(0, 7))

            table.insert(playerListCons, fn2(Players.PlayerAdded, function(arg2)
                playerListEnsureJoinOrder(arg2)

                task.delay(0.12, function()
                    if playerListEnabled and playerListScroll and arg2 ~= LocalPlayer and arg2.Parent == Players then
                        playerListQueueRow(arg2)
                    end
                end)
            end))

            table.insert(playerListCons, fn2(Players.PlayerRemoving, function(arg2)
                playerListRemoveRow(arg2, true)
            end))

            playerListApplyResponsive()

            if kxThemeForceImportant and kxThemeCurrent then
                kxThemeForceImportant(kxThemeCurrent())
            end

            playerListGui.Enabled = true
            playerListFrame.BackgroundTransparency = 1

            if kxUseMobile() then
                local v44 = playerListClampPosition(playerListFrame.Position)
                playerListFrame.Position = udim2(v44.X.Scale, v44.X.Offset, 1, 20)
                make_tween(playerListFrame, 0.25, {Position = v44, BackgroundTransparency = 0})
            else
                playerListFrame.Position = udim2(1, -360, 0.5, -202)

                make_tween(playerListFrame, 0.25, {
                    Position = playerListClampPosition(udim2(1, -382, 0.5, -202)),
                    BackgroundTransparency = 0,
                })
            end

            task.delay(0.28, playerListKeepInside)
            playerListRefresh()
        end

        playerListDestroy = function()
            playerListBuildToken = playerListBuildToken + 1
            playerListBuildQueue = {}
            playerListBuildQueued = {}
            playerListBuildRunning = false
            playerListDisconnect()
            local v44 = pairs
            local v45 = playerListRows
            local tbl25 = v45 or {}

            for k, v46 in v44(tbl25) do
                playerListDisconnectRowData(v46)
            end

            playerListRows = {}
            playerListSelected = nil

            if playerListGui then
                local v46 = playerListGui
                local v47 = playerListFrame
                playerListGui = nil
                playerListFrame = nil
                playerListScroll = nil

                if v47 and v47.Parent then
                    local v48 = udim2(1, 20, v47.Position.Y.Scale, v47.Position.Y.Offset)
                    make_tween(v47, 0.22, {Position = v48, BackgroundTransparency = 1})

                    task.delay(0.24, function()
                        pcall(function()
                            v46:Destroy()
                        end)
                    end)
                else
                    pcall(function()
                        v46:Destroy()
                    end)
                end
            end
        end

        playerListSet = function(arg2)
            local flag14 = arg2 == true
            playerListEnabled = flag14
            featureSet("player_list", playerListEnabled)
            cfg.player_list = playerListEnabled
            save_cfg()
            refresh_saved_commands()

            if playerListEnabled then
                playerListCreate()
                add_line(".playerlist on", "playerlist on", false)
            else
                playerListDestroy()
                add_line(".playerlist off", "playerlist off", false)
            end

            return true
        end

        if featureGet("player_list", playerListEnabled) then
            task.defer(function()
                playerListCreate()
            end)
        end

        real_kill_silent_fix_marker = function() end

        smart_target_arg = function(arg2)
            local v44 = tostring
            local str2 = arg2 or ""
            local str3 = v44(str2):gsub("^%s+", ""):gsub("%s+$", "")
            if str3 ~= "" then
                return str3
            end

            if viewer and spectating_player and spectating_player.Parent == Players then
                return spectating_player.Name
            end
            return nil
        end

        smart_target_error = function(arg2)
            add_line(arg2, "no target: use " .. arg2 .. " player or use .view player first", true)
            red_anim()
        end

        local v44 = Random.new()
        local obj2 = setmetatable({}, {__mode = "k"})
        local raycastParams2 = RaycastParams.new()
        local v45 = nil
        local v46 = nil
        local v47 = nil
        local v48 = nil
        local str2 = kxUseMobile() and "Position" or "Mouse"
        local n6 = 0

        local tbl25 = {
            target = nil,
            original = nil,
            replacement = nil,
            installed = false,
            unsupported = false,
            retryToken = 0,
        }

        raycastParams2.FilterType = Enum.RaycastFilterType.Exclude
        raycastParams2.IgnoreWater = true

        local function fn57(arg2)
            if arg2 then
                pcall(function()
                    arg2:Remove()
                end)
            end
        end;

        (function()
            if _G.AimRenderLoop then
                pcall(function()
                    _G.AimRenderLoop:Disconnect()
                end)
            end

            fn57(_G.AimCircleFOV)
            fn57(_G.AimFill)
            fn57(_G.AimBorder)
            fn57(_G.AimText)
            _G.AimRenderLoop = nil
            _G.AimCircleFOV = nil
            _G.AimFill = nil
            _G.AimBorder = nil
            _G.AimText = nil
        end)()

        local function fn58(arg2)
            local now = os.clock()

            if arg2 or now - n6 >= 0.5 then
                local v49 = kxUseMobile()
                local str3 = v49 and "Position" or "Mouse"
                str2 = str3
                n6 = now
            end

            return str2
        end

        local function fn59(arg2)
            local character_ = arg2 and arg2.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
            local flag14 = humanoid_ and humanoid_.Health > 0
            return character_, flag14
        end

        local function fn60(arg2)
            local now = os.clock()
            local v49 = obj2[arg2]
            local v50 = v49

            if not v49 or now - v49.checkedAt >= 2 then
                local tbl26 = {}

                for i, child in ipairs(arg2:GetChildren()) do
                    if child:IsA("BasePart") then
                        tbl26[#tbl26 + 1] = child
                    end
                end

                local tbl27 = {parts = tbl26, checkedAt = now}
                v50 = tbl27
                obj2[arg2] = tbl27
            end

            return v50.parts
        end

        local function fn61(arg2)
            local v49 = fn60(arg2)
            local n7 = #v49
            if n7 == 0 then
                return nil
            end
            local v50 = v44:NextInteger(1, n7)

            for i = 0, n7 - 1 do
                local v51 = v49[(v50 + i - 1) % n7 + 1]
                if v51 and v51.Parent == arg2 and v51.Transparency < 1 then
                    return v51
                end
            end

            return nil
        end

        local function fn62(arg2)
            local silentHitPart = cfg.silent_hit_part
            if silentHitPart == "all" or silentHitPart == "proximity" then
                return fn61(arg2)
            end
            local humanoidRootPart = nil

            if silentHitPart == "hrp" then
                humanoidRootPart = arg2:FindFirstChild("HumanoidRootPart")
            elseif silentHitPart == "head" then
                humanoidRootPart = arg2:FindFirstChild("Head")
            elseif silentHitPart == "torso" then
                local torso = arg2:FindFirstChild("Torso")
                local upperTorso = torso or arg2:FindFirstChild("UpperTorso") or arg2:FindFirstChild("LowerTorso")
                humanoidRootPart = upperTorso
            end

            local isBasePart = humanoidRootPart and humanoidRootPart:IsA("BasePart") and humanoidRootPart or nil
            return isBasePart
        end

        local function fn63(arg2)
            local character_ = LocalPlayer.Character
            if v45 == character_ and v46 == arg2 then
                return
            end
            v45 = character_
            v46 = arg2
            local filterDescendantsInstances = {}

            if character_ then
                filterDescendantsInstances[#filterDescendantsInstances + 1] = character_
            end

            if arg2 then
                filterDescendantsInstances[#filterDescendantsInstances + 1] = arg2
            end

            raycastParams2.FilterDescendantsInstances = filterDescendantsInstances
        end

        local function fn64(arg2, arg3)
            if not arg2 or not arg2.Parent or not arg3 or not LocalPlayer.Character then
                return false
            end
            fn63(arg3)
            local position = arg3.CFrame.Position
            local hit = Workspace:Raycast(position, arg2.Position - position, raycastParams2)
            local flag14 = hit == nil

            if not flag14 then
                local instance = hit.Instance
                flag14 = instance and hit.Instance:IsDescendantOf(arg2.Parent)
            end

            return flag14
        end

        local function fn65(arg2, arg3, arg4, arg5)
            local v49 = nil
            local v50 = arg5

            for i, v51 in ipairs(fn60(arg2)) do
                if v51 and v51.Parent == arg2 and v51.Transparency < 1 then
                    local v52, v53 = arg3:WorldToScreenPoint(v51.Position)

                    if v53 then
                        local magnitude = (vector2(v52.X, v52.Y) - arg4).Magnitude

                        if magnitude < v50 and (not cfg.silent_visibility or fn64(v51, arg3)) then
                            v49 = v51
                            v50 = magnitude
                        end
                    end
                end
            end

            return v49, v50
        end

        local function fn66(arg2)
            local n7 = v44:NextNumber() * 100
            if cfg.silent_hit_chance < n7 then
                return nil
            end
            local currentCamera = Workspace.CurrentCamera
            if not currentCamera then
                return nil
            end
            local v49 = fn58()
            local mouseLocation = v49 == "Mouse" and UserInputService:GetMouseLocation() or nil
            local flag14 = v49 == "Mouse" and cfg.silent_hit_part == "proximity"
            local v50 = nil
            local huge = math.huge
            local silentFovSize = cfg.silent_fov_size

            for i, v51 in ipairs(tbl4) do
                if v51 ~= LocalPlayer and (not cfg.silent_team_check or v51.Team ~= LocalPlayer.Team) then
                    local v52, v53 = fn59(v51)

                    if v53 and (not cfg.silent_forcefield_check or not charHasForceField(v52)) then
                        local v54, huge2

                        if flag14 then
                            local v55, v56 = fn65(v52, currentCamera, mouseLocation, math.min(silentFovSize, huge))
                            v54 = v55
                            huge2 = v56
                        else
                            v54 = fn62(v52)
                            huge2 = math.huge
                        end

                        if v54 then
                            if not flag14 and v49 == "Mouse" then
                                local v55, v56 = currentCamera:WorldToScreenPoint(v54.Position)

                                if v56 then
                                    huge2 = (vector2(v55.X, v55.Y) - mouseLocation).Magnitude
                                end
                            elseif not flag14 then
                                huge2 = (v54.Position - arg2).Magnitude
                            end

                            if huge2 < huge and huge2 <= silentFovSize and (not cfg.silent_wall_check or flag14 and cfg.silent_visibility or fn64(v54, currentCamera)) then
                                huge = huge2
                                v50 = v54
                            end
                        end
                    end
                end
            end

            return v50
        end

        local function fn67()
            if v48 then
                pcall(function()
                    v48:Disconnect()
                end)

                v48 = nil
            end

            fn57(v47)

            if _G.AimCircleFOV == v47 then
                _G.AimCircleFOV = nil
            end

            v47 = nil
            _G.AimRenderLoop = nil
        end

        local function fn68()
            if v48 and v48.Connected then
                return
            end

            if not cfg.silent_fov_visible then
                return
            end

            if not Drawing or typeof(Drawing.new) ~= "function" then
                return
            end
            local ok, aimCircleFOV = pcall(Drawing.new, "Circle")
            if not ok or not aimCircleFOV then
                return
            end
            v47 = aimCircleFOV
            aimCircleFOV.NumSides = 100
            aimCircleFOV.Thickness = 1
            aimCircleFOV.Color = color(74, 155, 255)
            aimCircleFOV.Transparency = 0.5
            aimCircleFOV.Filled = false
            aimCircleFOV.Visible = false
            _G.AimCircleFOV = aimCircleFOV

            v48 = fn2(RunService.RenderStepped, function()
                if not cfg.silent_aim or not cfg.silent_fov_visible or not v47 then
                    return
                end
                local currentCamera = Workspace.CurrentCamera
                if not currentCamera then
                    v47.Visible = false
                    return
                end

                if fn58() == "Mouse" then
                    local mouseLocation = UserInputService:GetMouseLocation()
                    v47.Position = mouseLocation
                else
                    local viewportSize = currentCamera.ViewportSize
                    local v49 = vector2(viewportSize.X * 0.5, viewportSize.Y * 0.5)
                    v47.Position = v49
                end

                v47.Radius = cfg.silent_fov_size
                v47.Visible = true
            end)

            _G.AimRenderLoop = v48
        end

        local function fn69()
            if typeof(getgc) == "function" then
                local v49 = debug
                local getinfo_ = v49 and debug.getinfo or getinfo

                if typeof(getinfo_) == "function" then
                    local ok, result = pcall(getgc, true)
                    if not ok or typeof(result) ~= "table" then
                        return nil
                    end

                    for i, v50 in ipairs(result) do
                        if typeof(v50) == "function" then
                            local ok2, result2 = pcall(getinfo_, v50)
                            if ok2 and result2 and result2.name == "castRay" then
                                return v50
                            end
                        end
                    end

                    return nil
                end

                tbl25.unsupported = true
                return nil
            end

            tbl25.unsupported = true
            return nil
        end

        local function fn70()
            if tbl25.installed and tbl25.original then
                return true
            end

            if typeof(hookfunction) == "function" then
                local v49 = fn69()
                if not v49 then
                    return false
                end

                local function fn71(...)
                    local v50 = table.pack(...)
                    local original = tbl25.original
                    if not original then
                        return
                    end

                    if flag and cfg.silent_aim and typeof(v50[1]) == "Vector3" and typeof(v50[2]) == "Vector3" then
                        local v51 = fn66(v50[1])

                        if v51 and v51.Parent then
                            v50[2] = v51.Position
                        end
                    end

                    return original(table.unpack(v50, 1, v50.n))
                end

                local v50 = fn71

                if typeof(newcclosure) == "function" then
                    local ok, result = pcall(newcclosure, fn71)

                    if ok and typeof(result) == "function" then
                        v50 = result
                    end
                end

                local ok, original = pcall(hookfunction, v49, v50)
                if not ok or typeof(original) ~= "function" then
                    return false
                end
                tbl25.target = v49
                tbl25.original = original
                tbl25.replacement = v50
                tbl25.installed = true
                tbl25.unsupported = false
                return true
            end

            tbl25.unsupported = true
            return false
        end

        local function fn71()
            tbl25.retryToken = tbl25.retryToken + 1
            local retryToken = tbl25.retryToken
            if tbl25.unsupported then
                return
            end

            task.spawn(function()
                local n7 = 0.5

                while flag and cfg.silent_aim and not tbl25.installed and retryToken == tbl25.retryToken do
                    task.wait(n7)
                    if not flag or not cfg.silent_aim or retryToken ~= tbl25.retryToken then
                        return
                    end

                    if fn70() or tbl25.unsupported then
                        return
                    end
                    n7 = math.min(n7 * 1.75, 5)
                end
            end)
        end

        silentAimSet = function(arg2, arg3)
            local silentAim = arg2 == true
            cfg.silent_aim = silentAim
            featureSet("silent_aim", silentAim)
            save_cfg()

            if silentAim then
                if cfg.silent_fov_visible then
                    fn68()
                end

                if not fn70() then
                    fn71()
                end
            else
                tbl25.retryToken = tbl25.retryToken + 1
                fn67()
            end

            refresh_saved_commands()

            if not arg3 then
                local v49 = add_line
                local str3 = silentAim and "on" or "off"
                v49(".silentaim " .. str3, nil, false)
            end

            return true
        end

        silentAimSetHitChance = function(arg2)
            if not cfg.silent_aim then
                add_line(".hitchance", "first use .silentaim on", true)
                red_anim()
                return false
            end

            local v49 = tonumber
            local v50 = tostring
            local str3 = arg2 or ""
            local v51 = v49(v50(str3):match("^%s*(.-)%s*$"))

            if v51 and v51 >= 0 and v51 <= 100 then
                cfg.silent_hit_chance = math.floor(v51 + 0.5)
                save_cfg()
                refresh_saved_commands()
                add_line(".hitchance " .. tostring(cfg.silent_hit_chance) .. " saved", nil, false)
                return true
            end

            add_line(".hitchance", "use .hitchance 0-100", true)
            red_anim()
            return false
        end

        silentAimSetFovSize = function(arg2)
            if not cfg.silent_aim then
                add_line(".fovsize", "first use .silentaim on", true)
                red_anim()
                return false
            end

            local v49 = tonumber
            local v50 = tostring
            local str3 = arg2 or ""
            local v51 = v49(v50(str3):match("^%s*(.-)%s*$"))

            if v51 and v51 >= 10 and v51 <= 500 then
                cfg.silent_fov_size = math.floor(v51 + 0.5)
                save_cfg()
                refresh_saved_commands()
                add_line(".fovsize " .. tostring(cfg.silent_fov_size) .. " saved", nil, false)
                return true
            end

            add_line(".fovsize", "use .fovsize 10-500", true)
            red_anim()
            return false
        end

        local tbl26 = {
            hrp = true,
            torso = true,
            head = true,
            all = true,
            proximity = true,
        }

        silentAimSetHitPart = function(arg2)
            if not cfg.silent_aim then
                add_line(".hitpart", "first use .silentaim on", true)
                red_anim()
                return false
            end

            local v49 = tostring
            local str3 = arg2 or ""
            local match = v49(str3):lower():match("^%s*(.-)%s*$")

            if not tbl26[match] then
                add_line(".hitpart", "use .hitpart (hrp, torso, head, all, proximity)", true)
                red_anim()
                return false
            end

            if match == "proximity" and kxUseMobile() then
                add_line(".hitpart proximity", "PC only", true)
                red_anim()
                return false
            end

            cfg.silent_hit_part = match
            save_cfg()
            refresh_saved_commands()
            add_line(".hitpart " .. match, nil, false)
            return true
        end

        silentAimSetFovVisible = function(arg2)
            if not cfg.silent_aim then
                add_line(".fov", "first use .silentaim on", true)
                red_anim()
                return false
            end

            local v49 = cfg
            local silentFovVisible = arg2 == true
            v49.silent_fov_visible = silentFovVisible
            save_cfg()

            if cfg.silent_fov_visible then
                fn68()
            else
                fn67()
            end

            refresh_saved_commands()
            local v50 = add_line
            local silentFovVisible2 = cfg.silent_fov_visible
            local str3 = silentFovVisible2 and "on" or "off"
            v50(".fov " .. str3, nil, false)
            return true
        end

        silentAimSetCheck = function(arg2, arg3, arg4)
            if not cfg.silent_aim then
                add_line(arg3, "first use .silentaim on", true)
                red_anim()
                return false
            end

            local v49 = cfg
            local flag14 = arg4 == true
            v49[arg2] = flag14
            save_cfg()
            refresh_saved_commands()
            local v50 = add_line
            local v51 = cfg[arg2]
            local str3 = v51 and "on" or "off"
            v50(arg3 .. " " .. str3, nil, false)
            return true
        end

        silentAimSetVB = function(arg2)
            if not kxUseMobile() then
                return silentAimSetCheck("silent_visibility", ".vb", arg2)
            end
            add_line(".vb", "PC only", true)
            red_anim()
            return false
        end

        silentAimVBCommandText = function(arg2, arg3)
            local match = arg2:match("^%.vb%s+(.+)$")
            if not match and arg2 ~= ".vb" then
                return false
            end
            local v49 = parse_on_off(match)

            if v49 == nil then
                add_line(".vb", "use .vb on/off", true)

                if arg3 ~= "chat" then
                    red_anim()
                end

                return true
            end

            if silentAimSetVB(v49) and arg3 ~= "chat" then
                collapse()
            end

            return true
        end

        fn4(function()
            fn67()

            if tbl25.installed and tbl25.target and tbl25.original and typeof(hookfunction) == "function" then
                pcall(hookfunction, tbl25.target, tbl25.original)
            end

            table.clear(obj2)
            table.clear(tbl25)
        end)

        if cfg.silent_aim then
            task.defer(function()
                if flag and cfg.silent_aim then
                    silentAimSet(true, true)
                end
            end)
        end

        local Players2 = game:GetService("Players")
        local ReplicatedStorage_ = game:GetService("ReplicatedStorage")
        local localPlayer2 = Players2.LocalPlayer
        local gunRemotes = ReplicatedStorage_:WaitForChild("GunRemotes")
        local flag14 = false
        local v49 = nil
        local function_ = nil
        local v50 = nil
        local n7 = 0

        antitaze_log = function(arg2, arg3, arg4)
            if add_line then
                local v51 = add_line
                local flag15 = arg4 == true
                v51(arg2, arg3, flag15)
            end
        end

        antiTazeFindConnection = function(arg2)
            if typeof(getconnections) ~= "function" then
                return nil
            end
            local ok, result = pcall(getconnections, arg2)
            if not ok or typeof(result) ~= "table" then
                return nil
            end

            for i, v51 in ipairs(result) do
                if v51 and typeof(v51.Function) == "function" then
                    return v51
                end
            end

            return nil
        end

        antitazedesactivado = function()
            flag14 = false
            n7 = n7 + 1

            if function_ and v50 and typeof(hookfunction) == "function" then
                pcall(function()
                    hookfunction(function_, v50)
                end)
            end

            v49 = nil
            function_ = nil
            v50 = nil

            if localPlayer2.Character then
                localPlayer2:SetAttribute("BackpackEnabled", true)
            end

            return true
        end

        antitaze = function()
            if flag14 and v49 and function_ and v50 then
                return true
            end

            if typeof(getconnections) ~= "function" or typeof(hookfunction) ~= "function" then
                return false
            end
            local playerTased = gunRemotes:WaitForChild("PlayerTased", 5)
            if not playerTased then
                return false
            end
            local now = os.clock()
            local v51

            repeat
                v51 = antiTazeFindConnection(playerTased.OnClientEvent)
                if v51 then
                    break
                end
                task.wait(0.05)
            until os.clock() - now >= 2

            if not v51 or typeof(v51.Function) ~= "function" then
                return false
            end
            v49 = v51
            function_ = v51.Function
            flag14 = true
            n7 = n7 + 1
            local v52 = n7
            local v53 = nil

            if pcall(function()
                v53 = hookfunction(function_, function(...)
                    if flag14 and v52 == n7 then
                        local character_ = localPlayer2.Character
                        if not character_ then
                            return
                        end
                        localPlayer2:SetAttribute("BackpackEnabled", false)
                        local humanoid_ = character_:FindFirstChildOfClass("Humanoid")

                        if humanoid_ then
                            humanoid_:UnequipTools()
                        end

                        task.delay(3.5, function()
                            if flag14 and v52 == n7 and localPlayer2.Character == character_ then
                                localPlayer2:SetAttribute("BackpackEnabled", true)
                            end
                        end)

                        return
                    end

                    if not v53 then
                        return
                    end
                    return v53(...)
                end)
            end) and typeof(v53) == "function" then
                v50 = v53
                return true
            end

            flag14 = false
            v49 = nil
            function_ = nil
            v50 = nil
            return false
        end

        antitazeactivado = function()
            return antitaze()
        end

        antiTazeCommand = function(arg2)
            local v51 = tostring
            local str3 = arg2 or ""
            local str4 = v51(str3):lower():gsub("^%s+", ""):gsub("%s+$", "")

            if str4 ~= "on" and str4 ~= "true" and str4 ~= "1" then
                if str4 ~= "off" and str4 ~= "false" and str4 ~= "0" then
                    antitaze_log(".antitaze", "use .antitaze on/off | .ataze on/off | .at on/off", true)

                    if red_anim then
                        red_anim()
                    end

                    return false
                end

                antitazedesactivado()
                cfg.anti_taze = false
                featureSet("anti_taze", false)
                save_cfg()

                if refresh_saved_commands then
                    refresh_saved_commands()
                end

                antitaze_log(".antitaze off", "anti taze off", false)
                return true
            end

            if not antitaze() then
                cfg.anti_taze = false
                featureSet("anti_taze", false)
                save_cfg()

                if refresh_saved_commands then
                    refresh_saved_commands()
                end

                antitaze_log(".antitaze on", "PlayerTased hook failed", true)

                if red_anim then
                    red_anim()
                end

                return false
            end

            cfg.anti_taze = true
            featureSet("anti_taze", true)
            save_cfg()

            if refresh_saved_commands then
                refresh_saved_commands()
            end

            antitaze_log(".antitaze on", "anti taze on", false)
            return true
        end

        task.defer(function()
            task.wait(0.25)
            local v51 = featureGet
            local flag15 = cfg.anti_taze == true

            if v51("anti_taze", flag15) and not antitaze() then
                featureSet("anti_taze", false)
                cfg.anti_taze = false
                save_cfg()

                if refresh_saved_commands then
                    task.defer(refresh_saved_commands)
                end
            end
        end)

        local v51 = featureGet
        local flag15 = cfg.laser_state == true
        local laserState = v51("laser_state", flag15)
        laserEnabled = laserState
        local obj3 = typeof(laserOriginals) == "table" and laserOriginals or setmetatable({}, {__mode = "k"})
        laserOriginals = obj3
        laserValues = {AutoFire = true, FireRate = 0.035, SpreadRadius = 0}
        local v52 = antiRiotState

        if v52 and v52.originals then
            for k, original in pairs(v52.originals) do
                local canQuery = type(original) == "table" and original.CanQuery or original

                if k and k.Parent and type(canQuery) == "boolean" then
                    pcall(function()
                        k.CanQuery = canQuery
                    end)
                end
            end
        end

        local tbl27 = {
            enabled = false,
            originals = setmetatable({}, {__mode = "k"}),
        }

        antiRiotState = tbl27

        antiRiotApplyShield = function(arg2)
            if not antiRiotState.enabled or not arg2 or arg2.Name ~= "RiotShieldPart" or not arg2:IsA("BasePart") then
                return
            end
            local parent = arg2.Parent
            local playerFromCharacter = parent and Players:GetPlayerFromCharacter(arg2.Parent)
            if not playerFromCharacter or playerFromCharacter == LocalPlayer then
                return
            end

            if antiRiotState.originals[arg2] == nil then
                local tbl28 = {
                    CanQuery = arg2.CanQuery,
                    Conn = fn2(arg2:GetPropertyChangedSignal("CanQuery"), function()
                        if antiRiotState.enabled and arg2.Parent and arg2.CanQuery then
                            arg2.CanQuery = false
                        end
                    end),
                }

                antiRiotState.originals[arg2] = tbl28
            end

            arg2.CanQuery = false
        end

        antiRiotRestoreAll = function()
            for k, original in pairs(antiRiotState.originals) do
                local conn = original and original.Conn
                fn3(conn)

                if k and k.Parent and original then
                    pcall(function()
                        k.CanQuery = original.CanQuery
                    end)
                end

                antiRiotState.originals[k] = nil
            end
        end

        antiRiotStep = function()
            if not antiRiotState.enabled then
                return
            end

            for i, v53 in ipairs(tbl4) do
                if v53 ~= LocalPlayer then
                    local character_ = v53.Character
                    local riotShieldPart = character_ and character_:FindFirstChild("RiotShieldPart")

                    if riotShieldPart then
                        antiRiotApplyShield(riotShieldPart)
                    end
                end
            end
        end

        antiRiotStart = function(arg2)
            if antiRiotState.enabled then
                return true
            end
            antiRiotState.enabled = true
            antiRiotStep()
            fn3(antiRiotState.conn)

            antiRiotState.conn = fn2(Workspace.DescendantAdded, function(arg3)
                if antiRiotState.enabled then
                    antiRiotApplyShield(arg3)
                end
            end)

            save_feature_cfg("anti_riot", "anti_riot", true)

            if not arg2 and add_line then
                add_line(".antiriot on", "antiriot on, prevents lag riot", false)
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            return true
        end

        antiRiotStop = function(arg2)
            antiRiotState.enabled = false
            fn3(antiRiotState.conn)
            antiRiotState.conn = nil
            antiRiotRestoreAll()
            save_feature_cfg("anti_riot", "anti_riot", false)

            if not arg2 and add_line then
                add_line(".antiriot off", "antiriot off", false)
            end

            if refresh_saved_commands then
                task.defer(refresh_saved_commands)
            end

            return true
        end

        antiRiotSet = function(arg2, arg3)
            if arg2 == true then
                return antiRiotStart(arg3)
            end
            return antiRiotStop(arg3)
        end

        antiRiotCommand = function(arg2)
            local v53 = parse_on_off(arg2)
            if v53 ~= nil then
                return antiRiotSet(v53, false)
            end
            add_line(".antiriot", "use .antiriot on/off", true)
            red_anim()
            return false
        end

        fn4(function()
            antiRiotState.enabled = false
            fn3(antiRiotState.conn)
            antiRiotState.conn = nil
            antiRiotRestoreAll()
        end)

        task.defer(function()
            task.wait(0.45)
            local v53 = featureGet
            local flag16 = cfg.anti_riot == true

            if v53("anti_riot", flag16) then
                antiRiotStart(true)
            end
        end)

        laserRestoreAll = function()
            for k, v53 in pairs(laserOriginals) do
                if typeof(k) == "Instance" then
                    pcall(function()
                        for k2 in pairs(laserValues) do
                            k:SetAttribute(k2, v53[k2])
                        end
                    end)
                end
            end

            table.clear(laserOriginals)
        end

        applyToTool = function(arg2)
            if not laserEnabled or not arg2 or not arg2:IsA("Tool") or arg2:GetAttribute("ToolType") ~= "Gun" then
                return
            end

            if not laserOriginals[arg2] then
                local tbl28 = {}

                for k in pairs(laserValues) do
                    tbl28[k] = arg2:GetAttribute(k)
                end

                laserOriginals[arg2] = tbl28
            end

            for k, v53 in pairs(laserValues) do
                if arg2:GetAttribute(k) ~= v53 then
                    arg2:SetAttribute(k, v53)
                end
            end
        end

        applyLaserToAll = function()
            if not laserEnabled then
                return
            end

            local v53, v54, v55 = ipairs({
                LocalPlayer:FindFirstChildOfClass("Backpack"),
                LocalPlayer.Character,
            })

            local v56 = v55
            local v57 = v53
            local v58 = v54

            while true do
                local v59, v60 = v57(v58, v56)
                if v59 == nil then
                    break
                end
                v56 = v59

                if v60 then
                    for i, child in ipairs(v60:GetChildren()) do
                        applyToTool(child)
                    end

                    v56 = v59
                end
            end
        end

        laserCommand = function(arg2)
            local laserState2 = arg2 == "on"

            if not laserState2 and arg2 ~= "off" then
                add_line(".laser", "use .laser on/off", true)
                red_anim()
                return
            end

            local v53 = cfg
            laserEnabled = laserState2
            v53.laser_state = laserState2
            featureSet("laser_state", laserState2)
            save_cfg()

            if laserState2 then
                applyLaserToAll()
            else
                laserRestoreAll()
            end

            add_line(".laser " .. arg2, "laser " .. arg2, false)
        end

        local v53 = laserBackpackConn
        local v54 = v53 or nil
        laserBackpackConn = v54
        local v55 = laserCharConn
        local v56 = v55 or nil
        laserCharConn = v56

        bindLaserHooks = function()
            fn3(laserBackpackConn)
            fn3(laserCharConn)
            laserBackpackConn = nil
            laserCharConn = nil
            local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")

            if backpack then
                local v57 = fn2(backpack.ChildAdded, applyToTool)
                laserBackpackConn = v57
            end

            local character_ = LocalPlayer.Character

            if character_ then
                local v57 = fn2(character_.ChildAdded, applyToTool)
                laserCharConn = v57
            end
        end

        bindLaserHooks()

        fn2(LocalPlayer.CharacterAdded, function()
            task.wait(0.35)
            bindLaserHooks()
            applyLaserToAll()
        end)

        task.defer(function()
            task.wait(0.5)
            bindLaserHooks()
            applyLaserToAll()
        end)

        normalizeKillTeamArg = function(arg2)
            local str3 = fn22(arg2):lower()
            if str3 == "guards" or str3 == "guard" or str3 == "police" or str3 == "polices" then
                return "Guards"
            end

            if str3 == "criminals" or str3 == "criminal" or str3 == "crims" or str3 == "crim" then
                return "Criminals"
            end

            if str3 ~= "inmates" and str3 ~= "inmate" and str3 ~= "pris" and str3 ~= "prisoners" then
                return nil
            end
            return "Inmates"
        end

        killTeam = function(arg2)
            local v57 = normalizeKillTeamArg(arg2)
            local v58 = v57

            if not v57 then
                local v59 = tostring
                local str3 = arg2 or ""
                v58 = v59(str3)
            end

            local team = v58
            if team == "" then
                return fn24(".kill", "use .kill guards / .kill criminals / .kill inmates")
            end
            local str3 = ".kill " .. team
            if not hasKillTool() then
                return fn24(str3, "no tools")
            end

            if LocalPlayer.Team and LocalPlayer.Team.Name == team then
                return fn24(str3, "cant kill same team")
            end
            local tbl28 = {}

            for i, v59 in ipairs(tbl4) do
                local v60, v61, v62 = killAliveCharacter(v59)

                if v59 ~= LocalPlayer and v59.Team and v59.Team.Name == team and v60 and v61 and v62 and localDistanceToPlayer(v59) <= tbl9.Range then
                    table.insert(tbl28, v59)
                end
            end

            if #tbl28 == 0 then
                return fn24(str3, "no targets in range (950 studs max)")
            end
            add_line(str3, "kill team: " .. tostring(#tbl28) .. " target(s)", false)

            task.spawn(function()
                local tbl29 = {}
                local n8 = 0
                local n9 = 0

                for i, v59 in ipairs(tbl28) do
                    tbl29[v59.UserId] = v59
                end

                while flag and next(tbl29) do
                    if not hasKillTool() then
                        add_line(str3, "stopped: no tools", true)
                        break
                    end

                    if LocalPlayer.Team and LocalPlayer.Team.Name == team then
                        add_line(str3, "stopped: same team", true)
                        break
                    end
                    local flag16 = false

                    for k, v59 in pairs(tbl29) do
                        if v59 and v59.Parent == Players and v59.Team and v59.Team.Name == team then
                            local v60, v61 = killAliveCharacter(v59)

                            if v60 and v61 then
                                local v62 = localDistanceToPlayer(v59)

                                if tbl9.Range < v62 then
                                    tbl29[k] = nil
                                    n9 = n9 + 1
                                elseif not playerHasForceField(v59) then
                                    local v63, v64, v65 = killMethodUntilConfirmed(v59, tbl10.Team)

                                    if v63 then
                                        tbl29[k] = nil
                                        n8 = n8 + 1
                                        flag16 = true
                                        db_track_kill(v59, "team:" .. team)
                                    elseif v65 == "dead" then
                                        tbl29[k] = nil
                                    elseif v65 == "range" then
                                        tbl29[k] = nil
                                        n9 = n9 + 1
                                    end
                                end
                            end
                        else
                            tbl29[k] = nil
                        end
                    end

                    local wait = task.wait
                    local retry = flag16 and tbl10.Team.Retry or tbl9.TeamIdlePoll
                    wait(retry)
                end

                if flag and not next(tbl29) then
                    local str4 = n9 > 0 and " | out of range: " .. tostring(n9) or ""
                    add_line(str3, "completed: " .. tostring(n8) .. str4, false)
                end
            end)

            return true
        end

        local v57 = bringCommandBusy
        local flag16 = v57 or false
        bringCommandBusy = flag16

        bringCleanToken = function(arg2)
            local v58 = tostring
            local str3 = arg2 or ""
            return v58(str3):gsub("^%s+", ""):gsub("%s+$", "")
        end

        bringGetCarFromSeat = function(arg2)
            if not arg2 or not arg2:IsA("VehicleSeat") then
                return nil
            end
            local carContainer = Workspace:FindFirstChild("CarContainer")
            local parent = arg2

            while flag and parent and parent ~= Workspace do
                if carContainer and parent.Parent == carContainer then
                    return parent
                end

                if parent:IsA("Model") and parent:FindFirstChild("Wheels") then
                    return parent
                end
                parent = parent.Parent
            end

            return nil
        end

        bringPivotCar = function(arg2, arg3)
            if not arg2 or not arg2.Parent or typeof(arg3) ~= "CFrame" then
                return false
            end

            if pcall(function()
                arg2:PivotTo(arg3)
            end) then
                return true
            end
            local body_ = arg2:FindFirstChild("Body")
            local vehicleSeat = body_ and body_:FindFirstChild("VehicleSeat") or arg2:FindFirstChild("VehicleSeat", true)
            if not vehicleSeat or not vehicleSeat:IsA("BasePart") then
                return false
            end

            pcall(function()
                arg2.PrimaryPart = vehicleSeat
            end)

            return pcall(function()
                arg2:SetPrimaryPartCFrame(arg3)
            end)
        end

        bringDisableCarCollision = function(arg2)
            local tbl28 = {}
            if not arg2 or not arg2.Parent then
                return tbl28
            end

            for i, descendant in ipairs(arg2:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    tbl28[descendant] = descendant.CanCollide

                    pcall(function()
                        descendant.CanCollide = false
                    end)
                end
            end

            return tbl28
        end

        bringRestoreCarCollision = function(arg2)
            if typeof(arg2) ~= "table" then
                return
            end

            for k, v58 in pairs(arg2) do
                if k and k.Parent and k:IsA("BasePart") then
                    pcall(function()
                        local canCollide = v58 == true
                        k.CanCollide = canCollide
                    end)
                end
            end

            table.clear(arg2)
        end

        bringGetBody = function(arg2)
            if not arg2 then
                return nil
            end
            local body_ = arg2:FindFirstChild("Body")
            local v58 = body_ or arg2
            return v58
        end

        bringGetVehicleSeat = function(arg2)
            local v58 = bringGetBody(arg2)

            if v58 then
                local vehicleSeat = v58:FindFirstChild("VehicleSeat")
                if vehicleSeat and vehicleSeat:IsA("VehicleSeat") then
                    return vehicleSeat
                end
            end

            local vehicleSeat = arg2 and arg2:FindFirstChild("VehicleSeat", true)
            if vehicleSeat and vehicleSeat:IsA("VehicleSeat") then
                return vehicleSeat
            end
            return nil
        end

        bringGetPassengerSeats = function(arg2)
            local tbl28 = {}
            local v58 = bringGetBody(arg2)
            if not v58 then
                return tbl28
            end

            for i, descendant in ipairs(v58:GetDescendants()) do
                if descendant.ClassName == "Seat" then
                    table.insert(tbl28, descendant)
                end
            end

            local v59, v60, v61 = ipairs(v58:GetChildren())
            local v62 = v61
            local v63 = v59
            local v64 = v60

            while true do
                local v65, v66 = v63(v64, v62)
                if v65 == nil then
                    break
                end
                v62 = v65

                if v66.ClassName == "Seat" then
                    local flag17 = false

                    for i, v67 in ipairs(tbl28) do
                        if v67 == v66 then
                            flag17 = true
                            break
                        end
                    end

                    v62 = v65

                    if not flag17 then
                        table.insert(tbl28, v66)
                    end
                end
            end

            return tbl28
        end

        bringGetTargetSeatInCar = function(arg2, arg3)
            if not arg2 or not arg3 then
                return nil
            end
            local seatPart = arg3.SeatPart
            if seatPart and seatPart:IsDescendantOf(arg2) then
                return seatPart
            end
            local v58 = bringGetBody(arg2)

            if v58 then
                for i, descendant in ipairs(v58:GetDescendants()) do
                    if (descendant.ClassName == "Seat" or descendant.ClassName == "VehicleSeat") and descendant.Occupant == arg3 then
                        return descendant
                    end
                end
            end

            return nil
        end

        bringIsSeatInsideCarContainer = function(arg2)
            if not arg2 or not arg2:IsA("BasePart") then
                return false
            end
            local carContainer = Workspace:FindFirstChild("CarContainer")
            if not carContainer then
                return false
            end
            local parent = arg2

            while flag and parent and parent ~= Workspace do
                if parent.Parent == carContainer then
                    return true
                end
                parent = parent.Parent
            end

            return false
        end

        bringPlayerAlreadyInCar = function(arg2, arg3)
            if not arg2 then
                return false
            end
            local character_ = arg2.Character
            local humanoid_ = arg3 or character_ and character_:FindFirstChildOfClass("Humanoid")
            if not humanoid_ then
                return false
            end
            local seatPart = humanoid_.SeatPart
            if seatPart and bringIsSeatInsideCarContainer(seatPart) then
                return true
            end
            local carContainer = Workspace:FindFirstChild("CarContainer")
            if not carContainer then
                return false
            end

            for i, descendant in ipairs(carContainer:GetDescendants()) do
                if (descendant.ClassName == "Seat" or descendant.ClassName == "VehicleSeat") and descendant.Occupant == humanoid_ then
                    return true
                end
            end

            return false
        end

        bringTargetIsSeatedInCar = function(arg2, arg3)
            local flag17 = bringGetTargetSeatInCar(arg2, arg3) ~= nil
            return flag17
        end

        bringParseCommand = function(arg2)
            local str3 = bringCleanToken(arg2):gsub("^([!%.])['\"`]+", "%1")
            local match, v58 = str3:match("^[!%.]bring%s+(%S+)%s+(.+)$")
            local v59 = match
            local v60 = v58

            if not match then
                local match2, v61 = str3:match("^bring%s+(%S+)%s+(.+)$")
                v59 = match2
                v60 = v61
            end

            if v59 and v60 then
                return bringCleanToken(v59), bringCleanToken(v60)
            end
            return nil, nil
        end

        bringNotifyUsage = function()
            if add_line then
                add_line(".bring person tp_name", nil, true)
            end

            if red_anim then
                red_anim()
            end
        end

        bringNotifyPrison = function()
            if add_line then
                add_line(".bring [error] player inside prison", nil, true)
            end

            if red_anim then
                red_anim()
            end
        end

        bringNotifyNeedCar = function()
            if add_line then
                add_line(".bring [error]", "need VehicleSeat", true)
            end

            if red_anim then
                red_anim()
            end
        end

        bringNotifyTpNotFound = function()
            if add_line then
                add_line(".bring [error] tp not found", nil, true)
            end

            if red_anim then
                red_anim()
            end
        end

        bringNotifyPlayerNotFound = function()
            if add_line then
                add_line(".bring [error] player not found", nil, true)
            end

            if red_anim then
                red_anim()
            end
        end

        bringNotifyTimeout = function()
            if add_line then
                add_line(".bring [error] timeout", nil, true)
            end

            if red_anim then
                red_anim()
            end
        end

        bringNotifyTargetInCar = function()
            if add_line then
                add_line(".bring [error] player already in car", nil, true)
            end

            if red_anim then
                red_anim()
            end
        end

        bringProgressStart = function(arg2)
            local now = os.clock()
            local flag17 = true
            local tbl28 = {"[...]", "[..]", "[.]", "[..]"}
            local v58 = add_line(arg2, "bring executed [...] | trys: 0 | 0.00s", false)

            task.spawn(function()
                local n8 = 1

                while flag and flag17 and v58 and v58.Parent and os.clock() - now < 12 do
                    local n9 = math.max(0, os.clock() - now)
                    local num = tonumber(v58:GetAttribute("KX_BringTries"))
                    local n10 = num or 0
                    v58.Text = "> " .. tostring(arg2) .. "\n  bring executed " .. tbl28[n8] .. " | trys: " .. tostring(n10) .. " | " .. string.format("%.2fs", n9)
                    local v59 = color(120, 255, 170)
                    v58.TextColor3 = v59
                    v58:SetAttribute("KX_TextColor", v59)
                    local n11 = n8 + 1
                    n8 = n11

                    if #tbl28 < n11 then
                        n8 = 1
                    end

                    task.wait(0.22)
                end
            end)

            return {
                item = v58,
                started = now,
                stop = function()
                    flag17 = false
                end,
            }
        end

        bringProgressUpdate = function(arg2, arg3)
            local item = arg2 and arg2.item

            if item and item.Parent then
                local setAttribute = item.SetAttribute
                local num = tonumber(arg3)
                local n8 = num or 0
                setAttribute(item, "KX_BringTries", n8)
            end
        end

        bringProgressFinish = function(arg2, arg3, arg4, arg5, arg6)
            if arg2 and arg2.stop then
                arg2.stop()
            end

            local n8 = arg2 and arg2.started and math.max(0, os.clock() - arg2.started) or 0
            local item = arg2 and arg2.item
            local str3

            if arg5 == false then
                local str4 = string.format("%.2fs", n8)
                local v58 = tostring
                local n9 = arg4 or 0
                local v59 = v58(n9)
                local str5 = arg6 and " | " .. tostring(arg6) or ""
                str3 = "bring failed [" .. str4 .. "] | trys: " .. v59 .. str5
            else
                local str4 = string.format("%.2fs", n8)
                local v58 = tostring
                local n9 = arg4 or 0
                str3 = "bring completed [" .. str4 .. "] | trys: " .. v58(n9)
            end

            if item and item.Parent then
                item.Text = "> " .. tostring(arg3) .. "\n  " .. str3
                local textColor3 = arg5 == false and color(255, 135, 145) or color(120, 255, 170)
                item.TextColor3 = textColor3
                item:SetAttribute("KX_TextColor", textColor3)
            else
                local v58 = add_line
                local flag17 = arg5 == false
                v58(arg3, str3, flag17)
            end
        end

        bringCommand = function(arg2, arg3)
            local v58 = bringCleanToken(arg2)
            local v59 = bringCleanToken(arg3)

            if v58 ~= "" and v59 ~= "" then
                local character_ = LocalPlayer.Character
                local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

                if humanoid_ and humanoid_.Sit then
                    local seatPart = humanoid_.SeatPart

                    if seatPart and seatPart:IsA("VehicleSeat") then
                        local v60 = bringGetCarFromSeat(seatPart)

                        if v60 and v60:IsA("Model") then
                            local v61 = find_player(v58)

                            if v61 and v61 ~= LocalPlayer then
                                local character_2 = v61.Character
                                local humanoidRootPart = character_2 and character_2:FindFirstChild("HumanoidRootPart")
                                local humanoid_2 = character_2 and character_2:FindFirstChildOfClass("Humanoid")

                                if humanoidRootPart and humanoid_2 and humanoid_2.Health > 0 then
                                    if not bringPlayerAlreadyInCar(v61, humanoid_2) then
                                        if not fn16(humanoidRootPart.Position, tbl5) then
                                            local v62 = find_save(v59)
                                            if not v62 then
                                                bringNotifyTpNotFound()
                                                return false
                                            end
                                            local v63 = any_to_cf(v62.Pos)
                                            if not v63 then
                                                bringNotifyUsage()
                                                return false
                                            end
                                            local v64 = bringGetVehicleSeat(v60)
                                            local v65 = v64 or seatPart
                                            local v66 = bringGetPassengerSeats(v60)
                                            if #v66 == 0 then
                                                bringNotifyNeedCar()
                                                return false
                                            end

                                            pcall(function()
                                                if not v60.PrimaryPart then
                                                    v60.PrimaryPart = v65
                                                end
                                            end)

                                            local v67 = bringDisableCarCollision(v60)
                                            local flag17 = false

                                            local function fn72()
                                                if flag17 then
                                                    return
                                                end
                                                flag17 = true
                                                bringRestoreCarCollision(v67)
                                            end

                                            local str3 = ".bring " .. tostring(v61.Name) .. " " .. tostring(v59)
                                            local v68 = bringProgressStart(str3)
                                            local n8 = 0
                                            bringProgressUpdate(v68, 0)
                                            local now = os.clock()
                                            local flag18 = false

                                            while flag and os.clock() - now < 7 do
                                                local n9 = n8 + 1
                                                n8 = n9
                                                bringProgressUpdate(v68, n9)
                                                if not v61.Parent or not v60.Parent or not v65.Parent then
                                                    break
                                                end
                                                local character_3 = v61.Character
                                                local humanoidRootPart2 = character_3 and character_3:FindFirstChild("HumanoidRootPart")
                                                local v69 = humanoidRootPart2
                                                local humanoid_3 = character_3 and character_3:FindFirstChildOfClass("Humanoid")
                                                humanoid_2 = humanoid_3
                                                if not v69 or not humanoid_2 or humanoid_2.Health <= 0 then
                                                    break
                                                end

                                                if not bringGetTargetSeatInCar(v60, humanoid_2) then
                                                    bringPivotCar(v60, v69.CFrame * cframe(0, -0.2, -5))

                                                    for i, v70 in ipairs(v66) do
                                                        if v70 and v70.Parent and v70.Occupant == nil then
                                                            pcall(function()
                                                                v70:Sit(humanoid_2)
                                                            end)

                                                            task.wait(0.04)

                                                            if bringGetTargetSeatInCar(v60, humanoid_2) then
                                                                flag18 = true
                                                                fn72()
                                                                break
                                                            end

                                                            continue
                                                        end
                                                    end

                                                    if flag18 then
                                                        break
                                                    end
                                                    RunService.Heartbeat:Wait()
                                                    continue
                                                end

                                                flag18 = true
                                                fn72()
                                                break
                                            end

                                            if not flag18 then
                                                fn72()
                                                bringProgressFinish(v68, str3, n8, false, "timeout")
                                                bringNotifyTimeout()
                                                return false
                                            end

                                            fn72()

                                            for i = 1, 5 do
                                                if not v60.Parent then
                                                    break
                                                end
                                                bringPivotCar(v60, v63)
                                                RunService.Heartbeat:Wait()
                                            end

                                            bringProgressFinish(v68, str3, n8, true)
                                            return true
                                        end

                                        bringNotifyPrison()
                                        return false
                                    end

                                    bringNotifyTargetInCar()
                                    return false
                                end

                                bringNotifyPlayerNotFound()
                                return false
                            end

                            bringNotifyPlayerNotFound()
                            return false
                        end

                        bringNotifyNeedCar()
                        return false
                    end

                    bringNotifyNeedCar()
                    return false
                end

                bringNotifyNeedCar()
                return false
            end

            bringNotifyUsage()
            return false
        end

        killTpPlayer = function(arg2)
            if not arg2 or arg2 == LocalPlayer or arg2.Parent ~= Players then
                return fn24("Kill TP", "player not found")
            end
            local str3 = "Kill TP " .. arg2.Name
            if fn21(arg2) then
                return fn24(str3, "cant kill same team")
            end

            if not hasKillTool() then
                return fn24(str3, "no tools")
            end
            local v58 = killTpState
            v58.serial = v58.serial + 1
            local serial = killTpState.serial
            killTpState.tokens[arg2.UserId] = serial
            add_line(str3, "started", false)

            task.spawn(function()
                local function fn72()
                    local flag17 = killTpState.tokens[arg2.UserId] == serial
                    return flag17
                end

                local v59 = killWaitAliveCharacter(arg2, nil, fn72, tbl9.TargetReadyWait)

                while v59 and fn72() do
                    local v60, v61 = killWaitForceFieldOff(arg2, v59, fn72)
                    if v60 == "ready" then
                        v59 = v61
                        break
                    end

                    if v60 == "respawn" then
                        v59 = v61
                    else
                        v59 = nil
                    end
                end

                if v59 and fn72() then
                    local v60, v61
                    v61, v61, v60 = killAliveCharacter(arg2)
                    local v62 = v60
                    local v63, v64, v65 = killWaitAliveCharacter(LocalPlayer, nil, fn72, tbl9.LocalReadyWait)

                    if v62 and v63 and v64 and v65 then
                        fn16(v62.Position, tbl5)
                        local seatPart = v64.SeatPart
                        local isVehicleSeat = seatPart and seatPart:IsA("VehicleSeat") and bringGetCarFromSeat(seatPart) or nil
                        local cFrame = v62.CFrame * cframe(0, 0.5, -6)

                        if isVehicleSeat then
                            local flag17 = false
                            local v66
                            v61, v61, v66 = killAliveCharacter(arg2)

                            if v66 and fn72() and isVehicleSeat.Parent then
                                v62 = v66

                                local ok = pcall(function()
                                    v65.CFrame = v62.CFrame
                                end)

                                local n8 = os.clock() + 0.4
                                local value

                                repeat
                                    RunService.Heartbeat:Wait()
                                    value = select(3, killAliveCharacter(arg2))

                                    if value then
                                        v62 = value
                                    end

                                    if ok and value and (v65.Position - value.Position).Magnitude <= 18 then
                                        flag17 = true
                                        break
                                    end
                                until not fn72() or n8 <= os.clock()
                            end

                            if flag17 then
                                RunService.Heartbeat:Wait()
                                flag17 = (v65.Position - v62.Position).Magnitude <= 18
                            end

                            if not flag17 then
                                killTpState.tokens[arg2.UserId] = nil
                                add_line(str3, "vehicle tp failed", true)
                                return
                            end

                            if fn16(v62.Position, tbl5) then
                                local n8 = os.clock() + 2.5

                                while fn72() and isVehicleSeat.Parent and v64.Parent and v64.SeatPart do
                                    task.wait(tbl9.FastPoll)
                                    if n8 <= os.clock() then
                                        break
                                    end
                                end
                            else
                                pcall(function()
                                    v64.Sit = false
                                    v64.Jump = true
                                    v64:ChangeState(Enum.HumanoidStateType.Jumping)
                                end)

                                local n8 = os.clock() + 1.25

                                while fn72() and v64.Parent and v64.SeatPart do
                                    task.wait(tbl9.FastPoll)
                                    if n8 <= os.clock() then
                                        break
                                    end
                                end
                            end
                        else
                            pcall(function()
                                v65.CFrame = cFrame
                            end)

                            RunService.Heartbeat:Wait()
                        end

                        local v66, v67
                        v66, v61, v67 = killMethodUntilConfirmed(arg2, tbl10.KillTp, fn72)

                        if killTpState.tokens[arg2.UserId] == serial then
                            killTpState.tokens[arg2.UserId] = nil
                        end

                        if v66 then
                            db_track_kill(arg2, "killtp")
                            add_line(str3, "completed", false)
                        elseif v67 == "forcefield" then
                            add_line(str3, "ff detected", true)
                        else
                            add_line(str3, "target still alive", true)
                        end

                        return
                    end

                    killTpState.tokens[arg2.UserId] = nil
                    add_line(str3, "character not ready", true)
                    return
                end

                if killTpState.tokens[arg2.UserId] == serial then
                    killTpState.tokens[arg2.UserId] = nil
                    add_line(str3, "cancelled", true)
                end
            end)

            return true
        end

        booleanCommands = {}

        local function fn72(arg2, arg3)
            local tbl28 = {name = arg2[1], get = arg3}

            for i, v58 in ipairs(arg2) do
                booleanCommands[v58] = tbl28
            end
        end

        local function fn73(arg2)
            return function()
                local flag17 = cfg[arg2] == true
                return flag17
            end
        end

        for i, v58 in ipairs({
            {{"antifling", "af"}, "anti_fling_v1"},
            {{"shield"}, "wall"},
            {{"aneutral"}, "auto_respawn_neutral"},
            {{"autore", "autorespawn"}, "auto_respawn"},
            {{"autoreload"}, "auto_reload"},
            {{"autoswitch"}, "auto_switch"},
            {{"autoarrest", "ar"}, "auto_arrest"},
            {{"bottonfling", "bf"}, "botton_fling"},
            {{"stopdeath"}, "fling_stop_death"},
            {{"nolimit"}, "fling_no_limit"},
            {{"whip"}, "fling_whip"},
            {{"antitaze", "ataze", "at"}, "anti_taze"},
            {{"antiriot"}, "anti_riot"},
            {{"laser"}, "laser_state"},
            {{"carspeed", "cs"}, "carspeed"},
            {{"backpackhead", "bhead"}, "backpack_head"},
            {{"toolaura", "taura"}, "tool_aura"},
            {{"punchaura", "pa"}, "punch_aura"},
            {{"silentaim", "silent", "aimbot"}, "silent_aim"},
            {{"fov"}, "silent_fov_visible"},
            {{"wallcheck", "wc"}, "silent_wall_check"},
            {{"teamcheck"}, "silent_team_check"},
            {{"forcefield", "ff"}, "silent_forcefield_check"},
            {{"vb"}, "silent_visibility"},
            {{"playerlist", "guiplayers", "pgui"}, "player_list"},
            {{"killfeedback", "kf"}, "kill_feedback"},
            {{"aimdetect", "aimbotdetect"}, "aim_detect"},
            {{"cartpdetection", "cd"}, "fling_detector"},
            {{"invisibledetection", "id"}, "invisible_detection"},
            {{"lockspeed", "lockwalkspeed"}, "lock_walkspeed"},
            {{"autokeycard", "aurakeycard", "autokey"}, "auto_keycard"},
            {{"noclip"}, "noclip"},
            {{"infjump", "infinitejump"}, "inf_jump"},
        }) do
            fn72(v58[1], fn73(v58[2]))
        end

        fn72({"esp"}, function()
            local flag17 = espCfg.espEnabled == true
            return flag17
        end)

        fn72({"tracers"}, function()
            local flag17 = espCfg.tracersEnabled == true
            return flag17
        end)

        fn72({"tracerinfo"}, function()
            local flag17 = espCfg.tracerInfoEnabled == true
            return flag17
        end)

        fn72({"backpackview", "bpview"}, function()
            local flag17 = espCfg.backpackViewEnabled == true
            return flag17
        end)

        fn72({"healthgui", "hg"}, function()
            local flag17 = espCfg.healthGuiEnabled == true
            return flag17
        end)

        fn72({"hitbox"}, function()
            local flag17 = espCfg.hitboxEnabled == true
            return flag17
        end)
    end

    local tbl9 = {
        combo1 = "combo1",
        combo2 = "combo2",
        combo3 = "combo3",
        m4 = "m4a1",
        m4a1 = "m4a1",
        fal = "fal",
        ak = "ak",
        ["ak-47"] = "ak",
        rev = "revolver",
        revolver = "revolver",
        m700 = "m700",
        sniper = "m700",
        reming = "reming",
        shotgun = "reming",
    }

    mobileToggleSaveName = function(arg2)
        local v7 = tostring
        local str = arg2 or ""
        return v7(str):match("^save:(.+)$")
    end

    mobileToggleDisplayName = function(arg2)
        local v7 = mobileToggleSaveName(arg2)
        local v8 = v7

        if not v7 then
            local v9 = tostring
            local str = arg2 or ""
            v8 = v9(str)
        end

        return v8
    end

    mobileToggleRunText = function(arg2)
        local v7 = mobileToggleSaveName(arg2)
        local str = v7 and ".tp " .. v7

        if not str then
            local v8 = tostring
            local str2 = arg2 or ""
            str = "." .. v8(str2)
        end

        return str
    end

    mobileActionDisplayName = mobileToggleDisplayName
    mobileActionRunText = mobileToggleRunText
    local v7 = vector2(112, 40)

    local function fn21(arg2)
        local v8 = tostring
        local str = arg2 or ""
        local str2 = v8(str):lower():match("^%s*(.-)%s*$"):gsub("^[!%.;]", "")
        local flag6

        if str2:find("%s") then
            flag6 = false
        else
            flag6 = true
        end

        if flag6 then
            flag6 = booleanCommands[str2]
        end

        local name = flag6 and flag6.name

        if not name then
            if str2:find("%s") then
                name = false
            else
                name = true
            end

            if name then
                name = tbl9[str2]
            end
        end

        if name then
            return name
        end
        local v9 = find_save
        local v10 = mobileToggleSaveName(str2)
        local v11 = v10 or str2
        local v12 = v9(v11)
        local str3 = v12 and "save:" .. tostring(v12.Name) or nil
        return str3
    end

    mobileActionName = fn21

    local function fn22(arg2)
        local max = math.max
        local num = tonumber(arg2)
        local n2 = num or 1
        local n3 = max(1, n2) - 1
        return math.max(0.18, 0.84 - math.floor(n3 / 7) * 0.28), 0.2 + n3 % 7 * 0.09
    end

    local function fn23(arg2, arg3)
        local v8 = viewport()
        local v9 = px_pos(arg2)
        local absoluteSize = arg3 and arg3.AbsoluteSize or v7
        local x = absoluteSize.X > 0 and absoluteSize.X or v7.X
        local y = absoluteSize.Y > 0 and absoluteSize.Y or v7.Y
        local n2 = x * 0.5 + 8
        local n3 = y * 0.5 + 8
        local n4 = math.clamp(v9.X, n2, math.max(n2, v8.X - n2))
        local n5 = math.clamp(v9.Y, n3, math.max(n3, v8.Y - n3))
        return udim2(n4 / math.max(v8.X, 1), 0, n5 / math.max(v8.Y, 1), 0)
    end

    local function fn24(arg2)
        for i, mobileButton in ipairs(cfg.mobile_buttons) do
            if fn21(mobileButton.command) == arg2 then
                return i, mobileButton
            end
        end
    end

    local function fn25()
        if mobileToggleButtonsRoot and mobileToggleButtonsRoot.Parent then
            return mobileToggleButtonsRoot
        end
        local Frame8 = fn5("Frame", gui, "Name", "KX_Mobile_Toggle_Buttons", "Size", udim2(1, 0, 1, 0), "BackgroundTransparency", 1, "BorderSizePixel", 0, "Active", false, "Visible", kxUseMobile(), "ZIndex", 120)
        mobileToggleButtonsRoot = Frame8
        return mobileToggleButtonsRoot
    end

    local function fn26(arg2)
        local v8 = mobileToggleDrag
        if not v8 or arg2 and v8.data ~= arg2 then
            return
        end
        mobileToggleDrag = nil
        fn3(v8.endConnection)
    end

    local function fn27()
        local v8 = mobileToggleDrag
        if not v8 then
            return
        end
        fn26()
        local data = v8.data
        if not data.button or not data.button.Parent then
            return
        end

        if v8.moved then
            local entry = data.entry
            local scale = data.button.Position.Y.Scale
            data.entry.x = data.button.Position.X.Scale
            entry.y = scale
            save_cfg()
        elseif flag and run_command then
            task.defer(run_command, mobileToggleRunText(data.entry.command), "mobile_button")
        end
    end

    local function fn28(arg2)
        if not arg2 then
            return
        end
        fn26(arg2)
        fn3(arg2.connection)

        if arg2.button and arg2.button.Parent then
            arg2.button:Destroy()
        end
    end

    local function fn29(arg2)
        local command = arg2 and arg2.command
        local v8 = fn21(command)
        if not v8 or mobileToggleButtons[v8] then
            return
        end
        arg2.command = v8
        local v9 = kxThemeCurrent()
        local v10 = fn25()
        local str = "KX_Toggle_" .. v8
        local v11 = vector2(0.5, 0.5)
        local v12 = udim2(0, v7.X, 0, v7.Y)
        local num = tonumber(arg2.x)
        local n2 = num or 0.84
        local num2 = tonumber(arg2.y)
        local n3 = num2 or 0.2
        local TextButton = fn5("TextButton", v10, "Name", str, "AnchorPoint", v11, "Size", v12, "Position", udim2(n2, 0, n3, 0), "BackgroundColor3", kxThemeLighten(v9.Panel, 0.08), "BorderSizePixel", 0, "Text", "." .. mobileToggleDisplayName(v8), "TextColor3", v9.Text, "Font", Enum.Font.GothamSemibold, "TextSize", 12, "TextTruncate", Enum.TextTruncate.AtEnd, "AutoButtonColor", false, "Active", true, "ZIndex", 125)
        fn5("UICorner", TextButton, "CornerRadius", udim(0, 11))
        fn5("UIStroke", TextButton, "Color", v9.Accent, "Thickness", 1.1, "Transparency", 0.16)
        kxTextClamp(TextButton, 10, 13)
        TextButton.Position = fn23(TextButton.Position, TextButton)
        local tbl10 = {button = TextButton, entry = arg2}
        mobileToggleButtons[v8] = tbl10

        tbl10.connection = fn2(TextButton.InputBegan, function(arg3)
            local userInputType = arg3.UserInputType
            if mobileToggleDrag or userInputType ~= Enum.UserInputType.Touch and userInputType ~= Enum.UserInputType.MouseButton1 then
                return
            end

            mobileToggleDrag = {
                data = tbl10,
                input = arg3,
                start = arg3.Position,
                position = TextButton.Position,
                moved = false,
            }

            mobileToggleDrag.endConnection = fn2(arg3.Changed, function()
                if arg3.UserInputState == Enum.UserInputState.End then
                    fn27()
                end
            end)
        end)
    end

    fn2(UserInputService.InputChanged, function(arg2)
        local v8 = mobileToggleDrag
        if not v8 then
            return
        end
        local flag6 = v8.input.UserInputType == Enum.UserInputType.Touch and arg2 == v8.input
        local flag7 = v8.input.UserInputType == Enum.UserInputType.MouseButton1 and arg2.UserInputType == Enum.UserInputType.MouseMovement
        if not flag6 and not flag7 then
            return
        end
        local n2 = arg2.Position - v8.start

        if n2.Magnitude >= 7 then
            v8.moved = true
        end

        if not v8.moved then
            return
        end
        local v9 = px_pos(v8.position)
        v8.data.button.Position = fn23(udim2(0, v9.X + n2.X, 0, v9.Y + n2.Y), v8.data.button)
    end)

    mobileToggleButtonsRelayout = function()
        if not mobileToggleButtonsRoot then
            if kxUseMobile() then
                for i, mobileButton in ipairs(cfg.mobile_buttons) do
                    fn29(mobileButton)
                end
            end

            return
        end

        mobileToggleButtonsRoot.Visible = kxUseMobile()

        for k, v8 in pairs(mobileToggleButtons) do
            if v8.button and v8.button.Parent then
                v8.button.Position = fn23(v8.button.Position, v8.button)
            end
        end
    end

    mobileToggleButtonAdd = function(arg2)
        if not kxUseMobile() then
            add_line(".button", "mobile only", true)
            red_anim()
            return false
        end

        local v8 = fn21(arg2)

        if not v8 then
            local v9 = add_line
            local v10 = tostring
            local str = arg2 or ""
            local match = v10(str):match("%S")
            local str2 = match and "only toggles, weapons, combos or saved tps" or "use .button autore/combo1/m4a1/yourtp"
            v9(".button", str2, true)
            red_anim()
            return false
        end

        if not fn24(v8) then
            local v9, v10 = fn22(#cfg.mobile_buttons + 1)
            local tbl10 = {command = v8, x = v9, y = v10}
            cfg.mobile_buttons[#cfg.mobile_buttons + 1] = tbl10
            fn29(tbl10)
            save_cfg()
            refresh_saved_commands()
            add_line(".button ." .. mobileToggleDisplayName(v8), "mobile button added; drag to move", false)
            return true
        end

        add_line(".button ." .. mobileToggleDisplayName(v8), "button already exists", true)
        red_anim()
        return false
    end

    mobileToggleButtonRemove = function(arg2)
        local v8 = fn21(arg2)

        if not v8 then
            add_line(".unbutton", "use .unbutton autore/combo1/m4a1/yourtp", true)
            red_anim()
            return false
        end

        local v9 = fn24(v8)

        if not v9 then
            add_line(".unbutton ." .. mobileToggleDisplayName(v8), "button not found", true)
            red_anim()
            return false
        end

        fn28(mobileToggleButtons[v8])
        mobileToggleButtons[v8] = nil
        table.remove(cfg.mobile_buttons, v9)
        save_cfg()
        refresh_saved_commands()
        add_line(".unbutton ." .. mobileToggleDisplayName(v8), "mobile button removed", false)
        return true
    end

    mobileToggleButtonsRestore = function()
        for k, v8 in pairs(mobileToggleButtons) do
            fn28(v8)
            mobileToggleButtons[k] = nil
        end

        local mobileButtons = {}
        local tbl10 = {}
        local flag6 = false

        for i, mobileButton in ipairs(cfg.mobile_buttons) do
            local flag7 = typeof(mobileButton) == "table"

            if flag7 then
                local command = mobileButton.command
                local command2 = command or mobileButton.Command
                flag7 = fn21(command2)
            end

            if flag7 and not tbl10[flag7] then
                local v8, v9 = fn22(#mobileButtons + 1)
                local clamp = math.clamp
                local v10 = tonumber
                local x = mobileButton.x
                local x2 = x or mobileButton.X
                local v11 = v10(x2)
                local v12 = v11 or v8
                local v13 = clamp(v12, 0.02, 0.98)
                local clamp2 = math.clamp
                local v14 = tonumber
                local y = mobileButton.y
                local y2 = y or mobileButton.Y
                local v15 = v14(y2)
                local v16 = v15 or v9
                local v17 = clamp2(v16, 0.02, 0.98)
                mobileButtons[#mobileButtons + 1] = {command = flag7, x = v13, y = v17}
                tbl10[flag7] = true

                if mobileButton.command ~= flag7 or mobileButton.x ~= v13 or mobileButton.y ~= v17 then
                    flag6 = true
                end
            else
                flag6 = true
            end
        end

        cfg.mobile_buttons = mobileButtons

        if flag6 then
            save_cfg()
        end

        if kxUseMobile() then
            for i, mobileButton in ipairs(mobileButtons) do
                fn29(mobileButton)
            end
        end
    end

    pcKeybindMin = 4
    pcKeybindMax = 8
    pcKeybindWidth = 336

    pcKeybindHeight = function()
        return 45 + math.max(pcKeybindMin, #cfg.pc_keybinds) * 40
    end

    pcKeybindState = {
        Frame = nil,
        Rows = {},
        Open = false,
        Capture = nil,
        Drag = nil,
        DragEnd = nil,
    }

    pcKeybindCodes = {}

    for i, v8 in ipairs(Enum.KeyCode:GetEnumItems()) do
        pcKeybindCodes[v8.Name] = v8
    end

    pcKeybindIsPC = function()
        local keyboardEnabled = UserInputService.KeyboardEnabled
        local mouseEnabled = keyboardEnabled and UserInputService.MouseEnabled
        return mouseEnabled
    end

    pcKeybindEntry = function(arg2)
        local v8 = cfg.pc_keybinds[arg2]
        local v9 = v8

        if typeof(v8) ~= "table" then
            local tbl10 = {command = "", key = ""}
            v9 = tbl10
            cfg.pc_keybinds[arg2] = tbl10
        end

        return v9
    end

    pcKeybindCode = function(arg2)
        local v8 = pcKeybindCodes
        local v9 = tostring
        local str = arg2 or ""
        return v8[v9(str)]
    end

    pcKeybindReserved = function(arg2)
        local flag6

        if arg2 then
            flag6 = false
        else
            flag6 = true
        end

        if not flag6 then
            flag6 = arg2 == Enum.KeyCode.Unknown
        end

        if not flag6 then
            flag6 = arg2 == Enum.KeyCode.Escape
        end

        if not flag6 then
            flag6 = arg2 == Enum.KeyCode.Return
        end

        if not flag6 then
            flag6 = arg2 == Enum.KeyCode.KeypadEnter
        end

        if not flag6 then
            flag6 = arg2 == Enum.KeyCode.Backspace
        end

        if not flag6 then
            flag6 = arg2 == Enum.KeyCode.Delete
        end

        if not flag6 then
            flag6 = arg2 == Enum.KeyCode.Period
        end

        return flag6
    end

    pcKeybindAction = function(arg2)
        local v8 = tostring
        local str = arg2 or ""
        local str2 = v8(str):lower():match("^%s*(.-)%s*$"):gsub("^[!%.;]", "")
        local v9 = mobileActionName
        local match = str2:match("^tp%s+(.+)$")
        local v10 = match or str2
        return v9(v10)
    end

    pcKeybindKeyText = function(arg2)
        local v8 = pcKeybindCode(arg2)
        if not v8 then
            return "KEY"
        end
        local ok, result = pcall(UserInputService.GetStringForKeyCode, UserInputService, v8)
        local str = ok and tostring(result):match("%S") and tostring(result):upper() or v8.Name:upper()
        return str
    end

    pcKeybindClamp = function(arg2)
        local v8 = viewport()
        local v9 = px_pos(arg2)
        local v10 = pcKeybindWidth
        local v11 = pcKeybindHeight()
        local n2 = math.clamp(v9.X, v10 * 0.5 + 8, math.max(v10 * 0.5 + 8, v8.X - v10 * 0.5 - 8))
        local n3 = math.clamp(v9.Y, v11 * 0.5 + 8, math.max(v11 * 0.5 + 8, v8.Y - v11 * 0.5 - 8))
        return udim2(n2 / math.max(v8.X, 1), 0, n3 / math.max(v8.Y, 1), 0)
    end

    pcKeybindFlash = function(arg2, arg3)
        local v8 = pcKeybindState.Rows[arg2]
        if not v8 or not v8.Stroke then
            return
        end
        local v9 = make_tween
        local stroke = v8.Stroke
        local tbl10 = {}
        local v10 = arg3 and color(105, 255, 170) or color(255, 70, 90)
        tbl10.Color = v10
        tbl10.Transparency = 0.02
        v9(stroke, 0.08, tbl10)

        task.delay(0.45, function()
            if v8.Stroke and v8.Stroke.Parent then
                make_tween(v8.Stroke, 0.12, {Color = kxThemeCurrent().Accent, Transparency = 0.22})
            end
        end)
    end

    pcKeybindSyncRow = function(arg2)
        local v8 = pcKeybindState.Rows[arg2]
        if not v8 then
            return
        end
        local v9 = pcKeybindEntry(arg2)

        if v8.Command and not v8.Command:IsFocused() then
            local command = v8.Command
            local text = v9.command ~= "" and "." .. mobileActionDisplayName(v9.command) or ""
            command.Text = text
        end

        if v8.Key then
            local flag6 = pcKeybindState.Capture == arg2
            v8.Key.Text = pcKeybindKeyText(v9.key)
            local key = v8.Key
            local accent_ = flag6 and color(255, 185, 90) or kxThemeCurrent().Accent
            key.TextColor3 = accent_
        end
    end

    pcKeybindSyncRows = function()
        for i in ipairs(pcKeybindState.Rows) do
            pcKeybindSyncRow(i)
        end
    end

    pcKeybindSetCommand = function(arg2, arg3)
        local v8 = pcKeybindState.Rows[arg2]
        if not v8 or not v8.Command then
            return false
        end
        local v9 = pcKeybindEntry(arg2)
        local flag6 = tostring(v8.Command.Text):match("%S") ~= nil
        local v10 = flag6 and pcKeybindAction(v8.Command.Text)

        if not v10 then
            local flag7 = v9.command ~= "" or v9.key ~= ""
            v9.command = ""
            v9.key = ""

            if flag7 then
                save_cfg()
            end

            pcKeybindSyncRow(arg2)

            if arg3 then
                local v11 = add_line
                local str = flag6 and "only toggles, weapons, combos or saved tps" or "set a command first"
                v11(".keybind", str, true)
            end

            if arg3 or flag6 then
                pcKeybindFlash(arg2, false)
            end

            local flag8

            if arg3 then
                flag8 = false
            else
                flag8 = true
            end

            if flag8 then
                if flag6 then
                    flag8 = false
                else
                    flag8 = true
                end
            end

            return flag8
        end

        local flag7 = v9.command ~= v10
        v9.command = v10

        if flag7 then
            save_cfg()
        end

        pcKeybindSyncRow(arg2)

        if arg3 then
            pcKeybindFlash(arg2, true)
        end

        return true
    end

    pcKeybindSetKey = function(arg2, arg3)
        if pcKeybindEntry(arg2).command == "" then
            add_line(".keybind", "set a command first", true)
            pcKeybindFlash(arg2, false)
            return false
        end

        if not pcKeybindReserved(arg3) then
            local name = arg3.Name

            for i in ipairs(cfg.pc_keybinds) do
                if i ~= arg2 and pcKeybindEntry(i).key == name then
                    pcKeybindEntry(i).key = ""
                    pcKeybindSyncRow(i)
                end
            end

            pcKeybindEntry(arg2).key = name
            save_cfg()
            pcKeybindFlash(arg2, true)
            return true
        end

        add_line(".keybind", "that key is reserved", true)
        pcKeybindFlash(arg2, false)
        return false
    end

    pcKeybindCancelCapture = function()
        local capture = pcKeybindState.Capture
        pcKeybindState.Capture = nil

        if capture then
            pcKeybindSyncRow(capture)
        end
    end

    pcKeybindHandleCapture = function(arg2)
        local capture = pcKeybindState.Capture
        if not capture or arg2.UserInputType ~= Enum.UserInputType.Keyboard then
            return false
        end
        local keyCode = arg2.KeyCode

        if keyCode == Enum.KeyCode.Escape then
            pcKeybindCancelCapture()
        elseif keyCode ~= Enum.KeyCode.Backspace and keyCode ~= Enum.KeyCode.Delete then
            if pcKeybindSetKey(capture, keyCode) then
                pcKeybindCancelCapture()
            end
        else
            pcKeybindEntry(capture).key = ""
            save_cfg()
            pcKeybindCancelCapture()
        end

        return true
    end

    pcKeybindFinishDrag = function()
        local drag = pcKeybindState.Drag
        pcKeybindState.Drag = nil
        fn3(pcKeybindState.DragEnd)
        pcKeybindState.DragEnd = nil
        if not drag or not pcKeybindState.Frame then
            return
        end

        if drag.Target then
            pcKeybindState.Frame.Position = drag.Target
        end

        cfg.pc_keybind_position = {
            x = pcKeybindState.Frame.Position.X.Scale,
            y = pcKeybindState.Frame.Position.Y.Scale,
        }

        save_cfg()
    end

    pcKeybindResize = function()
        local frame = pcKeybindState.Frame
        if not frame then
            return
        end
        frame.Size = udim2(0, pcKeybindWidth, 0, pcKeybindHeight())
        frame.Position = pcKeybindClamp(frame.Position)
    end

    pcKeybindCreateRow = function(arg2)
        local frame = pcKeybindState.Frame
        local v8 = kxThemeCurrent()
        if not frame or pcKeybindState.Rows[arg2] then
            return
        end
        local Frame8 = fn5("Frame", frame, "Name", "Bind_" .. arg2, "Size", udim2(1, -16, 0, 36), "Position", udim2(0, 8, 0, 41 + (arg2 - 1) * 40), "BackgroundColor3", kxThemeLighten(v8.Panel, 0.06), "BorderSizePixel", 0, "ClipsDescendants", true, "ZIndex", 162)
        fn5("UICorner", Frame8, "CornerRadius", udim(0, 8))
        local UIStroke = fn5("UIStroke", Frame8, "Color", v8.Accent, "Thickness", 0.9, "Transparency", 0.22)
        local TextBox2 = fn5("TextBox", Frame8, "Size", udim2(1, -84, 1, 0), "Position", udim2(0, 10, 0, 0), "BackgroundTransparency", 1, "Text", "", "PlaceholderText", ".autore / your_tp", "TextColor3", v8.Text, "PlaceholderColor3", kxThemeDarken(v8.Text, 0.42), "Font", Enum.Font.Code, "TextSize", 11, "ClearTextOnFocus", false, "TextXAlignment", Enum.TextXAlignment.Left, "ZIndex", 164)
        fn5("Frame", Frame8, "Name", "Divider", "Size", udim2(0, 1, 1, -10), "Position", udim2(1, -76, 0, 5), "BackgroundColor3", v8.Accent, "BackgroundTransparency", 0.58, "BorderSizePixel", 0, "ZIndex", 164)
        local TextButton = fn5("TextButton", Frame8, "Size", udim2(0, 75, 1, 0), "Position", udim2(1, -75, 0, 0), "BackgroundTransparency", 1, "BorderSizePixel", 0, "Text", "KEY", "TextColor3", v8.Accent, "Font", Enum.Font.GothamBold, "TextSize", 11, "AutoButtonColor", false, "ZIndex", 165)

        pcKeybindState.Rows[arg2] = {
            Frame = Frame8,
            Command = TextBox2,
            Key = TextButton,
            Stroke = UIStroke,
        }

        fn2(TextBox2.FocusLost, function()
            pcKeybindSetCommand(arg2)
        end)

        fn2(TextButton.Activated, function()
            local focusedTextBox = UserInputService:GetFocusedTextBox()

            if not pcKeybindSetCommand(arg2, true) then
                task.defer(function()
                    if TextBox2.Parent then
                        TextBox2:CaptureFocus()
                    end
                end)

                return
            end

            if focusedTextBox then
                focusedTextBox:ReleaseFocus()
            end

            local v9 = pcKeybindState
            local capture = pcKeybindState.Capture == arg2 and nil or arg2
            v9.Capture = capture
            pcKeybindSyncRows()
        end)

        pcKeybindSyncRow(arg2)
    end

    pcKeybindAdd = function()
        if pcKeybindMax <= #cfg.pc_keybinds then
            add_line(".keybind", "maximum 8 keybinds", true)
            return false
        end
        cfg.pc_keybinds[#cfg.pc_keybinds + 1] = {command = "", key = ""}
        pcKeybindCreateRow(#cfg.pc_keybinds)
        pcKeybindResize()
        save_cfg()
        return true
    end

    pcKeybindCreate = function()
        if pcKeybindState.Frame and pcKeybindState.Frame.Parent then
            return pcKeybindState.Frame
        end
        local v8 = kxThemeCurrent()
        local v9 = gui
        local v10 = vector2(0.5, 0.5)
        local v11 = udim2(0, pcKeybindWidth, 0, pcKeybindHeight())
        local num = tonumber(cfg.pc_keybind_position.x)
        local n2 = num or 0.5
        local num2 = tonumber(cfg.pc_keybind_position.y)
        local n3 = num2 or 0.42
        local Frame8 = fn5("Frame", v9, "Name", "KX_PC_Keybinds", "AnchorPoint", v10, "Size", v11, "Position", udim2(n2, 0, n3, 0), "BackgroundColor3", v8.Bg, "BackgroundTransparency", 0.04, "BorderSizePixel", 0, "ClipsDescendants", true, "Active", true, "Visible", false, "ZIndex", 160)
        pcKeybindState.Frame = Frame8
        fn5("UICorner", Frame8, "CornerRadius", udim(0, 13))
        fn5("UIStroke", Frame8, "Color", v8.Accent, "Thickness", 1.15, "Transparency", 0.1)

        fn5("UIGradient", Frame8, "Rotation", 90).Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, kxThemeLighten(v8.Panel, 0.08)),
            ColorSequenceKeypoint.new(1, kxThemeDarken(v8.Bg, 0.06)),
        })

        local Frame9 = fn5("Frame", Frame8, "Name", "Header", "Size", udim2(1, 0, 0, 36), "BackgroundTransparency", 1, "BorderSizePixel", 0, "Active", true, "ZIndex", 162)
        local TextLabel = fn5("TextLabel", Frame9, "Size", udim2(1, -82, 1, 0), "Position", udim2(0, 13, 0, 0), "BackgroundTransparency", 1, "Text", "Keybinds", "TextColor3", v8.Text, "Font", Enum.Font.GothamSemibold, "TextSize", 14, "TextXAlignment", Enum.TextXAlignment.Left, "Active", true, "ZIndex", 164)
        local TextButton = fn5("TextButton", Frame9, "Size", udim2(0, 28, 0, 24), "Position", udim2(1, -67, 0, 6), "BackgroundColor3", kxThemeLighten(v8.Panel, 0.1), "BorderSizePixel", 0, "Text", "+", "TextColor3", v8.Accent, "Font", Enum.Font.GothamBold, "TextSize", 16, "AutoButtonColor", false, "ZIndex", 165)
        fn5("UICorner", TextButton, "CornerRadius", udim(0, 7))
        fn5("UIStroke", TextButton, "Color", v8.Accent, "Thickness", 1, "Transparency", 0.38)
        local TextButton2 = fn5("TextButton", Frame9, "Size", udim2(0, 28, 0, 24), "Position", udim2(1, -35, 0, 6), "BackgroundColor3", kxThemeLighten(v8.Panel, 0.1), "BorderSizePixel", 0, "Text", "X", "TextColor3", v8.Text, "Font", Enum.Font.GothamBold, "TextSize", 11, "AutoButtonColor", false, "ZIndex", 165)
        fn5("UICorner", TextButton2, "CornerRadius", udim(0, 7))
        fn5("UIStroke", TextButton2, "Color", v8.Accent, "Thickness", 1, "Transparency", 0.38)

        for i in ipairs(cfg.pc_keybinds) do
            pcKeybindCreateRow(i)
        end

        fn2(TextButton.Activated, pcKeybindAdd)

        fn2(TextButton2.MouseButton1Click, function()
            pcKeybindHide(false)
        end)

        fn2(TextButton.MouseEnter, function()
            make_tween(TextButton, 0.07, {TextColor3 = v8.Text})
        end)

        fn2(TextButton.MouseLeave, function()
            make_tween(TextButton, 0.07, {TextColor3 = v8.Accent})
        end)

        fn2(TextButton2.MouseEnter, function()
            make_tween(TextButton2, 0.07, {
                BackgroundColor3 = color(95, 30, 45),
                TextColor3 = color(255, 210, 220),
            })
        end)

        fn2(TextButton2.MouseLeave, function()
            make_tween(TextButton2, 0.07, {
                BackgroundColor3 = kxThemeLighten(kxThemeCurrent().Panel, 0.1),
                TextColor3 = kxThemeCurrent().Text,
            })
        end)

        fn2(TextLabel.InputBegan, function(arg2)
            if arg2.UserInputType ~= Enum.UserInputType.MouseButton1 then
                return
            end

            pcKeybindState.Drag = {
                Start = arg2.Position,
                Position = Frame8.Position,
                Target = Frame8.Position,
            }

            fn3(pcKeybindState.DragEnd)

            pcKeybindState.DragEnd = fn2(arg2.Changed, function()
                if arg2.UserInputState == Enum.UserInputState.End then
                    pcKeybindFinishDrag()
                end
            end)
        end)

        Frame8.Position = pcKeybindClamp(Frame8.Position)
        pcKeybindSyncRows()
        return Frame8
    end

    pcKeybindShow = function()
        if not pcKeybindIsPC() then
            add_line(".keybind", "PC only", true)
            red_anim()
            return false
        end

        local v8 = pcKeybindCreate()
        local v9 = pcKeybindClamp
        local num = tonumber(cfg.pc_keybind_position.x)
        local n2 = num or 0.5
        local num2 = tonumber(cfg.pc_keybind_position.y)
        local n3 = num2 or 0.42
        local v10 = v9(udim2(n2, 0, n3, 0))
        local v11 = pcKeybindHeight()
        pcKeybindState.Open = true
        pcKeybindState.Capture = nil
        v8.Visible = true
        v8.Size = udim2(0, pcKeybindWidth, 0, 0)
        v8.Position = v10 + udim2(0, 0, 0, 9)
        v8.BackgroundTransparency = 1
        pcKeybindSyncRows()

        make_tween(v8, 0.2, {
            Size = udim2(0, pcKeybindWidth, 0, v11),
            Position = v10,
            BackgroundTransparency = 0.04,
        })

        add_line(".keybind", "keybinds gui opened", false)
        return true
    end

    pcKeybindHide = function(arg2)
        local frame = pcKeybindState.Frame
        if not frame or not pcKeybindState.Open then
            return true
        end
        pcKeybindState.Open = false
        pcKeybindCancelCapture()
        pcKeybindFinishDrag()

        for i, row in ipairs(pcKeybindState.Rows) do
            if row.Command and row.Command:IsFocused() then
                row.Command:ReleaseFocus()
            end
        end

        local position = frame.Position

        make_tween(frame, 0.16, {
            Size = udim2(0, pcKeybindWidth, 0, 0),
            Position = position + udim2(0, 0, 0, 8),
            BackgroundTransparency = 1,
        })

        task.delay(0.17, function()
            if frame and frame.Parent and not pcKeybindState.Open then
                frame.Visible = false
            end
        end)

        if not arg2 then
            add_line(".keybind", "keybinds gui closed", false)
        end

        return true
    end

    pcKeybindToggle = function()
        if not pcKeybindIsPC() then
            add_line(".keybind", "PC only", true)
            red_anim()
            return false
        end

        local open = pcKeybindState.Open
        local v8 = open and pcKeybindHide(false) or pcKeybindShow()
        return v8
    end

    pcKeybindResponsive = function()
        local v8 = pcKeybindState
        local frame = v8 and pcKeybindState.Frame
        if not frame then
            return
        end

        if not pcKeybindIsPC() then
            if pcKeybindState.Open then
                pcKeybindHide(true)
            end

            return
        end

        frame.Position = pcKeybindClamp(frame.Position)
    end

    pcKeybindRestore = function()
        local pcKeybinds = typeof(cfg.pc_keybinds) == "table" and cfg.pc_keybinds or {}
        local pcKeybinds2 = {}
        local tbl10 = {}
        local flag6 = false
        local n2 = math.clamp(#pcKeybinds, pcKeybindMin, pcKeybindMax)

        if pcKeybindMax < #pcKeybinds then
            flag6 = true
        end

        for i = 1, n2 do
            local tbl11 = typeof(pcKeybinds[i]) == "table" and pcKeybinds[i] or {}
            local v8 = pcKeybindAction
            local command = tbl11.command
            local command2 = command or tbl11.Command
            local v9 = v8(command2)
            local str = v9 or ""
            local v10 = pcKeybindCode
            local key = tbl11.key
            local key2 = key or tbl11.Key
            local v11 = v10(key2)
            local flag7 = v11

            if v11 then
                if pcKeybindReserved(v11) then
                    flag7 = false
                else
                    flag7 = true
                end
            end

            if flag7 then
                flag7 = v11.Name
            end

            if not flag7 then
                flag7 = ""
            end

            if flag7 ~= "" and tbl10[flag7] then
                flag7 = ""
                flag6 = true
            end

            if flag7 ~= "" then
                tbl10[flag7] = true
            end

            pcKeybinds2[i] = {command = str, key = flag7}

            if tbl11.command ~= str or tbl11.key ~= flag7 then
                flag6 = true
            end
        end

        local pcKeybindPosition = typeof(cfg.pc_keybind_position) == "table" and cfg.pc_keybind_position or {}
        local clamp = math.clamp
        local v8 = tonumber
        local x = pcKeybindPosition.x
        local x2 = x or pcKeybindPosition.X
        local v9 = v8(x2)
        local n3 = v9 or 0.5
        local v10 = clamp(n3, 0.02, 0.98)
        local clamp2 = math.clamp
        local v11 = tonumber
        local y = pcKeybindPosition.y
        local y2 = y or pcKeybindPosition.Y
        local v12 = v11(y2)
        local n4 = v12 or 0.42
        local v13 = clamp2(n4, 0.02, 0.98)

        if pcKeybindPosition.x ~= v10 or pcKeybindPosition.y ~= v13 then
            flag6 = true
        end

        cfg.pc_keybinds = pcKeybinds2
        cfg.pc_keybind_position = {x = v10, y = v13}

        if pcKeybindState.Frame then
            for i in ipairs(pcKeybinds2) do
                pcKeybindCreateRow(i)
            end

            pcKeybindState.Frame.Position = pcKeybindClamp(udim2(v10, 0, v13, 0))
            pcKeybindResize()
            pcKeybindSyncRows()
        end

        if flag6 then
            save_cfg()
        end
    end

    fn2(UserInputService.InputChanged, function(arg2)
        local drag = pcKeybindState.Drag
        if not drag or arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
            return
        end
        local n2 = arg2.Position - drag.Start
        local v8 = px_pos(drag.Position)
        drag.Target = pcKeybindClamp(udim2(0, v8.X + n2.X, 0, v8.Y + n2.Y))
        make_tween(pcKeybindState.Frame, 0.05, {Position = drag.Target})
    end)

    fn2(UserInputService.InputBegan, function(arg2, arg3)
        if not flag or not pcKeybindIsPC() then
            return
        end

        if not pcKeybindState.Capture then
            if arg3 or UserInputService:GetFocusedTextBox() or arg2.UserInputType ~= Enum.UserInputType.Keyboard or not run_command then
                return
            end
            local name = arg2.KeyCode.Name

            for i, pcKeybind in ipairs(cfg.pc_keybinds) do
                if pcKeybind.key == name and pcKeybind.command ~= "" then
                    task.defer(run_command, mobileActionRunText(pcKeybind.command), "keybind")
                    return
                end
            end

            return
        end

        pcKeybindHandleCapture(arg2)
    end)

    runBooleanOptionCommand = function(arg2, arg3, arg4)
        if not arg2 then
            return false
        end
        local v8 = parse_on_off(arg2)

        if v8 == nil then
            add_line(arg3.Command, arg3.Usage, true)

            if arg4 ~= "chat" then
                red_anim()
            end

            return true
        end

        if arg3.Setter(v8, false) and arg4 ~= "chat" then
            collapse()
        end

        return true
    end

    runFlingOptionCommand = function(arg2, arg3, arg4)
        local v8 = nil
        local flag6 = nil
        local v9, v10, v11 = ipairs(arg3.Names)
        local v12 = v11
        local v13, v14, match

        repeat
            v13, v14 = v9(v10, v12)
            if v13 == nil then
                break
            end
            v12 = v13
            match = arg2:match("^%." .. v14 .. "%s+(.+)$")
            v8 = match
            flag6 = arg2 == "." .. v14
        until match or flag6

        if not v8 and not flag6 then
            return false
        end

        if not arg3.Values then
            return runBooleanOptionCommand(v8, arg3, arg4)
        end

        if arg3.Setter(v8, false) and arg4 ~= "chat" then
            collapse()
        end

        return true
    end

    run_command = function(arg2, arg3)
        if notifying then
            return
        end
        local v8 = tostring
        local text = arg2 or input.Text
        local v9 = v8(text)
        local str = v9:gsub("^%s+", ""):gsub("%s+$", "")
        if str == "" or str == "." then
            return
        end

        if arg3 ~= "chat" then
            clear_input_quick(false, v9)
        end

        local str2 = str:gsub("^([!%.])['\"`]+", "%1")
        local str3 = str2
        local v10, v11 = bringParseCommand(str2)

        if v10 and v11 then
            if bringCommandBusy then
                return
            end
            bringCommandBusy = true

            task.spawn(function()
                local ok = pcall(function()
                    return bringCommand(v10, v11)
                end)

                bringCommandBusy = false

                if not ok then
                    bringNotifyTimeout()
                end
            end)

            if arg3 ~= "chat" then
                collapse()
            end

            return
        end

        if not str2:match("^[!%.]bring") and not str2:match("^bring") then
            if str2:sub(1, 1) == "!" then
                str3 = "." .. str2:sub(2)
            end

            if str3:sub(1, 1) == ";" then
                str3 = "." .. str3:sub(2)
            elseif str3:sub(1, 1) ~= "." then
                str3 = "." .. str3
            end

            local match, v12 = str3:match("^%.(%S+)%s*(.*)$")
            local v13 = match

            if match then
                local str4 = match:lower()
                v13 = str4
                local str5 = v12 ~= "" and " " .. v12 or ""
                str3 = "." .. str4 .. str5
            end

            local match2 = str3:match("^%.button%s+(.+)$")

            if not match2 and str3 ~= ".button" then
                local match3 = str3:match("^%.unbutton%s+(.+)$")

                if not match3 and str3 ~= ".unbutton" then
                    if v12 == "" and (v13 == "keybind" or v13 == "keybinds" or v13 == "kb") then
                        if pcKeybindToggle() and arg3 ~= "chat" then
                            collapse()
                        end

                        return
                    end

                    local flag6 = v12 == "" and booleanCommands[v13]

                    if flag6 then
                        local v14 = flag6.get()
                        local str4 = v14 and " off" or " on"
                        str3 = str3 .. str4
                    end

                    if str3 ~= ".clear" and str3 ~= ".cls" then
                        if handleSkidCommandText and handleSkidCommandText(str3, arg3) then
                            return
                        end

                        if autoWeaponCommandText(str3, arg3) then
                            return
                        end

                        if getMethodCommandText(str3, arg3) then
                            return
                        end

                        if silentAimVBCommandText(str3, arg3) then
                            return
                        end

                        if antiFlingModeCommandText(str3, arg3) then
                            return
                        end
                        local match4 = str3:match("^%.antifling%s+(.+)$")
                        local match5 = match4 or str3:match("^%.af%s+(.+)$")

                        if not match5 then
                            local match6 = str3:match("^%.shield%s+(.+)$")

                            if not match6 then
                                local match7 = str3:match("^%.aneutral%s+(.+)$")

                                if not match7 then
                                    local match8 = str3:match("^%.autore%s+(.+)$")
                                    local match9 = match8 or str3:match("^%.autorespawn%s+(.+)$")

                                    if not match9 then
                                        local match10 = str3:match("^%.autoarrest%s+(.+)$")
                                        local match11 = match10 or str3:match("^%.ar%s+(.+)$")

                                        if not match11 then
                                            local match12 = str3:match("^%.unlk%s+(.+)$")
                                            local match13 = match12 or str3:match("^%.unloopkill%s+(.+)$")

                                            if not match13 and str3 ~= ".unlk" and str3 ~= ".unloopkill" then
                                                local match14 = str3:match("^%.lk%s+(.+)$")
                                                local match15 = match14 or str3:match("^%.loopkill%s+(.+)$")

                                                if not match15 then
                                                    if str3 ~= ".lk" and str3 ~= ".loopkill" then
                                                        local flag7 = str3 == ".kill all" or str3 == ".killall" or str3 == ".kill everyone"

                                                        if not flag7 then
                                                            if str3 == ".kill team" then
                                                                add_line(".kill team", "use Criminals / Inmate / Guards", true)

                                                                if arg3 ~= "chat" then
                                                                    red_anim()
                                                                end

                                                                return
                                                            end

                                                            local match16 = str3:match("^%.kill%s+team%s+(.+)$")
                                                            local match17 = match16 or str3:match("^%.kill%s+(.+)$")
                                                            local v14 = normalizeKillTeamArg(match17)

                                                            if not v14 then
                                                                local match18 = str3:match("^%.kill%s+(.+)$")

                                                                if not match18 and str3 ~= ".kill" then
                                                                    for i, v15 in ipairs(tbl8) do
                                                                        if runFlingOptionCommand(str3, v15, arg3) then
                                                                            return
                                                                        end
                                                                    end

                                                                    local match19 = str3:match("^%.fling%s+(.+)$")

                                                                    if not match19 and str3 ~= ".fling" then
                                                                        local match20 = str3:match("^%.antitaze%s+(.+)$")
                                                                        local match21 = match20 or str3:match("^%.ataze%s+(.+)$") or str3:match("^%.at%s+(.+)$")

                                                                        if not match21 then
                                                                            local match22 = str3:match("^%.antiriot%s+(.+)$")

                                                                            if not match22 then
                                                                                local match23 = str3:match("^%.laser%s+(.+)$")

                                                                                if not match23 then
                                                                                    if str3 == ".laser" then
                                                                                        add_line(".laser", "use .laser on/off", true)

                                                                                        if arg3 ~= "chat" then
                                                                                            red_anim()
                                                                                        end

                                                                                        return
                                                                                    end

                                                                                    local match24 = str3:match("^%.(boostfps)$")
                                                                                    local match25 = match24 or str3:match("^%.(bestfps)$") or str3:match("^%.(antilag)$")

                                                                                    if not match25 then
                                                                                        local match26 = str3:match("^%.unfling%s+(.+)$")

                                                                                        if not match26 and str3 ~= ".unfling" then
                                                                                            local match27 = str3:match("^%.save%s+(.+)$")

                                                                                            if not match27 then
                                                                                                local match28 = str3:match("^%.delete%s+(.+)$")
                                                                                                local match29 = match28 or str3:match("^%.del%s+(.+)$")

                                                                                                if not match29 then
                                                                                                    local match30 = str3:match("^%.tp%s+(.+)$")
                                                                                                    local match31 = match30 or str3:match("^%.goto%s+(.+)$") or str3:match("^%.to%s+(.+)$")

                                                                                                    if not match31 and str3 ~= ".tp" and str3 ~= ".goto" and str3 ~= ".to" then
                                                                                                        local match32 = str3:match("^%.view%s+(.+)$")

                                                                                                        if not match32 and str3 ~= ".view" then
                                                                                                            if str3 ~= ".unview" and str3 ~= ".viewoff" then
                                                                                                                local match33 = str3:match("^%.saveserver%s+(.+)$")

                                                                                                                if not match33 and str3 ~= ".saveserver" then
                                                                                                                    local match34 = str3:match("^%.clearserver%s+(.+)$")

                                                                                                                    if not match34 and str3 ~= ".clearserver" then
                                                                                                                        local match35 = str3:match("^%.joinserver%s+(.+)$")
                                                                                                                        local match36 = match35 or str3:match("^%.js%s+(.+)$")

                                                                                                                        if not match36 and str3 ~= ".joinserver" and str3 ~= ".js" then
                                                                                                                            local match37 = str3:match("^%.jobid%s*(.*)$")
                                                                                                                            local match38 = match37 or str3:match("^%.serverid%s*(.*)$")

                                                                                                                            if match38 == nil then
                                                                                                                                if str3 ~= ".servers" and str3 ~= ".savedservers" then
                                                                                                                                    if str3 ~= ".serverhop" and str3 ~= ".hop" then
                                                                                                                                        if str3 ~= ".rejoin" and str3 ~= ".rj" then
                                                                                                                                            local match39 = str3:match("^%.carspeed%s+(.+)$")
                                                                                                                                            local match40 = match39 or str3:match("^%.cs%s+(.+)$")

                                                                                                                                            if not match40 and str3 ~= ".carspeed" and str3 ~= ".cs" then
                                                                                                                                                if str3 == ".pp" then
                                                                                                                                                    if pp_command() and arg3 ~= "chat" then
                                                                                                                                                        collapse()
                                                                                                                                                    end

                                                                                                                                                    return
                                                                                                                                                end

                                                                                                                                                local match41 = str3:match("^%.backpackhead%s+(.+)$")
                                                                                                                                                local match42 = match41 or str3:match("^%.bhead%s+(.+)$")

                                                                                                                                                if not match42 then
                                                                                                                                                    local match43 = str3:match("^%.toolaura%s+(.+)$")
                                                                                                                                                    local match44 = match43 or str3:match("^%.taura%s+(.+)$")

                                                                                                                                                    if not match44 then
                                                                                                                                                        local match45 = str3:match("^%.punchaura%s+(.+)$")
                                                                                                                                                        local match46 = match45 or str3:match("^%.pa%s+(.+)$")

                                                                                                                                                        if not match46 then
                                                                                                                                                            if str3 == ".skidlist" then
                                                                                                                                                                showSkidList()

                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                    collapse()
                                                                                                                                                                end

                                                                                                                                                                return
                                                                                                                                                            end

                                                                                                                                                            local match47 = str3:match("^%.addskid%s+(.+)$")

                                                                                                                                                            if not match47 then
                                                                                                                                                                local match48 = str3:match("^%.deleteskid%s+(.+)$")
                                                                                                                                                                local match49 = match48 or str3:match("^%.delskid%s+(.+)$")

                                                                                                                                                                if not match49 then
                                                                                                                                                                    local match50 = str3:match("^%.target%s+(.+)$")

                                                                                                                                                                    if not match50 and str3 ~= ".target" then
                                                                                                                                                                        local match51 = str3:match("^%.silentaim%s+(.+)$")
                                                                                                                                                                        local match52 = match51 or str3:match("^%.silent%s+(.+)$") or str3:match("^%.aimbot%s+(.+)$")

                                                                                                                                                                        if not match52 then
                                                                                                                                                                            if str3 ~= ".silentaim" and str3 ~= ".silent" and str3 ~= ".aimbot" then
                                                                                                                                                                                local match53 = str3:match("^%.hitchance%s+(.+)$")

                                                                                                                                                                                if not match53 and str3 ~= ".hitchance" then
                                                                                                                                                                                    local match54 = str3:match("^%.fovsize%s+(.+)$")

                                                                                                                                                                                    if not match54 and str3 ~= ".fovsize" then
                                                                                                                                                                                        local match55 = str3:match("^%.hitpart%s+(.+)$")

                                                                                                                                                                                        if not match55 and str3 ~= ".hitpart" then
                                                                                                                                                                                            local match56 = str3:match("^%.fov%s+(.+)$")

                                                                                                                                                                                            if not match56 then
                                                                                                                                                                                                if str3 == ".fov" then
                                                                                                                                                                                                    add_line(str3, "use .fov on/off", true)

                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                        red_anim()
                                                                                                                                                                                                    end

                                                                                                                                                                                                    return
                                                                                                                                                                                                end

                                                                                                                                                                                                local match57 = str3:match("^%.wallcheck%s+(.+)$")
                                                                                                                                                                                                local match58 = match57 or str3:match("^%.wc%s+(.+)$")

                                                                                                                                                                                                if not match58 then
                                                                                                                                                                                                    if str3 ~= ".wallcheck" and str3 ~= ".wc" then
                                                                                                                                                                                                        local match59 = str3:match("^%.teamcheck%s+(.+)$")

                                                                                                                                                                                                        if not match59 then
                                                                                                                                                                                                            if str3 == ".teamcheck" then
                                                                                                                                                                                                                add_line(str3, "use .teamcheck on/off", true)

                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                    red_anim()
                                                                                                                                                                                                                end

                                                                                                                                                                                                                return
                                                                                                                                                                                                            end

                                                                                                                                                                                                            local match60 = str3:match("^%.forcefield%s+(.+)$")
                                                                                                                                                                                                            local match61 = match60 or str3:match("^%.ff%s+(.+)$")

                                                                                                                                                                                                            if not match61 then
                                                                                                                                                                                                                if str3 ~= ".forcefield" and str3 ~= ".ff" then
                                                                                                                                                                                                                    local match62 = str3:match("^%.passverify%s+(.+)$")
                                                                                                                                                                                                                    local match63 = match62 or str3:match("^%.pverify%s+(.+)$")

                                                                                                                                                                                                                    if not match63 then
                                                                                                                                                                                                                        local match64 = str3:match("^%.playerlist%s+(.+)$")
                                                                                                                                                                                                                        local match65 = match64 or str3:match("^%.guiplayers%s+(.+)$") or str3:match("^%.pgui%s+(.+)$")

                                                                                                                                                                                                                        if not match65 then
                                                                                                                                                                                                                            local match66 = str3:match("^%.kf%s+(.+)$")
                                                                                                                                                                                                                            local match67 = match66 or str3:match("^%.killfeedback%s+(.+)$")

                                                                                                                                                                                                                            if not match67 then
                                                                                                                                                                                                                                local match68 = str3:match("^%.aimdetect%s+(.+)$")
                                                                                                                                                                                                                                local match69 = match68 or str3:match("^%.aimbotdetect%s+(.+)$")

                                                                                                                                                                                                                                if not match69 then
                                                                                                                                                                                                                                    local match70 = str3:match("^%.cartpdetection%s+(.+)$")
                                                                                                                                                                                                                                    local match71 = match70 or str3:match("^%.cd%s+(.+)$")

                                                                                                                                                                                                                                    if not match71 then
                                                                                                                                                                                                                                        local match72 = str3:match("^%.invisibledetection%s+(.+)$")
                                                                                                                                                                                                                                        local match73 = match72 or str3:match("^%.id%s+(.+)$")

                                                                                                                                                                                                                                        if not match73 then
                                                                                                                                                                                                                                            local match74 = str3:match("^%.lockspeed%s+(.+)$")
                                                                                                                                                                                                                                            local match75 = match74 or str3:match("^%.lockwalkspeed%s+(.+)$")

                                                                                                                                                                                                                                            if not match75 then
                                                                                                                                                                                                                                                local match76 = str3:match("^%.esp%s+(.+)$")
                                                                                                                                                                                                                                                local match77 = str3:match("^%.tracers%s+(.+)$")
                                                                                                                                                                                                                                                local match78 = str3:match("^%.tracerinfo%s+(.+)$")
                                                                                                                                                                                                                                                local match79 = str3:match("^%.backpackview%s+(.+)$")
                                                                                                                                                                                                                                                local match80 = match79 or str3:match("^%.bpview%s+(.+)$")
                                                                                                                                                                                                                                                local match81 = str3:match("^%.healthgui%s+(.+)$")
                                                                                                                                                                                                                                                local match82 = match81 or str3:match("^%.hg%s+(.+)$")
                                                                                                                                                                                                                                                local match83, v15 = str3:match("^%.(%S+)%s*(.-)$")
                                                                                                                                                                                                                                                local flag8 = match83 == "clearhitbox" and clearHitboxCommand or (match83 == "targethitbox" or match83 == "thitbox" or match83 == "thbe") and targetHitboxCommand

                                                                                                                                                                                                                                                if not flag8 then
                                                                                                                                                                                                                                                    if not match76 and str3 ~= ".esp" then
                                                                                                                                                                                                                                                        if not match77 and str3 ~= ".tracers" then
                                                                                                                                                                                                                                                            if not match78 and str3 ~= ".tracerinfo" then
                                                                                                                                                                                                                                                                if not match80 and str3 ~= ".backpackview" and str3 ~= ".bpview" then
                                                                                                                                                                                                                                                                    if not match82 and str3 ~= ".healthgui" and str3 ~= ".hg" then
                                                                                                                                                                                                                                                                        if match83 == "hitbox" then
                                                                                                                                                                                                                                                                            local v16 = parse_on_off(v15)

                                                                                                                                                                                                                                                                            if v16 == nil then
                                                                                                                                                                                                                                                                                add_line(str3, "use .hitbox on/off", true)

                                                                                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                    red_anim()
                                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                                            clearTargetHitboxes()
                                                                                                                                                                                                                                                                            flag5 = false
                                                                                                                                                                                                                                                                            espCfg.hitboxEnabled = v16
                                                                                                                                                                                                                                                                            featureSet("hitbox_enabled", v16)
                                                                                                                                                                                                                                                                            save_cfg()
                                                                                                                                                                                                                                                                            refresh_saved_commands()
                                                                                                                                                                                                                                                                            local v17 = add_line
                                                                                                                                                                                                                                                                            local str4 = v16 and "on" or "off"
                                                                                                                                                                                                                                                                            local str5 = ".hitbox " .. str4
                                                                                                                                                                                                                                                                            local str6 = v16 and "on" or "off"
                                                                                                                                                                                                                                                                            v17(str5, "hitbox expandida " .. str6, false)

                                                                                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                collapse()
                                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                        if match83 ~= "hitboxsize" and match83 ~= "hbsize" then
                                                                                                                                                                                                                                                                            if str3 ~= ".m4" and str3 ~= ".m4a1" and str3 ~= ".fal" and str3 ~= ".ak" and str3 ~= ".ak-47" and str3 ~= ".rev" and str3 ~= ".revolver" and str3 ~= ".m700" and str3 ~= ".sniper" and str3 ~= ".reming" and str3 ~= ".shotgun" and str3 ~= ".clothes" and str3 ~= ".riot" and str3 ~= ".mafia" then
                                                                                                                                                                                                                                                                                local match84 = str3:match("^%.autoget%s+(keycard)$")
                                                                                                                                                                                                                                                                                local match85 = match84 or str3:match("^%.autoget%s+(key)$") or str3:match("^%.autoget%s+(card)$")

                                                                                                                                                                                                                                                                                if not match85 then
                                                                                                                                                                                                                                                                                    local match86, v16 = str3:match("^%.(aurakeycard)%s*(.*)$")
                                                                                                                                                                                                                                                                                    local v17 = match86
                                                                                                                                                                                                                                                                                    local v18 = v16

                                                                                                                                                                                                                                                                                    if not match86 then
                                                                                                                                                                                                                                                                                        local match87, v19 = str3:match("^%.(autokeycard)%s*(.*)$")
                                                                                                                                                                                                                                                                                        v17 = match87
                                                                                                                                                                                                                                                                                        v18 = v19
                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                    if not v17 then
                                                                                                                                                                                                                                                                                        local match87, v19 = str3:match("^%.(autokey)%s*(.*)$")
                                                                                                                                                                                                                                                                                        v17 = match87
                                                                                                                                                                                                                                                                                        v18 = v19
                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                    if not v17 then
                                                                                                                                                                                                                                                                                        local match87 = str3:match("^%.autoget%s+(.+)$")
                                                                                                                                                                                                                                                                                        local match88 = match87 or str3:match("^%.ag%s+(.+)$")

                                                                                                                                                                                                                                                                                        if not match88 then
                                                                                                                                                                                                                                                                                            if str3 ~= ".combo1" and str3 ~= ".combo2" and str3 ~= ".combo3" then
                                                                                                                                                                                                                                                                                                local match89 = str3:match("^%.noclip%s+(.+)$")

                                                                                                                                                                                                                                                                                                if not match89 then
                                                                                                                                                                                                                                                                                                    local match90 = str3:match("^%.infjump%s+(.+)$")
                                                                                                                                                                                                                                                                                                    local match91 = match90 or str3:match("^%.infinitejump%s+(.+)$")

                                                                                                                                                                                                                                                                                                    if not match91 then
                                                                                                                                                                                                                                                                                                        local v19 = add_line
                                                                                                                                                                                                                                                                                                        local str4 = arg3 == "chat" and "[chat] " or ""
                                                                                                                                                                                                                                                                                                        v19(str4 .. str3, "cmd not found", true)

                                                                                                                                                                                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                                            red_anim()
                                                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                                    local v19 = parse_on_off(match91)

                                                                                                                                                                                                                                                                                                    if v19 == nil then
                                                                                                                                                                                                                                                                                                        add_line(str3, "use .infjump on/off", true)

                                                                                                                                                                                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                                            red_anim()
                                                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                                    if toggleInfJump(v19) and arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                                        collapse()
                                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                                                local v19 = parse_on_off(match89)

                                                                                                                                                                                                                                                                                                if v19 == nil then
                                                                                                                                                                                                                                                                                                    add_line(str3, "use .noclip on/off", true)

                                                                                                                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                                        red_anim()
                                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                                                if toggleNoclip(v19) and arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                                    collapse()
                                                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                                                            local str4 = str3:sub(2)
                                                                                                                                                                                                                                                                                            if spawnQueueAdd("." .. str4, function()
                                                                                                                                                                                                                                                                                                fn20(str4)
                                                                                                                                                                                                                                                                                            end, arg3) then
                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                            fn20(str4)

                                                                                                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                                collapse()
                                                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                                        if autoGetSetList(match88) and arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                            collapse()
                                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                    local v19 = tostring
                                                                                                                                                                                                                                                                                    local str4 = v18 or ""
                                                                                                                                                                                                                                                                                    local str5 = v19(str4):lower():gsub("^%s+", ""):gsub("%s+$", "")

                                                                                                                                                                                                                                                                                    if str5 ~= "off" and str5 ~= "false" and str5 ~= "disable" then
                                                                                                                                                                                                                                                                                        autoKeycardSet(true, false)
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                        autoKeycardSet(false, false)
                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                        collapse()
                                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                                autoKeycardSet(true, false)

                                                                                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                    collapse()
                                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                                            local str4 = str3:sub(2)
                                                                                                                                                                                                                                                                            local v16 = tbl7[str4]

                                                                                                                                                                                                                                                                            if v16 and v16.passId and not ownsGamePass(v16.passId) then
                                                                                                                                                                                                                                                                                add_line("." .. str4, gamepassBlockedMessage(v16), true)
                                                                                                                                                                                                                                                                                red_anim()
                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                                            if spawnQueueAdd("." .. str4, function()
                                                                                                                                                                                                                                                                                fn19(str4)
                                                                                                                                                                                                                                                                            end, arg3) then
                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                            fn19(str4)

                                                                                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                collapse()
                                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                        local num = tonumber(v15)

                                                                                                                                                                                                                                                                        if num then
                                                                                                                                                                                                                                                                            local hitboxSize = math.clamp(num, 1, 10)
                                                                                                                                                                                                                                                                            espCfg.hitboxSize = hitboxSize
                                                                                                                                                                                                                                                                            save_cfg()
                                                                                                                                                                                                                                                                            refresh_saved_commands()
                                                                                                                                                                                                                                                                            add_line(".hitboxsize " .. hitboxSize, "hitbox size set to " .. hitboxSize, false)
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                            add_line(str3, "use .hitboxsize <1-10>", true)

                                                                                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                                red_anim()
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                            collapse()
                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                    local v16 = parse_on_off
                                                                                                                                                                                                                                                                    local str4 = match82 or ""
                                                                                                                                                                                                                                                                    local v17 = v16(str4)

                                                                                                                                                                                                                                                                    if v17 == nil then
                                                                                                                                                                                                                                                                        add_line(str3, "use .healthgui / .hg on/off", true)

                                                                                                                                                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                            red_anim()
                                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                    espCfg.healthGuiEnabled = v17
                                                                                                                                                                                                                                                                    featureSet("health_gui_enabled", v17)

                                                                                                                                                                                                                                                                    if v17 then
                                                                                                                                                                                                                                                                        refreshHealthGuis()
                                                                                                                                                                                                                                                                        task.delay(0.25, refreshHealthGuis)
                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                        removeAllHealthGuis()
                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                    save_cfg()
                                                                                                                                                                                                                                                                    local v18 = add_line
                                                                                                                                                                                                                                                                    local str5 = v17 and "on" or "off"
                                                                                                                                                                                                                                                                    local str6 = ".healthgui " .. str5
                                                                                                                                                                                                                                                                    local str7 = v17 and "on" or "off"
                                                                                                                                                                                                                                                                    v18(str6, "health gui " .. str7, false)

                                                                                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                        collapse()
                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                local v16 = parse_on_off
                                                                                                                                                                                                                                                                local str4 = match80 or ""
                                                                                                                                                                                                                                                                local v17 = v16(str4)

                                                                                                                                                                                                                                                                if v17 == nil then
                                                                                                                                                                                                                                                                    add_line(str3, "use .backpackview on/off", true)

                                                                                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                        red_anim()
                                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                espCfg.backpackViewEnabled = v17

                                                                                                                                                                                                                                                                if not v17 then
                                                                                                                                                                                                                                                                    backpackCache = {}
                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                save_cfg()
                                                                                                                                                                                                                                                                local v18 = add_line
                                                                                                                                                                                                                                                                local str5 = v17 and "on" or "off"
                                                                                                                                                                                                                                                                local str6 = ".backpackview " .. str5
                                                                                                                                                                                                                                                                local str7 = v17 and "on" or "off"
                                                                                                                                                                                                                                                                v18(str6, "vista de mochila " .. str7, false)

                                                                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                    collapse()
                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                            local v16 = parse_on_off
                                                                                                                                                                                                                                                            local str4 = match78 or ""
                                                                                                                                                                                                                                                            local v17 = v16(str4)

                                                                                                                                                                                                                                                            if v17 == nil then
                                                                                                                                                                                                                                                                add_line(str3, "use .tracerinfo on/off", true)

                                                                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                    red_anim()
                                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                            espCfg.tracerInfoEnabled = v17

                                                                                                                                                                                                                                                            if not espCfg.tracersEnabled and not v17 then
                                                                                                                                                                                                                                                                removeAllTracers()
                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                            save_cfg()
                                                                                                                                                                                                                                                            local v18 = add_line
                                                                                                                                                                                                                                                            local str5 = v17 and "on" or "off"
                                                                                                                                                                                                                                                            local str6 = ".tracerinfo " .. str5
                                                                                                                                                                                                                                                            local str7 = v17 and "on" or "off"
                                                                                                                                                                                                                                                            v18(str6, "informacion en trazadoras " .. str7, false)

                                                                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                collapse()
                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                        local v16 = parse_on_off
                                                                                                                                                                                                                                                        local str4 = match77 or ""
                                                                                                                                                                                                                                                        local v17 = v16(str4)

                                                                                                                                                                                                                                                        if v17 == nil then
                                                                                                                                                                                                                                                            add_line(str3, "use .tracers on/off", true)

                                                                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                                                                red_anim()
                                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                        espCfg.tracersEnabled = v17

                                                                                                                                                                                                                                                        if not v17 and not espCfg.tracerInfoEnabled then
                                                                                                                                                                                                                                                            removeAllTracers()
                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                        save_cfg()
                                                                                                                                                                                                                                                        local v18 = add_line
                                                                                                                                                                                                                                                        local str5 = v17 and "on" or "off"
                                                                                                                                                                                                                                                        local str6 = ".tracers " .. str5
                                                                                                                                                                                                                                                        local str7 = v17 and "on" or "off"
                                                                                                                                                                                                                                                        v18(str6, "trazadoras " .. str7, false)

                                                                                                                                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                                                                                                                                            collapse()
                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                    local v16 = parse_on_off
                                                                                                                                                                                                                                                    local str4 = match76 or ""
                                                                                                                                                                                                                                                    local v17 = v16(str4)

                                                                                                                                                                                                                                                    if v17 == nil then
                                                                                                                                                                                                                                                        add_line(str3, "use .esp on/off", true)

                                                                                                                                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                                                                                                                                            red_anim()
                                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                    espCfg.espEnabled = v17
                                                                                                                                                                                                                                                    refreshESP()

                                                                                                                                                                                                                                                    if v17 then
                                                                                                                                                                                                                                                        c4EspRefresh()
                                                                                                                                                                                                                                                        task.delay(0.25, refreshESP)
                                                                                                                                                                                                                                                        task.delay(0.9, refreshESP)
                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                        c4EspClear()
                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                    save_cfg()
                                                                                                                                                                                                                                                    local v18 = add_line
                                                                                                                                                                                                                                                    local str5 = v17 and "on" or "off"
                                                                                                                                                                                                                                                    local str6 = ".esp " .. str5
                                                                                                                                                                                                                                                    local str7 = v17 and "on" or "off"
                                                                                                                                                                                                                                                    v18(str6, "contorno esp " .. str7, false)

                                                                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                                                                        collapse()
                                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                if flag8(v15) and arg3 ~= "chat" then
                                                                                                                                                                                                                                                    collapse()
                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                            local v15 = parse_on_off(match75)

                                                                                                                                                                                                                                            if v15 == nil then
                                                                                                                                                                                                                                                add_line(str3, "use on/off", true)

                                                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                                                    red_anim()
                                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                            if set_speed_lock(v15) and arg3 ~= "chat" then
                                                                                                                                                                                                                                                collapse()
                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                        local v15 = parse_on_off(match73)

                                                                                                                                                                                                                                        if v15 == nil then
                                                                                                                                                                                                                                            add_line(str3, "use .invisibledetection on/off", true)

                                                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                                                red_anim()
                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                        if set_invisible_detection(v15) and arg3 ~= "chat" then
                                                                                                                                                                                                                                            collapse()
                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                    local v15 = parse_on_off(match71)

                                                                                                                                                                                                                                    if v15 == nil then
                                                                                                                                                                                                                                        add_line(str3, "use .cartpdetection on/off or .cd on/off", true)

                                                                                                                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                                                                                                                            red_anim()
                                                                                                                                                                                                                                        end

                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                    if set_fling_detector(v15) and arg3 ~= "chat" then
                                                                                                                                                                                                                                        collapse()
                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                local v15 = parse_on_off(match69)

                                                                                                                                                                                                                                if v15 == nil then
                                                                                                                                                                                                                                    add_line(str3, "use on/off", true)

                                                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                                                        red_anim()
                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                if set_aim_detect(v15) and arg3 ~= "chat" then
                                                                                                                                                                                                                                    collapse()
                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                return
                                                                                                                                                                                                                            end

                                                                                                                                                                                                                            local v15 = parse_on_off(match67)

                                                                                                                                                                                                                            if v15 == nil then
                                                                                                                                                                                                                                add_line(str3, "use on/off", true)

                                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                                    red_anim()
                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                return
                                                                                                                                                                                                                            end

                                                                                                                                                                                                                            if set_kill_feedback(v15) and arg3 ~= "chat" then
                                                                                                                                                                                                                                collapse()
                                                                                                                                                                                                                            end

                                                                                                                                                                                                                            return
                                                                                                                                                                                                                        end

                                                                                                                                                                                                                        local v15 = parse_on_off(match65)

                                                                                                                                                                                                                        if v15 == nil then
                                                                                                                                                                                                                            add_line(str3, "use .playerlist on/off or .pgui on/off", true)

                                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                                red_anim()
                                                                                                                                                                                                                            end

                                                                                                                                                                                                                            return
                                                                                                                                                                                                                        end

                                                                                                                                                                                                                        if playerListSet(v15) and arg3 ~= "chat" then
                                                                                                                                                                                                                            collapse()
                                                                                                                                                                                                                        end

                                                                                                                                                                                                                        return
                                                                                                                                                                                                                    end

                                                                                                                                                                                                                    if passVerifyCommand(match63) and arg3 ~= "chat" then
                                                                                                                                                                                                                        collapse()
                                                                                                                                                                                                                    end

                                                                                                                                                                                                                    return
                                                                                                                                                                                                                end

                                                                                                                                                                                                                add_line(str3, "use .forcefield on/off or .ff on/off", true)

                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                    red_anim()
                                                                                                                                                                                                                end

                                                                                                                                                                                                                return
                                                                                                                                                                                                            end

                                                                                                                                                                                                            local v15 = parse_on_off(match61)

                                                                                                                                                                                                            if v15 == nil then
                                                                                                                                                                                                                add_line(str3, "use .forcefield on/off or .ff on/off", true)

                                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                                    red_anim()
                                                                                                                                                                                                                end

                                                                                                                                                                                                                return
                                                                                                                                                                                                            end

                                                                                                                                                                                                            if silentAimSetCheck("silent_forcefield_check", ".forcefield", v15) and arg3 ~= "chat" then
                                                                                                                                                                                                                collapse()
                                                                                                                                                                                                            end

                                                                                                                                                                                                            return
                                                                                                                                                                                                        end

                                                                                                                                                                                                        local v15 = parse_on_off(match59)

                                                                                                                                                                                                        if v15 == nil then
                                                                                                                                                                                                            add_line(str3, "use .teamcheck on/off", true)

                                                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                                                red_anim()
                                                                                                                                                                                                            end

                                                                                                                                                                                                            return
                                                                                                                                                                                                        end

                                                                                                                                                                                                        if silentAimSetCheck("silent_team_check", ".teamcheck", v15) and arg3 ~= "chat" then
                                                                                                                                                                                                            collapse()
                                                                                                                                                                                                        end

                                                                                                                                                                                                        return
                                                                                                                                                                                                    end

                                                                                                                                                                                                    add_line(str3, "use .wallcheck on/off or .wc on/off", true)

                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                        red_anim()
                                                                                                                                                                                                    end

                                                                                                                                                                                                    return
                                                                                                                                                                                                end

                                                                                                                                                                                                local v15 = parse_on_off(match58)

                                                                                                                                                                                                if v15 == nil then
                                                                                                                                                                                                    add_line(str3, "use .wallcheck on/off or .wc on/off", true)

                                                                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                                                                        red_anim()
                                                                                                                                                                                                    end

                                                                                                                                                                                                    return
                                                                                                                                                                                                end

                                                                                                                                                                                                if silentAimSetCheck("silent_wall_check", ".wallcheck", v15) and arg3 ~= "chat" then
                                                                                                                                                                                                    collapse()
                                                                                                                                                                                                end

                                                                                                                                                                                                return
                                                                                                                                                                                            end

                                                                                                                                                                                            local v15 = parse_on_off(match56)

                                                                                                                                                                                            if v15 == nil then
                                                                                                                                                                                                add_line(str3, "use .fov on/off", true)

                                                                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                                                                    red_anim()
                                                                                                                                                                                                end

                                                                                                                                                                                                return
                                                                                                                                                                                            end

                                                                                                                                                                                            if silentAimSetFovVisible(v15) and arg3 ~= "chat" then
                                                                                                                                                                                                collapse()
                                                                                                                                                                                            end

                                                                                                                                                                                            return
                                                                                                                                                                                        end

                                                                                                                                                                                        if silentAimSetHitPart(match55) and arg3 ~= "chat" then
                                                                                                                                                                                            collapse()
                                                                                                                                                                                        end

                                                                                                                                                                                        return
                                                                                                                                                                                    end

                                                                                                                                                                                    if silentAimSetFovSize(match54) and arg3 ~= "chat" then
                                                                                                                                                                                        collapse()
                                                                                                                                                                                    end

                                                                                                                                                                                    return
                                                                                                                                                                                end

                                                                                                                                                                                if silentAimSetHitChance(match53) and arg3 ~= "chat" then
                                                                                                                                                                                    collapse()
                                                                                                                                                                                end

                                                                                                                                                                                return
                                                                                                                                                                            end

                                                                                                                                                                            add_line(str3, "use .silentaim on/off", true)

                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                red_anim()
                                                                                                                                                                            end

                                                                                                                                                                            return
                                                                                                                                                                        end

                                                                                                                                                                        local v15 = parse_on_off(match52)

                                                                                                                                                                        if v15 == nil then
                                                                                                                                                                            add_line(str3, "use .silentaim on/off", true)

                                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                                red_anim()
                                                                                                                                                                            end

                                                                                                                                                                            return
                                                                                                                                                                        end

                                                                                                                                                                        if silentAimSet(v15, false) and arg3 ~= "chat" then
                                                                                                                                                                            collapse()
                                                                                                                                                                        end

                                                                                                                                                                        return
                                                                                                                                                                    end

                                                                                                                                                                    local v15 = targetCommand
                                                                                                                                                                    local str4 = match50 or ""

                                                                                                                                                                    if v15(str4) and arg3 ~= "chat" then
                                                                                                                                                                        collapse()
                                                                                                                                                                    elseif arg3 ~= "chat" then
                                                                                                                                                                        task.delay(0.18, function()
                                                                                                                                                                            if opened then
                                                                                                                                                                                input:CaptureFocus()
                                                                                                                                                                            end
                                                                                                                                                                        end)
                                                                                                                                                                    end

                                                                                                                                                                    return
                                                                                                                                                                end

                                                                                                                                                                if deleteSkidCommand(match49) and arg3 ~= "chat" then
                                                                                                                                                                    collapse()
                                                                                                                                                                end

                                                                                                                                                                return
                                                                                                                                                            end

                                                                                                                                                            if addSkidCommand(match47) and arg3 ~= "chat" then
                                                                                                                                                                collapse()
                                                                                                                                                            end

                                                                                                                                                            return
                                                                                                                                                        end

                                                                                                                                                        local v15 = parse_on_off(match46)

                                                                                                                                                        if v15 == nil then
                                                                                                                                                            add_line(str3, "use .punchaura on/off or .pa on/off", true)

                                                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                                                red_anim()
                                                                                                                                                            end

                                                                                                                                                            return
                                                                                                                                                        end

                                                                                                                                                        if punchAuraSet(v15) and arg3 ~= "chat" then
                                                                                                                                                            collapse()
                                                                                                                                                        end

                                                                                                                                                        return
                                                                                                                                                    end

                                                                                                                                                    local v15 = parse_on_off(match44)

                                                                                                                                                    if v15 == nil then
                                                                                                                                                        add_line(str3, "use .toolaura on/off or .taura on/off", true)

                                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                                            red_anim()
                                                                                                                                                        end

                                                                                                                                                        return
                                                                                                                                                    end

                                                                                                                                                    if toolAuraSet(v15) and arg3 ~= "chat" then
                                                                                                                                                        collapse()
                                                                                                                                                    end

                                                                                                                                                    return
                                                                                                                                                end

                                                                                                                                                local v15 = parse_on_off(match42)

                                                                                                                                                if v15 == nil then
                                                                                                                                                    add_line(str3, "use .backpackhead on/off or .bhead on/off", true)

                                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                                        red_anim()
                                                                                                                                                    end

                                                                                                                                                    return
                                                                                                                                                end

                                                                                                                                                if animBackpackHeadSet(v15) and arg3 ~= "chat" then
                                                                                                                                                    collapse()
                                                                                                                                                end

                                                                                                                                                return
                                                                                                                                            end

                                                                                                                                            local v15 = parse_on_off
                                                                                                                                            local str4 = match40 or "on"
                                                                                                                                            local v16 = v15(str4)

                                                                                                                                            if v16 == nil then
                                                                                                                                                add_line(".carspeed", "use .carspeed/.cs on/off", true)

                                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                                    red_anim()
                                                                                                                                                end

                                                                                                                                                return
                                                                                                                                            end

                                                                                                                                            if carspeed(v16) and arg3 ~= "chat" then
                                                                                                                                                collapse()
                                                                                                                                            end

                                                                                                                                            return
                                                                                                                                        end

                                                                                                                                        rejoin()

                                                                                                                                        if arg3 ~= "chat" then
                                                                                                                                            collapse()
                                                                                                                                        end

                                                                                                                                        return
                                                                                                                                    end

                                                                                                                                    serverhop()

                                                                                                                                    if arg3 ~= "chat" then
                                                                                                                                        collapse()
                                                                                                                                    end

                                                                                                                                    return
                                                                                                                                end

                                                                                                                                show_saved_servers()

                                                                                                                                if arg3 ~= "chat" then
                                                                                                                                    expand(false)
                                                                                                                                end

                                                                                                                                return
                                                                                                                            end

                                                                                                                            if copy_current_server_id(match38) and arg3 ~= "chat" then
                                                                                                                                collapse()
                                                                                                                            end

                                                                                                                            return
                                                                                                                        end

                                                                                                                        if not match36 then
                                                                                                                            add_line(str3, "use .joinserver jobid/name or .js jobid/name", true)

                                                                                                                            if arg3 ~= "chat" then
                                                                                                                                red_anim()
                                                                                                                            end

                                                                                                                            return
                                                                                                                        end

                                                                                                                        if join_saved_server(match36) and arg3 ~= "chat" then
                                                                                                                            collapse()
                                                                                                                        end

                                                                                                                        return
                                                                                                                    end

                                                                                                                    if clear_saved_server(match34) and arg3 ~= "chat" then
                                                                                                                        expand(false)
                                                                                                                    end

                                                                                                                    return
                                                                                                                end

                                                                                                                if save_current_server(match33) and arg3 ~= "chat" then
                                                                                                                    expand(false)
                                                                                                                end

                                                                                                                return
                                                                                                            end

                                                                                                            if unview() and arg3 ~= "chat" then
                                                                                                                collapse()
                                                                                                            end

                                                                                                            return
                                                                                                        end

                                                                                                        local v15 = smart_target_arg(match32)
                                                                                                        if not v15 then
                                                                                                            smart_target_error(".view")
                                                                                                            return
                                                                                                        end

                                                                                                        if view_any(v15) and arg3 ~= "chat" then
                                                                                                            collapse()
                                                                                                        end

                                                                                                        return
                                                                                                    end

                                                                                                    local v15 = smart_target_arg(match31)
                                                                                                    if not v15 then
                                                                                                        smart_target_error(".tp")
                                                                                                        return
                                                                                                    end

                                                                                                    if spawnQueueAdd(str3, function()
                                                                                                        if autoRespawnDirectTpPriority then
                                                                                                            autoRespawnDirectTpPriority("tp")
                                                                                                        end

                                                                                                        if autoRespawnDeadTpBegin then
                                                                                                            autoRespawnDeadTpBegin(v15)
                                                                                                        end

                                                                                                        local now = os.clock()
                                                                                                        local flag8 = false
                                                                                                        local character_, humanoid_, humanoidRootPart

                                                                                                        repeat
                                                                                                            character_ = LocalPlayer.Character
                                                                                                            humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
                                                                                                            humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
                                                                                                            if humanoid_ and humanoidRootPart and humanoid_.Health > 0 then
                                                                                                                flag8 = true
                                                                                                                break
                                                                                                            end
                                                                                                            task.wait(0.03)
                                                                                                        until os.clock() - now > 2.5

                                                                                                        if flag8 then
                                                                                                            RunService.Heartbeat:Wait()
                                                                                                            RunService.Heartbeat:Wait()
                                                                                                        end

                                                                                                        local flag9 = flag8 and tp_any(v15) or false

                                                                                                        if autoRespawnDeadTpEnd then
                                                                                                            autoRespawnDeadTpEnd()
                                                                                                        end

                                                                                                        return flag9
                                                                                                    end, arg3) then
                                                                                                        return
                                                                                                    end

                                                                                                    if tp_any(v15) and arg3 ~= "chat" then
                                                                                                        collapse()
                                                                                                    end

                                                                                                    return
                                                                                                end

                                                                                                if delete_save(match29) and arg3 ~= "chat" then
                                                                                                    expand(false)
                                                                                                end

                                                                                                return
                                                                                            end

                                                                                            if save_pos(match27) and arg3 ~= "chat" then
                                                                                                expand(false)
                                                                                            end

                                                                                            return
                                                                                        end

                                                                                        local v15 = smart_target_arg(match26)
                                                                                        if not v15 then
                                                                                            smart_target_error(".unfling")
                                                                                            return
                                                                                        end

                                                                                        if unfling_target(v15) and arg3 ~= "chat" then
                                                                                            collapse()
                                                                                        end

                                                                                        return
                                                                                    end

                                                                                    if applyBoostFPS() and arg3 ~= "chat" then
                                                                                        collapse()
                                                                                    end

                                                                                    return
                                                                                end

                                                                                laserCommand(match23:lower())
                                                                                return
                                                                            end

                                                                            if antiRiotCommand(match22) and arg3 ~= "chat" then
                                                                                collapse()
                                                                            elseif arg3 ~= "chat" then
                                                                                task.delay(0.18, function()
                                                                                    if opened then
                                                                                        input:CaptureFocus()
                                                                                    end
                                                                                end)
                                                                            end

                                                                            return
                                                                        end

                                                                        antiTazeCommand(match21)

                                                                        if arg3 ~= "chat" then
                                                                            collapse()
                                                                        end

                                                                        return
                                                                    end

                                                                    local v15 = smart_target_arg(match19)
                                                                    if not v15 then
                                                                        smart_target_error(".fling")
                                                                        return
                                                                    end

                                                                    if fling_target(v15) and arg3 ~= "chat" then
                                                                        collapse()
                                                                    end

                                                                    return
                                                                end

                                                                local v15 = smart_target_arg(match18)
                                                                if not v15 then
                                                                    smart_target_error(".kill")
                                                                    return
                                                                end
                                                                real_kill(v15)

                                                                if arg3 ~= "chat" then
                                                                    collapse()
                                                                end

                                                                return
                                                            end

                                                            if killTeam(v14) and arg3 ~= "chat" then
                                                                collapse()
                                                            end

                                                            return
                                                        end

                                                        if killAllTargets() and arg3 ~= "chat" then
                                                            collapse()
                                                        end

                                                        return
                                                    end

                                                    add_line(";lk", "use ;lk user (num)", true)

                                                    if arg3 ~= "chat" then
                                                        red_anim()
                                                    end

                                                    return
                                                end

                                                if loopKillCommand(match15) and arg3 ~= "chat" then
                                                    collapse()
                                                end

                                                return
                                            end

                                            if loopKillCancel(match13) and arg3 ~= "chat" then
                                                collapse()
                                            end

                                            return
                                        end

                                        if autoArrestCommand(match11) and arg3 ~= "chat" then
                                            collapse()
                                        elseif arg3 ~= "chat" then
                                            task.delay(0.18, function()
                                                if opened then
                                                    input:CaptureFocus()
                                                end
                                            end)
                                        end

                                        return
                                    end

                                    if autoRespawnCommand(match9) and arg3 ~= "chat" then
                                        collapse()
                                    elseif arg3 ~= "chat" then
                                        task.delay(0.18, function()
                                            if opened then
                                                input:CaptureFocus()
                                            end
                                        end)
                                    end

                                    return
                                end

                                if autoRespawnNeutralCommand(match7) and arg3 ~= "chat" then
                                    collapse()
                                elseif arg3 ~= "chat" then
                                    task.delay(0.18, function()
                                        if opened then
                                            input:CaptureFocus()
                                        end
                                    end)
                                end

                                return
                            end

                            local v14 = parse_on_off(match6)

                            if v14 == nil then
                                add_line(str3, "use .shield on/off", true)

                                if arg3 ~= "chat" then
                                    red_anim()
                                end

                                return
                            end

                            if wallSet(v14, false) and arg3 ~= "chat" then
                                collapse()
                            end

                            return
                        end

                        if antiFlingV1Command(match5) and arg3 ~= "chat" then
                            collapse()
                        elseif arg3 ~= "chat" then
                            task.delay(0.18, function()
                                if opened then
                                    input:CaptureFocus()
                                end
                            end)
                        end

                        return
                    end

                    clear_logs()

                    if arg3 ~= "chat" then
                        task.delay(0.18, function()
                            if opened then
                                input:CaptureFocus()
                            end
                        end)
                    end

                    return
                end

                if mobileToggleButtonRemove(match3) and arg3 ~= "chat" then
                    collapse()
                end

                return
            end

            if mobileToggleButtonAdd(match2) and arg3 ~= "chat" then
                collapse()
            end

            return
        end

        bringNotifyUsage()
    end

    fn2(UserInputService.InputBegan, function(arg2, arg3)
        if (arg3 or UserInputService:GetFocusedTextBox()) and not input:IsFocused() then
            return
        end

        if arg2.KeyCode == Enum.KeyCode.Period then
            if opened and (not input:IsFocused() or input.Text == "") then
                collapse()
                return
            end

            if not opened and not input:IsFocused() then
                expand(true)
                return
            end
        end
    end)

    fn2(input.FocusLost, function(arg2)
        if arg2 then
            run_command(input.Text, "bar")
        end
    end)

    fn2(toggle.MouseEnter, function()
        local v8 = kxThemeCurrent()
        local v9 = make_tween
        local v10 = toggle
        local tbl10 = {}
        local v11 = kxThemeLighten
        local panel = v8.Panel
        local v12 = opened
        local n2 = v12 and 0.18 or 0.14
        tbl10.BackgroundColor3 = v11(panel, n2)
        tbl10.TextColor3 = v8.Accent
        v9(v10, 0.06, tbl10)

        if togglestroke then
            togglestroke.Color = v8.Accent
        end
    end)

    fn2(toggle.MouseLeave, function()
        set_button_state()

        if kxApplyCommandBarThemeOnly then
            kxApplyCommandBarThemeOnly()
        end
    end)

    fn2(toggle.MouseButton1Click, function()
        if opened then
            collapse(true)
        else
            expand(false)
        end
    end)

    kxSetupMobileButton = function()
        if kxMobileCmdButton or not gui then
            return
        end
        local v8 = gui
        local v9 = vector2(0, 1)
        local v10 = kxUsePhoneGui()
        local v11 = v10 and udim2(0, 44, 0, 44) or udim2(0, 56, 0, 56)
        local v12 = kxUsePhoneGui()
        local v13 = v12 and udim2(0, 10, 1, -12) or udim2(0, 14, 1, -18)
        local TextButton = fn5("TextButton", v8, "Name", "KX_Mobile_CMD_Button", "AnchorPoint", v9, "Size", v11, "Position", v13, "BackgroundColor3", color(18, 26, 38), "BorderSizePixel", 0, "Text", "CMD", "TextColor3", color(170, 210, 255), "Font", Enum.Font.GothamBlack, "TextSize", 12, "AutoButtonColor", false, "Visible", kxUseMobile(), "ZIndex", 90)
        kxMobileCmdButton = TextButton

        if kxApplyPhoneScales then
            kxApplyPhoneScales()
        end

        fn5("UICorner", kxMobileCmdButton, "CornerRadius", udim(1, 0))
        fn5("UIStroke", kxMobileCmdButton, "Color", color(92, 170, 255), "Thickness", 1.25, "Transparency", 0.18)
        kxButtonMin(kxMobileCmdButton, 54, 54)
        kxTextClamp(kxMobileCmdButton, 10, 13)

        fn2(kxMobileCmdButton.Activated, function()
            if opened then
                collapse(true)
            else
                expand(false)
            end
        end)
    end

    kxSetupMobileButton()
    mobileToggleButtonsRestore()
    pcKeybindRestore()
    kxApplyResponsiveLayout()
    task.defer(kxApplyDesktopDefaultPosition)

    task.defer(function()
        if kxApplyTheme then
            kxApplyTheme()
        end
    end)

    if not kxResponsiveBound then
        kxResponsiveBound = true

        pcall(function()
            fn2(UserInputService:GetPropertyChangedSignal("PreferredInput"), function()
                task.defer(kxApplyResponsiveLayout)
            end)
        end)

        pcall(function()
            fn2(camera:GetPropertyChangedSignal("ViewportSize"), function()
                task.wait(0.05)
                kxApplyResponsiveLayout()
            end)
        end)
    end

    fn2(logbtn.MouseEnter, function()
        local v8 = kxThemeCurrent()
        local v9 = make_tween
        local v10 = logbtn
        local tbl10 = {}
        local v11 = kxThemeLighten
        local panel = v8.Panel
        local v12 = logs_open
        local n2 = v12 and 0.16 or 0.1
        tbl10.BackgroundColor3 = v11(panel, n2)
        tbl10.TextColor3 = v8.Text
        v9(v10, 0.06, tbl10)

        if logbtnstroke then
            logbtnstroke.Color = v8.Accent
        end
    end)

    fn2(logbtn.MouseLeave, function()
        set_log_button()

        if kxApplyCommandBarThemeOnly then
            kxApplyCommandBarThemeOnly()
        end
    end)

    fn2(logbtn.MouseButton1Click, function()
        if db_view_open then
            hide_db_view()
        elseif logs_open then
            hide_logs()
        else
            show_logs()
        end
    end)

    fn2(dbbtn.MouseButton1Click, function()
        if db_view_open then
            hide_db_view()
        else
            show_db_view()
        end
    end)

    fn2(dbbtn.MouseEnter, function()
        local v8 = kxThemeCurrent()
        local v9 = make_tween
        local v10 = dbbtn
        local tbl10 = {}
        local v11 = kxThemeLighten
        local panel = v8.Panel
        local v12 = db_view_open
        local n2 = v12 and 0.18 or 0.12
        tbl10.BackgroundColor3 = v11(panel, n2)
        local v13 = db_view_open
        local accent_ = v13 and v8.Accent or v8.Text
        tbl10.TextColor3 = accent_
        v9(v10, 0.06, tbl10)

        if dbbtnstroke then
            dbbtnstroke.Color = v8.Accent
        end
    end)

    fn2(dbbtn.MouseLeave, function()
        set_db_button()

        if kxApplyCommandBarThemeOnly then
            kxApplyCommandBarThemeOnly()
        end
    end)

    fn2(top.InputBegan, function(arg2)
        if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch then
            local position = arg2.Position
            local flag6 = inputwrap.AbsolutePosition.X <= position.X and position.X <= inputwrap.AbsolutePosition.X + inputwrap.AbsoluteSize.X and inputwrap.AbsolutePosition.Y <= position.Y and position.Y <= inputwrap.AbsolutePosition.Y + inputwrap.AbsoluteSize.Y
            local flag7 = toggle.AbsolutePosition.X <= position.X and position.X <= toggle.AbsolutePosition.X + toggle.AbsoluteSize.X and toggle.AbsolutePosition.Y <= position.Y and position.Y <= toggle.AbsolutePosition.Y + toggle.AbsoluteSize.Y
            local flag8 = logbtn.AbsolutePosition.X <= position.X and position.X <= logbtn.AbsolutePosition.X + logbtn.AbsoluteSize.X and logbtn.AbsolutePosition.Y <= position.Y and position.Y <= logbtn.AbsolutePosition.Y + logbtn.AbsoluteSize.Y
            local v8 = px_pos(holder.Position)
            local v9 = kxUsePhoneGui()
            local flag9 = v9

            if v9 then
                flag9 = v8.X < 0

                if not flag9 then
                    local n2 = v8.X + holder.AbsoluteSize.X
                    flag9 = viewport().X < n2
                end
            end

            if (flag6 or flag7 or flag8) and not flag9 then
                return
            end
            dragging = true
            drag_start = arg2.Position
            start_pos = holder.Position
            holder:SetAttribute("KX_UserDragged", true)

            fn2(arg2.Changed, function()
                if arg2.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    local v10 = keep_inside
                    local v11 = opened
                    local v12 = v11 and opened_holder or closed_holder
                    v10(v12)
                end
            end)
        end
    end)

    fn2(top.InputChanged, function(arg2)
        if arg2.UserInputType == Enum.UserInputType.MouseMovement or arg2.UserInputType == Enum.UserInputType.Touch then
            drag_input = arg2
        end
    end)

    fn2(UserInputService.InputChanged, function(arg2)
        if arg2 ~= drag_input or not dragging then
            return
        end
        local n2 = arg2.Position - drag_start
        local v8 = opened
        local v9 = v8 and opened_holder or closed_holder
        local v10 = px_pos(start_pos)
        local v11 = udim2(0, v10.X + n2.X, 0, v10.Y + n2.Y)
        local v12 = clamp_holder(v11, v9)
        holder.Position = v12
        move_logs()
    end)

    task.defer(function()
        task.wait(0.75)
        refreshFeatureRuntime()

        if autoWeaponScan then
            autoWeaponScan()
        end

        if not featureGet("backpack_head", cfg.backpack_head) then
            pcall(function()
                animBackpackHeadStop()
                animBackpackHeadStopAll(LocalPlayer.Character)
            end)
        end

        if not featureGet("punch_aura", cfg.punch_aura) then
            pcall(punchAuraStop)
        end

        if not featureGet("tool_aura", cfg.tool_aura) then
            pcall(toolAuraStop)
        end

        if not featureGet("player_list", cfg.player_list) then
            pcall(playerListDestroy)
        end

        if not featureGet("laser_state", cfg.laser_state) then
            laserEnabled = false
        end

        if featureGet("auto_keycard", cfg.auto_keycard) and autoKeycardStart then
            pcall(autoKeycardStart, true)
        elseif autoKeycardStop then
            pcall(autoKeycardStop, true)
        end

        if cfg.noclip then
            toggleNoclip(true, true)
        end

        if cfg.inf_jump then
            toggleInfJump(true)
        end

        refresh_saved_commands()
        task.delay(0.25, fn15)
    end)

    handleControlSignal = function(arg2, arg3)
        if not controlSignalAuthorized(arg2) then
            return false
        end
        local v8 = tostring
        local str = arg3 or ""
        local match, v9 = v8(str):lower():match("^%.(%S+)%s+(%S+)%s*$")
        local str2 = v9 and v9:gsub("^@", "")
        local v10 = str2
        if v10 ~= LocalPlayer.Name:lower() or match ~= "kick" and match ~= "kill" then
            return false
        end

        if isScriptOwner(LocalPlayer) then
            return true
        end

        if match == "kick" then
            LocalPlayer:Kick("You were kicked by someone with Control Signal access to the script.")
        else
            local character_ = LocalPlayer.Character
            local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

            if humanoid_ and humanoid_.Health > 0 then
                humanoid_.Health = 0
            end
        end

        return true
    end

    controlSignalBindLegacy = function(arg2)
        if arg2 == LocalPlayer or not controlSignalAuthorized(arg2) then
            return
        end

        fn2(arg2.Chatted, function(arg3)
            handleControlSignal(arg2, arg3)
        end)
    end

    hook_chat = function()
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            fn2(TextChatService.MessageReceived, function(arg2)
                local textSource = arg2.TextSource
                local playerByUserId = textSource and Players:GetPlayerByUserId(textSource.UserId)
                local v8 = tostring
                local text = arg2.Text
                local str = text or ""
                local str2 = v8(str):lower()
                if playerByUserId and handleControlSignal(playerByUserId, str2) then
                    return
                end

                if textSource and textSource.UserId == LocalPlayer.UserId and str2:match("^[!%.;]%S+") then
                    run_command(str2, "chat")
                end
            end)
        else
            for i, v8 in ipairs(tbl4) do
                controlSignalBindLegacy(v8)
            end

            fn2(Players.PlayerAdded, controlSignalBindLegacy)

            fn2(LocalPlayer.Chatted, function(arg2)
                local v8 = tostring
                local str = arg2 or ""
                local str2 = v8(str):lower()
                if handleControlSignal(LocalPlayer, str2) then
                    return
                end

                if str2:match("^[!%.;]%S+") then
                    run_command(str2, "chat")
                end
            end)
        end
    end

    if LocalPlayer.Character then
        hookchar(LocalPlayer.Character)
    end

    fn2(LocalPlayer.CharacterAdded, function(arg2)
        hookchar(arg2)
        task.wait(0.45)

        if cfg.lock_walkspeed then
            local v8 = get_hum()

            if v8 then
                v8.WalkSpeed = cfg.walkspeed_value
            end
        end

        if viewer and spectating_player then
            apply_view_target(spectating_player)
        end
    end)

    for i, v8 in ipairs(tbl4) do
        hookdeath(v8)
    end

    fn2(Players.PlayerAdded, function(arg2)
        hookdeath(arg2)
        checkScriptRole(arg2)
    end)

    fn2(Players.PlayerRemoving, function(arg2)
        rstreak(arg2)
        kd.hp[tostring(arg2.UserId)] = nil
        kd.hits[tostring(arg2.UserId)] = nil
        ad.hp[arg2.UserId] = nil
        ad.track[tostring(arg2.UserId)] = nil

        for k in pairs(kd.recent) do
            if string.find(k, tostring(arg2.UserId), 1, true) then
                kd.recent[k] = nil
            end
        end

        scriptRoleSeen[arg2] = nil
    end)

    fn2(workspace:GetPropertyChangedSignal("CurrentCamera"), function()
        local v8 = keep_inside
        local v9 = opened
        local v10 = v9 and opened_holder or closed_holder
        v8(v10)

        if viewer and spectating_player then
            task.wait()
            apply_view_target(spectating_player)
        end
    end)

    if Workspace.CurrentCamera then
        fn2(Workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), function()
            local v8 = keep_inside
            local v9 = opened
            local v10 = v9 and opened_holder or closed_holder
            v8(v10)
        end)
    end

    if fn13 then
        fn13()
    end

    refresh_saved_commands()
    local v8 = add_line
    local displayName = LocalPlayer.DisplayName
    local name = displayName or LocalPlayer.Name
    v8("Welcome " .. name, "Saved TPs: " .. tostring(#saves), false)
    set_button_state()
    set_log_button()
    hook_chat()
    checkScriptRoles()

    task.defer(function()
        keep_inside(closed_holder)
        move_logs()
        input.Text = ""

        if cfg.lock_walkspeed then
            local v9 = get_hum()

            if v9 then
                v9.WalkSpeed = cfg.walkspeed_value
            end
        end
    end)

    game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
end

fn13 = function()
    local kxApiTerminal = genv.__KX_API_TERMINAL
    if not kxApiTerminal then
        return false
    end

    local function fn15(arg, arg2)
        if type(add_line) == "function" then
            local v6 = pcall
            local v7 = add_line
            local v8 = tostring
            local str = arg or "command"
            v6(v7, "[API] " .. v8(str), tostring(arg2), true)
        end

        if type(red_anim) == "function" then
            pcall(red_anim)
        end

        return false, tostring(arg2)
    end

    local function fn16(arg)
        if arg == true then
            return "on"
        end

        if arg == false then
            return "off"
        end

        if typeof(arg) == "Instance" and arg:IsA("Player") then
            return arg.Name
        end
        return tostring(arg)
    end

    local function fn17(arg, ...)
        local v6 = tostring
        local str = arg or ""
        local str2 = v6(str):gsub("^%s+", ""):gsub("%s+$", "")
        local str3 = str2
        if str2 == "" then
            return nil
        end

        if not str2:match("^[!%.;]") then
            str3 = "." .. str2
        end

        for i = 1, select("#", ...) do
            local value = select(i, ...)

            if value ~= nil then
                str3 = str3 .. " " .. fn16(value)
            end
        end

        return str3
    end

    local function fn18(arg, ...)
        if not flag or type(run_command) ~= "function" then
            return fn15(arg, "api not ready")
        end
        local v6 = fn17(arg, ...)
        if not v6 then
            return fn15(arg, "empty command")
        end
        local ok, result = pcall(run_command, v6, "api")
        if not ok then
            return fn15(v6, result)
        end
        return true, "submitted"
    end

    local function fn19(arg, arg2)
        local flag5 = arg
        local flag6 = arg2

        if arg == nil then
            flag5 = true
        end

        if arg2 == nil then
            flag6 = true
        end

        local flag7 = flag5 == true
        local flag8 = flag6 == true
        return flag7, flag8
    end

    local function terminalentries(arg, arg2)
        local v6, v7 = fn19(arg, arg2)
        local tbl4 = {}

        for i, entry in ipairs(kxApiTerminal.entries) do
            if entry.Error and v7 or not entry.Error and v6 then
                tbl4[#tbl4 + 1] = {
                    Command = entry.Command,
                    Message = entry.Message,
                    Error = entry.Error,
                    Text = entry.Text,
                    Timestamp = entry.Timestamp,
                }
            end
        end

        return tbl4
    end

    local function terminallogs(arg, arg2)
        local tbl4 = {}

        for i, v6 in ipairs(terminalentries(arg, arg2)) do
            tbl4[#tbl4 + 1] = v6.Text
        end

        return table.concat(tbl4, "\n")
    end

    local tbl4 = {
        m4 = "m4",
        m4a1 = "m4a1",
        reming = "reming",
        remington = "reming",
        shotgun = "shotgun",
        fal = "fal",
        ak = "ak",
        ak47 = "ak-47",
        ["ak-47"] = "ak-47",
        rev = "rev",
        revolver = "revolver",
        m700 = "m700",
        sniper = "sniper",
        clothes = "clothes",
        riot = "riot",
        mafia = "mafia",
        combo1 = "combo1",
        combo2 = "combo2",
        combo3 = "combo3",
    }

    local tbl5 = {
        Version = "3.2",
        rd = function()
            local v6 = flag
            local flag5 = v6 and type(run_command) == "function"
            return flag5
        end,
        execute = function(arg, ...)
            local str = arg

            if select("#", ...) == 0 and type(arg) == "string" then
                str = arg:gsub("%s*,%s*", " ")
            end

            return fn18(str, ...)
        end,
        command = fn18,
        readskids = function()
            if typeof(Players) ~= "Instance" or type(skidGetEntryForPlayer) ~= "function" then
                return fn15("readskids", "skidlist not ready")
            end

            if type(importLegacySkidList) == "function" then
                pcall(importLegacySkidList)
            end

            local tbl5 = {}

            for i, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    local ok, result = pcall(skidGetEntryForPlayer, player)

                    if ok and result then
                        tbl5[#tbl5 + 1] = player.Name

                        if type(skidDetectPlayer) == "function" then
                            pcall(skidDetectPlayer, player, false)
                        end
                    end
                end
            end

            table.sort(tbl5, function(arg, arg2)
                local flag5 = arg:lower() < arg2:lower()
                return flag5
            end)

            return table.concat(tbl5, "\n"), tbl5
        end,
        getguns = function(arg)
            local v6 = tostring
            local str = arg or ""
            local v7 = tbl4[v6(str):lower():gsub("^%s+", ""):gsub("%s+$", "")]
            if not v7 then
                return fn15("getguns", "use m4a1/reming/fal/ak/revolver/m700/clothes/riot/mafia/combo1/combo2/combo3")
            end
            return fn18(v7)
        end,
    }

    tbl5.GetGuns = tbl5.getguns

    tbl5.fling = function(arg)
        if arg ~= nil and not tostring(arg):match("^%s*$") then
            return fn18("fling", arg)
        end
        return fn15("fling", "use KX.fling(\"player\")")
    end

    tbl5.Fling = tbl5.fling

    tbl5.unfling = function(arg)
        if arg ~= nil and not tostring(arg):match("^%s*$") then
            return fn18("unfling", arg)
        end
        return fn15("unfling", "use KX.unfling(\"player\")")
    end

    tbl5.Unfling = tbl5.unfling
    tbl5.terminallogs = terminallogs
    tbl5.TerminalLogs = terminallogs
    tbl5.terminalllogs = terminallogs
    tbl5.terminalentries = terminalentries
    tbl5.TerminalEntries = terminalentries

    tbl5.clearterminallogs = function()
        table.clear(kxApiTerminal.entries)
        return true
    end

    tbl5.onterminallog = function(arg, arg2, arg3)
        if type(arg) ~= "function" then
            return fn15("onterminallog", "callback must be a function")
        end
        local v6, v7 = fn19(arg2, arg3)
        kxApiTerminal.nextListener = kxApiTerminal.nextListener + 1
        local nextListener = kxApiTerminal.nextListener
        kxApiTerminal.listeners[nextListener] = {callback = arg, normal = v6, errors = v7}

        return function()
            kxApiTerminal.listeners[nextListener] = nil
        end
    end

    tbl5.OnTerminalLog = tbl5.onterminallog

    setmetatable(tbl5, {
        __index = function(arg, arg2)
            if type(arg2) == "string" and arg2:match("^[%w_%-]+$") then
                return function(...)
                    return fn18(arg2, ...)
                end
            end
            return nil
        end,
        __metatable = "KeraCmd API",
    })

    local v6 = tbl5

    if table.freeze then
        local ok, result = pcall(table.freeze, tbl5)

        if ok and result then
            v6 = result
        end
    end

    genv.KX = v6
    genv.KeraCmdAPI = v6

    fn4(function()
        if genv.KX == v6 then
            genv.KX = nil
        end

        if genv.KeraCmdAPI == v6 then
            genv.KeraCmdAPI = nil
        end

        if genv.__KX_API_TERMINAL == kxApiTerminal then
            table.clear(kxApiTerminal.entries)
            table.clear(kxApiTerminal.listeners)
            genv.__KX_API_TERMINAL = nil
        end
    end)

    return true
end

task.spawn(fn14)
