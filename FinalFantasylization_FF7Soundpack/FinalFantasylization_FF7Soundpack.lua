--#######################################
--##
--##	   FinalFantasylization 4.0.0
--##
--##	     Final Fantasy 7 
--##
--##	        Soundpack
--##
--##     		By: Darken5
--##
--#######################################

local flag = false -- off: used in the Code to determine which sound pack is enabled
local soundPackID = "ff7" -- Specific /ffsoundpack <command> for this soundpack, must be 1 word/acronym, and lowercase (example: "Final Fantasy Mix Project" would be "ffmix"  or similar)
_G["SoundPack" .. soundPackID  .. "_SetEnabled"] = function(enabled)
    flag = enabled
    if enabled then
		-- set all the sound effects variables for this pack (you know... the ones passed to PlaySoundFile())
		--#######################################
		--##
		--##		Song List
		--##
		--#######################################

		S = "Interface\\AddOns\\FinalFantasylization_FF7Soundpack\\Sounds\\"
		SS = "Interface\\AddOns\\FinalFantasylization_FF7Soundpack\\Dance\\"
		
		-- Capital Cities Events --
		OrgrimmarSong = "OrgrimmarSong.mp3" -- 
		SilvermoonCitySong = "SilvermoonCitySong.mp3" -- 
		ThunderBluffSong = "ThunderbluffSong.mp3" -- 
		UndercitySong = "UndercitySong.mp3" -- 

		DarnassusSong = "DarnassusSong.mp3" -- 
		ExodarSong = "ExodarSong.mp3" -- 
		IronforgeSong = "IronforgeSong.mp3" -- 
		StormwindCitySong = "StormwindCitySong.mp3" -- 

		ShattrathCitySong = "ShattrathCitySong.mp3" -- 
		DalaranSong = "DalaranSong.mp3" -- 
		EbonHoldSong = "EbonHoldSong.mp3" -- 

		-- Horde Towns Events --
		Horde1Town = "Horde1Town.mp3" -- 
		Horde2Town = "Horde2Town.mp3" -- 
		Horde3Town = "Horde3Town.mp3" -- 
		Horde4Town = "Horde4Town.mp3" -- 
		Horde5Town = "Horde5Town.mp3" --
		Horde6Town = "Horde6Town.mp3" -- 
		Horde7Town = "Horde7Town.mp3" -- 
		Horde8Town = "Horde8Town.mp3" -- 
		Horde9Town = "Horde9Town.mp3" -- 
		Horde10Town = "Horde10Town.mp3" --

		-- Alliance Towns Events --
		Alliance1Town = "Alliance1Town.mp3" -- 
		Alliance2Town = "Alliance2Town.mp3" -- 
		Alliance3Town = "Alliance3Town.mp3" -- 
		Alliance4Town = "Alliance4Town.mp3" -- 
		Alliance5Town = "Alliance5Town.mp3" -- 
		Alliance6Town = "Alliance6Town.mp3" -- 
		Alliance7Town = "Alliance7Town.mp3" -- 
		Alliance8Town = "Alliance8Town.mp3" -- 
		Alliance9Town = "Alliance9Town.mp3" -- 
		Alliance10Town = "Alliance10Town.mp3" --

		-- PvP Type Zones Events --
		FriendlySong = "FriendlySong.mp3" -- 
		ContestedSong = "ContestedSong.mp3" -- 
		HostileSong = "HostileSong.mp3" -- 

		ForestSong = "ForestSong.mp3" -- 
		LandSong = "LandSong.mp3" -- 
		PlagueSong = "PlagueSong.mp3" -- 
		SandSong = "SandSong.mp3" -- 
		SnowSong = "SnowSong.mp3" -- 
		SwampSong = "SwampSong.mp3" -- 
		BeachSong = "BeachSong.mp3" -- 
		LakeSong = "LakeSong.mp3" -- 
		WaterSong = "WaterSong.mp3" -- 

		-- Battlegrounds Events --
		BattleGround1 = "BattleGround1.mp3" -- 
		BattleGround2 = "BattleGround2.mp3" -- 
		BattleGround3 = "BattleGround3.mp3" -- 
		BattleGround4 = "BattleGround4.mp3" -- 
		BattleGround5 = "BattleGround5.mp3" --

		-- Normal Mount Events --
		Mounted1Song = "Mounted1Song.mp3" -- 
		Mounted2Song = "Mounted2Song.mp3" -- 
		Mounted3Song = "Mounted3Song.mp3" -- 

		Escape1Song = "Escape1Song.mp3" -- 
		Escape2Song = "Escape2Song.mp3" -- 
		Escape3Song = "Escape3Song.mp3" -- 
		Escape4Song = "Escape4Song.mp3" -- 
	
		-- Flying Mount Events --
		Flying1Song = "Flying1Song.mp3" -- 
		Flying2Song = "Flying2Song.mp3" -- 

		-- Dead/Ghost Events --
		DeadSong = "Dead1Song.mp3" -- 
		DieSong = "DieSong.mp3" -- 

		-- Fighting Events --
		Fanfare = "Fanfare.mp3" -- Fanfare
		Fighting1Song = "Fighting1Song.mp3" -- 
		Fighting2Song = "Fighting2Song.mp3" -- 
		Fighting3Song = "Fighting3Song.mp3" -- 
		Fighting4Song = "Fighting4Song.mp3" -- 
		
		-- Dance Event --
		BloodElfFemaleDanceSong = "BloodElfFemale.mp3" -- 
		BloodElfMaleDanceSong = "BloodElfMale.mp3" -- 
		DraeneiFemaleDanceSong = "DraeneiFemale.mp3" -- 
		DraeneiMaleDanceSong = "DraeneiMale.mp3" -- 
		DwarfFemaleDanceSong = "DwarfFemale.mp3" -- 
		DwarfMaleDanceSong = "DwarfMale.mp3" -- 
		GnomeFemaleDanceSong = "GnomeFemale.mp3" -- 
		GnomeMaleDanceSong = "GnomeMale.mp3" -- 
		HumanFemaleDanceSong = "HumanFemale.mp3" -- 
		HumanMaleDanceSong = "HumanMale.mp3" -- 
		NightElfFemaleDanceSong = "NightElfFemale.mp3" -- 
		NightElfMaleDanceSong = "NightElfMale.mp3" -- 
		OrcFemaleDanceSong = "OrcFemale.mp3" -- 
		OrcMaleDanceSong = "OrcMale.mp3" -- 
		TaurenFemaleDanceSong = "TaurenFemale.mp3" -- 
		TaurenMaleDanceSong = "TaurenMale.mp3" -- 
		TrollFemaleDanceSong = "TrollFemale.mp3" -- 
		TrollMaleDanceSong = "TrollMale.mp3" -- 
		UndeadFemaleDanceSong = "UndeadFemale.mp3" -- 
		UndeadMaleDanceSong = "UndeadMale.mp3" -- 
		DruidBearDanceSong = "DruidBear.mp3" -- 
		DruidCatDanceSong = "DruidCat.mp3" -- 
		DruidOwlBearDanceSong = "DruidOwlBear.mp3" -- 
		DruidTreeFormDanceSong = "DruidTreeForm.mp3" -- 
		WolfDanceSong = "Wolf.mp3" -- 

		-- Misc Events --
		ChocoboKweh = "kweh.mp3" -- Chocobo Kweh Sound
		SwimSong = "SwimSong.mp3" -- 
		DarkSwimSong = "DarkSwimSong.mp3"
		SleepSong = "SleepSong.mp3" -- 
		KillSound = "Kill.wav" -- Leave combat sound
		CombatSound = "Combat.wav" -- Enter combat sound
		LevelUpSong = "LevelUpSong.mp3" -- Level Up song

		
	--#######################################
	--##
	--##	MUSIC /SOUND CALLS
	--##
	--#######################################

	--#############
	--## SOUNDS
	--#############
	function FinalFantasylization_KillSound()
		FinalFantasylization_PlayFile(S .. KillSound );
		FinalFantasylization_debugMsg("KillSound")
	end
	function FinalFantasylization_CombatSound()
		FinalFantasylization_PlayFile(S .. CombatSound );
		FinalFantasylization_debugMsg("CombatSound")
	end
	function FinalFantasylization_LevelUpSong()
		FinalFantasylization_PlayFile(S .. LevelUpSong );
		FinalFantasylization_debugMsg("LevelUpSong")
	end
	function FinalFantasylization_ChocoboKweh()
		FinalFantasylization_PlayFile( S ..  ChocoboKweh );
		FinalFantasylization_debugMsg("Chocobo Kweh!")
	end
	
	--########################
	--## BATTLEGROUNDS
	--########################
	function FinalFantasylization_AlteracValleyBG()
		FinalFantasylization_BattleGround()
	end
	function FinalFantasylization_ArathiBasinBG()
		FinalFantasylization_BattleGround()
	end
	function FinalFantasylization_EyeoftheStormBG()
		FinalFantasylization_BattleGround()
	end
	function FinalFantasylization_StrandsoftheAncientsBG()
		FinalFantasylization_BattleGround()
	end
	function FinalFantasylization_WarsongGulchBG()
		FinalFantasylization_BattleGround()
	end
	function FinalFantasylization_IsleOfConquestBG()
		FinalFantasylization_BattleGround()
	end
