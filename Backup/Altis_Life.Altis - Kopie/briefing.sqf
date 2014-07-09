waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["spacer1","------------------------"];
player createDiarySubject ["serverrules","Gesetzbuch"];
player createDiarySubject ["spacer2","------------------------"];
player createDiarySubject ["civrules","Zivilisten"];
player createDiarySubject ["policerules","Polizei"];
player createDiarySubject ["adacrules","ADAC"];
player createDiarySubject ["spacer3","------------------------"];
player createDiarySubject ["catalog","Bußgeldkatalog"];
player createDiarySubject ["spacer4","------------------------"];


//######### SERVER INFOS #######################################

player createDiaryRecord ["serverrules",
		[
			"Wichtige Info", 
"
<br/>
<font color='#A9E2F3'>SPEICHERN VOM INVENTAR:</font><br/><br/>
Im Fahrzeug Inventar werden nur legale Items gespeichert.<br/>
Das Z Inventar wird gespeichert.<br/>
Bitte denke regelmäßig daran im Z Menü auf Speichern zu klicken.<br/>

<br/><br/>Für Fragen - TEAMSPEAK-IP: deathwatch.shout.li
<br/><br/>Komplette Regeln - Homepage: www.death-watch.de
"
		]
	];


//######### SERVER RULES #######################################

	
player createDiaryRecord ["serverrules",
		[
			"Gesetzbuch", 
"
<br/>
== Allgemein =======================================
<br/><br/>
<font color='#A9E2F3'>§1 Trollen, Hacks, Bugs, Exploits, RDM etc.</font><br/>
- Wird mit sofortigem und dauerhaften Bann bestraft<br/>
<br/>
<font color='#A9E2F3'>§2 Bugs, Desyncs etc.</font><br/>
- Morde, Fahrlässige Tötungen etc. wegen Desyncs und Bugs sind eine Straftat und keine Entschuldigung und werden nach dem Bußgeldkatalog behandelt<br/>
<br/>
<font color='#A9E2F3'>§3 Random Deathmatch (RDM)</font><br/>
- Das wahllose Töten von Spielern ohne RP-Hintergrund ist verboten.<br/>
- Solltest du als Zivilist in eine Schießerei geraten und sterben gilt dies nicht als RDM.<br/>
- Das Verteidigen von Freunden und / oder Gangmitgliedern ist erlaubt.<br/>
<br/>
<font color='#A9E2F3'>§4 Donatorregeln</font><br/>
- Die Weitergabe von im Donatorshop erworbenen Gegenständen ist verboten.<br/>
- Das Aufheben von Donatorwaffen ist nicht verboten, die Gegenstände werden dann aber als illegal gehandhabt.<br/>
<br/>
<font color='#A9E2F3'>§5 New Life-Regeln</font><br/>
- Die New Life Regel gilt sowohl für Zivilisten als auch Polizisten.<br/>
- Falls du während des RP einen New Life Tod erleidest, sind alle begangenen Straftaten erloschen.<br/>
- Rache ist verboten und du musst dich mind. 15 Minuten vom Todesort fernhalten.<br/>
- Die kompletten Regeln findet ihr auf unserer Homepage.<br/>

<br/>
== Zivilisten ======================================
<br/><br/>

<font color='#A9E2F3'>§1 Absichtliche Zerstörung von Fahrzeugen</font><br/>
- Das vorsätzliche Zerstören von Fahrzeugen ohne Roleplayhintergrund ist verboten.<br/>
- Das absichtliche Rammen von Fahrzeugen um sie zu zerstören ist verboten.<br/>
<br/>
<font color='#A9E2F3'>§2 Kommunikation</font><br/>
- Der Side-Chat ist für normale, kurzweilige Kommunikation gedacht. Für alles weitere gibt es den Gruppen- oder Direct-Chat.<br/>
- Spammen ist verboten.<br/>
- Das Posten von Links (Fremdwerbung etc.) ist verboten.<br/>
- Beleidigungen, Rassismus, Antisemitismus und pornografische Sprache ist verboten.<br/>
<br/>
<font color='#A9E2F3'>§3 Illegale Gegenstände</font><br/>
Fahrzeuge: Sämtliche gepanzerten sowie die Rebellen Fahrzeuge sind illegal.<br/>
Waffen: Außer der P07, Rook 40, ACP C2 und der 4-five sind alle Waffen illegal.<br/>
Gegenstände: -Schildkrötenfleisch -Marihuana -Kokain -Heroin - LSD<br/>
(auch unverarbeitet)<br/>
<br/>
<font color='#A9E2F3'>§4 Einmischung in Polizeiaktionen</font><br/>
- In Rucksäcke von Polizisten gucken ist verboten.<br/>
- Das dauerhafte spionieren und / oder stalken von Polizisten ist verboten.<br/>
- Das dauerhafte Blocken von Polizisten um diese daran zu hindern ihre Pflicht zu tun ist verboten.<br/>
<br/>
<font color='#A9E2F3'>§5 Verhalten bei polizeilichen Maßnahmen</font><br/>
- Den Anweisungen der Polizei ist Folge zu leisten.<br/>
- Wer eine Waffe bei sich führt sollte dies dem Polizisten mitteilen, bevor er aus dem Fahrzeug steigt.<br/>
- Widerstand gegen polizeiliche Maßnahmen wird im schlimmsten Fall mit dem Gebrauch der Schusswaffe beantwortet.<br/>
<br/>
<font color='#A9E2F3'>§6 Verkehrsregeln</font><br/>
- Es gilt rechts vor Links.<br/>
- Es gilt Rechtsfahrgebot.<br/>
- Bei Nacht ist mit Licht zu fahren.<br/>
- Das Parken auf der Straße ist verboten.<br/>
- Nachts gilt absolutes Fahrverbot für Karts.<br/>
- Jeder Fahrzeugführer hat Werkzeugkästen und Erste-Hilfe-Kästen mitzuführen.<br/>
- Das absichtliche Behindern von Fahrzeugen ist verboten.<br/>
- Das Überfliegen von Städten unterhalb von 150m ist verboten.<br/>
- Das Landen von Helikoptern in Städten und auf Straßen ist verboten. Ausnahmeregelungen können durch die Polizei erteilt werden.<br/>
<br/>
<font color='#A9E2F3'>§7 Zusatz</font><br/>
- Die Gesetze von Altis sind verpflichtend.<br/>
- Bei Verstoß gegen die Gesetze wird nach Bußgeldkatalog bestraft. Im Wiederholungsfall droht eine Gefängnisstrafe.<br/>

<br/>
== Rebellen ========================================
<br/><br/>

<font color='#A9E2F3'>§1 Raub, Diebstahl etc. (Event)</font><br/>
- Raub, Diebstahl etc. muss einen RP Hintergrund haben und sollte nicht zwangsweise mit dem Tot enden<br/>
<br/>
<font color='#A9E2F3'>§2 Rebellenverhalten</font><br/>
- Rebellen richten sich gegen den Staat und nicht gegen Zivilisten.<br/>

<br/>
== Polizisten ======================================
<br/><br/>


<font color='#A9E2F3'>§1 Allgemeines Verhalten</font><br/>
- Polizisten haben sich dauerhaft im TS aufzuhalten.<br/>
- Jeder Polizist hat sich an die geltenden Gesetze in Altis zu halten.<br/>
- Die Polizei ist Freund und Helfer und sollte sich auch entsprechend verhalten.<br/>
<br/>
<font color='#A9E2F3'>§2 Patroullien</font><br/>
- Jeder Polizist sollte im ihm zugeteilten Gebiet patroullieren.<br/>
- Patroullien dürfen in Fahrzeugen mit maximal 50 km/h durchgeführt werden.<br/>
- Bei Patrouillen dürfen Bürger ohne jeglichen Grund kontrolliert und durchsucht werden.<br/>
- Auf Patroulliengängen ist die Waffe stets gesenkt zu halten.<br/>
<br/>
<font color='#A9E2F3'>§3 Checkpoints/Grenzkontrolle</font><br/>
- An den Checkpoints können Polizisten über längere Zeit stationiert sein.<br/>
- Polizisten an Checkpoints sind befugt, alle passierenden Fahrzeuge zu durchsuchen.<br/>
- Fahrer sind dazu angehalten sich langsam und mit angeschaltetem Licht dem Checkpoint zu nähern.<br/>
- Sollte sich ein Fahrer aggressiv dem Checkpoint nähern oder ihn gar zu durchbrechen versuchen, so wird dies als Staftat gesehen.<br/>
<br/>
<font color='#A9E2F3'>§4 Einsatz von Waffen</font><br/>
- Jeder Polizist ist angehalten auf nicht-tödliche Waffen zurückzugreifen.<br/>
- Die Polizei sollte versuchen, jeden Verdächtigen festzunehmen, nicht zu töten.<br/>
- Der Einsatz von tödlicher Munition ist Rekruten nur mit Anweisung eines ranghöheren Polizisten erlaubt.<br/>
- Waffen sind generell gesenkt zu tragen.<br/>
- Polizisten dürfen sich mit tödlicher Munition zur Wehr setzen falls sie oder Zivilisten angegriffen werden.<br/>

<br/>
<font color='#A9E2F3'>§5 Verhalten bei Banküberfällen</font><br/>
- Die Bank darf nur ausgeraubt werden, wenn mindestens fünf Polizisten online sind.<br/>
- Patroullierende Polizisten begeben sich ebenfalls umgehend zum Bankraub.<br/>
- Jede Möglichkeit die Bankräuber zu verhaften sollte genutzt werden.<br/>
- Der Einsatz tödlicher Munition ist in §4 geregelt.<br/>
<br/>
<font color='#A9E2F3'>§6 Razzien, Raids und Camping</font><br/>
- Razzien müssen NICHT angekündigt werden.<br/>
- Bei einer Razzia / einem Raid müssen mindestens vier Beamte anwesend sein.<br/>
- Bei einer Razzia / einem Raid darf jede Person zunächst kontrolliert und festgehalten werden.<br/>
- Nach einer Razzia / einem Raid darf das entsprechende Gebiet für mindestens 30 Minuten nicht erneut betreten werden.<br/>
- Polizisten dürfen sich zur Observierung für maximal 15 Minuten im entsprechende Gebiet aufhalten.<br/>
- Das becampen von illegalen Gebieten ist untersagt.<br/>
- Die Observierung durch Drohnen ist kein Campen.<br/>
<br/>
<font color='#A9E2F3'>§7 Beschlagnahmung</font><br/>
- Fahrzeuge, welche verlassen sind und der Besitzer nicht mehr auf dem Server ist, werden von der Polizei beschlagnahmt.<br/>
- Fahrzeuge, dessen Besitzer noch auf dem Server sind, werden ausnahmslos vom ADAC abgeschleppt.<br/>
<br/>
<font color='#A9E2F3'>§8 Festnahmen und Bußgelder</font><br/>
- Jeder Polizist ist angehalten, Bußgelder statt Gefängnisstrafen zu verhängen.<br/>
- Der Bußgeldkatalog ist hierbei bindend.<br/>
- Wiederholungstäter sind zu inhaftieren.<br/>
- Jeder Bürger hat das Recht zu erfahren, wieso er festgenommen wird.<br/>
- Festgenommene Personen sind schnellstmöglich zu bearbeiten und dürfen nicht länger als 3 Minuten ohne RP Hintergrund stehen gelassen werden.<br/>
<br/>
<font color='#A9E2F3'>§9 Verträge</font><br/>
1. Hochrangige Beamte dürfen Informanten, Spionagegruppierungen oder andere Leute kontaktieren und einstellen und für die Hilfe bei polizeilichen Einsätzen/Operationen oder für das Dienen als Wachmann bezahlen. <br/>
2. Verträge bleiben aufrecht, bis der zuständige Beamte den Vertrag beendet. <br/>
3. Verträge bestehen nach dem Tod des Anbieters oder des Ausführenden weiter, außer der Vertrag wurde davor annulliert. <br/>
<br/>
<font color='#A9E2F3'>§10 Zusätze</font><br/>
1. Die Polizeigesetze sind bindend.<br/>
2. Bei wiederholtem Verstoß gegen die Polizeigesetze wird der Polizist unehrenhaft aus dem Dienst entlassen.<br/>
3. Die kompletten Regeln findet ihr auf unserer Homepage.<br/>


"
		]
	];

	
