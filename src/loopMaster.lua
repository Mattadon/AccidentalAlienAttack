function Init()
	LoadGameSettings()
	TitleScreen()
end

function TIC()
	if GameState == StateTitle then
		TitleLoop()
	elseif GameState == StatePlaying then
		PlayingLoop()
	elseif GameState == StateGameOver then
		GameOverLoop()
	elseif GameState == StateDialogue then
		DialogueLoop()
	elseif GameState == StateInstructions then
		InstructionLoop()
	elseif GameState == StateHighScores then
		HighScoresLoop()
	end
end
