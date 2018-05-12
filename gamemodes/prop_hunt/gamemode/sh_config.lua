-- Global Var for custom taunt, delivering from taunts/prop -or- hunter_taunts.lua
PHE.PH_TAUNT_CUSTOM = {}
PHE.PH_TAUNT_FILE_LIST = {}
include("taunts/hunter_taunts.lua")
include("taunts/prop_taunts.lua")

-- Time (in seconds) for spectator check (Default: 0.1)
PHE.SPECTATOR_CHECK_ADD = 0.1

PHE.USABLE_PROP_ENTITIES = {
	"prop_physics",
	"prop_physics_multiplayer"
}

-- Configure your staff admin/mod or donator rank (vip/donator) to the ignore mute list so they cannot be muted for a reason.
PHE.IgnoreMutedUserGroup = {
	-- admin
	"superadmin",
	"admin",
	"Owner",
	"Co-owner",
	-- Misc users
	"Developer",
	"Moderator",
	"Donator",
	"VIP"
}

-- Admin Staffs table for sv_admin.lua, which enables to modify gamemode settings under F1 > Prop Hunt Menu > Admin menu.
PHE.SVAdmins = {
	"admin",
	"superadmin",
	"owner"
}

-- Banned Props models
PHE.BANNED_PROP_MODELS = {
	"models/props/cs_assault/dollar.mdl",
	"models/props/cs_assault/money.mdl",
	"models/props/cs_office/snowman_arm.mdl",
	"models/props/cs_office/computer_mouse.mdl",
	"models/props/cs_office/projector_remote.mdl",
	"models/props/cs_militia/reload_bullet_tray.mdl",
	"models/foodnhouseholditems/egg.mdl"
}

