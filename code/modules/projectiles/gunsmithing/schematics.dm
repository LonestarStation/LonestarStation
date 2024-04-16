//here we have the schematics for the lonestar gunsmithing system.
// for each schematic, the required parts to make the gun should be listed in the 'description_fluff'

//Pistoles VVV (pistols)

/obj/item/gunschematic
	name = "gun schematics"
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "gun_schematics"
	desc = "strangely blank gunsmithing schematics... this must be a mistake."
	description_fluff = "Brand Name. Parts List."
	var/gun_brand = "Unknown"	//used to help find the gun via search

/obj/item/gunschematic/pistol/colt
	name = ".45 pistol Schematic"
	desc = "A typical modern handgun based on a classic human design. Uses .45 rounds."
	description_fluff = "A classic human design. Requires: Schematic, Short Barrel, Slide, Semi-Automatic Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/pistol/sec
	name = ".45 pistol"
	gun_brand = "Hephaestus Industries, MarsTech"
	desc = "The MarsTech Mk58 is a cheap, ubiquitous sidearm, produced by MarsTech. Found pretty much everywhere humans are. Uses .45 rounds."
	description_fluff = "A Hephaestus Industries, MarsTech design. Requires: Schematic, Short Barrel, Slide, Semi-Automatic Trigger Group, Firing Pin, Steel Sheet, Spring (2)."

/*
// there exists a silencer, and silenced pistols are easy to pick up from being busted
/obj/item/gunschematic/pistol/silenced
	name = "silenced pistol"
	desc = "A small, quiet, easily concealable handgun based on a classic human design. Uses .45 rounds."
	description_fluff = "Requires: Schematic, Short Barrel (2), Slide, Semi-Automatic Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Unknown"
*/

/obj/item/gunschematic/pistol/deagle
	name = "hand cannon"
	desc = "The PCA-55 Rarkajar perfect handgun for shooters with a need to hit targets through a wall and behind a fridge in your neighbor's house. Uses .44 rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Slide, Semi-Automatic Trigger Group, Firing Pin, Steel Sheet (3), Spring (3)."
	gun_brand = "Pearlshield Consolidated Armories"

/*
/obj/item/gunschematic/pistol/gyropistol // Does this gun even appear anywhere outside of admin abuse? I looked, the answer is no.
	name = "gyrojet pistol"
	desc = "Speak softly, and carry a big gun. Fires rare .75 caliber self-propelled exploding bolts--because fuck you and everything around you."
	description_fluff = "Nothing here yet."
	gun_brand = "Unknown"
*/

/obj/item/gunschematic/pistol/compact
	name = "compact pistol"
	desc = "The Lumoco Arms P3 Whisper. A compact, easily concealable gun, though it's only compatible with compact magazines. Uses 9mm rounds."
	description_fluff = "Lumoco Arms. Requires: Schematic, Short Barrel, Slide, Semi-Automatic Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Lumoco Arms"

/obj/item/gunschematic/pistol/derringer
	name = "derringer"
	desc = "A classic human weapon from a more or less civilized era. Uses .357 rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Single Action Trigger Group, Firing Pin, Steel Sheet (2), Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/pistol/luger
	name = "\improper Jindal T15 Chooha"
	desc = "The Jindal T15 Chooha is taken from an old Sol design that focuses on accuracy and easy handling. Uses 9mm rounds."
	description_fluff = "Jindal Arms. Requires: Schematic, Short Barrel, Semi-Automatic Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Jindal Arms"

/obj/item/gunschematic/pistol/p92x
	name = "9mm pistol"
	desc = "The widespread MarsTech P92X sidearm, used by military, police, and security forces across the galaxy. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Slide, Semi-Automatic Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Hephaestus Industries, MarsTech"

/obj/item/gunschematic/pistol/compact_45
	name = "compact .45 pistol"
	desc = "A compact and easily concealable gun with surprising firepower, though it's only compatible with compact magazines. Uses .45 rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Slide, Semi-Automatic Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Hephaestus Industries, MarsTech"

/obj/item/gunschematic/pistol/mini_uzi
	name = "micro-smg"
	desc = "The MarsTech ProTek Spitz is a lightweight, compact, fast firing machine pistol. Uses .45 rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Slide, Fully Automatic Trigger Group, Firing Pin, Steel Sheet, Spring (4)."
	gun_brand = "Hephaestus Industries, MarsTech"

/obj/item/gunschematic/revolver/colt
	name = "revolver"
	desc = "The MarsTech HE Colt is a choice revolver for when you absolutely, positively need to put a hole in the other guy. Uses .357 rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Hephaestus Industries, MarsTech"

