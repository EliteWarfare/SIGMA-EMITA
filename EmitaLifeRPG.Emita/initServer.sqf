/*
	
	==Emita Life RPG==

	File: initServer.sqf

	Author: Tonic

	Edited by Outlaw for Emita Life RPG
	
	Description:
	Starts the initialization of the server.
*/
if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\initEmita.sqf";

onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";

[8,true,true,12] execFSM "core\fsm\timeModule.fsm";