private ["_WaterHoleArray","_ShuffleArray"];

_WaterHoleArray = [
	"infectiousWaterholes\BlackLake.sqf",
	"infectiousWaterholes\Gvozdno.sqf",
	"infectiousWaterholes\Gvozdno.sqf",
	"infectiousWaterholes\Kabanino.sqf",
	"infectiousWaterholes\Kopyto.sqf",
	"infectiousWaterholes\Mogilevka.sqf",
	"infectiousWaterholes\Nadezdinho.sqf",
	"infectiousWaterholes\NorthNadezdinho.sqf",
	"infectiousWaterholes\NorthPusta.sqf",
	"infectiousWaterholes\NorthTopolka.sqf",
	"infectiousWaterholes\Novy.sqf",
	"infectiousWaterholes\PobedaDam.sqf",
	"infectiousWaterholes\Pogorevka.sqf",
	"infectiousWaterholes\Polana.sqf",
	"infectiousWaterholes\Prud.sqf",
	"infectiousWaterholes\Sosnovy.sqf",
	"infectiousWaterholes\Stary.sqf",
	"infectiousWaterholes\Topolka.sqf",
	"infectiousWaterholes\Vysota.sqf",
	"infectiousWaterholes\WillowLake.sqf"
];

_ShuffleArray = {
	private ["_ar","_rand_array","_rand"];
	_ar = _this;
	_rand_array = [];
	while {count _ar > 0} do {
		_rand = (count _ar);
		_rand = floor (random _rand);
		_rand_array set [count _rand_array, _ar select _rand];
		_ar set [_rand, "randarray_del"];
		_ar = _ar - ["randarray_del"];
		sleep 0.001;
	};
	_rand_array;
};

_infectedWaterHoles = _WaterHoleArray call _ShuffleArray;

_i = 0;
_t = 0;
_activeArray = [];

{
	if ((random 1) < 0.5) then {
		[] execVM _x;
		_activeArray set [count _activeArray, _x]; // set  
		_i = _i + 1;
	};
	_t = _t + 1;
	sleep 0.01;
}count _infectedWaterHoles;

diag_log format["Max: %1, Spawned: %2, Active: %3",_t,_i,_activeArray];

/*
_rnd = round (random 3);

switch (_rnd) do
{
	case 0:
	{
		[] execVM "poi\InfectedWaterholes\BlackLake.sqf";
		[] execVM "poi\InfectedWaterholes\Gvozdno.sqf";
		[] execVM "poi\InfectedWaterholes\Kopyto.sqf";
		[] execVM "poi\InfectedWaterholes\Nadezdinho.sqf";
		[] execVM "poi\InfectedWaterholes\NorthPusta.sqf";
		[] execVM "poi\InfectedWaterholes\Novy.sqf";
		[] execVM "poi\InfectedWaterholes\Pogorevka.sqf";
		[] execVM "poi\InfectedWaterholes\Prud.sqf";
		[] execVM "poi\InfectedWaterholes\Stary.sqf";
		[] execVM "poi\InfectedWaterholes\Vysota.sqf";
		[] execVM "poi\InfectedWaterholes\WillowLake.sqf";
	};
	case 1:
	{
		[] execVM "poi\InfectedWaterholes\Dobryy.sqf";
		[] execVM "poi\InfectedWaterholes\Kabanino.sqf";
		[] execVM "poi\InfectedWaterholes\BlackLake.sqf";
		[] execVM "poi\InfectedWaterholes\Mogilevka.sqf";
		[] execVM "poi\InfectedWaterholes\NorthNadezdinho.sqf";
		[] execVM "poi\InfectedWaterholes\NorthTopolka.sqf";
		[] execVM "poi\InfectedWaterholes\PobedaDam.sqf";
		[] execVM "poi\InfectedWaterholes\Polana.sqf";
		[] execVM "poi\InfectedWaterholes\Sosnovy.sqf";
		[] execVM "poi\InfectedWaterholes\Topolka.sqf";
		[] execVM "poi\InfectedWaterholes\WillowLake.sqf";
	};
	case 2:
	{
		[] execVM "poi\InfectedWaterholes\BlackLake.sqf";
		[] execVM "poi\InfectedWaterholes\Dobryy.sqf";
		[] execVM "poi\InfectedWaterholes\Gvozdno.sqf";
		[] execVM "poi\InfectedWaterholes\Kabanino.sqf";
		[] execVM "poi\InfectedWaterholes\Kopyto.sqf";
		[] execVM "poi\InfectedWaterholes\Mogilevka.sqf";
		[] execVM "poi\InfectedWaterholes\Nadezdinho.sqf";
		[] execVM "poi\InfectedWaterholes\NorthNadezdinho.sqf";
		[] execVM "poi\InfectedWaterholes\NorthPusta.sqf";
	};
	case 3:
	{
		[] execVM "poi\InfectedWaterholes\NorthTopolka.sqf";
		[] execVM "poi\InfectedWaterholes\Novy.sqf";
		[] execVM "poi\InfectedWaterholes\PobedaDam.sqf";
		[] execVM "poi\InfectedWaterholes\Pogorevka.sqf";
		[] execVM "poi\InfectedWaterholes\Polana.sqf";
		[] execVM "poi\InfectedWaterholes\Prud.sqf";
		[] execVM "poi\InfectedWaterholes\Sosnovy.sqf";
		[] execVM "poi\InfectedWaterholes\Stary.sqf";
		[] execVM "poi\InfectedWaterholes\Topolka.sqf";
		[] execVM "poi\InfectedWaterholes\Vysota.sqf";
		[] execVM "poi\InfectedWaterholes\WillowLake.sqf";
	};
};
*/