player createDiaryRecord ["civrules",
		[
			"Benehmt euch!", 
				"
<br/>
1. Jeder Spieler stimmt den Regeln automatisch bei dem betreten des Servers zu!.<br/>
2. Rassistische sowie diskriminierende Äußerungen werden nicht geduldet.<br/>
3. Beleidigungen müssen nicht sein.<br/>
4. Verstöße gegen die Regeln können einen Bann zur Folge haben.<br/>
5. Besitzt ihr kein Micro, könnt ihr auch direkt wieder ausloggen<br/><br/>
6. Suizid/Respawn oder Disconnect, um dem RP zu entgehen, resultiert in einem Kick/Bann<br/><br/>
7. Dauerhaftes Trollen wird mit Bann bestraft.<br/><br/>
8. Ein laufendes RP stören ist verboten.<br/><br/>
9. Das Respawnen um schnell von einer Stadt zur anderen zu gelangen ist Verboten.<br/><br/>

Wenn ein Admin euch sagen muss, dass ihr euch nicht anständig benehmt, dann ist euer Verhalten nicht annehmbar.<br/><br/>		
				
				"
		]
	];

//######## ADAC Section ##########################

	

player createDiaryRecord ["adacrules",
		[
			"Regeln wenn du ADAC spielst",
"
		<br/>
			WICHTIG! Redet mit den Spielern über DirectChat!<br/>
			Melde dich im Teamspeak (IP: deathwatch.shout.li)<br/>
			im ADAC-Channel.
			<br/><br/>
			1. Du solltest mindestens 16 Jahre sein.<br/>
			2. Keine Beschlagnahmungen ohne Grund<br/>
			<br/>
			Beim verhängen von Servicegebühren muss nach der <br/>
			Preisliste des ADAC vorgegangen werden!<br/>
			<br/>
			<font color='#A9E2F3'>Lackierung:</font><br/>
			Pro Eimer 2.500 $<br/>
			<font color='#A9E2F3'>Reparatur:</font><br/>
			Quadbikes/Karts 2.500 $ / restliche Fahrzeuge 10.000 $<br/>
			<font color='#A9E2F3'>Abschleppen:</font><br/>
			7.500 $<br/>
			<font color='#A9E2F3'>Personenbeförderung:</font><br/>
			Pro Person 5.000 $<br/>
			<br/>
			<font color='#A9E2F3'>Repairkit (nach der Reparatur):</font><br/>
			1.000 $<br/>
			<font color='#A9E2F3'>Repairkit (ohne Reparatur):</font><br/>
			1.000 $ + Kilometerpauschale (200 $ pro Kilometer)<br/>		
"
		]
	];	
	
