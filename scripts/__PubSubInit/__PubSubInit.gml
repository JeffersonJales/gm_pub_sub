function __PubSubInit() {
	__pub_sub_instance_alive = instance_exists(id)

	if(!__PubSubIsInited() && __pub_sub_instance_alive)
		__subscriptions = []
}