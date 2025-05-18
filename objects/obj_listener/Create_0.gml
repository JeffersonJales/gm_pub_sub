/// @description Subscribe
num = irandom_range(3,10)

PubSubSubscribe("EVENT_CLICK", function(data){
	show_debug_message("CLICK " + string(id) + " " + string(data))
	if( data > 4){
		show_debug_message(id)
		PubSubUnsubscribe("EVENT_CLICK")
		PubSubPublish("EVENT_DISABLE")
	}
	
	if(num % 3 == 0){
		instance_destroy()
		PubSubSubscribe("EVENT_RIGHT_CLICK", function(){
			show_debug_message("MAS EU FUI DESTRUIDO")	
		})
		show_debug_message("DESTROYED")
	}
}, irandom(1))

PubSubSubscribe("EVENT_DISABLE", function(){
	PubSubUnsubscribe("EVENT_DISABLE")
	PubSubUnsubscribe("EVENT_CLICK")
})