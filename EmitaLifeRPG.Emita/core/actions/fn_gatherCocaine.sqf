/*
gather cotton
*/
private["_sum"];
_sum = ["cocaine",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;




if(_sum > 0) then
{
disableUserInput true;
life_action_inUse = true;

titleText["Gathering Cocaine!","PLAIN"];
titleFadeOut 5;


_cme = 2;

_myposy = getPos player;

while {true} do {

			if (vehicle player == player) then 
			{
				player playMove "CL3_anim_drill_short";
				waitUntil{animationState player != "CL3_anim_drill_short";};
			};
			sleep 2;


	_cme = _cme + 1;
	if(_cme > 4) exitwith { 
		if(([true,"cocaine",1] call life_fnc_handleInv)) then
		{
		hint "You gathered 1 bag of Cocaine!";
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