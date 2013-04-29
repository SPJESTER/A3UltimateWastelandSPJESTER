
if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then 
{
	_day = "if (isServer) then
	{
		setDate [2012, 9, 1, 9, 0];

		_actualDate = dayzSetDate;
		_newDate = [2012, 9, 1, 9, 0];
		dayzSetDate = _newDate;
		publicVariable ""dayzSetDate"";

	};";
	[_day] execVM "Scripts\exec.sqf";
}
else
{
	_day = "

	setDate [date select 0, date select 1, date select 2, 9, 0];

	";
	[_day] execVM "Scripts\exec.sqf";
};

hint format ["Time is 9 AM"];
cutText [format["Time is 9 AM"], "PLAIN DOWN"];