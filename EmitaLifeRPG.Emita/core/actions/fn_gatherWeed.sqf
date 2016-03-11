/*
gather cotton
*/
private["_sum"];
_sum = ["cannabis",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;




if(_sum > 0) then
{
disableUserInput true;
life_action_inUse = true;

titleText["Gathering Weed!","PLAIN"];
titleFadeOut 5;


_cme = 2;

_myposy = getPos player;

while {true} do {

			if (vehicle player == player) then 
			{
				player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
				waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
			};
			sleep 2;


	_cme = _cme + 1;
	if(_cme > 4) exitwith { 
		if(([true,"cannabis",1] call life_fnc_handleInv)) then
		{
		hint "You gathered 1 bag of Cannabis!";
		}; 
	};

	if( player distance _myposy > 3 ) exitwith { 
			titleText["You moved to far and failed gathering","PLAIN"];
	};

};

} else {
titleText["You are full.","PLAIN"];
titleFadeOut 5;	
};


disableUserInput false;
life_action_inUse = false;