--###########################################################################################
--##   EASTERN KINGDOMS ZONES
--###########################################################################################
--'==========================================================================================
--' Eastern Kingdoms Capital: Undercity
--'==========================================================================================
--	Zone: Undercity			
	function FinalFantasylization_EasternKingdoms_Undercity()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--
--	SUBZONES:
--	Apothecarium			
	function FinalFantasylization_Undercity_SubzoneTheApothecarium()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Canals					
	function FinalFantasylization_Undercity_SubzoneCanals()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Magic Quarter			
	function FinalFantasylization_Undercity_SubzoneMagicQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Rogues' Quarter			
	function FinalFantasylization_Undercity_SubzoneRoguesQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Royal Quarter			
	function FinalFantasylization_Undercity_SubzoneRoyalQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Ruins of Lordaeron		
	function FinalFantasylization_Undercity_SubzoneRuinsofLordaeron()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Sewers					
	function FinalFantasylization_Undercity_SubzoneSewers()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	Trade Quarter			
	function FinalFantasylization_Undercity_SubzoneTradeQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end
--	War Quarter				
	function FinalFantasylization_Undercity_SubzoneWarQuarter()
		FinalFantasylization_PlayMusic(S .. UndercitySong);
		FinalFantasylization_debugMsg("UndercitySong")
	end

--'==========================================================================================
--' Eastern Kingdoms Zone: Abyssal Depths
--'==========================================================================================
--	Zone: Abyssal Depths
	function FinalFantasylization_EasternKingdomsAbyssalDepths()
		local x = math.random(1, 4);
			if x == 1 then
				FinalFantasylization_LakeSong()
			elseif x == 2 then
				FinalFantasylization_WaterSong()
			elseif x == 3 then
				FinalFantasylization_Swimming(0)
			else
				FinalFantasylization_Swimming(1)
			end
	end
--	TOWNS:
--	Alliance:
--		Darkbreak Cove
	function FinalFantasylization_AllianceTownDarkbreakCove()
		FinalFantasylization_AllianceTowns()
	end
--	Horde:
--		Tenebrous Cavern
	function FinalFantasylization_HordeTownTenebrousCavern()
		FinalFantasylization_HordeTowns()
	end
--	SUBZONES:
--	Abandoned Reef
	function FinalFantasylization_SubzoneAbandonedReef()
	
	end
--	Abyssal Breach
	function FinalFantasylization_SubzoneAbyssalBreach()
	
	end
--		The Abyssal Maw
	function FinalFantasylization_SubzoneTheAbyssalMaw()
	
	end
--	The Cerebrillum
	function FinalFantasylization_SubzoneTheCerebrillum()
	
	end
--	Coldlight Chasm
	function FinalFantasylization_SubzoneColdlightChasm()
	
	end
--	Deepfin Ridge
	function FinalFantasylization_SubzoneDeepfinRidge()
	
	end
--	Fireplume Trench
	function FinalFantasylization_SubzoneFireplumeTrench()
	
	end
--	Korthun's End
	function FinalFantasylization_SubzoneKorthunsEnd()
	
	end
--	L'ghorek
	function FinalFantasylization_SubzoneLghorek()
	
	end
--	The Lightless Reaches
	function FinalFantasylization_SubzoneTheLightlessReaches()
	
	end
--	Nightmare Depths
	function FinalFantasylization_SubzoneNightmareDepths()
	
	end
--	The Overlook
	function FinalFantasylization_SubzoneTheOverlook()
	
	end
--	Promontory Point
	function FinalFantasylization_SubzonePromontoryPoint()
	
	end
--	The Scalding Chasm
	function FinalFantasylization_SubzoneTheScaldingChasm()
	
	end
--	Seabrush
	function FinalFantasylization_SubzoneSeabrush()
	
	end
--	Sira'kess Front
	function FinalFantasylization_SubzoneSirakessFront()
	
	end
--	Thermal Vents
	function FinalFantasylization_SubzoneThermalVents()
	
	end
--	Underlight Canyon
	function FinalFantasylization_SubzoneUnderlightCanyon()
	
	end
--	The Undershell
	function FinalFantasylization_SubzoneTheUndershell()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Arathi Highlands
--'==========================================================================================
--	Zone: Arathi Highlands
	function FinalFantasylization_EasternKingdomsArathiHighlands()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	TOWNS:
--	Alliance: Refuge Pointe
	function FinalFantasylization_AllianceTownRefugePointe()
		FinalFantasylization_AllianceTowns()
	end
--	Horde: Hammerfall
	function FinalFantasylization_HordeTownHammerfall()
		FinalFantasylization_HordeTowns()
	end
