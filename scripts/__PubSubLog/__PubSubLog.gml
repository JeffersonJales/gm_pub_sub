// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function __PubSubLog(){
	if(!PUB_SUB_LOG_PRINT_ENABLE){
		return	
	}
	
	var log = ""
		
	for(var i = 0; i < argument_count; i++){
		log += string(argument[i])
	}
	
	print(PUB_SUB_LOG_TAG, log)
}	