function __PubSubGetSubscribers(event, create = true){
    var subscribers = global.__pub_sub_map[? event]
    
    if(subscribers == undefined && create){
        subscribers = ds_list_create()
        global.__pub_sub_map[? event] = subscribers
    }
        
    return subscribers
}