/obj/item/gunschematic/revolver/gold
	name = "trophy revolver"
	desc = "A prestigious engraved version of the MarsTech R1 Snubnose, mass-produced for presentation to long-serving law enforcement personnel upon retirement. Uses .38-Special rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Gold Sheet, Spring (2)."
	gun_brand = "Hephaestus Industries, MarsTech"

/obj/item/gunschematic/revolver/mateba
	name = "mateba"
	desc = "This unique looking handgun is named after an Italian company famous for the original manufacture of these revolvers, and pasta kneading machines. Uses .357 rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet, Spring (4)."
	gun_brand = "Mateba"

/*
/obj/item/gunschematic/revolver/detective45
	name = ".45 revolver"
	desc = "A basic human revolver design, popular among some law enforcement agencies. Uses .45 rounds and has a seven round cylinder."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Hephaestus Industries, MarsTech"
*/

/obj/item/gunschematic/revolver/deckard
	name = "\improper Deckard .38"
	desc = "A custom-built revolver, based off the semi-popular Detective Special model. Uses .38-Special rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/revolver/judge
	name = "\"The Judge\""
	desc = "A revolving hand-shotgun by Jindal Arms. Uses 12g rounds."
	description_fluff = "Requires: Schematic, Short Barrel (7), Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet, Spring (4)."
	gun_brand = "Jindal Arms"

/obj/item/gunschematic/revolver/lemat
	name = "Mako revolver"
	desc = "The Bishamonten P100 Mako is a 9 shot revolver with a secondary firing barrel loading shotgun shells. Uses .38-Special and 12g rounds depending on the barrel."
	description_fluff = "Requires: Schematic, Short Barrel (2), Cylinder (2), Single Action Trigger Group, Firing Pin, Steel Sheet (2), Spring (5)."
	gun_brand = "Bishamonten Company"

/obj/item/gunschematic/revolver/webley
	name = "patrol revolver"
	desc = "The Hedberg-Hammarstrom top break revolver commonly issued to members of the SifGuard. Uses .44 magnum rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Heberg-Hammarstrom"

/obj/item/gunschematic/revolver/auto
	name = "autorevolver"
	desc = "The Fosbery Autococker automatic revolver from Hedberg-Hammarstrom. Uses .44 magnum rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet, Spring (3)."
	gun_brand = "Heberg-Hammarstrom"

/obj/item/gunschematic/revolver/heavy
	name = "heavy revolver"
	desc = "The Hedberg-Hammarstrom Wyrm is a high-capacity magnum revolver. Designed for use within the SifGuard. Uses .44 magnum rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet (3), Spring (2)."
	gun_brand = "Heberg-Hammarstrom"

/obj/item/gunschematic/revolver/magnetic
	name = "Auditor revolver"
	desc = "The Lawson Arms LAM-2 Auditor is an experimental hybrid design using an electronic firing mechanism to propel standard ballistic ammunition at absurd velocities. Uses .44 magnum rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Capacitor, Plasteel Sheet (3), Spring (2)."
	gun_brand = "Lawson Arms"

/obj/item/gunschematic/revolver/contender
	name = "H-H Gram"
	desc = "Hedberg-Hammarstrom's flagship one-shot hand-cannon.  Uses .357 rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Steel Sheet, Spring (2)."
	gun_brand = "Heberg-Hammarstrom"

/obj/item/gunschematic/dart/dartgun
	name = "dart gun"
	desc = "The Z-H P Artemis is a gas-powered dart gun capable of delivering chemical cocktails swiftly across short distances."
	description_fluff = "Requires: Schematic, Short Barrel, Scanning Module, Semi-Automatic Trigger Group, Steel Sheet, Glass Sheet, Spring (4)."
	gun_brand = "Zeng-Hu Pharmaceutical"

/obj/item/gunschematic/dart/prototype
	name = "prototype dart gun"
	desc = "The Z-H P Artemis is a gas-powered dart gun capable of delivering chemical cocktails swiftly across short distances. This one seems to be an early model with an NT stamp."
	description_fluff = "Requires: Schematic, Short Barrel, Phasic Scanning Module, Semi-Automatic Trigger Group, Plasteel Sheet, Glass Sheet (2), Spring (6)."
	gun_brand = "Zeng-Hu Pharmaceutical"

//Scatterguns VVV (shotguns)

