function __PubSubPublishEnqueue(event, data){
	ds_queue_enqueue(global.__pub_sub_publish_queue, new __PubSubPublishClass(event, data))
}