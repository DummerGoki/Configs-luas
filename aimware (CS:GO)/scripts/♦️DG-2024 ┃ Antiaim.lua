
--Read This:
--if you want to save your configurations in the lua.
--basicly you just need to change the values below
--Lua made by DummerGoki

--{Yaw Config}--
local config_yaw_basedirection         = 0 -- [Min] 0-180 [Max]
local config_yaw_stand_jitter          = 0 -- [Min] 0-90  [Max]
local config_yaw_move_jitter           = 0 -- [Min] 0-90  [Max]
local config_yaw_air_jitter            = 0 -- [Min] 0-90  [Max]
local config_yaw_autopeek_jitter       = 0 -- [Min] 0-90  [Max]
local config_yaw_duck_jitter           = 0 -- [Min] 0-90  [Max]
local config_yaw_stand_random          = 0 -- [Min] 0-90  [Max]
local config_yaw_move_random           = 0 -- [Min] 0-90  [Max]
local config_yaw_air_random            = 0 -- [Min] 0-90  [Max]
local config_yaw_autopeek_random       = 0 -- [Min] 0-90  [Max]
local config_yaw_duck_random           = 0 -- [Min] 0-90  [Max]
--{Pitch Config}--
local config_pitch_stand               = 0 -- {Up (89°)=[0],Slightly Up (35°)=[1],Middle (0°)=[2],Slightly Down (-35°)=[3],Down (-89°)=[4],Random (x°)=[5],Jitter (x°)=[6]}
local config_pitch_move                = 0 -- {Up (89°)=[0],Slightly Up (35°)=[1],Middle (0°)=[2],Slightly Down (-35°)=[3],Down (-89°)=[4],Random (x°)=[5],Jitter (x°)=[6]}
local config_pitch_air                 = 0 -- {Up (89°)=[0],Slightly Up (35°)=[1],Middle (0°)=[2],Slightly Down (-35°)=[3],Down (-89°)=[4],Random (x°)=[5],Jitter (x°)=[6]}
local config_pitch_autopeek            = 0 -- {Up (89°)=[0],Slightly Up (35°)=[1],Middle (0°)=[2],Slightly Down (-35°)=[3],Down (-89°)=[4],Random (x°)=[5],Jitter (x°)=[6]}
local config_pitch_duck                = 0 -- {Up (89°)=[0],Slightly Up (35°)=[1],Middle (0°)=[2],Slightly Down (-35°)=[3],Down (-89°)=[4],Random (x°)=[5],Jitter (x°)=[6]}
local config_pitch_stand_random        = 0 -- [Min] 0-15  [Max]
local config_pitch_move_random         = 0 -- [Min] 0-15  [Max]
local config_pitch_air_random          = 0 -- [Min] 0-15  [Max]
local config_pitch_autopeek_random     = 0 -- [Min] 0-15  [Max]
local config_pitch_duck_random         = 0 -- [Min] 0-15  [Max]
--{Desync Config}--
local config_desync_stand              = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_desync_move               = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_desync_air                = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_desync_autopeek           = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_desync_duck               = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_desync_stand_limit        = 0 -- [Min] 0-58  [Max]
local config_desync_move_limit         = 0 -- [Min] 0-58  [Max]
local config_desync_air_limit          = 0 -- [Min] 0-58  [Max]
local config_desync_autopeek_limit     = 0 -- [Min] 0-58  [Max]
local config_desync_duck_limit         = 0 -- [Min] 0-58  [Max]
--{Roll Config}--
local config_roll_stand                = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_roll_move                 = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_roll_air                  = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_roll_autopeek             = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_roll_duck                 = 0 -- {Positive=[0],Negative=[1],Jitter=[2],Random=[3],Static left=[4],Static right=[5]}
local config_roll_stand_limit          = 0 -- [Min] 0-45  [Max]
local config_roll_move_limit           = 0 -- [Min] 0-45  [Max]
local config_roll_air_limit            = 0 -- [Min] 0-45  [Max]
local config_roll_autopeek_limit       = 0 -- [Min] 0-45  [Max]
local config_roll_duck_limit           = 0 -- [Min] 0-45  [Max]
--{Fakelag Config}--
local config_fakelag_stand             = 0 -- {Normal=[0],Adaptive=[1],Random=[2],Switch=[3]}
local config_fakelag_move              = 0 -- {Normal=[0],Adaptive=[1],Random=[2],Switch=[3]}
local config_fakelag_air               = 0 -- {Normal=[0],Adaptive=[1],Random=[2],Switch=[3]}
local config_fakelag_autopeek          = 0 -- {Normal=[0],Adaptive=[1],Random=[2],Switch=[3]}
local config_fakelag_duck              = 0 -- {Normal=[0],Adaptive=[1],Random=[2],Switch=[3]}
local config_fakelag_stand_limit       = 3 -- [Min] 3-16  [Max]
local config_fakelag_move_limit        = 3 -- [Min] 3-16  [Max]
local config_fakelag_air_limit         = 3 -- [Min] 3-16  [Max]
local config_fakelag_autopeek_limit    = 3 -- [Min] 3-16  [Max]
local config_fakelag_duck_limit        = 3 -- [Min] 3-16  [Max]













