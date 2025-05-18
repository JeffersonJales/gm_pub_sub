function __PubSubSubscriptionClass(callback, event, once) constructor {
    __callback = callback
	__event = event
	__alive = true
	__once = once
}