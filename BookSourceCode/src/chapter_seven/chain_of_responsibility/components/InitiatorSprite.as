package chapter_seven.chain_of_responsibility.components
{
	import flash.events.MouseEvent;

	/**
	 * @author Ben Smith
	 */
	public class InitiatorSprite extends HandlerSprite
	{
		public function InitiatorSprite()
		{
			super();
			addEventListener( MouseEvent.MOUSE_OVER , onHover , false , 0 , true );
		}

		private function onHover( me : MouseEvent ) : void
		{
			this.forwardEvent( me )
		}
	}
}