--	SUBZONES:
--	Blackwater Shipwrecks
	function FinalFantasylization_SubzoneBlackwaterShipwrecks()
	
	end
--	Boulder'gor
	function FinalFantasylization_SubzoneBouldergor()
	
	end
--		Boulderfist Outpost
	function FinalFantasylization_SubzoneBoulderfistOutpost()
	
	end
--	Boulderfist Hall
	function FinalFantasylization_SubzoneBoulderfistHall()
	
	end
--	Circle of East Binding
	function FinalFantasylization_SubzoneCircleofEastBinding()
	
	end
--	Circle of Inner Binding
	function FinalFantasylization_SubzoneCircleofInnerBinding()
	
	end
--	Circle of Outer Binding
	function FinalFantasylization_SubzoneCircleofOuterBinding()
	
	end
--	Circle of West Binding
	function FinalFantasylization_SubzoneCircleofWestBinding()
	
	end
--	Dabyrie's Farmstead
	function FinalFantasylization_SubzoneDabyriesFarmstead()
	
	end
--	The Drowned Reef
	function FinalFantasylization_SubzoneTheDrownedReef()
	
	end
--	Drywhisker Gorge
	function FinalFantasylization_SubzoneDrywhiskerGorge()
	
	end
--	Faldir's Cove
	function FinalFantasylization_SubzoneFaldirsCove()
	
	end
--	The Forbidding Sea
	function FinalFantasylization_SubzoneTheForbiddingSea()
	
	end
--	Galen's Fall
	function FinalFantasylization_SubzoneGalensFall()
	
	end
--	Go'Shek Farm
	function FinalFantasylization_SubzoneGoShekFarm()
	
	end
--	Northfold Manor
	function FinalFantasylization_SubzoneNorthfoldManor()
	
	end
--	O'Breen's Camp
	function FinalFantasylization_SubzoneOBreensCamp()
	
	end
--	Stromgarde Keep
	function FinalFantasylization_SubzoneStromgardeKeep()
	
	end
--		Crypt
	function FinalFantasylization_SubzoneCrypt()
	
	end
--		The Sanctum
	function FinalFantasylization_SubzoneTheSanctum()
	
	end
--		The Tower of Arathor
	function FinalFantasylization_SubzoneTheTowerofArathor()
	
	end
--	Thandol Span
	function FinalFantasylization_SubzoneThandolSpan()
	
	end
--	Thoradin's Wall
	function FinalFantasylization_SubzoneThoradinsWall()
	
	end
--	Witherbark Caverns
	function FinalFantasylization_SubzoneWitherbarkCaverns()
	
	end
--	Witherbark Village
	function FinalFantasylization_SubzoneWitherbarkVillage()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Badlands
--'==========================================================================================
--	Zone: Badlands
	function FinalFantasylization_EasternKingdomsBadlands()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	TOWNS:
--	Alliance:
--		Dragon's Mouth
	function FinalFantasylization_AllianceTownDragonsMouth()
		FinalFantasylization_AllianceTowns()
	end
--		Dustwind Dig
	function FinalFantasylization_AllianceTownDustwindDig()
		FinalFantasylization_AllianceTowns()
	end
--	Horde:
--		Bloodwatcher Point
	function FinalFantasylization_HordeTownBloodwatcherPoint()
		FinalFantasylization_HordeTowns()
	end
--		New Kargath
	function FinalFantasylization_HordeTownNewKargath()
		FinalFantasylization_HordeTowns()
	end
--	Neutral:
--		Fuselight
	function FinalFantasylization_NeutralTownFuselight()
		FinalFantasylization_NeutralTowns()
	end
--		Fuselight-by-the-Sea
	function FinalFantasylization_NeutralTownFuselightbytheSea()
		FinalFantasylization_NeutralTowns()
	end
--	SUBZONES:
--	Agmond's End
	function FinalFantasylization_SubzoneAgmondsEnd()
	
	end
--	Angor Fortress
	function FinalFantasylization_SubzoneAngorFortress()
	
	end
--	Apocryphan's Rest
	function FinalFantasylization_SubzoneApocryphansRest()
	
	end
--	Camp Boff
	function FinalFantasylization_SubzoneCampBoff()
	
	end
--	Camp Cagg
	function FinalFantasylization_SubzoneCampCagg()
	
	end
--	Camp Kosh
	function FinalFantasylization_SubzoneCampKosh()
	
	end
--	Camp Wurg
	function FinalFantasylization_SubzoneCampWurg()
	
	end
--	Dustbelch Grotto
	function FinalFantasylization_SubzoneDustbelchGrotto()
	
	end
--	The Dustbowl
	function FinalFantasylization_SubzoneTheDustbowl()
	
	end
--	Dustwind Gulch
	function FinalFantasylization_SubzoneDustwindGulch()
	
	end
--	Hammertoe's Digsite
	function FinalFantasylization_SubzoneHammertoesDigsite()
	
	end
--	The Hidden Clutch
	function FinalFantasylization_SubzoneTheHiddenClutch()
	
	end
--	Lethlor Ravine
	function FinalFantasylization_SubzoneLethlorRavine()
	
	end
--	The Maker's Terrace
	function FinalFantasylization_SubzoneTheMakersTerrace()
	
	end
--	Mirage Flats
	function FinalFantasylization_SubzoneMirageFlats()
	
	end
--	Rhea's Camp
	function FinalFantasylization_SubzoneRheasCamp()
	
	end
--	Ruins of Kargath
	function FinalFantasylization_SubzoneRuinsofKargath()
	
	end
--	Scar of the Worldbreaker
	function FinalFantasylization_SubzoneScaroftheWorldbreaker()
	
	end
--	Tomb of the Watchers
	function FinalFantasylization_SubzoneTomboftheWatchers()
	
	end
--	Uldaman
	function FinalFantasylization_SubzoneUldaman()
	
	end
--		Uldaman Entrance
	function FinalFantasylization_SubzoneUldamanEntrance()
	
	end
--	Valley of Fangs
	function FinalFantasylization_SubzoneValleyofFangs()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Blasted Lands
--'==========================================================================================
--	Zone: Blasted Lands
	function FinalFantasylization_EasternKingdomsBlastedLands()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	TOWNS:
--	Alliance: 
--		Nethergarde Keep
	function FinalFantasylization_AllianceTownNethergardeKeep()
		FinalFantasylization_AllianceTowns()
	end
--		Surwich
	function FinalFantasylization_AllianceTownSurwich()
		FinalFantasylization_AllianceTowns()
	end
--	Horde:
--		Dreadmaul Hold
	function FinalFantasylization_HordeTownDreadmaulHold()
		FinalFantasylization_HordeTowns()
	end
--		Sunveil Excursion
	function FinalFantasylization_HordeTownSunveilExcursion()
		FinalFantasylization_HordeTowns()
	end
--	SUBZONES:
--	Altar of Storms
	function FinalFantasylization_SubzoneAltarofStorms()
	
	end
