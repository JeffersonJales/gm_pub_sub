#macro PUB_SUB_LOG_TAG "PUB_SUB :: "
#macro PUB_SUB_LOG_PRINT_ENABLE true

#macro PUB_SUB_SUBSCRIPTION_VAR_NAME "__subscriptions"

global.__pub_sub_map = ds_map_create()
global.__pub_sub_publish_queue = ds_queue_create()
