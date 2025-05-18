function PubSubUnsubscribe(event) {
	if(!__PubSubIsInited()){
		return 
	}
		
	for(var i = 0; i < array_length(__subscriptions); i++){
		if(__subscriptions[i].__event == event){
			__subscriptions[i].__alive = false
			array_delete(__subscriptions, i, 1)
			break
		}
	}
}