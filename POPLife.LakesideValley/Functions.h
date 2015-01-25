class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

//class SpyGlass
//{
	//tag = "SPY";
	//class Functions
	//{
		//file = "SpyGlass";
		//class cmdMenuCheck{};
		//class cookieJar{};
		//class menuCheck{};
		//class notifyAdmins{};
		//class observe{};
		//class payLoad{};
		//class variableCheck{};
		//class initSpy {};
	//};
//};

class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminTPtoPL {};
        class adminTPtoME {};
        class adminFreeze {};
        class adminRez {};		
        class adminKill {};		
        class adminHR {};
	    class adminATM {};
        class adminTeleport {};		
        class adminKeys {};			
        class adminSpectate {};
        class adminUni {};			
        class adminMarkers {};
        class adminCompensate {};
        class adminDelObj {};
        class adminGDY {};		
        class adminDebug {};		
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicMarkers {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
	};
	
	class Actions
	{
		file = "core\actions";
		class packupBarrier {};
		class buyLicense {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};	
		class serviceChopper {};
		class kidnappingAction {};
		class kidnappingActionOff {};		
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class getDPMission {};
		class serviceTruck {};
		class postBail {};
		class processAction {};
		class processUranium {};		
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class impoundActionCiv {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class restrainActionCiv {};
		class seqScientist {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class gather {};
		class surrender {};
		class suicideBomb {};
		class defuseBomb {};	
	};
	
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class alarmHouse {};
		class lockHouse {};
	};
	
	class Drugs
	{
		file = "core\drugs";
		class useMarijuana {};
		class useHeroin {};
		class useCigarette {};
	}

	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};		
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class houseConfig {};
		
		//Clothing Store Configs
		class clothing_cop {};
		class clothing_bruce {};
		class clothing_reb {};
		class clothing_dive {};
		class clothing_kart {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class cellphone2 {};		
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
	};
	
	class Functions
	{
		file = "core\functions";
		class A3L_bankrobbery {};
		class A3L_PlantCharge {};
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
        class fatigueReset {};		
		class hudSetup {};
		class hudUpdate {};
		class heldScientist {};		
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class pbinblue {};
		class pbinred {};		
		class paintballout {};		
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class nuclearStrike {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
		class showProgress {};
		class stripDownPlayer {};
		class enablecollisionwith {};
  		class disablecollisionwith {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class attackCentral {};
		class AAN {};
		class pubAAN {};		
		class nukeScene {};
        class civInteractionMenu {};		
		class removeWeapons {};
		class jailMe {};
		class jail {};
		class kidnapping {};
		class kidnappingOff {};		
		class tazed {};		
		class freezePlayer {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class zoneCreator {};
		class demoChargeTimer {};
		class civLoadout {};
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class insurance {};
		class neonlightBlue {};	
		class neonlightRed {};
		class neonlightGreen {};
		class neonlightWhite {};
		class neonlightYellow {};
		class neonlightPurple {};
		class neonlightMulti {};		
		class neonBlue {};	
		class neonRed {};
		class neonGreen {};
		class neonWhite {};
		class neonYellow {};
		class neonPurple {};
		class neonMulti {};		
		class addVehicle2Chain {};	
	};
	
	class Cop
	{
		file = "core\cop";
		class copOpener {};
		class copMarkers {};
		class copLights {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copLoadout {};
		class ticketPaid {};
		class testIntox {};	
		class testIntoxClient {};
		class intoxTestReturn {};
		class fastRope {};
		class removeWeaponAction {};		
		class removeWeapons {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
	};
	
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class barrierCop {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class restrainCiv {};		
		class blastingCharge {};
		class defuseKit {};
		class multipass {};		
		class storageBox {};
		class RoadBlockWood {};
		class RoadBlockConc {};
		class RoadBlockRebel {};
		class RoadCone {};
		class RoadConeStrip {};
		class RoadConeB {};
		class RoadConeStripB {};
	};
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class calldialog {};
		class sendChannel {};		
	};
	
	class anstrich
	{
		file = "core\repaint";
		
		class RepaintMenu {};
		class Repaintcolor {};
		class RepaintVehicle {};		
	};
};