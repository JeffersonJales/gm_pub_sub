function __PubSubPublishDequeue(){
	return ds_queue_dequeue(global.__pub_sub_publish_queue)
}