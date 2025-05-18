function __PubSubNotifySubscribers(){
	var _publish_data = __PubSubPublishDequeue()
	
	if(_publish_data == undefined){
		return undefined
	}
	
	var _subscription_ref, 
		_subscribers = __PubSubGetSubscribers(_publish_data.__event),
		_execute_callback = true,
		_remove_sub = false
		
	__PubSubLog("PUBLISHING :: EVENT: ", _publish_data.__event, " :: DATA: ", _publish_data.__data)
	
    for(var i = 0; i < ds_list_size(_subscribers); i++){
		_subscription_ref = _subscribers[| i]
		_remove_sub = false
		_execute_callback = weak_ref_alive(_subscription_ref) && _subscription_ref.ref.__alive

		if(_execute_callback){
			_subscription_ref.ref.__callback(_publish_data.__data)
			_remove_sub = _subscription_ref.ref.__once
		}
		
		if(!_execute_callback || _remove_sub){
			ds_list_delete(_subscribers, i--)
		}
		
    }
	
	__PubSubNotifySubscribers()
}