__move_type__=""
--{Main-Vars}--
__HAS_TARGET__ = false
__NUM__ = 0
__Jitterside__=0
__title__ = 0
local IN_USE = bit.lshift(1,5)
local __pitch_list__ = {89,65,-65,35,-35,15,-15,0,-89,-65,65,-35,35,-15,15,0}

--{Lua-Menu}--
local main_window = gui.Reference("SETTINGS")
local main_tab = gui.Tab(main_window, "DG-2024", "DG-2024 | Antiaim");


--
local __Wiki__ = gui.Groupbox(main_tab,"Infos:",220,15,410,200);
gui.Text( __Wiki__, "                                                                            " )
gui.Text( __Wiki__, "                                                                            " )
gui.Text( __Wiki__, "                                                                            " )
gui.Text( __Wiki__, "----------------------------------------------------------------------------" )
gui.Text( __Wiki__, "This thing '[]' is a tag." )
gui.Text( __Wiki__, "Here a list with all tags:" )
gui.Text( __Wiki__, "----------------------------------------------------------------------------" )
gui.Text( __Wiki__, "'[S]' = While Standing." )
gui.Text( __Wiki__, "'[M]' = While Moving." )
gui.Text( __Wiki__, "'[A]' = While In Air." )
gui.Text( __Wiki__, "'[P]' = While In Autopeek." )
gui.Text( __Wiki__, "'[D]' = While In Duck." )
gui.Text( __Wiki__, "----------------------------------------------------------------------------" )
gui.Text( __Wiki__, "Btw dont think that this lua is godmode or smth." )
gui.Text( __Wiki__, "Because is still aimware but i hope atleast this lua makes it atleast useable." )
gui.Text( __Wiki__, "----------------------------------------------------------------------------" )
gui.Text( __Wiki__, "Lua made by DummerGoki." )
gui.Text( __Wiki__, "----------------------------------------------------------------------------" )
local __Main__ = gui.Groupbox(main_tab,"Main",10,15,200,200);
local __window_antiaim_toggle__ = gui.Checkbox(__Main__, "ecb_checkbox", "[Show-Window]", false);
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
gui.Text(__Main__, "                                                                            " )
----------------------------------------------------------------------------------------]
--Antiaim----Antiaim----Antiaim----Antiaim----Antiaim----Antiaim----Antiaim----Antiaim--]
----------------------------------------------------------------------------------------]
local window = gui.Window("wnd_window", " ", 100, 100, 1030, 650)
local g_yaw = gui.Groupbox(window,   "💀 [Yaw:]",10,15,200,670);
local g_pitch = gui.Groupbox(window, "💀 [Pitch:]",220,15,200,670);
local g_desync = gui.Groupbox(window,"💀 [Desync:]",430,15,200,670);
local g_roll = gui.Groupbox(window,  "💀 [Roll:]",640,15,200,670);
local g_other = gui.Groupbox(window, "💀 [Other:]",850,15,170,670);
--{Yaw}--
gui.Text(g_yaw,"The Base Body rotation.")
local __b_direction__ = gui.Slider(g_yaw, "__b_direction__", "Base Direction:", 0.0, 0, 180.0, 1);
local __s_jitter__ = gui.Slider(g_yaw, "__s_jitter__", "[S] Jitter:", 0.0, 0, 90.0, 1);
local __m_jitter__ = gui.Slider(g_yaw, "__m_jitter__", "[M] Jitter:", 0.0, 0, 90.0, 1);
local __a_jitter__ = gui.Slider(g_yaw, "__a_jitter__", "[A] Jitter:", 0.0, 0, 90.0, 1);
local __p_jitter__ = gui.Slider(g_yaw, "__p_jitter__", "[P] Jitter:", 0.0, 0, 90.0, 1);
local __d_jitter__ = gui.Slider(g_yaw, "__d_jitter__", "[D] Jitter:", 0.0, 0, 90.0, 1);
local __s_random__ = gui.Slider(g_yaw, "__s_random__", "[S] Random:", 0.0, 0, 90.0, 1);
local __m_random__ = gui.Slider(g_yaw, "__m_random__", "[M] Random:", 0.0, 0, 90.0, 1);
local __a_random__ = gui.Slider(g_yaw, "__a_random__", "[A] Random:", 0.0, 0, 90.0, 1);
local __p_random__ = gui.Slider(g_yaw, "__p_random__", "[P] Random:", 0.0, 0, 90.0, 1);
local __d_random__ = gui.Slider(g_yaw, "__d_random__", "[D] Random:", 0.0, 0, 90.0, 1);
--{Pitch}--
gui.Text(g_pitch,"The Head Up/Down rotation.")
local __s_pitch__ = gui.Combobox(g_pitch, "__s_pitch__", "[S] Pitch:", unpack({"Up (89°)", "Slightly Up (35°)","Middle (0°)","Slightly Down (-35°)","Down (-89°)","Random (X°)","Jitter (X°)"}));
local __m_pitch__ = gui.Combobox(g_pitch, "__m_pitch__", "[M] Pitch:", unpack({"Up (89°)", "Slightly Up (35°)","Middle (0°)","Slightly Down (-35°)","Down (-89°)","Random (X°)","Jitter (X°)"}));
local __a_pitch__ = gui.Combobox(g_pitch, "__a_pitch__", "[A] Pitch:", unpack({"Up (89°)", "Slightly Up (35°)","Middle (0°)","Slightly Down (-35°)","Down (-89°)","Random (X°)","Jitter (X°)"}));
local __p_pitch__ = gui.Combobox(g_pitch, "__p_pitch__", "[P] Pitch:", unpack({"Up (89°)", "Slightly Up (35°)","Middle (0°)","Slightly Down (-35°)","Down (-89°)","Random (X°)","Jitter (X°)"}));
local __d_pitch__ = gui.Combobox(g_pitch, "__d_pitch__", "[D] Pitch:", unpack({"Up (89°)", "Slightly Up (35°)","Middle (0°)","Slightly Down (-35°)","Down (-89°)","Random (X°)","Jitter (X°)"}));
local __s_pitch_random__ = gui.Slider(g_pitch, "__s_pitch_random__", "[S] Random:", 0.0, 0, 15.0, 1);
local __m_pitch_random__ = gui.Slider(g_pitch, "__m_pitch_random__", "[M] Random:", 0.0, 0, 15.0, 1);
local __a_pitch_random__ = gui.Slider(g_pitch, "__a_pitch_random__", "[A] Random:", 0.0, 0, 15.0, 1);
local __p_pitch_random__ = gui.Slider(g_pitch, "__p_pitch_random__", "[P] Random:", 0.0, 0, 15.0, 1);
local __d_pitch_random__ = gui.Slider(g_pitch, "__d_pitch_random__", "[D] Random:", 0.0, 0, 15.0, 1);
--{Desync}--
gui.Text(g_desync,"The Desynced Body rotation.")
local __s_desync__ = gui.Combobox(g_desync, "__s_desync__", "[S] Desync:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __m_desync__ = gui.Combobox(g_desync, "__m_desync__", "[M] Desync:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __a_desync__ = gui.Combobox(g_desync, "__a_desync__", "[A] Desync:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __p_desync__ = gui.Combobox(g_desync, "__p_desync__", "[P] Desync:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __d_desync__ = gui.Combobox(g_desync, "__d_desync__", "[D] Desync:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __s_desync_amount__ = gui.Slider(g_desync, "__s_desync_amount__", "[S] Desync Limit:", 0.0, 0, 58.0, 1);
local __m_desync_amount__ = gui.Slider(g_desync, "__m_desync_amount__", "[M] Desync Limit:", 0.0, 0, 58.0, 1);
local __a_desync_amount__ = gui.Slider(g_desync, "__a_desync_amount__", "[A] Desync Limit:", 0.0, 0, 58.0, 1);
local __p_desync_amount__ = gui.Slider(g_desync, "__p_desync_amount__", "[P] Desync Limit:", 0.0, 0, 58.0, 1);
local __d_desync_amount__ = gui.Slider(g_desync, "__d_desync_amount__", "[D] Desync Limit:", 0.0, 0, 58.0, 1);
--{Roll}--
gui.Text(g_roll,"The Roll Body rotation.")
local __s_roll__ = gui.Combobox(g_roll, "__s_roll__", "[S] Roll:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __m_roll__ = gui.Combobox(g_roll, "__m_roll__", "[M] Roll:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __a_roll__ = gui.Combobox(g_roll, "__a_roll__", "[A] Roll:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __p_roll__ = gui.Combobox(g_roll, "__p_roll__", "[P] Roll:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __d_roll__ = gui.Combobox(g_roll, "__d_roll__", "[D] Roll:", unpack({"Positive","Negative","Jitter","Random","Static Left","Static Right"}));
local __s_roll_amount__ = gui.Slider(g_roll, "__s_roll_amount__", "[S] Roll Limit:", 0.0, 0, 45.0, 1);
local __m_roll_amount__ = gui.Slider(g_roll, "__m_roll_amount__", "[M] Roll Limit:", 0.0, 0, 45.0, 1);
local __a_roll_amount__ = gui.Slider(g_roll, "__a_roll_amount__", "[A] Roll Limit:", 0.0, 0, 45.0, 1);
local __p_roll_amount__ = gui.Slider(g_roll, "__p_roll_amount__", "[P] Roll Limit:", 0.0, 0, 45.0, 1);
local __d_roll_amount__ = gui.Slider(g_roll, "__d_roll_amount__", "[D] Roll Limit:", 0.0, 0, 45.0, 1);
--{Fakelag}--
gui.Text(g_other,"The Lag amount.")
local __s_fakelag__ = gui.Combobox(g_other, "__s_roll__", "[S] Fakelag-type", unpack({"Normal","Adaptive","Random","Switch"}));
local __m_fakelag__ = gui.Combobox(g_other, "__m_roll__", "[M] Fakelag-type", unpack({"Normal","Adaptive","Random","Switch"}));
local __a_fakelag__ = gui.Combobox(g_other, "__a_roll__", "[A] Fakelag-type", unpack({"Normal","Adaptive","Random","Switch"}));
local __p_fakelag__ = gui.Combobox(g_other, "__p_roll__", "[P] Fakelag-type", unpack({"Normal","Adaptive","Random","Switch"}));
local __d_fakelag__ = gui.Combobox(g_other, "__d_roll__", "[D] Fakelag-type", unpack({"Normal","Adaptive","Random","Switch"}));
local __s_fakelag_amount__ = gui.Slider(g_other, "__s_fakelag_amount__", "[S] Fakelag Limit:", 0.0, 3, 16, 1);
local __m_fakelag_amount__ = gui.Slider(g_other, "__m_fakelag_amount__", "[M] Fakelag Limit:", 0.0, 3, 16, 1);
local __a_fakelag_amount__ = gui.Slider(g_other, "__a_fakelag_amount__", "[A] Fakelag Limit:", 0.0, 3, 16, 1);
local __p_fakelag_amount__ = gui.Slider(g_other, "__p_fakelag_amount__", "[P] Fakelag Limit:", 0.0, 3, 16, 1);
local __d_fakelag_amount__ = gui.Slider(g_other, "__d_fakelag_amount__", "[D] Fakelag Limit:", 0.0, 3, 16, 1);
--yaw config set 
__b_direction__:SetValue(config_yaw_basedirection)
__s_jitter__:SetValue(config_yaw_stand_jitter)
__m_jitter__:SetValue(config_yaw_move_jitter)
__a_jitter__:SetValue(config_yaw_air_jitter)
__p_jitter__:SetValue(config_yaw_autopeek_jitter)
__d_jitter__:SetValue(config_yaw_duck_jitter)
__s_random__:SetValue(config_yaw_stand_random)
__m_random__:SetValue(config_yaw_move_random)
__a_random__:SetValue(config_yaw_air_random)
__p_random__:SetValue(config_yaw_autopeek_random)
__d_random__:SetValue(config_yaw_duck_random)
--pitch config set 
__s_pitch__:SetValue(config_pitch_stand)
__m_pitch__:SetValue(config_pitch_move)
__a_pitch__:SetValue(config_pitch_air)
__p_pitch__:SetValue(config_pitch_autopeek)
__d_pitch__:SetValue(config_pitch_duck)
__s_pitch_random__:SetValue(config_pitch_stand_random)
__m_pitch_random__:SetValue(config_pitch_move_random)
__a_pitch_random__:SetValue(config_pitch_air_random)
__p_pitch_random__:SetValue(config_pitch_autopeek_random)
__d_pitch_random__:SetValue(config_pitch_duck_random)
--desync config set 
__s_desync__:SetValue(config_desync_stand)
__m_desync__:SetValue(config_desync_move)
__a_desync__:SetValue(config_desync_air)
__p_desync__:SetValue(config_desync_autopeek)
__d_desync__:SetValue(config_desync_duck)
__s_desync_amount__:SetValue(config_desync_stand_limit)
__m_desync_amount__:SetValue(config_desync_move_limit)
__a_desync_amount__:SetValue(config_desync_air_limit)
__p_desync_amount__:SetValue(config_desync_autopeek_limit)
__d_desync_amount__:SetValue(config_desync_duck_limit)
--roll config set 
__s_roll__:SetValue(config_roll_stand)
__m_roll__:SetValue(config_roll_move)
__a_roll__:SetValue(config_roll_air)
__p_roll__:SetValue(config_roll_autopeek)
__d_roll__:SetValue(config_roll_duck)
__s_roll_amount__:SetValue(config_roll_stand_limit)
__m_roll_amount__:SetValue(config_roll_move_limit)
__a_roll_amount__:SetValue(config_roll_air_limit)
__p_roll_amount__:SetValue(config_roll_autopeek_limit)
__d_roll_amount__:SetValue(config_roll_duck_limit)
--fakelag config set 
__s_fakelag__:SetValue(config_fakelag_stand)
__m_fakelag__:SetValue(config_fakelag_move)
__a_fakelag__:SetValue(config_fakelag_air)
__p_fakelag__:SetValue(config_fakelag_autopeek)
__d_fakelag__:SetValue(config_fakelag_duck)
__s_fakelag_amount__:SetValue(config_fakelag_stand_limit)
__m_fakelag_amount__:SetValue(config_fakelag_move_limit)
__a_fakelag_amount__:SetValue(config_fakelag_air_limit)
__p_fakelag_amount__:SetValue(config_fakelag_autopeek_limit)
__d_fakelag_amount__:SetValue(config_fakelag_duck_limit)

-----------------------------------------------------------------]
callbacks.Register("AimbotTarget", function(target)
    if target:GetIndex() then
        __HAS_TARGET__ = true
    else
        __HAS_TARGET__ = false
    end
end)
x=0
-----------------------------------------------------------------]
local function get_movetype(cmd)
    local localPlayer = entities.GetLocalPlayer()
    local velocity = math.sqrt(localPlayer:GetPropFloat( "localdata", "m_vecVelocity[0]" )^2 + localPlayer:GetPropFloat( "localdata", "m_vecVelocity[1]" )^2)
    local __movetype__ = ""
    if (bit.band(localPlayer:GetPropInt("m_fFlags"), 1) == 0) then
        __movetype__="AIR"
    elseif (input.IsButtonDown(gui.GetValue("rbot.accuracy.walkbot.peekkey"))) then
        __movetype__="AUTOPEEK"
    elseif (cmd.buttons == bit.bor(cmd.buttons, 4)) then
        __movetype__="DUCK"
    elseif (bit.band(localPlayer:GetPropInt("m_fFlags"), 1) ~= 0 and velocity < 5) then
        __movetype__="STAND"
    elseif (bit.band(localPlayer:GetPropInt("m_fFlags"), 1) ~= 0 and velocity > 5) then
        __movetype__="MOVE"
    end
    return __movetype__
end

-----------------------------------------------------------------]
local function yaw(cmd) 
    local __cur_jitter__
    local __cur_random__
    if (__move_type__=="AIR") then
        __cur_jitter__=__a_jitter__:GetValue()
        __cur_random__=__a_random__:GetValue()
    elseif (__move_type__=="AUTOPEEK") then  
        __cur_jitter__=__p_jitter__:GetValue()
        __cur_random__=__p_random__:GetValue()
    elseif (__move_type__=="DUCK") then  
        __cur_jitter__=__d_jitter__:GetValue()
        __cur_random__=__d_random__:GetValue()
    elseif (__move_type__=="STAND") then
        __cur_jitter__=__s_jitter__:GetValue()
        __cur_random__=__s_random__:GetValue()
    elseif (__move_type__=="MOVE") then  
        __cur_jitter__=__m_jitter__:GetValue()
        __cur_random__=__m_random__:GetValue()
    end
    if math.random(0,1)==0 then
        __cur_random__=0-math.random(0,__cur_random__)
    else
        __cur_random__=math.random(0,__cur_random__)
    end
    if(__Jitterside__==1) then
        --left side
        gui.SetValue("rbot.antiaim.base",-180+__cur_jitter__-__cur_random__)
    else
        --right side
        gui.SetValue("rbot.antiaim.base",180-__cur_jitter__-__cur_random__)
    end
    if (__HAS_TARGET__ or bit.band(cmd.buttons, IN_USE) == IN_USE) then
        return 0
    end
    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y + __b_direction__:GetValue(),cmd.viewangles.z)
end
-----------------------------------------------------------------]
local function pitch(cmd) 
    local __cur_pitch__
    local __cur_pitch_random__
    if (__move_type__=="AIR") then
        __cur_pitch__=__a_pitch__:GetValue()
        __cur_pitch_random__=__a_pitch_random__:GetValue()
    elseif (__move_type__=="AUTOPEEK") then
        __cur_pitch__=__p_pitch__:GetValue()
        __cur_pitch_random__=__p_pitch_random__:GetValue()
    elseif (__move_type__=="DUCK") then
        __cur_pitch__=__d_pitch__:GetValue()
        __cur_pitch_random__=__d_pitch_random__:GetValue()
    elseif (__move_type__=="STAND") then
        __cur_pitch__=__s_pitch__:GetValue()
        __cur_pitch_random__=__s_pitch_random__:GetValue()
    elseif (__move_type__=="MOVE") then  
        __cur_pitch__=__m_pitch__:GetValue()
        __cur_pitch_random__=__m_pitch_random__:GetValue()
    end
    if (__HAS_TARGET__ or bit.band(cmd.buttons, IN_USE) == IN_USE) then
        return 0
    end
    if (__cur_pitch__==0) then
        __cur_pitch__=-89
    elseif (__cur_pitch__==1) then
        __cur_pitch__=-35
    elseif (__cur_pitch__==2) then
        __cur_pitch__=0
    elseif (__cur_pitch__==3) then
        __cur_pitch__=35
    elseif (__cur_pitch__==4) then
        __cur_pitch__=89
    elseif (__cur_pitch__==5) then
        __cur_pitch__=__pitch_list__[x]
    elseif (__cur_pitch__==6) then
        if (__Jitterside__==1) then
            __cur_pitch__=-89
        else
            __cur_pitch__=89
        end
    end
    if (math.random(0,1)==0) then
        __cur_pitch_random__=math.random(0,__cur_pitch_random__)
    else
        __cur_pitch_random__=math.random(-__cur_pitch_random__,0)
    end
    local __cur_pitch_result__ = __cur_pitch__+__cur_pitch_random__
        if (__cur_pitch_result__>89) then
            __cur_pitch_result__=89
        elseif (__cur_pitch_result__<-89) then
            __cur_pitch_result__=-89
        end
    cmd.viewangles = EulerAngles(__cur_pitch_result__,cmd.viewangles.y,cmd.viewangles.z)
