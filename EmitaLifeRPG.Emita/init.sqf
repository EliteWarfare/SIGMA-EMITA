/*

   ==Emita Life RPG==

   Author: Tonic

   Edited by Untouchable Studio [Code by OPTIX]

   Description: Blah blah blah!!!
*/
enableSaving [false, false];

player enableStamina false;

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Emita Life RPG v0.1";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\fn_statusBar.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

/* Emita Life Government system by OPTIX */
life_isGov = false;
[[player],"TON_fnc_govLogged",false,false] spawn life_fnc_mp;