--	The Dark Portal
	function FinalFantasylization_SubzoneTheDarkPortal()
	
	end
--	Dreadmaul Post
	function FinalFantasylization_SubzoneDreadmaulPost()
	
	end
--	Garrison Armory
	function FinalFantasylization_SubzoneGarrisonArmory()
	
	end
--	The Red Reaches
	function FinalFantasylization_SubzoneTheRedReaches()
	
	end
--		Bloodwash Fighting Pits
	function FinalFantasylization_SubzoneBloodwashFightingPits()
	
	end
--		Bloodwash Shrine
	function FinalFantasylization_SubzoneBloodwashShrine()
	
	end
--		Rockpool Village
	function FinalFantasylization_SubzoneRockpoolVillage()
	
	end
--		Shattershore
	function FinalFantasylization_SubzoneShattershore()
	
	end
--	Rise of the Defiler
	function FinalFantasylization_SubzoneRiseoftheDefiler()
	
	end
--	Serpent's Coil
	function FinalFantasylization_SubzoneSerpentsCoil()
	
	end
--	The Tainted Forest
	function FinalFantasylization_SubzoneTheTaintedForest()
	
	end
--		Maldraz
	function FinalFantasylization_SubzoneMaldraz()
	
	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Burning Steppes
--'==========================================================================================
--	Zone: Burning Steppes
	function FinalFantasylization_EasternKingdomsBurningSteppes()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlagueSong()
			else
				FinalFantasylization_ContestedSong()
			end
	end
--	TOWNS:
--	Alliance:
--		Morgan's Vigil
	function FinalFantasylization_AllianceTownMorgansVigil()
		FinalFantasylization_AllianceTowns()
	end
--	Horde:
--		Flame Crest
	function FinalFantasylization_HordeTownFlameCrest()
		FinalFantasylization_HordeTowns()
	end
--	Neutral:
--		Chiselgrip
	function FinalFantasylization_NeutralTownChiselgrip()
		FinalFantasylization_NeutralTowns()
	end
--		Flamestar Post
	function FinalFantasylization_NeutralTownFlamestarPost()
		FinalFantasylization_NeutralTowns()
	end
--	SUBZONES:
--	Altar of Storms
	function FinalFantasylization_SubzoneAltarofStorms()
	
	end
--	Blackrock Mountain
	function FinalFantasylization_SubzoneBlackrockMountain()
	
	end
--	Blackrock Pass
	function FinalFantasylization_SubzoneBlackrockPass()
	
	end
--	Blackrock Stronghold
	function FinalFantasylization_SubzoneBlackrockStronghold()
	
	end
--	Black Tooth Hovel
	function FinalFantasylization_SubzoneBlackToothHovel()
	
	end
--		The Pillar of Ash
	function FinalFantasylization_SubzoneThePillarofAsh()
	
	end
--	Dreadmaul Rock
	function FinalFantasylization_SubzoneDreadmaulRock()
	
	end
--		Firegut Furnace
	function FinalFantasylization_SubzoneFiregutFurnace()
	
	end
--		The Skull Warren
	function FinalFantasylization_SubzoneTheSkullWarren()
	
	end
--	Fields of Honor
	function FinalFantasylization_SubzoneFieldsofHonor()
	
	end
--	Redridge Highway
	function FinalFantasylization_SubzoneRedridgeHighway()
	
	end
--	Ruins of Thaurissan
	function FinalFantasylization_SubzoneRuinsofThaurissan()
	
	end
--	Slither Rock
	function FinalFantasylization_SubzoneSlitherRock()
	
	end
--	Terror Wing Path
	function FinalFantasylization_SubzoneTerrorWingPath()
	
	end
--	Valley of Ashes
	function FinalFantasylization_SubzoneValleyofAshes()
	
	end
--	The Whelping Downs
	function FinalFantasylization_SubzoneTheWhelpingDowns()
	
	end


--'==========================================================================================
--' Eastern Kingdoms Zone: Elwynn Forest - Alliance
--'==========================================================================================
--	Zone: Elwynn Forest			
	function FinalFantasylization_EasternKingdomsElwynnForest()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_FriendlySong()
			end
	end
--	TOWNS:
--	Alliance: 
--		Eastvale Logging Camp
	function FinalFantasylization_AllianceTownEastvaleLoggingCamp()
		FinalFantasylization_AllianceTowns()
	end
--		Goldshire
	function FinalFantasylization_AllianceTownGoldshire()
		FinalFantasylization_AllianceTowns()
	end
--			Lion's Pride Inn	(Inn)
	function FinalFantasylization_AllianceInnLionsPrideInn()
		FinalFantasylization_Sleeping()
	end
--	SUBZONES:
--		Brackwell Pumpkin Patch
	function FinalFantasylization_SubzoneBrackwellPumpkinPatch()
		FinalFantasylization_AllianceTowns()
	end
--		Crystal Lake
	function FinalFantasylization_SubzoneCrystalLake()
		FinalFantasylization_LakeSong()
	end
--		Fargodeep Mine
	function FinalFantasylization_SubzoneFargodeepMine()

	end
--		Forest's Edge
	function FinalFantasylization_SubzoneForestsEdge()
	local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_FriendlySong()
			end
	end
--		Goldtooth's Den
	function FinalFantasylization_SubzoneGoldtoothsDen()

	end
--		Hogger Hill
	function FinalFantasylization_SubzoneHoggerHill()

	end
--		Jasperlode Mine
	function FinalFantasylization_SubzoneJasperlodeMine()

	end
--		Jerod's Landing
	function FinalFantasylization_SubzoneJerodsLanding()

	end
--		The Maclure Vineyards
	function FinalFantasylization_SubzoneTheMaclureVineyards()
		FinalFantasylization_AllianceTowns()
	end
--		Mirror Lake
	function FinalFantasylization_SubzoneMirrorLake()
		FinalFantasylization_LakeSong()
	end
--		Mirror Lake Orchard
	function FinalFantasylization_SubzoneMirrorLakeOrchard()

	end
--		Ridgepoint Tower
	function FinalFantasylization_SubzoneRidgepointTower()

	end
--		Stone Cairn Lake
	function FinalFantasylization_SubzoneStoneCairnLake()
		FinalFantasylization_LakeSong()
	end
--			Heroes' Vigil
	function FinalFantasylization_SubzoneHeroesVigil()

	end
--		Thunder Falls
	function FinalFantasylization_SubzoneThunderFalls()

	end
--		The Stonefield Farm
	function FinalFantasylization_SubzoneTheStonefieldFarm()
		FinalFantasylization_AllianceTowns()
	end
--		Tower of Azora
	function FinalFantasylization_SubzoneTowerofAzora()

	end
--		Westbrook Garrison
	function FinalFantasylization_SubzoneWestbrookGarrison()

	end

--'==========================================================================================
--' Eastern Kingdoms Zones: Gilneas City : Worgen
--'==========================================================================================
--	Zone: Gilneas City
	function FinalFantasylization_EasternKingdomsGilneasCity()

	end