/obj/item/gunschematic/shotgun/pump
	name = "shotgun"
	desc = "The mass-produced MarsTech Meteor 29 shotgun is a favourite of police and security forces on many worlds. Uses 12g rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Single Action Trigger Group, Firing Pin, Wooden Gunstock, Steel Sheet, Wood Sheet, Spring (4)."
	gun_brand = "Lawson Arms"

/obj/item/gunschematic/shotgun/combat
	name = "combat shotgun"
	desc = "Built for close quarters combat, the Hephaestus Industries KS-40 is widely regarded as a weapon of choice for repelling boarders. Uses 12g rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Single Action Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet(2), Spring (4)."
	gun_brand = "Hephaestus Industries"

/obj/item/gunschematic/shotgun/doublebarrel
	name = "double-barreled shotgun"
	desc = "A truly classic weapon. No need to change what works. Uses 12g rounds."
	description_fluff = "Requires: Schematic, Long Barrel (2), Single Action Trigger Group (2), Firing Pin (2), Wooden Gunstock, Steel Sheet (2), Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/shotgun/sawn
	name = "sawn-off shotgun"
	desc = "Omar's coming!"
	description_fluff = "Requires: Schematic, Short Barrel (2), Single Action Trigger Group (2), Firing Pin (2), Steel Sheet (2), Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/shotgun/semi
	name = "semi-automatic shotgun"
	desc = "Sjorgen Inertial Shotgun. With a simple, yet effective recoil inertia loading mechanism for semi-automatic fire. This shotgun uses 12 gauge ammunition."
	description_fluff = "Requires: Schematic, Long Barrel, Semi-Automatic Trigger Group, Firing Pin, Wooden Gunstock, Steel Sheet, Wood Sheet, Spring (4)."
	gun_brand = "Unknown"

/obj/item/gunschematic/shotgun/auto
	name = "automatic shotgun"
	desc = "The AS-24 is a rugged looking automatic shotgun produced exclusively for the SCG Fleet by Hephaestus Industries. For very obvious reasons, it's illegal to own in many juristictions. Uses 12g rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Short Barrel (12), Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (6)."
	gun_brand = "Hephaestus Industries"

//Longarms VVV (rifles)

/obj/item/gunschematic/rifle/bolt
	name = "bolt-action rifle"
	desc = "The Hedberg-Hammarstrom Volsung is a modern interpretation of an almost ancient weapon design. The model is popular among hunters and collectors due to its reliability. Uses 7.62mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Single Action Trigger Group, Firing Pin, Wooden Gunstock, Wood Sheet, Spring (2)."
	gun_brand = "Hedberg-Hammarstrom"

/obj/item/gunschematic/rifle/practice // For target practice
	name = "practice bolt-action rifle"
	desc = "A bolt-action rifle with a lightweight synthetic wood stock, designed for competitive shooting. Comes shipped with practice rounds pre-loaded into the gun. Popular among professional marksmen. Uses 7.62mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Single Action Trigger Group, Firing Pin, Wooden Gunstock, Wood Sheet, Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/rifle/ceremonial
	name = "ceremonial bolt-action rifle"
	desc = "A bolt-action rifle with a heavy, high-quality wood stock that has a beautiful finish. Clearly not intended to be used in combat. Uses 7.62mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Single Action Trigger Group, Firing Pin, Wooden Gunstock, Wood Sheet (2), Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/rifle/lever
	name = "lever-action rifle"
	desc = "The Hedberg-Hammarstrom Edda is the latest version of an almost ancient weapon design from the 19th century, popular with some due to its simplistic design. This one uses a lever-action to move new rounds into the chamber. Uses 7.62mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Single Action Trigger Group, Firing Pin, Wooden Gunstock, Steel Sheet (2), Wood Sheet, Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/rifle/brushgun
	name = "brush gun"
	desc = "The Hedberg-Hammarstrom Myrkvidhr is a high-caliber lever-action hunting rifle designed specifically for tackling the hardy and often armoured wildlife of Sif."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Single Action Trigger Group, Firing Pin, Wooden Gunstock, Steel Sheet, Wood Sheet, Spring (2)."
	gun_brand = "Unknown"

/obj/item/gunschematic/rifle/garand
	name = "semi-automatic rifle"
	desc = "A vintage styled frontier rifle by Hedberg-Hammarstrom. The distinctive 'ping' is considered traditional, though its origins are much debated.. Uses 7.62mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Single Action Trigger Group, Firing Pin, Wooden Gunstock, Steel Sheet (2), Wood Sheet, Spring (2)."
	gun_brand = "Hedberg-Hammarstrom"

