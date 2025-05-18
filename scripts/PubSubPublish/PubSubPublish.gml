function PubSubPublish(event, data = undefined) {
	__PubSubPublishEnqueue(event, data)
	__PubSubNotifySubscribers()
}