--	SUBZONES:
--	Cathedral Quarter
	function FinalFantasylization_GilneasCity_SubzoneCathedralQuarter()
		FinalFantasylization_BattleGround()
	end
--		Light's Dawn Cathedral
	function FinalFantasylization_GilneasCity_SubzoneLightsDawnCathedral()
		FinalFantasylization_BattleGround()
	end
--	Greymane Court
	function FinalFantasylization_GilneasCity_SubzoneGreymaneCourt()
		FinalFantasylization_BattleGround()
	end
--	Merchant Square
	function FinalFantasylization_GilneasCity_SubzoneMerchantSquare()
		FinalFantasylization_PlayMusic(S .. Alliance8Town);
		FinalFantasylization_debugMsg("Alliance8Town")
	end
--	Military District
	function FinalFantasylization_GilneasCity_SubzoneMilitaryDistrict()
		FinalFantasylization_BattleGround()
	end
--		Stoneward Prison
	function FinalFantasylization_GilneasCity_SubzoneStonewardPrison()
		FinalFantasylization_BattleGround()
	end
	
--'==========================================================================================
--' Eastern Kingdoms Zones: Silverpine Forest
--'==========================================================================================
--	Zone: Silverpine Forest
	function FinalFantasylization_EasternKingdomsSilverpineForest()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_PlagueSong()
			end
	end
--	TOWNS:
--	Horde:
--		The Forsaken Front					
	function FinalFantasylization_HordeTownTheForsakenFront()
		FinalFantasylization_HordeTowns()
	end
--		Forsaken High Command				
	function FinalFantasylization_HordeTownForsakenHighCommand()
		FinalFantasylization_HordeTowns()
	end
--		Forsaken Rear Guard					
	function FinalFantasylization_HordeTownForsakenRearGuard()
		FinalFantasylization_HordeTowns()
	end
--		The Sepulcher						
	function FinalFantasylization_HordeTownTheSepulcher()
		FinalFantasylization_HordeTowns()
	end
--	SUBZONES:
--	7th Legion Base Camp				
	function FinalFantasylization_Subzone7thLegionBaseCamp()

	end
--	Ambermill *							
	function FinalFantasylization_SubzoneAmbermill()

	end
--	The Battlefront						
	function FinalFantasylization_SubzoneTheBattlefront()

	end
--	Beren's Peril						
	function FinalFantasylization_SubzoneBerensPeril()

	end
--	The Dead Field						
	function FinalFantasylization_SubzoneTheDeadField()
		FinalFantasylization_PlagueSong()
	end
--	The Decrepit Fields					
	function FinalFantasylization_SubzoneTheDecrepitFields()
		FinalFantasylization_PlagueSong()
	end
--	Deep Elem Mine						
	function FinalFantasylization_SubzoneDeepElemMine()

	end
--	Gilneas Liberation Front Base Camp	
	function FinalFantasylization_SubzoneGilneasLiberationFrontBaseCamp()

	end
--	The Greymane Wall					
	function FinalFantasylization_SubzoneTheGreymaneWall()
		FinalFantasylization_SwampSong()
	end
--	The Ivar Patch						
	function FinalFantasylization_SubzoneTheIvarPatch()

	end
--	Lordamere Lake						
	function FinalFantasylization_SubzoneLordamereLake()
		FinalFantasylization_LakeSong()
	end
--		The Dawning Isles					
	function FinalFantasylization_SubzoneTheDawningIsles()

	end
--		Fenris Isle							
	function FinalFantasylization_SubzoneFenrisIsle()

	end
--			Fenris Keep							
	function FinalFantasylization_SubzoneFenrisKeep()

	end
--	North Tide's Beachhead				
	function FinalFantasylization_SubzoneNorthTidesBeachhead()
		FinalFantasylization_WaterSong()
	end
--	North Tide's Hollow					
	function FinalFantasylization_SubzoneNorthTidesHollow()

	end
--	North Tide's Run					
	function FinalFantasylization_SubzoneNorthTidesRun()

	end
--	Olsen's Farthing					
	function FinalFantasylization_SubzoneOlsensFarthing()

	end
--	Pyrewood Village					
	function FinalFantasylization_SubzonePyrewoodVillage()

	end
--		Pyrewood Chapel						
	function FinalFantasylization_SubzonePyrewoodChapel()

	end
--		Pyrewood Inn *						
	function FinalFantasylization_SubzonePyrewoodInn()

	end
--		Pyrewood Town Hall					
	function FinalFantasylization_SubzonePyrewoodTownHall()

	end
--	Shadowfang Keep						
	function FinalFantasylization_SubzoneShadowfangKeep()

	end
--	The Shining Strand					
	function FinalFantasylization_SubzoneTheShiningStrand()
		FinalFantasylization_PlagueSong()
	end
--	The Skittering Dark					
	function FinalFantasylization_SubzoneTheSkitteringDark()

	end
--	South Tide's Run					
	function FinalFantasylization_SubzoneSouthTidesRun()

	end
--	Valgan's Field						
	function FinalFantasylization_SubzoneValgansField()	

	end
--'==========================================================================================
--' Eastern Kingdoms Zone: Tirisfal Glades - Horde
--'==========================================================================================
--	Zone: Tirisfal Glades	
	function FinalFantasylization_EasternKingdomsTirisfalGlades()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_PlagueSong()
			end
	end
--	TOWNS:
--	Forsaken Start: 
--		Deathknell
	function FinalFantasylization_Forsaken_Start_Deathknell()
		FinalFantasylization_PlagueSong()
	end
--			The Deathknell Graves
	function FinalFantasylization_Forsaken_Start_TheDeathknellGraves()
		FinalFantasylization_PlagueSong()
	end
--			Night Web's Hollow
	function FinalFantasylization_Forsaken_Start_NightWebsHollow()
		FinalFantasylization_PlagueSong()
	end
--			Rotbrain Encampment
	function FinalFantasylization_Forsaken_Start_RotbrainEncampment()
		FinalFantasylization_PlagueSong()
	end
--			Shadow Grave
	function FinalFantasylization_Forsaken_Start_ShadowGrave()
		FinalFantasylization_PlagueSong()
	end
--	Horde:
--		Brill
	function FinalFantasylization_HordeTownBrill()
		FinalFantasylization_HordeTowns()
	end
--			Brill Town Hall
	function FinalFantasylization_HordeTownBrillTownHall()
		FinalFantasylization_HordeTowns()
	end
--			Gallows' End Tavern
	function FinalFantasylization_HordeTownGallowsEndTavern()
		FinalFantasylization_HordeTowns()
	end
--		Ruins of Lordaeron
	function FinalFantasylization_HordeTownRuinsofLordaeron()
		FinalFantasylization_HordeTowns()
	end
--	SUBZONES:
--	Agamand Mills
	function FinalFantasylization_SubzoneAgamandMills()
		FinalFantasylization_PlagueSong()
	end