/obj/item/gunschematic/rifle/revolvingrifle
	name = "revolving rifle"
	desc = "The Gungnir is a novel, antique idea brought into the modern era by Hedberg-Hammarstrom. The semi-automatic revolving mechanism offers no real advantage, but some colonists swear by it. Uses .44 magnum revolver rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Cylinder, Single Action Trigger Group, Firing Pin, Wooden Gunstock, Steel Sheet (2), Wood Sheet, Spring (2)."
	gun_brand = "Hedberg-Hammarstrom"

/obj/item/gunschematic/rifle/SVD
	name = "sniper rifle"
	desc = "The PCA S19 Jalgarr, also known by its translated name the 'Dragon', is mass produced with an Optical Sniper Sight so simple that even a Tajaran can use it. Too bad for you that the inscriptions are written in Siik. Uses 7.62mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Semi-Automatic Trigger Group, Firing Pin, Wooden Gunstock, Steel Sheet (2), Wood Sheet (2), Spring (4)."
	gun_brand = "Pearlshield Consolidated Armories"

//Ammo Eaters VVV (automatic weapons)

/obj/item/gunschematic/automatic/advanced_smg
	name = "advanced SMG"
	desc = "An advanced submachine gun with a reflective laser optic that makes burst fire less inaccurate than other SMGs. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Sheet (2), Spring (6)."
	gun_brand = "Unknown"

/obj/item/gunschematic/automatic/c20r
	name = "submachine gun"
	desc = "The C-20r is a lightweight and rapid firing SMG, for when you REALLY need someone dead. It has 'Scarborough Arms - Per falcis, per pravitas', inscribed on the stock. Uses 10mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (4)."
	gun_brand = "Scarborough Arms"

/obj/item/gunschematic/automatic/sts35
	name = "assault rifle"
	desc = "The rugged Jindal Arms STS-35 is a durable automatic weapon of a make popular on the frontier worlds. Uses 5.45mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (4)."
	gun_brand = "Jindal Arms"

/obj/item/gunschematic/automatic/wt550
	name = "machine pistol"
	desc = "The WT550 Saber is a cheap self-defense weapon mass-produced by Ward-Takahashi for paramilitary and private use. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Short Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (2), Spring (4)."
	gun_brand = "Ward-Takahashi"

/obj/item/gunschematic/automatic/z8
	name = "battle rifle"
	desc = "The Z8 Bulldog is an older model battle rifle, made by the now defunct Zendai Foundries. Makes you feel like an old-school badass when you hold it, even though it can only hold 10 round magazines. Uses 7.62mm rounds and has an under barrel grenade launcher."
	description_fluff = "Requires: Schematic, Long Barrel, Short Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (6)."
	gun_brand = "Hephaestus Industries"

/obj/item/gunschematic/automatic/l6_saw
	name = "light machine gun"
	desc = "A rather sturdily made L6 SAW with a reassuringly ergonomic pistol grip. 'Hephaestus Industries' is engraved on the reciever. Uses 5.45mm rounds. It's also compatible with magazines from STS-35 assault rifles."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (6), Spring (6)."
	gun_brand = "Hephaestus Industries"

/obj/item/gunschematic/automatic/p90
	name = "personal defense weapon"
	desc = "The H90K is a compact, large capacity submachine gun produced by MarsTech. Despite its fierce reputation, it still manages to feel like a toy. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (4)."
	gun_brand = "Unknown"

/obj/item/gunschematic/automatic/pearlshield
	name = "\improper Tajaran PDW"
	desc = "A century old Rhemazar military weapon adapted to use human-standard cartridges, the PCA-A9 Karik has been the standard submachine gun of the Pearlshield military since 2549. Uses 9mm rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Spring (4)."

/obj/item/gunschematic/automatic/tommygun
	name = "\improper Tommy Gun"
	desc = "This weapon was made famous by gangsters in the 20th century. Cybersun Industries is currently reproducing these for a target market of historic gun collectors and classy criminals. Uses .45 rounds."
	description_fluff = "Requires: Schematic, Long Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (6), Spring (6)."
	gun_brand = "Unknown"

/obj/item/gunschematic/automatic/combatsmg
	name = "\improper PP3 Ten"
	desc = "The Bishamonten PP3 Ten personal defense weapon is a rare design much sought after - though more for its looks than its functionality. Uses 9mm rounds."
	description_fluff = "Parts List."
	gun_brand = "Requires: Schematic, Short Barrel, Bolt, Fully Automatic Trigger Group, Firing Pin, Steel Gunstock, Steel Sheet (4), Plastic Sheet (2), Spring (6)."