--[[ // DO NOT MODIFY! use from taunts/prop_taunts.lua or hunter_taunts.lua instead! \\ ]]--
PHE.HUNTER_TAUNTS = {
	["Come to Papa"]				=	"taunts/hunters/come_to_papa.wav",
	["I am your Father"]			=	"taunts/hunters/father.wav",
	["Need Fire Assistance!"]		=	"taunts/hunters/fireassis.wav",
	["(GlaDOS) President"]			=	"taunts/hunters/glados-president.wav",
	["I am Hit!"]					=	"taunts/hunters/hitassist.wav",
	["How Rude"]					=	"taunts/hunters/how_rude.wav",
	["I will Find You"]				=	"taunts/hunters/ill_find_you.wav",
	["Radio Laugh"]					=	"taunts/hunters/laugh.wav",
	["Now What?"]					=	"taunts/hunters/now_what.wav",
	["You dont have the Soul"]		=	"taunts/hunters/you_dont_have_the_soul.wav",
	["You dont know the Power"]		=	"taunts/hunters/you_dont_know_the_power.wav",
	["You are underestimating"]		=	"taunts/hunters/you_underestimate_the_power.wav",
	["Threat Neutralized"]			=	"taunts/hunters/threat_neutralized.wav",
	["DX: My Vision is Augmented"]	=	"taunts/ph_enhanced/dx_augmented.wav",
	["DX: Im gonna Whoop your Ass"]	=	"taunts/ph_enhanced/dx_imgonnawoopyourass.wav",
	["DX: Dont worry we are cops"]	=	"taunts/ph_enhanced/dx_dontworrywurcops.wav",
	["DX: Heheh"]					=	"taunts/ph_enhanced/dx_hehe.wav",
	
	-- Normal old taunts from HL2.
	["Enough of Mambo Jumbo"]	=	"vo/npc/male01/vanswer13.wav",
	["HACKS"]					=	"vo/npc/male01/thehacks01.wav",
	["Over Here"]				=	"vo/npc/male01/overhere01.wav",
	["Over There"]				=	"vo/npc/male01/overthere01.wav",
	["Over There!!"]			=	"vo/npc/male01/overthere02.wav"
}

--[[ // DO NOT MODIFY! use from taunts/props_taunts.lua or hunters_taunts.lua instead! \\ ]]--
PHE.PROP_TAUNTS = {
	["Run for your Life!"]					=	"vo/npc/male01/runforyourlife02.wav",
	["Bad Boys"]							=	"taunts/props/bad_boys.wav",
	["Not the Bees"]						=	"taunts/props/bees_fix.wav",
	["BillyMays - Are you on the Balls"]	=	"taunts/props/billymays_areyouontheballs.wav",
	["BillyMays - Get on the Balls"]		=	"taunts/props/billymays_getontheballs.wav",
	["BillyMays - I Guarantee It"]			=	"taunts/props/billymays_iguaranteeit.wav",
	["BillyMays - Its so Easy"]				=	"taunts/props/billymays_itsoeasy.wav",
	["BillyMays - Laundry made Easy"]		=	"taunts/props/billymays_laundrymadeeasy.wav",
	["BillyMays - New OxyClean"]			=	"taunts/props/billymays_newoxyclean.wav",
	["BillyMays - No more Detergent"]		=	"taunts/props/billymays_nomoredetergent.wav",
	["BillyMays - Only $9.99"]				=	"taunts/props/billymays_only9_99.wav",
	["BillyMays - OxyClean"]				=	"taunts/props/billymays_oxyclean.wav",
	["BillyMays - So Get on the Balls!"]	=	"taunts/props/billymays_sogetontheballs.wav",
	["Boom, Headshot!"]						=	"taunts/props/boom_hs.wav",
	["Car Horn"]							=	"taunts/props/car_horn.wav",
	["Chicken Hammer"]						=	"taunts/props/chicken_hammer.wav",
	["DOH"]									=	"taunts/props/doh.wav",
	["Force Eliminated"]					=	"taunts/props/forces_eliminated.wav",
	["Go Away or I Shall"]					=	"taunts/props/go_away_or_i_shall.wav",
	["H A R D B A S S"]						=	"taunts/props/hardbass.wav",
	["T R I  P O L O S K I"]				=	"taunts/props/tri_poloski1.wav",
	["Poloski Beats"]						=	"taunts/props/tri_poloski2.wav",
	["Nein Nein Nein"]						=	"taunts/props/nein.wav",
	["Ill be back"]							=	"taunts/props/ill_be_back.wav",
	["I am Corn Holio"]						=	"taunts/props/i_am_cornholio.wav", -- todo: Does it sounds correct?
	["I Am the one and only"]				=	"taunts/props/i_am_the_one_and_only.wav",
	["LEROY JENKINS"]						=	"taunts/props/leroy_jenkins.wav",
	["Oh yeah he will pay"]					=	"taunts/props/oh_yea_he_will_pay.wav",
	["Muffin Man"]							=	"taunts/props/ok_i_will_tell_you.wav",
	["ON ME"]								=	"taunts/props/on_me.wav",
	["Its over 9000"]						=	"taunts/props/over9000.wav",
	["PINGAS"]								=	"taunts/props/pingas.wav",
	["Please Come Again"]					=	"taunts/props/pls_come_again.wav",
	["Pokemon"]								=	"taunts/props/pokemon.wav",
	["Very Retarded Laugh"]					=	"taunts/props/retarted_laugh.wav",
	["Shams Wow"]							=	"taunts/props/sham_wow.wav",
	["This is SPARTA"]						=	"taunts/props/sparta.wav",
	["WATATATATA"]							=	"taunts/props/watatata.wav",
	["What is wrong with you"]				=	"taunts/props/wrong.wav",
	["WROOOONG"]							=	"taunts/props/wroooong.wav",
	["wololo"]								=	"taunts/props/wololo.wav",
	["WooHoo"]								=	"taunts/props/woohoo.wav",
	["DX: Easy Bruh"]						=	"taunts/ph_enhanced/dx_easy_bruh.wav",
	["DX: Hehe"]							=	"taunts/ph_enhanced/dx_heh.wav",
	["DX: I dont Move Out"]					=	"taunts/ph_enhanced/dx_idonotmoveout.wav",
	["DX: You Killed my Friend"]			=	"taunts/ph_enhanced/dx_iloominarty.wav",
	["DX: Leave me alone"]					=	"taunts/ph_enhanced/dx_leaveme.wav",
	["DX: LOOK AT ME"]						=	"taunts/ph_enhanced/dx_lookatme.wav",
	["DX: AAAAAAARGGHHHHHH"]				=	"taunts/ph_enhanced/dx_molepeople.wav",
	["DX: A BOMB"]							=	"taunts/ph_enhanced/dx_thebomb.wav",
	["DX: THE BOMB JC"]						=	"taunts/ph_enhanced/dx_thebomb2.wav",
	["DX: What a Shame"]					=	"taunts/ph_enhanced/dx_whatashame.wav",
	["DX: Whoa #1"]							=	"taunts/ph_enhanced/dx_whoawhoawhoa_1.wav",
	["DX: Whoa #2"]							=	"taunts/ph_enhanced/dx_whoawhoawhoa_2.wav",
	["SPAGHET"]								=	"taunts/ph_enhanced/ext_spaghet.wav",
	["WHO TOUCHA MY SPAGHET"]				=	"taunts/ph_enhanced/ext_touch_ma_spaghet.wav",
	["Do you know the way"]					=	"taunts/ph_enhanced/ext_do_you_kno_de_wei.wav",
	["U have ebola to kno the wei"]			=	"taunts/ph_enhanced/ext_uhaveebolatoknodewei.wav",
	["Angry German Kid"]					=	"taunts/ph_enhanced/ext_angry_german_kid.wav",
	["Vitas: 7th Elements"]					=	"taunts/ph_enhanced/ext_blablaahah.wav",
	["I hate you"]							=	"taunts/ph_enhanced/ext_crackmod_ihateyou.wav",
	["I watch your rear"]					=	"taunts/ph_enhanced/ext_crackmod_watchyourrear.wav",
	["You damn Ugly"]						=	"taunts/ph_enhanced/ext_crackmod_youareugly.wav",
	["Dance Music"]							=	"taunts/ph_enhanced/ext_dance_music.wav",
	["MLG: GET NO SCOPE"]					=	"taunts/ph_enhanced/ext_get_no_scope.wav",
	["MLG: GET THE CAMERA"]					=	"taunts/ph_enhanced/ext_getcamera.wav",
	["MLG: OH ITS TRIPLE"]					=	"taunts/ph_enhanced/ext_mlg_triple.wav",
	["Bicycle Bell"]						=	"taunts/ph_enhanced/ext_bicycle_bell.wav",
	["Ding"]								=	"taunts/ph_enhanced/ext_cling.wav",
	["AND III ALWAYS LOVE YOU"]				=	"taunts/ph_enhanced/ext_and_iiiiiiiiiiiiiiiiiiii.wav",
	["The Rude of Storming Sand"]			=	"taunts/ph_enhanced/ext_darude.wav",
	["deaugh"]								=	"taunts/ph_enhanced/ext_deaugh.wav",
	["CDI Die"]								=	"taunts/ph_enhanced/ext_die.wav",
	["CDI Oah"]								=	"taunts/ph_enhanced/ext_oah.wav",
	["Heres some cash goys"]				=	"taunts/ph_enhanced/ext_dosh1.wav",
	["Loadsam money"]						=	"taunts/ph_enhanced/ext_dosh2.wav",
	["Who needed money"]					=	"taunts/ph_enhanced/ext_dosh3.wav",
	["Money money money"]					=	"taunts/ph_enhanced/ext_dosh4.wav",
	["Dosh grab it while you can"]			=	"taunts/ph_enhanced/ext_dosh5.wav",
	["Dun dun duuuun"]						=	"taunts/ph_enhanced/ext_dundundun.wav",
	["derpy fart"]							=	"taunts/ph_enhanced/ext_fart1.wav",
	["nice fart"]							=	"taunts/ph_enhanced/ext_fart2.wav",
	["auffwauffderp"]						=	"taunts/ph_enhanced/ext_fdsa.wav",
	["Game Over"]							=	"taunts/ph_enhanced/ext_gameover.wav",
	["Game Over mario"]						=	"taunts/ph_enhanced/ext_gameover_mario.wav",
	["Get out of Here stalker"]				=	"taunts/ph_enhanced/ext_getoutofhere_stalker.wav",
	["GET TO THE CHOPPA"]					=	"taunts/ph_enhanced/ext_get_to_the_choppa.wav",
	["Idiots #1"]							=	"taunts/ph_enhanced/ext_idiots_1.wav",
	["Idiots #2"]							=	"taunts/ph_enhanced/ext_idiots_2.wav",
	["This is Illegal"]						=	"taunts/ph_enhanced/ext_illegal.wav",
	["JASONNN"]								=	"taunts/ph_enhanced/ext_jason1.wav",
	["JASON!"]								=	"taunts/ph_enhanced/ext_jason2.wav",
	["JASON"]								=	"taunts/ph_enhanced/ext_jason3.wav",
	["Jim Carrey REMIX"]					=	"taunts/ph_enhanced/ext_jim_carrey.wav",
	["AND HIS NAME IS JOHN CENA"]			=	"taunts/ph_enhanced/ext_johncena.wav",
	["AND HIS NAME IS JOHN CENA REMIX"]		=	"taunts/ph_enhanced/ext_johncena_remix.wav",
	["no way"]								=	"taunts/ph_enhanced/ext_nowai.wav",
	["Remove Freeman"]						=	"taunts/ph_enhanced/ext_remove_kebab.wav",
	["SHUT UP"]								=	"taunts/ph_enhanced/ext_shutuuuuuuup.wav",
	["JC2: No no no"]						=	"taunts/ph_enhanced/jc2_nonono.wav",
	["JC2: no way"]							=	"taunts/ph_enhanced/jc2_nowai.wav",
	["JC2: You Son of a Bee"]				=	"taunts/ph_enhanced/jc2_usonova_bee.wav",
	["Shia Labeouf: JUST DO IT"]			=	"taunts/ph_enhanced/just_doit1.wav",
	["Shia Labeouf: DO IT"]					=	"taunts/ph_enhanced/just_doit2.wav",
	["Hula Dance"]							=	"taunts/ph_enhanced/ext_huladance.wav",
	["X Files"]								=	"taunts/ph_enhanced/ext_illuminaty.wav",
	["Lovely hehe"]							=	"taunts/ph_enhanced/ext_lovely_hehe_mp4.wav",
	["Yeah Boy"]							=	"taunts/ph_enhanced/ext_yeahboy_mp4.wav",
	["MY LEG"]								=	"taunts/ph_enhanced/ext_my_leg.wav",
	["JOHN FREEMANS WEPON"]					=	"taunts/ph_enhanced/ext_wepon.wav",
	["OOOOOOOOH"]							=	"taunts/ph_enhanced/ext_woo.wav"
}

-- Custom Player Model bans for props
PHE.PROP_PLMODEL_BANS = {
	"models/player.mdl"
}

PHE.WINNINGSOUNDS = {
	[1] 		= "misc/ph_hunterwin.mp3", 	-- hunter
	[2]			= "misc/ph_propwin.mp3",	-- props
	["Draw"]	= {"misc/ph_rounddraw_1.mp3", "misc/ph_rounddraw_2.mp3"}
}

-- Add custom taunts, if any. See taunts/prop_taunts.lua or taunts/hunter_taunts.lua for more info.
local function AddDemTaunt()
	printVerbose("[PH:E Taunts] Finalising custom prop taunts.")
	if PHE.PH_TAUNT_CUSTOM.PROP != nil then
		for name,tprop in pairs(PHE.PH_TAUNT_CUSTOM.PROP) do
			--PHE.PROP_TAUNTS[name] = tprop
			if (SERVER) then
				resource.AddSingleFile("sound/"..tprop)
			end
		end
	else
		printVerbose("[PH:E Taunts] WARNING! Custom taunts table is EMPTY!!")
	end
	
	printVerbose("[PH:E Taunts] Finalising custom hunter taunts.")
	if PHE.PH_TAUNT_CUSTOM.HUNTER != nil then
		for name,thunter in pairs(PHE.PH_TAUNT_CUSTOM.HUNTER) do
			--PHE.HUNTER_TAUNTS[name] = thunter
			if (SERVER) then
				resource.AddSingleFile("sound/"..thunter)
			end
		end
	else
		printVerbose("[PH:E Taunts] WARNING! Custom taunts table is EMPTY!!")
	end
	
	-- sort them
	table.sort(PHE.PROP_TAUNTS)
	table.sort(PHE.HUNTER_TAUNTS)
	table.sort(PHE.PH_TAUNT_CUSTOM.PROP)
	table.sort(PHE.PH_TAUNT_CUSTOM.HUNTER)
end
hook.Add("Initialize", "PHE.AddTauntTables", AddDemTaunt)

-- Add the custom player model bans for props
if SERVER then
	local function AddBadPLModels()

		-- Create base config area
		if ( !file.Exists( "prop_hunt-enhanced", "DATA" ) ) then
		
			file.CreateDir( "prop_hunt-enhanced" )
		
		end

		-- Create actual config
		if ( !file.Exists( "prop_hunt-enhanced/prop_playermodel_bans.txt", "DATA" ) ) then
		
			file.Write("prop_hunt-enhanced/prop_playermodel_bans.txt", util.TableToJSON(PHE.PROP_PLMODEL_BANS, true))
		
		end

		-- Check and make sure the file still exists in case something caused it to not be created
		if ( file.Exists( "prop_hunt-enhanced/prop_playermodel_bans.txt", "DATA" ) ) then
		
			local PROP_PLMODEL_BANS_READ = util.JSONToTable( file.Read( "prop_hunt-enhanced/prop_playermodel_bans.txt", "DATA" ) )
			for k, v in pairs(PROP_PLMODEL_BANS_READ) do
				if !table.HasValue(PHE.PROP_PLMODEL_BANS, string.lower(v)) then
					printVerbose("[PH:E Models] Adding custom prop model ban: "..string.lower(v))
					table.insert(PHE.PROP_PLMODEL_BANS, string.lower(v))
				end
			end
		
		end

	end
	hook.Add("Initialize", "PHE.AddBadPlayerModels", AddBadPLModels)
end