--		Agamand Family Crypt
	function FinalFantasylization_SubzoneAgamandFamilyCrypt()
		FinalFantasylization_PlagueSong()
	end
--	Balnir Farmstead
	function FinalFantasylization_SubzoneBalnirFarmstead()
		FinalFantasylization_PlagueSong()
	end
--	Brightwater Lake
	function FinalFantasylization_SubzoneBrightwaterLake()
		FinalFantasylization_LakeSong()
	end
--		Gunther's Retreat
	function FinalFantasylization_SubzoneGunthersRetreat()
	
	end
--	The Bulwark
	function FinalFantasylization_SubzoneTheBulwark()
		FinalFantasylization_PlayMusic(S .. Horde1Town);
		FinalFantasylization_debugMsg("Horde1Town")
	end
--	Calston Estate
	function FinalFantasylization_SubzoneCalstonEstate()
		FinalFantasylization_PlayMusic(S .. Horde1Town);
		FinalFantasylization_debugMsg("Horde1Town")
	end
--	Cold Hearth Manor
	function FinalFantasylization_SubzoneColdHearthManor()
		FinalFantasylization_PlagueSong()
	end
--	Crusader Outpost
	function FinalFantasylization_SubzoneCrusaderOutpost()
		FinalFantasylization_ForestSong()
	end
--	Death's Watch Waystation
	function FinalFantasylization_SubzoneDeathsWatchWaystation()
		FinalFantasylization_PlayMusic(S .. Horde1Town);
		FinalFantasylization_debugMsg("Horde1Town")
	end
--	Faol's Rest
	function FinalFantasylization_SubzoneFaolsRest()
		FinalFantasylization_PlayerGhost()
	end
--	Garren's Haunt
	function FinalFantasylization_SubzoneGarrensHaunt()
		FinalFantasylization_PlagueSong()
	end
--	Nightmare Vale
	function FinalFantasylization_SubzoneNightmareVale()
	
	end
--	The North Coast
	function FinalFantasylization_SubzoneTheNorthCoast()
	
	end
--	Scarlet Monastery
	function FinalFantasylization_SubzoneScarletMonastery()
	
	end
--		The Grand Vestibule
	function FinalFantasylization_SubzoneTheGrandVestibule()
	
	end
--		Terrace of Repose
	function FinalFantasylization_SubzoneTerraceofRepose()
	
	end
--	Crusader's Outpost
	function FinalFantasylization_SubzoneCrusadersOutpost()
	
	end
--		Scarlet Palisade
	function FinalFantasylization_SubzoneScarletPalisade()
		FinalFantasylization_HostileTowns()
	end
--	Scarlet Watchtower
	function FinalFantasylization_SubzoneScarletWatchtower()
	
	end
--	Scarlet Watch Post
	function FinalFantasylization_SubzoneScarletWatchPost()
		FinalFantasylization_HostileTowns()
	end
--	Solliden Farmstead
	function FinalFantasylization_SubzoneSollidenFarmstead()
		FinalFantasylization_HostileTowns()
	end
--	Stillwater Pond
	function FinalFantasylization_SubzoneStillwaterPond()
		FinalFantasylization_LakeSong()
	end
--	Venomweb Vale
	function FinalFantasylization_SubzoneVenomwebVale()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_PlagueSong()
			end
	end
--		Scarlet Encampment
	function FinalFantasylization_SubzoneScarletEncampment()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_ForestSong()
			else
				FinalFantasylization_PlagueSong()
			end
	end
--	Whispering Forest
	function FinalFantasylization_SubzoneWhisperingForest()
	
	end
--	Whispering Gardens
	function FinalFantasylization_SubzoneWhisperingGardens()
	
	end
--	Whispering Shore
	function FinalFantasylization_SubzoneWhisperingShore()
		FinalFantasylization_PlagueSong()
	end


--'==========================================================================================
--' Eastern Kingdoms Zones: Westfall
--'==========================================================================================
--	Zone: Westfall
	function FinalFantasylization_EasternKingdomsWestfall()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_SandSong()
			else
				FinalFantasylization_FriendlySong()
			end
	end
--
--	TOWNS:
--	Alliance:
--		Moonbrook
	function FinalFantasylization_AllianceTownMoonbrook()
		FinalFantasylization_AllianceTowns()
	end
--			Deadmines
	function FinalFantasylization_SubzoneDeadmines()
	
	end
--			Moonbrook Schoolhouse
	function FinalFantasylization_AllianceTownMoonbrookSchoolhouse()
		FinalFantasylization_AllianceTowns()
	end	
--		Sentinel Hill
	function FinalFantasylization_AllianceTownSentinelHill()
		FinalFantasylization_AllianceTowns()
	end
--				Sentinel Tower
	function FinalFantasylization_AllianceTownSentinelTower()
		FinalFantasylization_AllianceTowns()
	end
--	
--	SUBZONES:
--	Alexston Farmstead
	function FinalFantasylization_SubzoneAlexstonFarmstead()
	
	end
--	The Dagger Hills
	function FinalFantasylization_SubzoneTheDaggerHills()
	
	end
--	The Dead Acre
	function FinalFantasylization_SubzoneTheDeadAcre()
	
	end
--	Demont's Place
	function FinalFantasylization_SubzoneDemontsPlace()
	
	end
--	The Dust Plains
	function FinalFantasylization_SubzoneTheDustPlains()
	
	end
--		Mortwake's Tower
	function FinalFantasylization_SubzoneMortwakesTower()
	
	end
--	Furlbrow's Pumpkin Farm
	function FinalFantasylization_SubzoneFurlbrowsPumpkinFarm()
	
	end
--	Gold Coast Quarry
	function FinalFantasylization_SubzoneGoldCoastQuarry()
	
	end
--	Jangolode Mine
	function FinalFantasylization_SubzoneJangolodeMine()
	
	end
--	The Jansen Stead
	function FinalFantasylization_SubzoneTheJansenStead()
		FinalFantasylization_SandSong()
	end
--	Longshore
	function FinalFantasylization_SubzoneLongshore()
	
	end
--	The Molsen Farm
	function FinalFantasylization_SubzoneTheMolsenFarm()
	
	end
--	The Raging Chasm
	function FinalFantasylization_SubzoneTheRagingChasm()
	
	end
--	Saldean's Farm
	function FinalFantasylization_SubzoneSaldeansFarm()
	
	end
--	Stendel's Pond
	function FinalFantasylization_SubzoneStendelsPond()
	
	end
