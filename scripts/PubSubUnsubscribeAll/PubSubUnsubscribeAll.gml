function PubSubUnsubscribeAll() {
	if(!__PubSubIsInited()){
		return
	}
	
	for(var i = 0; i < array_length(__subscriptions); i++){
		__subscriptions[i].__alive = false
	}
	
	__subscriptions = []
}