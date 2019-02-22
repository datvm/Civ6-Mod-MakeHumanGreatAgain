-- addBuilding
-- Author: datvm
-- DateCreated: 1/23/2019 5:22:35 PM
--------------------------------------------------------------
print("OP Building Loaded!")

function ESOAddB(iPlayer, iCityID)
	local pPlayer = Players[iPlayer]
	local pBuilding = GameInfo.Buildings["BUILDING_OP_BUILDING"].Index	
	if pPlayer:IsHuman() then
		local pCity = pPlayer:GetCities():FindID(iCityID)
		local pCityPlotIndex = Map.GetPlot(pCity:GetX(), pCity:GetY()):GetIndex()
		local pCityBuildings = pCity:GetBuildings()		
		local pCityBuildQ = pCity:GetBuildQueue()	
			if not pCityBuildings:HasBuilding(pBuilding) then
				pCityBuildQ:CreateIncompleteBuilding(pBuilding, pCityPlotIndex, 100)
			end		
	end
end
Events.CityTileOwnershipChanged.Add(ESOAddB)