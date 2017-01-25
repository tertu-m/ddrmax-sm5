if (not ScoringInfo) or ScoringInfo.seed ~= GAMESTATE:GetStageSeed()  then
	ScoringInfo = {}
	ScoringInfo.seed = GAMESTATE:GetStageSeed()
	for _, pn in pairs(GAMESTATE:GetEnabledPlayers()) do
		ScoringInfo[pn] = MAXScoring.MakeScoring(GAMESTATE:GetCurrentSteps(pn), pn)
	end
end

local function ScoringUpdate()
	local stg_stats = STATSMAN:GetCurStageStats()
	local top_screen = SCREENMAN:GetTopScreen()
	for _, pn in pairs(GAMESTATE:GetEnabledPlayers()) do
		local curScore, curMaxScore = ScoringInfo[pn].GetCurrentScoreAndMaxScore()
		local pss = stg_stats:GetPlayerStageStats(pn)
		pss:SetScore(curScore)
		pss:SetCurMaxScore(curMaxScore)
		local score_display = top_screen:GetChild("Score"..ToEnumShortString(pn))
		if score_display then
			score_display:GetChild "Text":targetnumber(curScore)
		end
	end
end

return Def.ActorFrame{
	InitCommand=function(s) s:SetUpdateFunction(ScoringUpdate) end
}