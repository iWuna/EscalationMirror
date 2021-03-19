
var/list/dreams = list(
	"an military chip","a bottle","a familiar face","a crewmember","a toolbox","a security officer","the captain",
	"voices from all around","deep space","a doctor","the engine","a traitor","an ally","darkness",
	"light","a scientist","a monkey","a catastrophe","a loved one","a gun","warmth","freezing","the sun",
	"a hat","a ruined station","a planet","Black Cholera","air","the medical bay","the bridge","blinking lights",
	"a blue light","an abandoned laboratory","Cholera", "pirates", "mercenaries","blood","healing","power","respect",
	"riches","space","a crash","happiness","pride","a fall","water","flames","ice","melons","flying","the eggs","money",
	"the chief engineer","the research director","nato",
	"a station engineer","the janitor","the atmospheric technician",
	"a cargo technician","the botanist","a shaft miner","the psychologist","the chemist",
	"the virologist","the roboticist","a chef","the bartender","a chaplain","a librarian","a mouse",
	"a beach","the holodeck","a smokey room","a voice","the cold","a mouse","an operating table","the rain","a skrell",
	"warpact","zeds","dead bodies","a beaker of strange liquid","science"
	)

mob/living/carbon/proc/dream()
	dreaming = 1

	spawn(0)
		for(var/i = rand(1,4),i > 0, i--)
			to_chat(src, "<span class='notice'><i>... [pick(dreams)] ...</i></span>")
			sleep(rand(40,70))
			if(paralysis <= 0)
				dreaming = 0
				return 0
		dreaming = 0
		return 1

mob/living/carbon/proc/handle_dreams()
	if(client && !dreaming && prob(5))
		dream()

mob/living/carbon/var/dreaming = 0