end
-----------------------------------------------------------------]
local function desync(cmd) 
    local __cur_desync__=0
    local __cur_desync_amount__=0
    local __cur_roll__=0
    local __cur_roll_amount__=0
    if (__move_type__=="AIR") then
        __cur_desync__=__a_desync__:GetValue()
        __cur_desync_amount__=__a_desync_amount__:GetValue()
        __cur_roll__=__a_roll__:GetValue()
        __cur_roll_amount__=__a_roll_amount__:GetValue()
    elseif (__move_type__=="AUTOPEEK") then
        __cur_desync__=__p_desync__:GetValue()
        __cur_desync_amount__=__p_desync_amount__:GetValue()
        __cur_roll__=__p_roll__:GetValue()
        __cur_roll_amount__=__p_roll_amount__:GetValue()
    elseif (__move_type__=="DUCK") then
        __cur_desync__=__d_desync__:GetValue()
        __cur_desync_amount__=__d_desync_amount__:GetValue()
        __cur_roll__=__d_roll__:GetValue()
        __cur_roll_amount__=__d_roll_amount__:GetValue()
    elseif (__move_type__=="STAND") then
        __cur_desync__=__s_desync__:GetValue()
        __cur_desync_amount__=__s_desync_amount__:GetValue()
        __cur_roll__=__s_roll__:GetValue()
        __cur_roll_amount__=__s_roll_amount__:GetValue()
    elseif (__move_type__=="MOVE") then  
        __cur_desync__=__m_desync__:GetValue()
        __cur_desync_amount__=__m_desync_amount__:GetValue()
        __cur_roll__=__m_roll__:GetValue()
        __cur_roll_amount__=__m_roll_amount__:GetValue()
    end
    if(__Jitterside__==1) then
        --left side
        if (__cur_desync__==0) then
        gui.SetValue("rbot.antiaim.base.rotation",__cur_desync_amount__)
        elseif (__cur_desync__==1) then
        gui.SetValue("rbot.antiaim.base.rotation",-__cur_desync_amount__)
        elseif (__cur_desync__==2) then
            if(math.random(0,1)==0) then
                gui.SetValue("rbot.antiaim.base.rotation",-__cur_desync_amount__)
            else
                gui.SetValue("rbot.antiaim.base.rotation",__cur_desync_amount__)
            end
        elseif (__cur_desync__==3) then
            if(math.random(0,1)==0) then
                gui.SetValue("rbot.antiaim.base.rotation",math.random(0,__cur_desync_amount__))
            else
                gui.SetValue("rbot.antiaim.base.rotation",math.random(-__cur_desync_amount__,0))
            end
        elseif (__cur_desync__==4) then
            gui.SetValue("rbot.antiaim.base.rotation",-__cur_desync_amount__)
        else
            gui.SetValue("rbot.antiaim.base.rotation",__cur_desync_amount__)
        end
    else
        --right side
        if (__cur_desync__==0) then
            gui.SetValue("rbot.antiaim.base.rotation",-__cur_desync_amount__)
            elseif (__cur_desync__==1) then
            gui.SetValue("rbot.antiaim.base.rotation",__cur_desync_amount__)
            elseif (__cur_desync__==2) then
                if(math.random(0,1)==0) then
                    gui.SetValue("rbot.antiaim.base.rotation",-__cur_desync_amount__)
                else
                    gui.SetValue("rbot.antiaim.base.rotation",__cur_desync_amount__)
                end
            elseif (__cur_desync__==3) then
                if(math.random(0,1)==0) then
                    gui.SetValue("rbot.antiaim.base.rotation",math.random(0,__cur_desync_amount__))
                else
                    gui.SetValue("rbot.antiaim.base.rotation",math.random(-__cur_desync_amount__,0))
                end
            elseif (__cur_desync__==4) then
                gui.SetValue("rbot.antiaim.base.rotation",-__cur_desync_amount__)
            else
                gui.SetValue("rbot.antiaim.base.rotation",__cur_desync_amount__)
            end
    end
    if (__HAS_TARGET__ or bit.band(cmd.buttons, IN_USE) == IN_USE) then
        return 0
    end
    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,__cur_roll_amount__)
    if(__Jitterside__==1) then
        --left side
        if (__cur_roll__==0) then
            cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,__cur_roll_amount__)
            elseif (__cur_roll__==1) then
                cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,-__cur_roll_amount__)
            elseif (__cur_roll__==2) then
                if(math.random(0,1)==0) then
                    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,-__cur_roll_amount__)
                else
                    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,__cur_roll_amount__)
                end
            elseif (__cur_roll__==3) then
                if(math.random(0,1)==0) then
                    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,math.random(-__cur_roll_amount__,0))
                else
                    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,math.random(0,__cur_roll_amount__))
                end
            elseif (__cur_roll__==4) then
                cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,-__cur_roll_amount__)
            else
                cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,__cur_roll_amount__)
            end
    else
        --right side
        if (__cur_roll__==0) then
            cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,-__cur_roll_amount__)
            elseif (__cur_roll__==1) then
                cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,__cur_roll_amount__)
            elseif (__cur_roll__==2) then
                if(math.random(0,1)==0) then
                    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,-__cur_roll_amount__)
                else
                    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,__cur_roll_amount__)
                end
            elseif (__cur_roll__==3) then
                if(math.random(0,1)==0) then
                    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,math.random(-__cur_roll_amount__,0))
                else
                    cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,math.random(0,__cur_roll_amount__))
                end
            elseif (__cur_roll__==4) then
                cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,-__cur_roll_amount__)
            else
                cmd.viewangles = EulerAngles(cmd.viewangles.x,cmd.viewangles.y,__cur_roll_amount__)
            end
    end
