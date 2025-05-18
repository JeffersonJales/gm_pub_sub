function PubSubSubscribe(event, callback, once = false) {
    __PubSubInit()
    
	if(!__pub_sub_instance_alive){
		return 
	}
	
    var subscription_data = new __PubSubSubscriptionClass(callback, event, once)
    var weak_ref = weak_ref_create(subscription_data)
	
	array_push(__subscriptions, subscription_data)
    ds_list_add(__PubSubGetSubscribers(event), weak_ref)
	
	__PubSubLog("Instance::", id, "::Waiting for event::", event)
}