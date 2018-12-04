	@echo off
     :start
    title Tales Of Trinia v0.01
	color f 
	cls
	echo .######...####...##......######...####............####...######..........######..#####...######..##..##..######...####..
	echo ...##....##..##..##......##......##..............##..##..##................##....##..##....##....###.##....##....##..##.
	echo ...##....######..##......####.....####...........##..##..####..............##....#####.....##....##.###....##....######.
	echo ...##....##..##..##......##..........##..........##..##..##................##....##..##....##....##..##....##....##..##.
	echo ...##....##..##..######..######...####............####...##................##....##..##..######..##..##..######..##..##.
	echo ........................................................................................................................
	set /p web=press enter to continue 

	:welcome
	color f
	cls
    echo Welcome to the pre alpha of Tales Of Trinia.
	echo DO you want to read the lore of the game? (this is recommended for new players)
	echo.
	set /p web=y/n? 
	if "%web%"=="y" goto lore
	if "%web%"=="n" goto cselect
	
	
	:lore
	title Intrduction
	color f
	cls 
	echo.
	echo Trinia is a large city with three races living side by side: Humans, elves and fauns.
	echo each race has a protector blessed with magical abilities, these are called guardians
	echo and in this game you will play the role of one of them
	echo.
	echo go to character select or read more?
	echo.
	echo 1) Read more about the elves
	echo 2) Read more about the fauns
	echo 3) Read more about the humans
	echo 4) Go to character select
	echo 5) Go back
	set /p web=
	if "%web%"=="1" goto elflore
	if "%web%"=="2" goto faunlore
	if "%web%"=="3" goto humanlore
	if "%web%"=="4" goto cselect
	if "%web%"=="5" goto start
	
	
	:elflore
	title Elves
	color f
	cls
	echo The elves are a noble and proud race. They prefer to keep to themselves as they see the other races as lesser beings, not worthy of their time. After the first war when Trinia was established
	echo a small group of council members moved to the city with the guardian to make sure the politics of the city would be favorable to the elves.
	echo.
	echo read more?
	echo.
	echo 1) Read more about fauns
	echo 2) Read more about humans
	echo 3) Go to character select
	echo 4) Go back
	set /p web=
	if "%web%"=="1" goto faunlore
	if "%web%"=="2" goto humanlore
	if "%web%"=="3" goto cselect
	if "%web%"=="5" goto start
	
	:humanlore
	title Humans
	color f
	cls
	echo The humans are a race not native to the continent on which Trinia resides. After the first war they suddenly arrived at the harbor with counltess wounded, and so many refugees that Trinia had to be expanded	
	echo to accomodate the newcomers. After settling down the humans have pioneered the scientific front of Trinia, providing artificial leylines to supply the entire city with all the mana it needs.
	echo.
	echo read more?
	echo.
	echo 1) Read more about elves
	echo 2) Read more about fauns
	echo 3) Go to character select
	echo 4) Go back
	echo.
	set /p web=
	if "%web%"=="1" goto elflore
	if "%web%"=="2" goto faunlore
	if "%web%"=="3" goto cselect
	if "%web%"=="5" goto start
	
	
	:faunlore
	title Fauns
	color f
	cls
	echo The fauns are a race of goat like humanoids, with the lower body of a goat and the upper body of something between an elf and a human. The fauns are deeply attuned with nature and have a natural
	echo ability to sense the mana contents of their environments.
	echo.
	echo read more?
	echo.
	echo 1) Read more about elves
	echo 2) Read more about humans
	echo 3) Go to character select
	echo 4) Go back
	echo.
	set /p web=
	if "%web%"=="1" goto elflore
	if "%web%"=="2" goto humanlore
	if "%web%"=="3" goto cselect
	if "%web%"=="5" goto start
	
	
	:cselect
	title Character select
	color f
	cls
	echo SELECT A CHARACTER
	echo.
	echo 1) Elora (elf)
	echo 2) Avalae (faun)
	echo 3) Enne (human)
	echo 4) Go back to the title
	echo 5) Exit
	echo.
	set /p web= 
	if "%web%"=="1" goto elora	
	if "%web%"=="2" goto avalae
	if "%web%"=="3" goto enne
	if "%web%"=="4" goto start
	if "%web%"=="5" exit


	:elora
	title Elora intro
	color 6
	cls
	echo Elora is the elven guardian of Trinia.
	echo Her guardian ability is a limited range teleport that can take her to anywhere she has been before.
	echo.
	echo Play as Elora?
	set /p web=y/n? 
	if "%web%"=="y" set pchar=Elora
	if "%web%"=="y" set ga=teleport
	if "%web%"=="y" set race=elven
	if "%web%"=="y" goto puzzletest
	if "%web%"=="n" goto cselect
	
	
	:avalae
	title Avalae intro
	color 2
	cls
	echo Avalae is the faun guardian of Trinia.
	echo Her guardian ability is future sight, allowing her to plan ahead and beat some enemies in combat
	echo by knowing what their next move will be.
	echo.
	echo Play as Avalae?
	set /p web=y/n?
	if "%web%"=="y" set pchar=Avalae
	if "%web%"=="y" set ga=future sight
	if "%web%"=="y" set race=faun
	if "%web%"=="y" goto puzzletest
	if "%web%"=="n" goto cselect
	
	
	:enne
	color 1
	cls
	echo Enne is the human guardian of Trinia.
	echo Her guardian ability is disintegration, allowing her to break down elements she touches and producing a lot of heat in the process
	echo.
	echo Play as Enne?
	set /p web=y/n?
	if "%web%"=="y" set pchar=Enne
	if "%web%"=="y" set ga=disintegration
	if "%web%"=="y" set race=human
	if "%web%"=="y" goto puzzletest
	if "%web%"=="n" goto cselect
	
	
	:puzzletest
	set key=0
	set pweb=0
	goto p1
	
	
	:p1
	cls
	title puzzle test
	echo You are in a room with a locked door. A key lies on the floor
	echo.
	echo what do you want to do?
	echo 1) interact with the door
	echo 2) interact with the key
	set /p pweb=
	
	if "%pweb%"=="1" if "%key%"=="0" echo the door won't budge
	if "%pweb%"=="2" echo You picked up the key!
	if "%pweb%"=="2" set key=1
	if "%pweb%"=="1" if "%key%"=="1" goto p2
	
	
	:p
	title hall
	echo the door swings open and you now find yourself in a hall
	pause
	