--	Westfall Lighthouse
	function FinalFantasylization_SubzoneWestfallLighthouse()
	
	end

	--#############
	--## PVP ZONES
	--#############
	function FinalFantasylization_FriendlySong()
		FinalFantasylization_PlayMusic(S .. FriendlySong);
		FinalFantasylization_debugMsg("FriendlySong")
	end

	function FinalFantasylization_ContestedSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
		FinalFantasylization_debugMsg("ContestedSong")
	end

	function FinalFantasylization_HostileSong()
		FinalFantasylization_PlayMusic(S .. HostileSong);
		FinalFantasylization_debugMsg("HostileSong")
	end

	--#############
	--## ZONE SONGS
	--#############
	function FinalFantasylization_SnowSong()
		FinalFantasylization_PlayMusic(S .. SnowSong);
		FinalFantasylization_debugMsg("SnowSong")
	end
	function FinalFantasylization_ForestSong()
		FinalFantasylization_PlayMusic(S .. ForestSong);
		FinalFantasylization_debugMsg("ForestSong")
	end
	function FinalFantasylization_SandSong()
		FinalFantasylization_PlayMusic(S .. SandSong);
		FinalFantasylization_debugMsg("SandSong")
	end
	function FinalFantasylization_PlagueSong()
		FinalFantasylization_PlayMusic(S .. PlagueSong);
		FinalFantasylization_debugMsg("PlagueSong")
	end
	function FinalFantasylization_SwampSong()
		FinalFantasylization_PlayMusic(S .. SwampSong);
		FinalFantasylization_debugMsg("SwampSong")
	end
	function FinalFantasylization_BeachSong()
		FinalFantasylization_PlayMusic(S .. BeachSong);
		FinalFantasylization_debugMsg("BeachSong")
	end
	function FinalFantasylization_LandSong()
		FinalFantasylization_PlayMusic(S .. LandSong);
		FinalFantasylization_debugMsg("LandSong")
	end
	function FinalFantasylization_LakeSong()
		FinalFantasylization_PlayMusic(S .. LakeSong);
		FinalFantasylization_debugMsg("LakeSong")
	end
	function FinalFantasylization_WaterSong()
		FinalFantasylization_PlayMusic(S .. WaterSong);
		FinalFantasylization_debugMsg("WaterSong")
	end

	--################
	--## DUNGEON SONGS
	--################
		-- Vanilla WoW Dungeons
	function FinalFantasylization_Dungeon_RagefireChasmSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_WailingCavernsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_DeadminesSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ShadowfangKeepSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_BlackfathomDeepsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_StormwindStockadeSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_GnomereganSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_RazorfenKraulSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ScarletMonasterySong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_RazorfenDownsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_UldamanSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ZulFarrakSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_MaraudonSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_TempleofAtalHakkarSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_BlackrockDepthsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_LowerBlackrockSpireSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_UpperBlackrockSpireSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_DireMaulSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_StratholmeSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ScholomanceSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
		-- Burning Crusade Dungeons
	function FinalFantasylization_Dungeon_HellfireRampartsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_BloodFurnaceSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_SlavePensSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_UnderbogSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ManaTombsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_AuchenaiCryptsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_SethekkHallsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_SteamvaultSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ShatteredHallsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ShadowLabyrinthSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_EscapefromDurnholdeKeepSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_OpeningtheDarkPortalSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_BotanicaSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ArcatrazSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_OpeningtheDarkPortalSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_MagistersTerraceSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
		-- Wrath of the Lich King Dungeons	
	function FinalFantasylization_Dungeon_UtgardeKeepSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_TheNexusSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_AzjolNerubSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_AhnkahetTheOldKingdomSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_DrakTharonKeepSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_VioletHoldSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_GundrakSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_HallsofStoneSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_TheOculusSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_HallsofLightningSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_UtgardePinnacleSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_TheCullingofStratholmeSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_TrialoftheChampionSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_ForgeofSoulsSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_PitofSaronSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end
	function FinalFantasylization_Dungeon_HallsofReflectionSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
	end

	--#############
	--## RAID SONGS
	--#############
	function FinalFantasylization_RaidSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
		FinalFantasylization_debugMsg("ContestedSong")
	end

	--#############
	--## FANFARE
	--#############
	function FinalFantasylization_Fanfare()
		FinalFantasylization_PlayFile(S .. Fanfare );
		FinalFantasylization_debugMsg("Fanfare")
	end

	--################
	--## FIGHTING SONGS
	--################
	function FinalFantasylization_WorldBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_DungeonBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_WorldElite()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_BattlegroundBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_BattlegroundPVP()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_WorldPVP()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_WorldNormalPVE()
		FinalFantasylization_PlayMusic(S .. Fighting1Song);
		FinalFantasylization_debugMsg("Fighting1Song")
	end

	--#############
	--## TOWN SONGS
	--#############
	function FinalFantasylization_HostileTowns()
		FinalFantasylization_PlayMusic(S .. HostileSong);
		FinalFantasylization_debugMsg("HostileSong")
	end
	function FinalFantasylization_NeutralTowns()
		local x = math.random(1, 20);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Horde1Town);
				FinalFantasylization_debugMsg("Horde1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Horde2Town);
				FinalFantasylization_debugMsg("Horde2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Horde3Town);
				FinalFantasylization_debugMsg("Horde3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Horde4Town);
				FinalFantasylization_debugMsg("Horde4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Horde5Town);
				FinalFantasylization_debugMsg("Horde5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Horde6Town);
				FinalFantasylization_debugMsg("Horde6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Horde7Town);
				FinalFantasylization_debugMsg("Horde7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Horde8Town);
				FinalFantasylization_debugMsg("Horde8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Horde9Town);
				FinalFantasylization_debugMsg("Horde9Town")
			elseif x == 10 then
				FinalFantasylization_PlayMusic(S .. Horde10Town);
				FinalFantasylization_debugMsg("Horde10Town")
			elseif x == 11 then
				FinalFantasylization_PlayMusic(S .. Alliance1Town);
				FinalFantasylization_debugMsg("Alliance1Town")
			elseif x == 12 then
				FinalFantasylization_PlayMusic(S .. Alliance2Town);
				FinalFantasylization_debugMsg("Alliance2Town")
			elseif x == 13 then
				FinalFantasylization_PlayMusic(S .. Alliance3Town);
				FinalFantasylization_debugMsg("Alliance3Town")
			elseif x == 14 then
				FinalFantasylization_PlayMusic(S .. Alliance4Town);
				FinalFantasylization_debugMsg("Alliance4Town")
			elseif x == 15 then
				FinalFantasylization_PlayMusic(S .. Alliance5Town);
				FinalFantasylization_debugMsg("Alliance5Town")
			elseif x == 16 then
				FinalFantasylization_PlayMusic(S .. Alliance6Town);
				FinalFantasylization_debugMsg("Alliance6Townn")
			elseif x == 17 then
				FinalFantasylization_PlayMusic(S .. Alliance7Town);
				FinalFantasylization_debugMsg("Alliance7Town")
			elseif x == 18 then
				FinalFantasylization_PlayMusic(S .. Alliance8Town);
				FinalFantasylization_debugMsg("Alliance8Town")
			elseif x == 19 then
				FinalFantasylization_PlayMusic(S .. Alliance9Town);
				FinalFantasylization_debugMsg("Alliance9Town")
			else
				FinalFantasylization_PlayMusic(S .. Alliance10Town);
				FinalFantasylization_debugMsg("Alliance10Town")
			end
	end
	function FinalFantasylization_AllianceTowns()
		local x = math.random(1, 10);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Alliance1Town);
				FinalFantasylization_debugMsg("Alliance1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Alliance2Town);
				FinalFantasylization_debugMsg("Alliance2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Alliance3Town);
				FinalFantasylization_debugMsg("Alliance3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Alliance4Town);
				FinalFantasylization_debugMsg("Alliance4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Alliance5Town);
				FinalFantasylization_debugMsg("Alliance5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Alliance6Town);
				FinalFantasylization_debugMsg("Alliance6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Alliance7Town);
				FinalFantasylization_debugMsg("Alliance7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Alliance8Town);
				FinalFantasylization_debugMsg("Alliance8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Alliance9Town);
				FinalFantasylization_debugMsg("Alliance9Town")
			else
				FinalFantasylization_PlayMusic(S .. Alliance10Town);
				FinalFantasylization_debugMsg("Alliance10Town")
			end
	end
	function FinalFantasylization_HordeTowns()
		local x = math.random(1, 10);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Horde1Town);
				FinalFantasylization_debugMsg("Horde1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Horde2Town);
				FinalFantasylization_debugMsg("Horde2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Horde3Town);
				FinalFantasylization_debugMsg("Horde3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Horde4Town);
				FinalFantasylization_debugMsg("Horde4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Horde5Town);
				FinalFantasylization_debugMsg("Horde5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Horde6Town);
				FinalFantasylization_debugMsg("Horde6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Horde7Town);
				FinalFantasylization_debugMsg("Horde7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Horde8Town);
				FinalFantasylization_debugMsg("Horde8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Horde9Town);
				FinalFantasylization_debugMsg("Horde9Town")
			else
				FinalFantasylization_PlayMusic(S .. Horde10Town);
				FinalFantasylization_debugMsg("Horde10Town")
			end
	end

	--###############
	--## BATTLEGROUNDS
	--###############
	function FinalFantasylization_BattleGround()
		local x = math.random(1, 5);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. BattleGround1);
				FinalFantasylization_debugMsg("BattleGround1")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. BattleGround2);
				FinalFantasylization_debugMsg("BattleGround2")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. BattleGround3);
				FinalFantasylization_debugMsg("BattleGround3")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. BattleGround4);
				FinalFantasylization_debugMsg("BattleGround4")
			else
				FinalFantasylization_PlayMusic(S .. BattleGround5);
				FinalFantasylization_debugMsg("BattleGround5")
			end
	end

	--#############
	--## DIE/DEAD
	--#############
	function FinalFantasylization_PlayerDie()
		FinalFantasylization_PlayMusic(S .. DieSong);
		FinalFantasylization_debugMsg("DieSong")
	end
	function FinalFantasylization_PlayerGhost()
		FinalFantasylization_PlayMusic(S .. DeadSong);
		FinalFantasylization_debugMsg("DeadSong")
	end

	--#############
	--## SLEEPING
	--#############
	function FinalFantasylization_Sleeping()
		FinalFantasylization_PlayMusic(S .. SleepSong);
		FinalFantasylization_debugMsg("SleepSong")
	end

	--#############
	--## SWIMMING
	--#############
	function FinalFantasylization_Swimming(Zone)
		if Zone == 1 then
			FinalFantasylization_PlayMusic(S .. DarkSwimSong);  -- alt Swim song
			FinalFantasylization_debugMsg("DarkSwimSong") -- alt Swim song
			return
		else
			FinalFantasylization_PlayMusic(S .. SwimSong);  -- Normal Swim song
			FinalFantasylization_debugMsg("SwimSong") -- Normal Swim song
		end
	end

	--#############
	--## TAXI
	--#############
	function FinalFantasylization_HordeTaxi()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	function FinalFantasylization_AllianceTaxi()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	
	--#############
	--## FLYING
	--#############
	function FinalFantasylization_HordeFlying()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	function FinalFantasylization_AllianceFlying()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end

	--#############
	--## MOUNTED
	--#############
	function FinalFantasylization_Mounted()					
		local x = math.random(1, 3);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Mounted1Song);
				FinalFantasylization_debugMsg("Mounted1Song")
			elseif x == 2 then 
				FinalFantasylization_PlayMusic(S .. Mounted2Song);
				FinalFantasylization_debugMsg("Mounted2Song")
			else 
				FinalFantasylization_PlayMusic(S .. Mounted3Song);
				FinalFantasylization_debugMsg("Mounted3Song")
			end
	end
	function FinalFantasylization_MountedEscape()		
		local x = math.random(1, 4);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Escape1Song);
				FinalFantasylization_debugMsg("Escape1Song")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Escape2Song);
				FinalFantasylization_debugMsg("Escape2Song")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Escape3Song);
				FinalFantasylization_debugMsg("Escape3Song")
			else
				FinalFantasylization_PlayMusic(S .. Escape4Song);
				FinalFantasylization_debugMsg("Escape4Song")
			end
	end
	
	--###############
	-- ## DANCE MUSIC
	--###############
	function FinalFantasylization_BloodElfFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. BloodElfFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_BloodElfMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. BloodElfMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DraeneiFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. DraeneiFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DraeneiMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. DraeneiMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DwarfFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. DwarfFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DwarfMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. DwarfMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_GnomeFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. GnomeFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_GnomeMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. GnomeMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_HumanFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. HumanFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_HumanMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. HumanMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_NightElfFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. NightElfFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_NightElfMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. NightElfMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_OrcFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. OrcFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_OrcMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. OrcMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_TaurenFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. TaurenFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_TaurenMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. TaurenMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_TrollFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. TrollFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_TrollMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. TrollMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_UndeadFemaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. UndeadFemaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_UndeadMaleDanceSong()
		FinalFantasylization_PlayMusic( SS .. UndeadMaleDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DruidBearDanceSong()
		FinalFantasylization_PlayMusic( SS .. DruidBearDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DruidCatDanceSong()
		FinalFantasylization_PlayMusic( SS .. DruidCatDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DruidOwlBearDanceSong()
		FinalFantasylization_PlayMusic( SS .. DruidOwlBearDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_DruidTreeFormDanceSong()
		FinalFantasylization_PlayMusic( SS .. DruidTreeFormDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	function FinalFantasylization_WolfDanceSong()
		FinalFantasylization_PlayMusic( SS .. WolfDanceSong);
		FinalFantasylization_debugMsg("Look Ma I'm Dancin!  ")
	end
	
--END of music calls
        CoreSavedVariable = soundPackID
        for i = 1, NUM_SOUND_PACKS do -- set NUM_SOUND_PACKS in the Core
            local func = _G["SoundPack" .. soundPackID  .. "_SetEnabled"]
            if i ~= soundPackID and func then
                func(not enabled)
            end
        end
    end
end
_G["SoundPack" .. soundPackID  .. "_GetEnabled"] = function()
    return flag
end