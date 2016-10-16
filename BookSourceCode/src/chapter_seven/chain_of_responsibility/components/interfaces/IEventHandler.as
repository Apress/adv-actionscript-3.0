package chapter_seven.chain_of_responsibility.components.interfaces {
	import flash.events.Event;

	/**
	 * @author Ben Smith
	 */
	public interface IEventHandler {
		function addHandler(handler:IEventHandler) : void;
		function forwardEvent(event : Event) : void;
	}
}
