-- init the shared variable
PHE = {}

-- PROP HUNT: ENHANCED CONVARS
-- Playermodels controls convars
if !ConVarExists("ph_use_custom_plmodel_for_prop") then
	local ph_use_custom_plmodel_for_prop = CreateConVar("ph_use_custom_plmodel_for_prop", "0", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "[EXPERIMENTAL] Should use a custom Player's Model for Props when the round begins?")
end
if !ConVarExists("ph_use_custom_plmodel") then
	local ph_use_custom_plmodel = CreateConVar("ph_use_custom_plmodel", "0", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Should use a custom player model available for Hunters?\nPlease note that you must have to activate \'ph_use_custom_plmodel_for_prop\' too!")
end
-- Enhanced Prop Hunt specify convars
if !ConVarExists("ph_prop_camera_collisions") then
	local ph_prop_camera_collisions = CreateConVar("ph_prop_camera_collisions", "0", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Attempts to stop props from viewing inside walls.")
end
if !ConVarExists("ph_freezecam") then
	local ph_freezecam = CreateConVar("ph_freezecam", "1", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Freeze Camera.")
end
if !ConVarExists("ph_better_prop_movement") then
	local ph_better_prop_movement = CreateConVar("ph_better_prop_movement", "1", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Should Enable Prop Rotation or Not?")
end
if !ConVarExists("ph_prop_collision") then
	local ph_prop_collision = CreateConVar("ph_prop_collision", "0", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Should Team Props collide with each other?")
end
-- Custom Taunts ConVars
if !ConVarExists("ph_customtaunts_delay") then
	local ph_customtaunts_delay = CreateConVar("ph_customtaunts_delay", "6", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "How many in seconds delay for props to play custom taunt again? (Default is 6)")
end
if !ConVarExists("ph_enable_custom_taunts") then
	local ph_enable_custom_taunts = CreateConVar("ph_enable_custom_taunts", "0", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Enable custom taunts for prop teams by pressing C? (Default 0)\n  You must have a list of custom taunts to enable this.")
end
if !ConVarExists("ph_normal_taunt_delay") then
	local ph_normal_taunt_delay = CreateConVar("ph_normal_taunt_delay", "2", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "How many in seconds delay for props to play normal [F3] taunt again? (Default is 2)")
end
-- Lucky Ball ConVars
if !ConVarExists("ph_enable_lucky_balls") then
	local ph_enable_lucky_balls = CreateConVar("ph_enable_lucky_balls", "1", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_NOTIFY }, "If you hate lucky balls, we're sorry. :(")
end
-- PlayerID on Team Specific
if !ConVarExists("ph_enable_plnames") then
	local ph_enable_plnames = CreateConVar("ph_enable_plnames", "0", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Serverside control for if a clients see client\'s team player names through walls.")
end
-- Generic Prop Hunt ConVars
if !ConVarExists("ph_hunter_fire_penalty") then
	local ph_hunter_fire_penalty = CreateConVar("ph_hunter_fire_penalty", "5", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Health points removed from hunters when they shoot.")
	local ph_hunter_kill_bonus = CreateConVar("ph_hunter_kill_bonus", "100", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "How much health to give back to the Hunter after killing a prop.")
	local ph_swap_teams_every_round = CreateConVar("ph_swap_teams_every_round", "1", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Should teams swapped on every round?")
	local ph_game_time = CreateConVar("ph_game_time", "30", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Maximum Time Left (in minutes) - Default is 30 minutes.")
	local ph_hunter_blindlock_time = CreateConVar("ph_hunter_blindlock_time", "30", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "How long hunters are blinded (in seconds)")
	local ph_round_time = CreateConVar("ph_round_time", "300", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Time (in seconds) for each rounds.")
	local ph_rounds_per_map = CreateConVar("ph_rounds_per_map", "10", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Numbers played on a map (Default: 10)")
end
-- Round Control
if !ConVarExists("ph_waitforplayers") then
	local ph_waitforplayers = CreateConVar( "ph_waitforplayers", "1", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE, FCVAR_NOTIFY }, "Should we wait for players for proper round?" )
end
if !ConVarExists("ph_min_waitforplayers") then
	local ph_min_waitforplayers = CreateConVar( "ph_min_waitforplayers", "1", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE }, "Numbers of mininum players that we should wait for round start. Value must not contain less than 1." )
end

-- Verbose mode
if !ConVarExists("ph_print_verbose") then
	local ph_print_verbose = CreateConVar("ph_print_verbose", "0", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE }, "Developer Verbose. Some printed messages will only appear if this is enabled.")
end
function printverbose(text)
	if GetConVar("ph_print_verbose"):GetBool() && text then
		print(tostring(text))
	end
end

-- Autotaunt delay (in seconds)
if !ConVarExists("ph_autotaunt_delay") then
	local ph_autotaunt_delay = CreateConVar("ph_autotaunt_delay", "45", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE }, "The delay for the auto taunt")
end

-- Is autotaunt enabled
if !ConVarExists("ph_autotaunt_enabled") then
	local ph_autotaunt_enabled = CreateConVar("ph_autotaunt_enabled", "1",{ FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE }, "Should auto taunting be enabled")
end

-- PVS fix
if !ConVarExists("ph_fix_pvs") then
	local ph_fix_pvs = CreateConVar("ph_fix_pvs", "1", { FCVAR_SERVER_CAN_EXECUTE, FCVAR_REPLICATED, FCVAR_ARCHIVE }, "Fix PVS in the gamemode so players stay updated.")
end

-- Add the shared config file
AddCSLuaFile("sh_config.lua")

-- Include the required lua files
include("sh_config.lua")
include("sh_player.lua")

-- MapVote
if SERVER then
    AddCSLuaFile("sh_mapvote.lua")
    AddCSLuaFile("mapvote/cl_mapvote.lua")

	include("sh_mapvote.lua")
    include("mapvote/sv_mapvote.lua")
    include("mapvote/rtv.lua")
else
	include("sh_mapvote.lua")
    include("mapvote/cl_mapvote.lua")
end

-- Fretta!
DeriveGamemode("fretta")
IncludePlayerClasses()

-- Information about the gamemode
GM.Name		= "Enhanced Prop Hunt"
GM.Author	= "Wolvindra-Vinzuerio and D4UNKN0WNM4N2010 (Enhanced), original by Kowalski/AMT"

-- Help info
GM.Help = [[Prop Hunt is a twist on the classic backyard game Hide and Seek.
TEAM PROP:
As a Prop you have ]]..PHE.HUNTER_BLINDLOCK_TIME..[[ seconds to replicate an existing prop on the map and then find a good hiding spot. Press [E] to replicate the prop you are looking at.
You can also rotate the prop around and lock the rotation by pressing R.

TEAM HUNTER:
As a Hunter you will be blindfolded for the first ]]..PHE.HUNTER_BLINDLOCK_TIME..[[ seconds of the round while the Props hide. When your blindfold is taken off, you will need to find props controlled by players and kill them. Damaging non-player props will lower your health significantly. 
However, killing a Prop will increase your health by ]]..PHE.HUNTER_KILL_BONUS..[[ points.

Both teams can press [F3] to play a taunt sound. Props can press [C] for custom taunts.]]

-- Fretta configuration
GM.GameLength				= GetConVarNumber("ph_game_time")
GM.AddFragsToTeamScore		= true
GM.CanOnlySpectateOwnTeam 	= true
GM.ValidSpectatorModes 		= { OBS_MODE_CHASE, OBS_MODE_IN_EYE, OBS_MODE_ROAMING }
GM.Data 					= {}
GM.EnableFreezeCam			= true
GM.NoAutomaticSpawning		= true
GM.NoNonPlayerPlayerDamage	= true
GM.NoPlayerPlayerDamage 	= true
GM.RoundBased				= true
GM.RoundLimit				= PHE.ROUNDS_PER_MAP
GM.RoundLength 				= PHE.ROUND_TIME
GM.RoundPreStartTime		= 0
GM.SuicideString			= "was dead or died mysteriously." -- i think this one is pretty obsolete.
GM.TeamBased 				= true
GM.AutomaticTeamBalance 	= false
GM.ForceJoinBalancedTeams 	= true

-- Easy goto for seeing if we are PH:E
GM.PH_IsPHE					= true

-- Called on gamemdoe initialization to create teams
function GM:CreateTeams()
	if !GAMEMODE.TeamBased then
		return
	end
	
	TEAM_HUNTERS = 1
	team.SetUp(TEAM_HUNTERS, "Hunters", Color(150, 205, 255, 255))
	team.SetSpawnPoint(TEAM_HUNTERS, {"info_player_counterterrorist", "info_player_combine", "info_player_deathmatch", "info_player_axis"})
	team.SetClass(TEAM_HUNTERS, {"Hunter"})

	TEAM_PROPS = 2
	team.SetUp(TEAM_PROPS, "Props", Color(255, 60, 60, 255))
	team.SetSpawnPoint(TEAM_PROPS, {"info_player_terrorist", "info_player_rebel", "info_player_deathmatch", "info_player_allies"})
	team.SetClass(TEAM_PROPS, {"Prop"})
end

-- Check collisions
function CheckPropCollision(entA, entB)
	-- Disable prop on prop collisions
	if !GetConVar("ph_prop_collision"):GetBool() && (entA && entB && ((entA:IsPlayer() && entA:Team() == TEAM_PROPS && entB:IsValid() && entB:GetClass() == "ph_prop") || (entB:IsPlayer() && entB:Team() == TEAM_PROPS && entA:IsValid() && entA:GetClass() == "ph_prop"))) then
		return false
	end
	
	-- Disable hunter on hunter collisions so we can allow bullets through them
	if (IsValid(entA) && IsValid(entB) && (entA:IsPlayer() && entA:Team() == TEAM_HUNTERS && entB:IsPlayer() && entB:Team() == TEAM_HUNTERS)) then
		return false
	end
end
hook.Add("ShouldCollide", "CheckPropCollision", CheckPropCollision)
