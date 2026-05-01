1.0
Файловая структура





=== Workspace ===
|-- Workspace [Workspace]
  |-- Camera [Camera]
    |-- AudioListener [AudioListener]
      |-- Wire [Wire]
  |-- Cameras [Folder]
  |-- Battlemap [Folder]
    |-- Forest [Folder]
      |-- Model [Model]
      |-- Model [Model]
      |-- Tree2 [Model]
      |-- Tree3 [Model]
      |-- Shroom3Red [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Tree2 [Model]
      |-- Tree3 [Model]
      |-- Tree1 [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Tree3 [Model]
      |-- Pathrocks [Model]
      |-- Tree2 [Model]
      |-- Tree1 [Model]
      |-- Model [Model]
      |-- Tree2 [Model]
      |-- Tree1 [Model]
      |-- Shroom1Red [Model]
      |-- Shroom3Red [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Shroom1Red [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Model [Model]
      |-- Tree2 [Model]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
  |-- Enemies [Folder]
    |-- Pebble [Model]
      |-- Humanoid [Humanoid]
        |-- Animator [Animator]
      |-- AnimSaves [ObjectValue]
      |-- InspectButton [ClickDetector]
    |-- Rat [Model]
      |-- Humanoid [Humanoid]
        |-- Animator [Animator]
      |-- AnimSaves [ObjectValue]
      |-- InspectButton [ClickDetector]
  |-- VFX [Folder]
  |-- Summons [Folder]
  |-- Sounds [Folder]
  |-- Restmap [Folder]
  |-- Players [Folder]
    |-- Idondthink [Model]
      |-- Humanoid [Humanoid]
        |-- Animator [Animator]
        |-- HumanoidDescription [HumanoidDescription]
      |-- Clothing [Pants]
      |-- Clothing [Shirt]
      |-- DisableAnimations [LocalScript]
      |-- RagdollR6 [Script]
        |-- RagdollClient [LocalScript]
      |-- Health [Script]
      |-- Animate [LocalScript]
        |-- idle [StringValue]
          |-- Animation1 [Animation]
            |-- Weight [NumberValue]
          |-- Animation2 [Animation]
            |-- Weight [NumberValue]
        |-- walk [StringValue]
          |-- WalkAnim [Animation]
        |-- run [StringValue]
          |-- RunAnim [Animation]
        |-- jump [StringValue]
          |-- JumpAnim [Animation]
        |-- climb [StringValue]
          |-- ClimbAnim [Animation]
        |-- toolnone [StringValue]
          |-- ToolNoneAnim [Animation]
        |-- fall [StringValue]
          |-- FallAnim [Animation]
        |-- sit [StringValue]
          |-- SitAnim [Animation]
        |-- PlayEmote [BindableFunction]
        |-- ScaleDampeningPercent [NumberValue]
      |-- RagdollValue [BoolValue]
      |-- Hair [Accessory]
        |-- ThumbnailConfiguration [Configuration]
          |-- ThumbnailCameraTarget [ObjectValue]
          |-- ThumbnailCameraValue [CFrameValue]
      |-- Accessories [Folder]
      |-- Simple Tome [Model]
        |-- Simple Tome [Model]
        |-- WeldPart [ObjectValue]
      |-- InspectButton [ClickDetector]
  |-- Spawns [Folder]
  |-- ItemDummy [Model]
    |-- Animate [LocalScript]
      |-- idle [StringValue]
        |-- Animation1 [Animation]
          |-- Weight [NumberValue]
        |-- Animation2 [Animation]
          |-- Weight [NumberValue]
      |-- walk [StringValue]
        |-- WalkAnim [Animation]
      |-- run [StringValue]
        |-- RunAnim [Animation]
      |-- jump [StringValue]
        |-- JumpAnim [Animation]
      |-- climb [StringValue]
        |-- ClimbAnim [Animation]
      |-- toolnone [StringValue]
        |-- ToolNoneAnim [Animation]
      |-- fall [StringValue]
        |-- FallAnim [Animation]
      |-- sit [StringValue]
        |-- SitAnim [Animation]
      |-- PlayEmote [BindableFunction]
      |-- ScaleDampeningPercent [NumberValue]
    |-- Humanoid [Humanoid]
      |-- Animator [Animator]
      |-- HumanoidDescription [HumanoidDescription]
    |-- Body Colors [BodyColors]
    |-- AnimSaves [ObjectValue]
    |-- WeldPart [ObjectValue]
    |-- WeldPart [ObjectValue]
    |-- WeldPart [ObjectValue]
    |-- WeldPart [ObjectValue]
    |-- WeldPart [ObjectValue]
    |-- WeldPart [ObjectValue]
  |-- PreloadDummy [Model]
    |-- Humanoid [Humanoid]
      |-- Animator [Animator]
  |-- Terrain [Terrain]
  |-- SpawnLocation [SpawnLocation]

=== ReplicatedStorage ===
|-- ReplicatedStorage [ReplicatedStorage]
  |-- Skies [Folder]
    |-- BloodredSky [Sky]
  |-- Remotes [Folder]
    |-- FireTurn [RemoteEvent]
    |-- TurnDecision [RemoteEvent]
    |-- GetAbilities [RemoteEvent]
    |-- UpdateTurn [RemoteEvent]
    |-- EndTurn [RemoteEvent]
    |-- ChangeCamera [RemoteEvent]
    |-- AttackFlash [RemoteEvent]
    |-- SetupPlayer [RemoteEvent]
    |-- CombatEnd [RemoteEvent]
    |-- Display [RemoteEvent]
    |-- PlayerInventory [RemoteEvent]
    |-- AppearanceUpdate [RemoteEvent]
    |-- CinematicBars [RemoteEvent]
    |-- TimerEvent [RemoteEvent]
    |-- ChangeUI [RemoteEvent]
    |-- FireBattle [RemoteEvent]
    |-- TransitionEvent [RemoteEvent]
    |-- SceneEvent [RemoteEvent]
    |-- GetEffects [RemoteEvent]
    |-- VotingEvent [RemoteEvent]
    |-- GetStats [RemoteEvent]
    |-- Achievement [RemoteEvent]
    |-- GetArea [RemoteEvent]
    |-- VotingFlash [RemoteEvent]
    |-- InvestStats [RemoteEvent]
    |-- ClassSelect [RemoteEvent]
    |-- SoundsEvent [RemoteEvent]
    |-- DialogueEvent [RemoteEvent]
    |-- GetItems [RemoteEvent]
    |-- TeleportEvent [RemoteEvent]
    |-- ReplayEvent [RemoteEvent]
    |-- GetSceneOptions [RemoteFunction]
    |-- ClientEffects [RemoteEvent]
    |-- PurchaseRequests [RemoteEvent]
    |-- SettingsUpdate [RemoteEvent]
    |-- TurnEvent [RemoteEvent]
    |-- TurnTracker [RemoteEvent]
    |-- TesterRemote [RemoteEvent]
    |-- CommandEvent [RemoteEvent]
    |-- TeleportDataEvent [RemoteEvent]
    |-- Upgrade [RemoteEvent]
    |-- JumpscareEvent [RemoteEvent]
    |-- PurchaseRequest [RemoteEvent]
    |-- TurnTimerEvent [RemoteEvent]
  |-- Items [Folder]
    |-- Elvish Bow [Model]
      |-- WeldPart [ObjectValue]
    |-- Bloodkin Whisperer [Model]
      |-- WeldPart [ObjectValue]
    |-- Apple [Model]
      |-- WeldPart [ObjectValue]
    |-- Pyrrhite Scimitar [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Carp [Model]
      |-- WeldPart [ObjectValue]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
      |-- Union [UnionOperation]
    |-- Casull [Model]
      |-- WeldPart [ObjectValue]
      |-- Front Sight [UnionOperation]
      |-- Base [UnionOperation]
      |-- Grip2 [UnionOperation]
      |-- Hammer [UnionOperation]
      |-- Grip3 [UnionOperation]
      |-- Buttons [UnionOperation]
      |-- Slide [UnionOperation]
      |-- Barrel [UnionOperation]
      |-- Rear Sight [UnionOperation]
      |-- WoodPanels [UnionOperation]
      |-- Nails&GripSafety [UnionOperation]
    |-- Challenger's Tome [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Church Blade [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Cleaver [Model]
      |-- WeldPart [ObjectValue]
    |-- Cloth Leggings [Model]
      |-- LeftLeg [Model]
        |-- WeldPart [ObjectValue]
      |-- RightLeg [Model]
        |-- WeldPart [ObjectValue]
    |-- Cloth Robes [Model]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
    |-- Granny's Mits [Model]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
    |-- Crude Club [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Cultist's Book of Omens [Model]
      |-- WeldPart [ObjectValue]
    |-- Dirk [Model]
      |-- WeldPart [ObjectValue]
    |-- Dragon Slayer [Model]
      |-- WeldPart [ObjectValue]
    |-- Spidersilk Handwraps [Model]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
    |-- Drifter's Revolver [Model]
      |-- WeldPart [ObjectValue]
    |-- Ebony and Ivory [Model]
      |-- Ebony [Model]
        |-- WeldPart [ObjectValue]
      |-- Ivory [Model]
        |-- WeldPart [ObjectValue]
    |-- Energy Potion [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Flesh Bible [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Flesh Staff [Model]
      |-- WeldPart [ObjectValue]
    |-- Fungi Falchion [Model]
      |-- WeldPart [ObjectValue]
    |-- Gemstone Staff [Model]
      |-- WeldPart [ObjectValue]
    |-- Giant's Greatsword [Model]
      |-- WeldPart [ObjectValue]
    |-- Goblin Steak [Model]
      |-- WeldPart [ObjectValue]
    |-- Greatsword [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Healing Potion [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Hemomancer's Blade [Model]
      |-- WeldPart [ObjectValue]
    |-- Honey Glazed Chestplate [Model]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
    |-- Honeyed Leggings [Model]
      |-- LeftLeg [Model]
        |-- WeldPart [ObjectValue]
      |-- RightLeg [Model]
        |-- WeldPart [ObjectValue]
    |-- Honeyed Robes [Model]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
    |-- Iron Leggings [Model]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
    |-- Cook Book [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Mao Sword [Model]
      |-- Trail [Trail]
      |-- Top [Attachment]
      |-- Bottom [Attachment]
      |-- WeldPart [ObjectValue]
    |-- Simple Lute [Model]
      |-- WeldPart [ObjectValue]
    |-- Kris [Model]
      |-- WeldPart [ObjectValue]
    |-- Leather Boots [Model]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
    |-- Leather Leggings [Model]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
    |-- Leather Vest [Model]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Arm [Model]
        |-- WeldPart [ObjectValue]
      |-- Left Arm [Model]
        |-- WeldPart [ObjectValue]
    |-- Lightbringer [Model]
      |-- Sword [Model]
        |-- WeldPart [ObjectValue]
      |-- Sword2 [Model]
        |-- WeldPart [ObjectValue]
    |-- Linked Sword [Model]
      |-- WeldPart [ObjectValue]
      |-- Main [Attachment]
    |-- Minor Energy Potion [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Minor Health Potion [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Moonlight Greatsword [Model]
      |-- WeldPart [ObjectValue]
    |-- Nature Tome [Model]
      |-- WeldPart [ObjectValue]
    |-- Noble's Sabre [Model]
      |-- WeldPart [ObjectValue]
    |-- Noxious Staff [Model]
      |-- WeldPart [ObjectValue]
    |-- Potion Seller's Masterpiece [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Pronged Dagger [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Dragonite Scimitar [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Sand In a Bottle [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Shadow Dagger [Model]
      |-- WeldPart [ObjectValue]
    |-- Shotel [Model]
      |-- WeldPart [ObjectValue]
    |-- Simple Dagger [Model]
      |-- WeldPart [ObjectValue]
    |-- Simple Gauntlets [Model]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
    |-- Simple Staff [Model]
      |-- WeldPart [ObjectValue]
    |-- Simple Sword [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Simple Tome [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Skull Staff [Model]
      |-- WeldPart [ObjectValue]
    |-- Solemn Lament [Model]
      |-- The Departed [Model]
        |-- WeldPart [ObjectValue]
      |-- The Living [Model]
        |-- WeldPart [ObjectValue]
    |-- Stale Bread [Model]
      |-- WeldPart [ObjectValue]
    |-- Stinger Pendant [Model]
      |-- WeldPart [ObjectValue]
    |-- Vial of Magical Water [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Void Staff [Model]
      |-- WeldPart [ObjectValue]
    |-- Wraith's Promise [Model]
      |-- WeldPart [ObjectValue]
    |-- Sword in Stone [Model]
      |-- WeldPart [ObjectValue]
    |-- Mao Hat [Model]
      |-- WeldPart [ObjectValue]
    |-- Zealot's Tome [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Ancient Staff [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Simple Bow [Model]
      |-- WeldPart [ObjectValue]
    |-- Darkwind Longbow [Model]
      |-- WeldPart [ObjectValue]
    |-- Dryad Bow [Model]
      |-- WeldPart [ObjectValue]
    |-- Steps to Heaven [Model]
      |-- WeldPart [ObjectValue]
    |-- Greater Healing Potion [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Nightstalker Bow [Model]
      |-- WeldPart [ObjectValue]
    |-- Assassin's Dagger [Model]
      |-- WeldPart [ObjectValue]
    |-- Draconic Dagger [Model]
      |-- WeldPart [ObjectValue]
    |-- Stinger Blade [Model]
      |-- WeldPart [ObjectValue]
    |-- The Empire's Reach [Model]
      |-- Model [Model]
      |-- WeldPart [ObjectValue]
    |-- Spidersilk Leggings [Model]
      |-- LeftLeg [Model]
        |-- WeldPart [ObjectValue]
      |-- RightLeg [Model]
        |-- WeldPart [ObjectValue]
    |-- Spidersilk Robes [Model]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
    |-- Slime Boots [Model]
      |-- RightLeg [Model]
        |-- WeldPart [ObjectValue]
      |-- LeftLeg [Model]
        |-- WeldPart [ObjectValue]
    |-- Spidersilk Hood [Model]
      |-- WeldPart [ObjectValue]
    |-- Kitchen Knife [Model]
      |-- WeldPart [ObjectValue]
    |-- Machete [Model]
      |-- WeldPart [ObjectValue]
    |-- Mystic Shortbow [Model]
      |-- WeldPart [ObjectValue]
    |-- Nightmare Staff [Model]
      |-- WeldPart [ObjectValue]
    |-- Pumpkin Flesh [Model]
      |-- WeldPart [ObjectValue]
    |-- Candy Corn [Model]
      |-- WeldPart [ObjectValue]
    |-- Chocolate [Model]
      |-- WeldPart [ObjectValue]
    |-- Sour Drops [Model]
      |-- WeldPart [ObjectValue]
    |-- Twisted Longbow [Model]
      |-- WeldPart [ObjectValue]
    |-- Cauldro Head [Model]
      |-- WeldPart [ObjectValue]
      |-- Brawler [Color3Value]
      |-- Mage [Color3Value]
      |-- Priest [Color3Value]
      |-- Ranger [Color3Value]
      |-- Rogue [Color3Value]
      |-- Warrior [Color3Value]
      |-- Classless [Color3Value]
    |-- Cauldro Pumpkin [Model]
      |-- WeldPart [ObjectValue]
    |-- Forsaken Holy Book [Model]
      |-- Parts [Model]
      |-- WeldPart [ObjectValue]
    |-- Antidote [Model]
      |-- WeldPart [ObjectValue]
      |-- Body [UnionOperation]
    |-- Cloth Veil [Model]
      |-- WeldPart [ObjectValue]
    |-- Boneplated Leggings [Model]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
    |-- Silk Striders [Model]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
    |-- Rat Hide Cloak [Model]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
      |-- Head [Model]
        |-- WeldPart [ObjectValue]
      |-- Left Arm [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Arm [Model]
        |-- WeldPart [ObjectValue]
    |-- Cooked Bat Wing [Model]
      |-- WeldPart [ObjectValue]
    |-- Record of Grudges [Model]
      |-- WeldPart [ObjectValue]
    |-- Hearthshot Hand Cannon [Model]
      |-- WeldPart [ObjectValue]
    |-- Red Nose [Model]
      |-- WeldPart [ObjectValue]
    |-- Rat Hide Boots [Model]
      |-- RightLeg [Model]
        |-- WeldPart [ObjectValue]
      |-- LeftLeg [Model]
        |-- WeldPart [ObjectValue]
    |-- Rat Hide Hood [Model]
      |-- WeldPart [ObjectValue]
    |-- Gothic Padded Boots [Model]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
    |-- Gothic Padded Leggings [Model]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
    |-- Gothic Padded Chestpiece [Model]
      |-- Left Arm [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Arm [Model]
        |-- WeldPart [ObjectValue]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
    |-- Granny's Glasses [Model]
      |-- WeldPart [ObjectValue]
    |-- Fake Beard [Model]
      |-- WeldPart [ObjectValue]
    |-- Shadowy Hat [Model]
      |-- WeldPart [ObjectValue]
    |-- Drifter's Hat [Model]
      |-- WeldPart [ObjectValue]
    |-- Glowing Eye [Model]
      |-- WeldPart [ObjectValue]
    |-- Iron Chestplate [Model]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
    |-- Iron Helmet [Model]
      |-- WeldPart [ObjectValue]
    |-- Iron Greaves [Model]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
    |-- Cheese [Model]
      |-- WeldPart [ObjectValue]
      |-- Union [UnionOperation]
    |-- Pyrrhite Maul [Model]
      |-- WeldPart [ObjectValue]
    |-- Giant Hide Chestplate [Model]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Arm [Model]
        |-- WeldPart [ObjectValue]
    |-- Nevan [Model]
      |-- WeldPart [ObjectValue]
    |-- Mutated Rat Hide Boots [Model]
      |-- RightLeg [Model]
        |-- WeldPart [ObjectValue]
      |-- LeftLeg [Model]
        |-- WeldPart [ObjectValue]
    |-- Blood Claws [Model]
      |-- LeftArm [Model]
        |-- WeldPart [ObjectValue]
      |-- RightArm [Model]
        |-- WeldPart [ObjectValue]
    |-- Silver Scepter [Model]
      |-- WeldPart [ObjectValue]
    |-- Cursed Hood [Model]
      |-- WeldPart [ObjectValue]
    |-- Cursed Leggings [Model]
      |-- Right Leg [Model]
        |-- WeldPart [ObjectValue]
      |-- Left Leg [Model]
        |-- WeldPart [ObjectValue]
    |-- Cursed Robes [Model]
      |-- Left Arm [Model]
        |-- WeldPart [ObjectValue]
      |-- Right Arm [Model]
        |-- WeldPart [ObjectValue]
      |-- Torso [Model]
        |-- WeldPart [ObjectValue]
    |-- Cursed Slippers [Model]
      |-- RightLeg [Model]
        |-- WeldPart [ObjectValue]
      |-- LeftLeg [Model]
        |-- WeldPart [ObjectValue]
    |-- Tainted Leather 






1.1
Википедия о ивентах












Locations/events

Contents
1.
Mechanics of Encounters/Events
2.
Events always available
2.1.
Scavenge
2.1.1.
Scavenge (Forest)
2.1.2.
Scavenge (Mines)
2.1.3.
Scavenge (Dungeon)
2.1.4.
Scavenge (Toxic Sewers)
2.2.
Short rest
2.2.1.
Rest for a while and regain some health
2.2.2.
Train your body and hone your skills
3.
Possible Events (Forest)
3.1.
Strange man (Rouge -> Assasin)
3.2.
A Powerful Stranger (Warrior -> Rampager)
3.3.
A resting druid
3.3.1.
Avoid the weirdo and his bear
3.3.2.
Speak with the druid
3.3.2.1.
Ask for guidance
3.3.2.2.
Ask to pet the animals of the grove
3.3.2.3.
Rush the druid and assault him!
3.4.
Mystic River
3.4.1.
Disregard the river entirely
3.4.2.
Decito take a break at the river
3.4.2.1.
Go for a swim in the river
3.4.2.2.
Scoop water from the river
3.4.2.3.
Forage around the river
3.5.
A Peculiar camp
3.5.1.
Fight with the goblin chief
3.5.2.
Attempt to speak with the goblin chief
3.6.
Wanderer's wares
3.7.
Busted Caravan
3.7.1.
Battle the goblins for their goods
3.7.2.
Move on from the scene
3.7.3.
Approach the goblin caravan
3.7.3.1.
Nah, they got it themselves
3.7.3.2.
Help the goblins repair the caravan
3.8.
Traveling merchant
3.9.
The gob-stop
3.10.
Grandma's house
3.10.1.
Kindly reject the grandma's offer for sweets
3.10.2.
Decide to beat up the old lady
3.10.3.
Accept the grandma's invitation for sweets
3.11.
Fey wanderer
3.11.1.
Mind your own business and leave
3.11.2.
Approach the man
3.11.3.
Assault the man
3.12.
A Meditating Man
3.12.1.
Avoid the strange man
3.12.2.
Interrupt his meditation and say hello
3.12.2.1.
An elementalist? What's that?
3.12.2.2.
I wanna spar!
3.12.2.3.
Not really, just a play to rest for a bit
3.13.
An Upsidedown Individual
3.13.1.
Stear clear of the tree and leave
3.13.2.
Approach the strange man
3.13.2.1.
What kind of offer?
3.13.2.2.
Attack the strange man
3.14.
The sword in the stone
3.14.1.
Walk away from the clearing
3.14.2.
Approach the sword
3.14.2.1.
Try to draw the blade
3.14.2.2.
Pull as hard as you can
3.14.2.3.
Give it a little nice tug
3.15.
Wizard tower
3.15.1.
Move on from the scene
3.15.2.
Approach the wizard
3.15.2.1.
No thank you
3.15.2.2.
Try and sneak around the old man and rob him
3.15.2.3.
I'd love some magical goods
3.16.
Void interloper
3.16.1.
Move on from the scene
3.16.2.
Approach the portal
3.17.
Potion seller
3.18.
Man in a suit
3.18.1.
Pick red
3.18.2.
Pick blue
3.19.
A Travelling Bard
3.19.1.
Ignore
3.19.2.
Ambush
3.19.3.
Approach
3.19.3.1.
Become a Bard of Valor
3.19.3.2.
Decline
4.
Possible Events (Mines)
4.1.
A Kobold Uprising
5.
Possible Events (Dungeon)
5.1.
Lone Drifter
5.2.
Mysterious Manhole
5.3.
Nightstalker
5.4.
Hottie
5.5.
An Ominous Cliff
5.6.
A wild beast
5.7.
Knight's caravan
5.7.1.
Accept the knights friendly greeting
5.8.
A Single Zealot
5.9.
A Travelling Necromancer
5.10.
Overgrown room
5.11.
Grob's Emporium
5.12.
Portal in the dungeon
5.13.
The Prisoner
5.14.
The Silent Butcher
5.15.
The Altar
5.16.
The Unblinking Eyes
5.17.
A Strange Aura
5.18.
The Den

An Average Campaign Wiki

Explore
Main Page
Discuss
All Pages
Community
Interactive Maps
Recent Blog Posts

An Average Campaign Wiki

Wiki Content

Recently Changed Pages

Equipment

Materials

Wiki Content

Recently Changed Pages
Fey Wanderer
Gemstone
Fancy Monocle
Boons
Gem Stone Staff
Dance of Light
Goblin Chief

Wiki Content

Equipment
Wizard Hat
Cloth Veil
Giant Hide Chestplate
Leather Cap
Leather Legging
Rat Hide Boots
Leather Boots

Wiki Content

Materials
Dragonite Chip
Enchanted Log
Red Scale
Rat Hide
Rat Eye
Leather Scrap
Metal Scrap

An Average Campaign Wiki

Community
Help
Advertisement

An Average Campaign Wiki
6

Locations/events
Sign In to Save
After every Encounter players get a moment of peace to ready themselves before another fight, every one of them is depending on RNG (not counting the Always Available section of course) to show, and some are rarer than other.

Also worth writing is that there are some mechanics not said in game that affect your gameplay every time.

Mechanics of Encounters/Events
After first Encounter and getting ready, players have option to choose one of three given options for a path to take, or to scavenge for materials / rest for a bit more.

00:00

00:00


Events that can be seen every time vary, and some events can't be seen twice after choosing it once (sometimes even after seeing it and not choosing could make it now unavailable, but still testing that theory).

Each event has Stars, that show how hard the effects of the Event are to the gameplay, the more the heavier it could impact your game, and harder the event is to conquer.

If the Event finalizes into Fighting someone (Mini-boss Fight or Special Encounter) the Encounter will be skipped and will happen after another Equipment faze, skipping your option to choose different Event after completing previous one.

If the Encounter is too strong for you or your party, then you might Die, It would be best to check Death section for more information connected to this topic to be more ready and know what will happen when you Die.

Events always available
Events always available are events that you can access in every section of the game, and are not depending on RNG to show up

Those Events can be broken into Scavenge, which will grant items depending on section and chosen option (Every player chooses for themselves so many options can be chosen at the same time) and Short Rest, which can grand skill points or health depending on chosen option

Both of those will right after completing start an Encounter (There is no option currently in game to skip one)

Scavenge
This event will offer three options to choose from, each granting player different materials.

The amount of items obtained by using scavenge depends on the number of players in the party.

Scavenge (Forest)
Scavenge
Description: "You decide to look around for some resources in the forest, but where to search?"

Search the Nearby Thicket 
Search an Abandoned Campsite 
Search Nearby River 
Scavenge (Mines)
Scavenge (Mines)
Description: "You push furthur through the mines, aiming to scavenge whatever remains here. Where will you explore?"

Squeeze your way through tiny crevices 
Explore the Diverging paths led by minecart tracks 


Scavenge (Dungeon)
Scavenge - dungeon
Description: "You push further through the dungeon, aiming to scavenge whatever remains here. Where will you explore?"

Investigate an Eerie Chamber 
Search through the Rubble of a Collapsed Hallway 
Check a Dark Corridor ahead 
Scavenge (Toxic Sewers)
Short rest
Short rest


Description: "You find a nice place to set up camp and take a short rest"

Short Rest will grant player Health or Skill Point depending on action chosen by player (Each player chooses for themselves)

Rest for a while and regain some health
Choosing this option will restore some of the player's health depending on their maximum health.

Train your body and hone your skills
Choosing this option will give the player one stat point to increase their stats. (DISCLAIMER - Point can be allocated after an Encounter that will happen after Short Rest)

Possible Events (Forest)
Strange man (Rouge -> Assasin)
A Strange Man
Description: "A hooded figure stands just behind a tree, he seems to be watching you from afar. What will you do?"

Difficulty Level: 2 Stars

Choosing "Mind your own business and leave" will end the Event and skip to Encounter

Choosing "Approach the strange man" will show two new options to choose from:

Strange man - option 2
By choosing "Become one of the blades", you can select the Assassin subclass for the rogue (Only for this run, after restarting every subclass will be lost). If you decline, and instead choose "Reject the offer, but take notes of his techniques", your critical chance will increase by 3%.

Choosing "Strike before he can" will start the fight against the Assassin (Mini-Boss)

A Powerful Stranger (Warrior -> Rampager)
Powerful stranger
Description: "You spot a seemingly powerful stranger sat alone in the woods"

Difficulty Level: 2 Stars

Choosing "Mind your own business and leave" option will end the event.

Choosing "Approach the man" will show two new options to choose from:

Powerful stranger - opt 2
By choosing "Pay attention to his teachings", you can select the Rampager subclass for the Warrior (Only for this run, after restarting every subclass will be lost). If you decline, and instead choose "Train alongside the man", it will increase your block chance by 1.5% and grant you one stat point.

Choosing "Approach the man weapons drawn" will start a fight against the Hero (Mini-boss)

A resting druid
A Resting Druid
"You come across a strange man, he sits among the woodland animals. What will you do?"

This event will offer two options to choose from, each having a different effect.

Avoid the weirdo and his bear
Choosing this option will end the event

Speak with the druid
Choosing this option will give you three new options to choose from.

Ask for guidance
Resting druid - Guidance
By choosing this option, you can select the Druid subclass for the Priest. If you decline and instead choose to remember its teachings about nature, your outgoing and incoming healing will increase by 3%

Ask to pet the animals of the grove
Choosing this option will restore some of the player's health, depending on their maximum health.

Rush the druid and assault him!
Choosing this option will start a fight against the druid

Mystic River
Mystic River
"You happen to pass by a river, teeming with magical energy. This seems like a good place for a short break. What do you do?"

This event will offer three options to choose from, each having a different effect.

Disregard the river entirely
Choosing this option will end the event.

Decide to take a break at the river
Choosing this option will give you three new options to choose from.

Go for a swim in the river
Choosing this option will completely restore the player's health.

Scoop water from the river
Choosing this option will give the player a Vial of Magical Water.

Forage around the river
Choosing this option will give the player several items. (carp, fluorescent flower, slime chunk, etc.)

A Peculiar camp
A Peculiar Camp
"You encounter a strange camp, it's riddled with gobblins scurrying about from place to place, their hulking chieftain approaches you with a club in hand, What do you do?"

This event will offer two options to choose from, each having a different effect.

Fight with the goblin chief
Choosing this option will start a fight against the goblin chief

Attempt to speak with the goblin chief
Choosing this option will give you two new options to choose from.

Nope! We were just passing through!
If you choose this option you will either have to fight the goblin chief, pass a CHA check, or hand over your gold to the goblin chief, losing a certain amount of gold

Attack the chief in self defense
Choosing this option will start a fight against the goblin chief

Cast a charm spell on the chief (Mage)
This option will fully heal the party

Wanderer's wares
Screenshot 2026-03-18 193213
Choosing this event will send you back to the inventory, with the added "Shop" option on the left, along with stash and craft.

Shop - Wanderer's Wares
The Wanderer's Wares shop sells a variety of items, including armor, charms, weapons, minor potions, and crafting materials.

After all players have pressed the Ready button, a normal fight will begin.

Busted Caravan
Busted caravan
"You find yourselves peeking through the trees towards a caravan that seems to have been stranded in the middle of the forest. What will you do?"

This event will offer three options to choose from, each having a different effect.

Battle the goblins for their goods
Choosing this option will start a fight against the goblin noble

Move on from the scene
Choosing this option will end the event

Approach the goblin caravan
Choosing this option will give you three new options to choose from.

Nah, they got it themselves
Choosing this option will end the event

Help the goblins repair the caravan
Choosing this option will initiate a strength skill check. If successful, you will receive 50 gold and the Fancy Monocle charm in the stash. If unsuccessful, a battle against the goblin noble will begin.

Traveling merchant
Traveling Merchant
Choosing this event will send you back to the inventory, with the added "Shop" option on the left, along with stash and craft.

Shop - TM
The traveling merchant shop sells a variety of items, including armor, charms, weapons and minor potions

After all players have pressed the Ready button, a normal fight will begin.

The gob-stop
The Gob-Stop
Choosing this event will send you back to the inventory, with the added "Shop" option on the left, along with stash and craft.

Shop - TG
The traveling merchant shop sells a variety of items, including armor, charms, weapons, consumables and minor potions

This shop also sells the fancy monocle

After all players have pressed the Ready button, a normal fight will begin.

Grandma's house
Image 2026-03-18 193500049
"You encounter a little house up ahead. Upon investigating, a nice, elderly woman walks out and invites your party inside for some sweets. What do you do?"

This event will offer three options to choose from, each having a different effect.

Kindly reject the grandma's offer for sweets
Choosing this option will end the event

Decide to beat up the old lady
Choosing this option will start a fight against the grandma

Accept the grandma's invitation for sweets
Choosing this option will give you three new choices, which are essentially the same as the previous ones. If you insist on accepting Grandma's sweets, you'll receive a random effect. (Lose 20 HP, regain HP, gain two stat points, or gain a random status effect in the next fight)

Fey wanderer
Fey wanderer
This event will offer three options to choose from, each having a different effect.

Mind your own business and leave
Choosing this option will end the event

Approach the man
Fey wanderer - event
By choosing this option, you can select the Fey wanderer subclass for the Ranger. If you decline and instead choose to scavenger around the magical forest, it will give the player several items. (red flower, pixie dust, fluorescent flower, etc)

Assault the man
Choosing this option will start a fight against the fey wanderer

A Meditating Man
A meditating man
"You spy a man sitting before the river, he seems to be deep in thought. What will you do?"

This event will offer two options to choose from, each having a different effect.

Avoid the strange man
Choosing this option will end the event

Interrupt his meditation and say hello
Choosing this option will give you three new options to choose from.

An elementalist? What's that?
A medtating man - event
By choosing this option, you can select the elementalist subclass for the brawler. If you decline and instead choose to lay around, messing with meditation practices, you will gain a 2% energy gain increase.

I wanna spar!
Choosing this option will start a fight against the Monk

Not really, just a play to rest for a bit
Choosing this option will restore some of the player's health depending on their maximum health.

An Upsidedown Individual
An upsidedown individual
"A strange man hangs upside down from a tree nearby. What will you do?"

This event will offer two options to choose from, each having a different effect.

Stear clear of the tree and leave
Choosing this option will end the event

Approach the strange man
Choosing this option will give you three new options to choose from.

What kind of offer?
Choosing this option allows the Mage to transform into the Bloodkin Warlock subclass and gain 2 stat points at the cost of 10 HP. Any class may also accept the offer to gain 2 skill points at the same cost. Declining the offer ends the event with no effect.

Attack the strange man
Choosing this option will start a fight against the ancient vampire

The sword in the stone
The sword in the stone
"You find yourself facing a clearing in the woods. There a sword sits plunged into a large stone, What do you do?"

This event will offer two options to choose from, each having a different effect.

Walk away from the clearing
Choosing this option will end the event

Approach the sword
Choosing this option will give you three new options to choose from.

Try to draw the blade
Choosing this option will initiate a strength skill check. If successful, you will receive the achievement "The chosen one...?" and obtain the sword in stone. If unsuccessful, you will receive 1-3 stat points.

Pull as hard as you can
Choosing this option will initiate a strength skill check. If successful, you will receive the achievement "The chosen one...?" and obtain the sword in stone. If unsuccessful, you will receive 1-3 stat points.

Give it a little nice tug
Sword in the stone - linked sword
Choosing this option will initiate a Strength skill check. If you have more than 10 Strength and are a Warrior or Rampager, you have a 5% chance of succeeding. If successful, you will earn the "The Chosen One" achievement, unlock the "The Chosen One" boon, gain two stat points and obtain the Linked Sword. If you fail, you will gain 1-3 stat points. (Ravager does not pair with the boon, and does not help with attaining the sword in the stone greatsword variant.)

Wizard tower
Wizard tower
"You spot a wizard sat outside his tower. What will you do?"

This event will offer two options to choose from, each having a different effect.

Move on from the scene
Choosing this option will end the event

Approach the wizard
Choosing this option will give you three new options to choose from.

No thank you
Choosing this option will end the event

Try and sneak around the old man and rob him
Choosing this option will initiate a DEX skill check. If successful, all players will receive higher-quality mage class items than those obtained by selecting "I'd love some magical goods." If unsuccessful, a battle against the mage will begin.

I'd love some magical goods
Choosing this option will give all players items for the mage class

Void interloper
Void interloper
"You find yourselves face to face with a portal to the void. What will you do?"

This event will offer two options to choose from, each having a different effect.

Move on from the scene
Choosing this option will end the event

Approach the portal
Choosing this option will start a fight against Nedyak

Potion seller
PT
"You find yourselves in outside of a strange hut. What will you do?"

This event will offer two options to choose from, each having a different effect.

Choosing "Move on from the scene" will end the event

Choosing "Approach the strange hut" will give you three new options to choose from.

Choosing "Well I didn't want one of your strongest potions anyways!" will give you the potion seller's masterpiece

Potion Seller s Masterpiece
(Potion seller's masterpiece basically kills upon consumption due to damage stack of the DoT)

Choosing "B-But potion seller. I'm going into battle and need your strongest potion!" will give you a minor healing potion.

Choosing "Leave the hut in disgrace" will end the event

Choosing "What if I helped you make the potions?" will initiate an intelligence skill check (At least 20 INT). If successful, all players will receive a healing potion. If unsuccessful, the game will end.

Man in a suit
Mysterious man
This is a secret event and is rare to appear. This event will offer two options to choose from, each having a different effect.

Mysterious man - 1
Mysterious man - 2
Mysterious man - 3
Pick red
Choosing this option will give you the "Neo" badge. The description of this badge is "Escape the matrix". This will kick you from the game, ending the run.

Pick blue
Choosing this option will give you "Energized" for the upcoming fight.

A Travelling Bard
AtravellingBard

Upon encountering A Travelling Bard, the player is presented with three options:

Ignore
Ends the encounter.

Ambush
Choosing this will start a fight with the bard.

Approach
Engaging with the bard allows the player to choose one of the following:

Become a Bard of Valor
Become a Bard of Valor

Decline
Refuse the bard’s offer. If declined, the player receives 1 Stack of Energized upon entering the next battle, which begins shortly thereafter.

Possible Events (Mines)
A Kobold Uprising
A Kobold Uprising
Description: "You Spot a Picket Line of Kobolds"

Difficulty Level: 2 Stars

Choosing option "Pay the Group no mind" will end the Event and skip to Encounter

Choosing option "Approach the Group" will show two new options

A Kobold Uprising 2
Choosing "What's going on" will allow Player to fight with the Kobolds (as their savior) or to force them to get back to work (which will end in fight with those said Kobolds)

Choosing "GET BACK TO WORK" will skip to fight with Kobolds to force them to work

Possible Events (Dungeon)
Lone Drifter
1-LD
If you accept his Promotion Event as a rogue, you will become a Drifter.

-Choosing to fight him will start a fight. (duh)

Drops solitary soul

Can make:

Never sent letter charm which boosts faith and outgoing healing
Cowboy hat which boosts charisma
Boots for rogue
Mysterious Manhole
///I forgor to take a picture///

Mysterious Manhole is a special event, that allows for players to enter special section called Toxic Sewers. Which has completely different events and enemies from the Dungeon segment.

Nightstalker
1-NS
Similarly to the other Encounters, you are provided with three options

"YOU'RE UNDER ARREST FOR THE MURDER OF THIS MAN"
Engage in a battle against the Elf.
Approach the Man
This will allow you to Become a Gloom Stalker, denying will give you 12-29 gold.
Ignore the situation
This will end the encounter
Hottie
Found in the mines.

A secret Boss encounter featuring Jackson and his sidekicks, Lewis and Josh.
No image but 6 star difficulty.

An Ominous Cliff
I did not get a good image of the Encounter Card, and the Interaction was rushed, some information is spliced.

AnOminousCliffSub
Upon encountering the Bard of Whispers, the player is presented with three options:

Approach the Man near the Cliff
Choosing this option will give you three new options to choose from
Avoid the strange man
Choosing this option will end the encounter
Become a Bard of Whispers
Choosing this option will convert Bard to Bard of Whispers
Reject the offer
Receive 1.5% dodge effect instead
Ambush the Man
Attack the man, initiating combat.
Ignore the Man
Ends the encounter.
A wild beast
1-WB
-Turns Brawler into Beast class



-You can battle him but it's recommended not to do it solo

drops Beastly Soul

-choosing not to reduces aggro to you by 5%

"You feel inferior."

Knight's caravan
Knight's caravan
"You spot a gathering of knights posturing themselves to head deeper within the dungeon, what will you do?"

This event will offer two options to choose from, each having a different effect.

Pay them no mind
Choosing this option will end the event
Approach the knights
Choosing this option will give you three new options to choose from.
Reject the offer
Choosing this option will end the event.
Challenge the caravan to combat
Choosing this option will start a fight against the knights.
Can make:

Chestpiece for 10% incoming healing, 15 con and 20% aggro.
Conquerer’s boots, high faith and con.
Charm for high con and +8% block chance.
Accept the knights friendly greeting
Knights caravan - 1
By choosing this option, you can select the Knight subclass for the warrior. If you decline and instead choose to train with the knights, you will receive + 1 Block reduction, +1 Stat point.

A Single Zealot
A single zealot
"A holy man sits alone amongst the corpses of several undead, what will you do?"

This event will offer three options to choose from, each having a different effect.

Mind your business and leave
Choosing this option will end the event
Attack him for no reason
Choosing this option will start a fight against the Zealot
Approach the priest
Choosing this option will give you three new options to choose from.
A single zealot - 2
By choosing this option, you can select the Zealot subclass for the Priest. If you decline and instead choose to ask for help, it restore some of the player's health, depending on their maximum health and give you a healing potion.

A Travelling Necromancer
A traveling necromancer
I'll complete it later lol (dude its been so long this wiki ain't finished :crying_emoji:) (I swear I'll finish it this time lol)

It gives you the Necromancer subclass for the Mage and can revive an ally, at the cost of 250 gold. (i dont think this is true anymore lol)

Overgrown room
Overgrown room
"You stumble across a room filled with strange plant life. Vines, bushes, and trees have overtaken this room. Some odd flowers stick out from the bushes nearby. What will you do?"

This event will offer two options to choose from, each having a different effect.

Move on from the scene
Choosing this option will end the event
Inspect the strange flowers
Choosing this option will give you two new options to choose from.
Take some flowers
Choosing this option will give you between 3-5 fluorescent flowers (takes 10 health)
Walk away from the strange plant life
Choosing this option will end the event
Grob's Emporium
Grob's emporium
Choosing this event will send you back to the inventory, with the added "Shop" option on the left, along with stash and craft.

Grob's emporium shop
The Grob's Emporium shop sells a variety of items, including armor, charms, weapons, consumables and crafting materials

After all players have pressed the Ready button, a normal fight will begin.

Portal in the dungeon
Portal in the dungeon
This encounter requires a Summoning Star, which can be bought from The Unblinking Eyes Shop.

Approach the Portal
Choosing this option will give you two options to choose from
Move on from the Portal
Choosing this option will end the encounter
Use Summoning Star
Choosing this option will NOT consume a Summoning Star, but it will require at least one player to actively have it in their inventory
Leave the Portal Alone (or smth i dont remember)
Choosing this encounter or failing to have a Summoning Star will end the encounter
Open your mind to the Void
Choosing this option will make you lose -15 max HP, but gain 5 stat points
Resist the Void's influence
Choosing this option will end the encounter
WIP PLEASE CHECK FOR ACCURACY

The Prisoner
The prisoner
This encounter requires a Mysterious key to proceed, it can be bought at Grob's Emporium or obtained by trading an ectoplasm to the lost soul in the A Lost Soul event.

Mr. Bones is really strong, and drops Decrepit Soul If you manage to beat them.

The Silent Butcher
The silent butcher
Choosing this event will send you back to the inventory, with the added "Shop" option on the left, along with stash and craft.

The silent butcher - shop
The silent butcher's shop sells a variety of crafting materials, such as ectoplasm, red scale, dragonite chip, cloth, vial of vampire's blood, bloody fang, etc. (Don't count on it...)

After all players have pressed the Ready button, a normal fight will begin.

The Altar
Altar





Presents you with two options

Kneel before the statue
Pray to the statue, asking for power (FTH check)
May grant up to 3 stat points SUCCESS CHANCE
-75% + X*1.5%
X = FTH Stat
The Unblinking Eyes
The unblinking eyes
Choosing this event will send you back to the inventory, with the added "Shop" option on the left, along with stash and craft.

The unblinking eyes - shop
The Unblinking Eyes shop mostly sells charms, though it also sells weapons and potions, as well as the Summoning Star.

After all players have pressed the Ready button, a normal fight will begin.

A Strange Aura
DO NOT DO THIS

-Spawns an enemy called "baby"

-Probably stronger than 12/12 boss

-Insane damage output, only fight if you are truly prepared

-Unlocks "The Pinnacle" Boon

The Den
(TEMP) (IDK How to edit but i still want to help)

-Quickly pass the door

-Approach the doorman

-Assault the doorman

///(if Approach the door man you can pay 100 gold to enter)///

///(if you chose your not doing anything illegal you will start a fight (Fairly deadly, rewards are not great)

(If you chose grab a bite to eat you get two stat points, full healing and energised next fight.)

(the Other option asks why there are there and it leads to the Previous two choices.///







1.2
Мой класс Warrior













Warrior




Explore
Main Page
Discuss
All Pages
Community
Interactive Maps
Recent Blog Posts

An Average Campaign Wiki

Wiki Content

Recently Changed Pages

Equipment

Materials

Wiki Content

Recently Changed Pages
Fancy Monocle
Boons
Gem Stone Staff
Dance of Light
Goblin Chief
Knight (Subclass)
Rampager

Wiki Content

Equipment
Wizard Hat
Cloth Veil
Giant Hide Chestplate
Leather Cap
Leather Legging
Rat Hide Boots
Leather Boots

Wiki Content

Materials
Dragonite Chip
Enchanted Log
Red Scale
Rat Hide
Rat Eye
Leather Scrap
Metal Scrap








Warrior
Sign In to Save
Class Desc
Warrior
Rampager
Knight

Compatable Weapon(s)
Sword
Greatsword (Rampager)
Hammer (Grudge Settler)
Stat
STR/CON
Role
Warrior: Tank, Damage Support
Rampager: AoE, Nuke, Self Damage Buff
Knight: Tank, Nuke, Single Target Damage
Grudge Settler: Self-buff, Single Target Damage
I'm never dying! Never ever ever. Never ever ever!
Warrior

Overview
1/2


Abilities
Base Class Skills
Lv 1 - Strike
"A simple slash that deals moderate damage."
Damage: 6
Scaling: 0.02 STR, 0.01 DEX
Damage Type: Physical
Energy Cost: 0
Cooldown: 0
Target Type: Single	
WarriorSlash
Lv 1 - Cross Slash
"Unleash 2 devastating slashes."
Damage: 8x2
Scaling: 0.012 STR
Damage Type: Physical
Energy Cost: 2
Cooldown: 4
Target Type: Single	
WarriorCrossSlash
Lv 3 - Taunt
"Goad an enemy into attacking you for a short period of time."
Damage Type: Status
Energy Cost: 1
Cooldown: 5
Target Type: Single
Effects: Taunted - 3
Undodgeable, Unblockable	
WarriorTaunt
WarriorTauntVictim
Lv 5 - Rally
"Rally the party decreasing damage taken and increasing damage dealt."
Damage Type: Status
Energy Cost: 3
Cooldown: 6
Target Type: All Allies
Effects: Rallied - 3
Undodgeable, Unblockable	
WarriorRally
Rampager Skills
Lv 1 - Brutal Slashes
(Replaces Cross Slash)
"Unleash two brutal slashes at a single target."
Damage: 8.5*2
Scaling: 0.0125 STR
Damage Type: Physical
Energy Cost: 2
Cooldown: 4
Target Type: Single
RampagerBrutalSlashes
Lv 3 - Berserk
"Release a loud shout, lowering your own defenses, but increasing your damage dealt greatly."
Damage Type: Status
Energy Cost: 1
Cooldown: 6
Target Type: Self
Effects: Reckless - 4
Undodgeable, Unblockable	
RampagerBerserk
Lv 4 - Cleaving Blow
"A large sweep that hits all enemies, dealing damage to each and opening up their defenses."
Damage: 10
Scaling: 0.02 STR
Damage Type: Physical
Energy Cost: 3
Cooldown: 6
Target Type: All Enemies
Effects: Vulnerable - 2	
RampagerCleavingBlow
Lv 6 - Overpowering Slash
"A heavy downward slash that stuns a single enemy."
Damage: 15
Scaling: 0.025 STR
Damage Type: Physical
Energy Cost: 5
Cooldown: 6
Target Type: Single
Effects: Crippled - 3, Stunned - 1	
RampagerOverpoweringSlash
Knight
Lv 1 - Declaration of War
"Cast a declaration of war towards your enemies, taunting them all for 3 turns."
Damage: 2
Scaling: 0.015 CON
Damage Type: Thunder
Energy Cost: 1
Cooldown: 7
Target Type: All Enemies
Effects: Demoralized - 3, Taunted - 3
Undodgeable, Unblockable, Unmissable	(Insert Animation Here)
Lv 6 - Bulwark Rush
"Charge an enemy, slamming into them dealing damage based on your CON, displacing the victim."
Damage: 9
Scaling: 0.025 CON
Damage Type: Physical
Energy Cost: 2
Cooldown: 4
Target Type: Single
Effects: Displaced - 3
Undodgeable	
Lv 8 - Warlord Strike
"A slash that renders the opponent shaking with fear."
Damage: 13
Scaling: 0.0125 STR, 0.015 CON
Damage Type: Physical
Energy Cost: 3
Cooldown: 6
Target Type: Single
Effects: Fractured - 2, Fear - 1
Grudge Settler Skills
Settle the Score
"Rush your enemy swinging at them with prejudice."
Damage: 14
Scaling:
Damage Type:
Energy Cost: 2
Cooldown: 4
Target Type:	
Mark the Wicked
"Grant a wicked one the mark of a grudge bearer."
Damage: 0
Scaling:
Damage Type:
Energy Cost: 0
Cooldown: 4
Target Type:
Effects:	
Underking's Judgement
"Slam your hammer down on an enemy, marking them as a grudge bearer by the jurisdiction of the underking."
Damage: 20
Scaling:
Damage Type:
Energy Cost: 4
Cooldown:
Target Type:	
Whispers of the Forge
"Imbued yourself with the burning might of the underkings forges. Granting physical attacks a flaming boost in power in exchange for lighting yourself ablaze."
Damage: 0
Damage Type: Status
Energy Cost: 1
Cooldown: 4
Target Type: Self
Effects: Burn - 4, Steam - 3, Whispers of the Forge - 4	
Skills
Warrior Skill Tree
Left Branch	Middle Branch	Right Branch
Demanding Presence
Increases enemy aggression against you by 3% per point invested.	Conqueror's Basics
Increase your total STR and CON by 2% per point invested.	Everlasting
Decreases damage taken by status effects by 3% per point invested.
Unbreakable Guard
Increases your block chance by 1% per point invested.	HP
Increases your HP by 2 per point invested.	Iron Defenses
Increases block reduction by 1% per point invested.
Stat Points
Increases your starting stat points by 1 per point invested












1.3











Goblin
Sign In to Save

HP	Damage Type	Initative
18	?, Small	7
Dodge Chance
Can Dodge
Block Chance
Can Block
Drops
Goblin Ear

Gold:
XP:
Location
Forest - Normal Encounters, Goblin Camp


Description
The goblin is a common enemy that can be found in the forest area. It can steal your money with it's Jugg move, and can Flee.


Goblin
Tiny Strike
Damage: 4.5
Damage Type: Physical
Target Type: Single Enemy
Energy Cost: 0
Cooldown: 0
(Insert Animation Here)
Jugg
Damage: 5
Damage Type: Physical
Target Type: Single Enemy
Energy Cost: 2
Cooldown: 4
(Insert Animation Here)
Flee
Energy Cost: 0
*Goblin removes themselves from the encounter. You do not get any rewards if a Goblin flees. This is more likely to occur if the Goblin is under 50% HP.	(Insert Animation Here

















Rat
Sign In to Save

HP	Damage Type	Initative
5-8	Construct, Small	2-4
Dodge Chance
Can Dodge
Block Chance
Cannot Block
Drops
Rat Hide
Rat Eye
Gold: 3
XP: 5
Location
Forest - Normal Encounters


Rat
Gnaw
Damage: 2
Damage Type: Physical
Target Type: Single Enemy
Energy Cost: 0
Cooldown: 0
(Insert Animation Here)
Rat Flip
Damage: 5
Damage Type: Physical
Target Type: Single Enemy
Energy Cost: 2
Cooldown: 4
Effects: Vulnerable - 2
(Insert Animation Here)











Pebble
Sign In to Save

HP	Damage Type	Initative
9-11	Construct	1-4
Dodge Chance
Cannot Dodge
Block Chance
Cannot Block
Drops
Rock Fragments
Metal Scrap
Spell Scroll: Summon Pebble
Gold:
XP:
Location
Forest - Normal Encounter


Pebble
Boulder Bump
Damage: 3
Damage Type: Physical
Target Type: Single Enemy
Energy Cost: 0
Cooldown: 0
(Insert Animation Here)










Bandit
Sign In to Save

HP	Damage Type	Initative
15	?	6
Dodge Chance
Can Dodge
Block Chance
Can Block
Drops
Leather Scrap
Metal Scrap
Cloth
Gold:
XP:
Location
Forest - Normal Encounters


Bandit
Quick Slash
Damage: 3
Damage Type: Physical
Target Type: Single Enemy
Energy Cost: 0
Cooldown: 0
(Insert Animation Here)
Fire Bomb
Damage: 5
Damage Type: Fire
Target Type: Single Enemy
Energy Cost: 1
Cooldown: ?
Effects: Burn - 1
(Insert Animation Here)
Light Stab
Damage:
Damage Type: Physical
Target Type: Single Enemy
Energy Cost: 1
Cooldown: 4?
Effects: Bleed - 2
(Insert Animation Here)












Spider
Sign In to Save

HP	Damage Type	Initative
16-18	Physical and Poison	3-4
Dodge Chance
?
Block Chance
Cannot block
Drops
Spider Silk
Spider Eye
Spell Scroll:Consuming Web
Spell Scroll: Summon Spider
Gold: 14-16
EXP:13-17
Location
Forest


Spider
Spider Bite
Damage: 4
Damage Type: Physical Target Type: Single Enemy Energy Cost: 0 Cooldown: 0 Effects: Poison 1

(Insert Animation Here)
Web Attach
Damage: 3.5 x 2
Damage Type: Physical Target Type: Single Enemy Energy Cost: 2 Cooldown: ? Effects: Poison 2

(Insert Animation Here)










Bee
Sign In to Save

Drops
Stinger
Honey

Location
Forest
The Bee is one of several enemies that you can encounter in the forest. When defeated, it will drop some gold, stingers, and honey.










Pixie
Sign In to Save

HP	Damage Type	Initative
15	? , Small	4
Dodge Chance
Cannot Dodge
Block Chance
Cannot Block
Drops
Pixie Dust
Red Flower
Gold:
XP:
Location
Forest - Normal Encounters, Feyling


Pixie
Dust Bolt
Damage: 2
Damage Type: Psychic
Target Type: Single Enemy
Energy Cost: 0
Cooldown: 0
(Insert Animation Here)
Wonderous Lights
Damage: 5
Damage Type: Physical
Target Type: Single Enemy
Energy Cost: 2
Cooldown: 4
Effects: Wonder - 3
(Insert Animation Here)
Magic Dust
Healing: 6.9
Target Type: Single Ally
Energy Cost: 1
Cooldown: 4
*Only used if a party member is injured, regardless of HP missing.	(Insert Animation Here)
