function PubSubFlush(){
	var subscribers, 
		subscription_ref,
		keys = ds_map_keys_to_array(global.__pub_sub_map)
	
	for(var i = 0; i < array_length(keys); i++){
		subscribers = __PubSubGetSubscribers(keys[i], false)
		
		for(var f = 0; f < ds_list_size(subscribers); f++){
			subscription_ref = subscribers[| f]
			
			if(!weak_ref_alive(subscription_ref) || !subscription_ref.ref.__alive)
				ds_list_delete(subscribers, f--)
		}
		
		if(ds_list_empty(subscribers)){
			ds_list_destroy(subscribers)
			ds_map_delete(global.__pub_sub_map, keys[i])
		}
	}
	
	__PubSubLog("FLUSHED")
}