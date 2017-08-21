function FinalFantasylization_EasternKingdomsZones_Undercity()
--'==========================================================================================
--' Eastern Kingdoms Capital: Undercity : Horde
--'==========================================================================================
--	Zone: Undercity			FinalFantasylization_EasternKingdoms_Undercity()
--
--	SUBZONES:
--	Apothecarium			FinalFantasylization_Undercity_SubzoneTheApothecarium()
--	Canals					FinalFantasylization_Undercity_SubzoneCanals()
--	Magic Quarter			FinalFantasylization_Undercity_SubzoneMagicQuarter()
--	Rogues' Quarter			FinalFantasylization_Undercity_SubzoneRoguesQuarter()
--	Royal Quarter			FinalFantasylization_Undercity_SubzoneRoyalQuarter()
--	Ruins of Lordaeron		FinalFantasylization_Undercity_SubzoneRuinsofLordaeron()
--	Sewers					FinalFantasylization_Undercity_SubzoneSewers()
--	Trade Quarter			FinalFantasylization_Undercity_SubzoneTradeQuarter()
--	War Quarter				FinalFantasylization_Undercity_SubzoneWarQuarter()
	--'==========================================================================================
	--' Undercity: Horde Check
	--'==========================================================================================
	if ( factionEnglish == "Horde" ) then
	--'==========================================================================================
	--' Undercity: The Apothecarium
	--'==========================================================================================
		if ( SubZoneName == SZ["The Apothecarium"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneTheApothecarium()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Canals
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Canals"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneCanals()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Magic Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Magic Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneMagicQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Rogues' Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Rogues' Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneRoguesQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Royal Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Royal Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneRoyalQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Ruins of Lordaeron
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Ruins of Lordaeron"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneRuinsofLordaeron()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Sewers
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Sewers"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneSewers()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Trade Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Trade Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneTradeQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: War Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["War Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneWarQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_EasternKingdoms_Undercity()
				FinalFantasylization_IsPlaying = true
			else
				return
			end	
		end
	--'==========================================================================================
	--' Undercity: Alliance Check
	--'==========================================================================================
	elseif ( factionEnglish == "Alliance" ) then
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end	
	end
end