end
-----------------------------------------------------------------]
local function fakelag() 
    local __cur_lag_type__=0
    local __cur_lag_amount__=0
    if (__move_type__=="AIR") then
        __cur_lag_type__=__a_fakelag__:GetValue()
        __cur_lag_amount__=__a_fakelag_amount__:GetValue()
    elseif (__move_type__=="AUTOPEEK") then  
        __cur_lag_type__=__p_fakelag__:GetValue()
        __cur_lag_amount__=__p_fakelag_amount__:GetValue()
    elseif (__move_type__=="DUCK") then  
        __cur_lag_type__=__d_fakelag__:GetValue()
        __cur_lag_amount__=__d_fakelag_amount__:GetValue()
    elseif (__move_type__=="STAND") then
        __cur_lag_type__=__s_fakelag__:GetValue()
        __cur_lag_amount__=__s_fakelag_amount__:GetValue()
    elseif (__move_type__=="MOVE") then  
        __cur_lag_type__=__m_fakelag__:GetValue()
        __cur_lag_amount__=__m_fakelag_amount__:GetValue()
    end
    gui.SetValue("misc.fakelag.factor",__cur_lag_amount__)
    gui.SetValue("misc.fakelag.type",__cur_lag_type__)
end
-----------------------------------------------------------------]
local function main_CreateMove(cmd)
    if(__Jitterside__==1) then
        __Jitterside__=2
    else
        __Jitterside__=1
    end
    __move_type__=get_movetype(cmd)
    x=x+1
    if x==16 then
        x=0
    end
    pitch(cmd)
    yaw(cmd)
    desync(cmd)
    fakelag()
end
callbacks.Register('CreateMove', main_CreateMove)

-----------------------------------------------------------------]
--Other--Other--Other--Other--Other--Other--Other--Other--Other--]
-----------------------------------------------------------------]

callbacks.Register("Draw", function()

    if(__window_antiaim_toggle__:GetValue()==false) then
    window:SetInvisible(true)
    window:SetDisabled(true)
    else
    window:SetInvisible(false)
    window:SetDisabled(false)
    end
end)
