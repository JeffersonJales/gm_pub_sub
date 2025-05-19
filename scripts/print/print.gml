function print(tag, str_message){
	static _date_init = date_current_datetime()
	
	var _date = date_inc_second(_date_init, current_time / 1000)
	var _hour = string_replace(string_format(date_get_hour(_date), 2, 0), " ", "0")
	var _min = string_replace(string_format(date_get_minute(_date), 2, 0), " ", "0")
	var _sec = string_replace(string_format(date_get_second(_date), 2, 0), " ", "0") 
	var _mili = string_replace(string_format(current_time % 1000, 3, 0), " ", "0")
	
	var _log = 
		"| " + 
		string(date_get_year(_date))	+ "-" +
		string(date_get_month(_date))	+ "-" +
		string(date_get_day(_date))		+ "  " + 
		_hour	+ ":" + 
		_min	+ ":" + 
		_sec	+ "." + 
		_mili	+  " | " + 
		tag		+ " | " + 
		str_message + " |"
	
	show_debug_message(_log)
}