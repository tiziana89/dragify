class Error

	constructor: (@dragify) ->

		# Check if the error need to be blocked
		@block = !@dragify.options?.error


	error: (id) ->

		# Return dragify to allow chaining
		return if @block

		# Prefix all error messages with the MiniEventEmitter text
		msg = "Dragify ~ "

		if id is 1 then msg += "First argument 'Containers' must be an array"
		if id is 2 then msg += "Dragify was unable to find the correct offset, please report an issue on https://github.com/hawkerboy7/dragify/issues/new. Please provide an example in which this error occurs"

		# Log the message to the console (as a warning if available)
		if console.warn then console.warn msg else console.log msg



module.exports = Error