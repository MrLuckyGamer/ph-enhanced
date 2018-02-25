-- Help & documentation of how to add your custom taunts: http://www.wolvindra.net/phe_faq
-- There is no need anymore to read from Help & Documentation as the gamemode now automatically finds taunts (Unless adding sounds from other directories than props_custom)

-- PROP TAUNT LISTS
PHE.PH_TAUNT_CUSTOM.PROP = {
	-- Delete these comment line (--) below to enable your custom taunts. Here's the example how to add your custom taunts:
	"taunts/props_extra/dx_idonotmoveout.wav", -- dont forget to add comma first with other list too! (,)
	"taunts/props_extra/dx_iloominarty.wav",
	"taunts/props_extra/dx_imgonnawoopyourass.wav",
	"taunts/props_extra/dx_lookatme.wav",
	"taunts/props_extra/dx_molepeople.wav",
	"taunts/props_extra/dx_thebomb.wav",
	"taunts/props_extra/dx_thebomb2.wav",
	"taunts/props_extra/ext_angry_german_kid.wav",
	"taunts/props_extra/ext_blablaahah.wav",
	"taunts/props_extra/ext_dance_music.wav",
	"taunts/props_extra/ext_get_no_scope.wav",
	"taunts/props_extra/ext_hl1_crackmod_ihateyou.wav",
	"taunts/props_extra/ext_hl1_crackmod_watchyourrear.wav",
	"taunts/props_extra/ext_hl1_crackmod_youareugly.wav",
	"taunts/props_extra/ext_jojon_sina.wav",
	"taunts/props_extra/ext_just_do_it_1.wav",
	"taunts/props_extra/ext_just_do_it_2.wav",
	"taunts/props_extra/ext_woo.wav",
	"taunts/props_extra/ext_huladance.mp3",
	"taunts/props_extra/ext_wepon.mp3",
	"taunts/props_extra/ext_x_files.wav"	-- don't add comma (,) at the end of the list!
}

-- Create custom taunt directory if needed and find custom taunts if it all exists
-- Directory Existant
if !file.Exists("sound/taunts/props_custom/", "GAME") then
	printVerbose("[PH:E Taunts] Custom prop taunts cannot be detected because one or more directories are missing!!")
	printVerbose("[PH:E Taunts] Make sure this directory exists: sound/taunts/props_custom/ !")
end

-- Let us go find them shall we
if file.Exists("sound/taunts/props_custom/", "GAME") then
	-- Add WAV
	PHE.PH_TAUNT_FILE_LIST.PROP = file.Find("sound/taunts/props_custom/*.wav", "GAME")
	printVerbose("[PH:E Taunts] Looking for custom WAV taunts.")
	if #PHE.PH_TAUNT_FILE_LIST.PROP < 1 then printVerbose("[PH:E Taunts] Custom Taunt: There is nothing here??") end
	for k, v in pairs(PHE.PH_TAUNT_FILE_LIST.PROP) do
		printVerbose("[PH:E Taunts] Detected & adding custom prop taunt: sound/taunts/props_custom/"..v.." .")
		table.insert(PHE.PH_TAUNT_CUSTOM.PROP, "taunts/props_custom/"..v)
	end
	
	-- Add MP3
	PHE.PH_TAUNT_FILE_LIST.PROP = file.Find("sound/taunts/props_custom/*.mp3", "GAME")
	printVerbose("[PH:E Taunts] Looking for custom MP3 taunts.")
	if #PHE.PH_TAUNT_FILE_LIST.PROP < 1 then printVerbose("[PH:E Taunts] Custom Taunt: There is nothing here??") end
	for k, v in pairs(PHE.PH_TAUNT_FILE_LIST.PROP) do
		printVerbose("[PH:E Taunts] Detected & adding custom prop taunt: sound/taunts/props_custom/"..v.." .")
		table.insert(PHE.PH_TAUNT_CUSTOM.PROP, "taunts/props_custom/"..v)
	end
end