//######## Police Section ##########################

	

	player createDiaryRecord ["policerules",
		[
			"Regeln wenn du COP spielst",
"
		<br/>
			WICHTIG! Redet mit den Spielern über DirectChat!<br/>
			Es besteht Teamspeakpflicht! IP: deathwatch.shout.li<br/>
			Wer nicht spricht wird als Cop entfernt.
			<br/><br/>
			1. Du musst mindestens 16 Jahre sein.<br/>
			2. Kein Tazern ohne Grund<br/>
			3. Keine Festnahmen ohne Grund<br/>
			4. Keine Beschlagnahmungen ohne Grund<br/>
			<br/>
			Beim verhängen von Strafen muss nach dem <br/>
			Gesetzbuch und Bußgeldkatalog vorgegangen werden!<br/>
			<br/>
"
		]
	];

//######## Bußgeld #################################
	
	
	player createDiaryRecord ["catalog",
		[
			"Bußgeldkatalog",
"
<br/>
== Störung der öffentlichen Ordnung ================
<br/><br/>

<font color='#A9E2F3'>Lockpicking (versuchter Fahrzeugdiebstahl):</font><br/>
3.000 $<br/>
<font color='#A9E2F3'>Lockpicking + Fahrzeugdiebstahl:</font><br/>
Gefängnis + 10.000 $ <br/>
<font color='#A9E2F3'>Drogendelikte:</font><br/>
pro Kilo 5.000 $ <br/>
<font color='#A9E2F3'>Geiselnahme:</font><br/>
Gefängnis + 25.000 $ <br/>
<font color='#A9E2F3'>Überfall auf Personen/Fahrzeuge:</font><br/>
Gefängnis + 25.000 $ <br/>
<font color='#A9E2F3'>Bankraub:</font><br/>
Gefängnis + 500.000 $ <br/>
<font color='#A9E2F3'>Mord:</font><br/>
Gefängnis + 250.000 $ <br/>
<font color='#A9E2F3'>Aufstand:</font><br/>
50.000 $ <br/>
<font color='#A9E2F3'>Angriff/Belagerung von Hauptstädten:</font><br/>
300.000 $ <br/>
<font color='#A9E2F3'>Ausbruch aus dem Gefängnis:</font><br/>
800.000 $ <br/>

<br/>
== Umgang mit Polizisten ===========================
<br/><br/>

<font color='#A9E2F3'>Nicht befolgen einer polizeilischen Anordnung: </font><br/>
10.000 $<br/>
<font color='#A9E2F3'>Widerstand gegen die Staatsgewalt: </font><br/>
15.000 $<br/>
<font color='#A9E2F3'>Versuchter Diebstahl eines Polizeifahrzeugs: </font><br/>
10.000 $<br/>
<font color='#A9E2F3'>Diebstahl eines Polizeifahrzeugs: </font><br/>
30.000 $<br/>
<font color='#A9E2F3'>Beamtenbeleidigung: </font><br/>
50.000 $<br/>
<font color='#A9E2F3'>Belästigung eines Polizisten: </font><br/>
10.000 $<br/>
<font color='#A9E2F3'>Betreten einer polizeilischen Sperrzone: </font><br/>
125.000 $<br/>
<font color='#A9E2F3'>Töten eines Polizisten: </font><br/>
Gefängnis + 150.000 $<br/>
<font color='#A9E2F3'>Beschuss auf Polizei/Beamte/Eigentum: </font><br/>
Gefängnis + 15.000 $<br/>
<font color='#A9E2F3'>Zerstörung von Polizeieigentum:: </font><br/>
Gefängnis + 15.000 $<br/>

<br/>
== Umgang mit Waffen =======================
<br/><br/>

<font color='#A9E2F3'>Mit gezogener Waffe durch die Stadt:</font><br/>
90.000 $<br/>
<font color='#A9E2F3'>Waffenbesitz ohne Lizenz:</font><br/>
Beschlagnahmen + 10.000 $<br/>
<font color='#A9E2F3'>Besitz einer verbotenen Waffe:</font><br/>
Beschlagnahmen + 10.000 $<br/>
<font color='#A9E2F3'>Schusswaffengebrauch innerhalb Kavala:</font><br/>
Melden beim Admin + 1.000.000 $<br/>

<br/>
== Flugverkehr =====================================
<br/><br/>
 
<font color='#A9E2F3'>Landen in einer Flugverbotszone:</font><br/>
50.000 $<br/>
<font color='#A9E2F3'>Fliegen ohne Lizenz:</font><br/>
10.000 $<br/>
<font color='#A9E2F3'>Fliegen/Schweben unterhalb 300m über einer Stadt:</font><br/>
70.000 $<br/>
 
<br/>
== Straßenverkehr ==================================
<br/><br/>

<font color='#A9E2F3'>Überschreitung Innerorts über 50km/h:</font><br/>
2.500 $<br/>
<font color='#A9E2F3'>Dauerhaft störendes Hupen:</font><br/>
50.000 $<br/>
<font color='#A9E2F3'>Fahren ohne Führerschein:</font><br/>
5.500 $<br/>
<font color='#A9E2F3'>Fahren ohne Licht [Nachts]:</font><br/>
1.500 $<br/>
<font color='#A9E2F3'>Fahren von illegalen Fahrzeugen:</font><br/>
Beschlagnahmung + 100.000 $<br/>
<font color='#A9E2F3'>Fahrerflucht nach Unfall:</font><br/>
Gefängnis + 45.000 $<br/>
<font color='#A9E2F3'>Fahrerflucht vor der Polizei:</font><br/>
65.000 $<br/>
<font color='#A9E2F3'>Überfahren eines anderen Spielers:</font><br/>
Gefängnis + 100.000 $<br/>
<font color='#A9E2F3'>Illegale Strassensperren:</font><br/>
130.000 $<br/>

"
		]
	];