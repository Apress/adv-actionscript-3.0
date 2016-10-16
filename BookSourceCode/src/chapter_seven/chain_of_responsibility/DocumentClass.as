package chapter_seven.chain_of_responsibility
{
   import chapter_seven.chain_of_responsibility.components.HandlerSprite;
   import chapter_seven.chain_of_responsibility.components.InitiatorSprite;
   import chapter_seven.chain_of_responsibility.components.NullHandler;
   import chapter_seven.chain_of_responsibility.components.abstraction.AbstractEventHandlerSprite;
   import flash.display.DisplayObject;
   import flash.display.Sprite;

	/**
	 * @author Ben Smith
	 */
	public class DocumentClass extends Sprite
	{
		public function DocumentClass()
		{
			var sprite_A : Sprite = new HandlerSprite();
			sprite_A.name = 'sprite_A';

			var sprite_B : AbstractEventHandlerSprite = new HandlerSprite();
			sprite_B.name = 'sprite_B';
			sprite_B.y = sprite_B.tall

			var child_A : AbstractEventHandlerSprite = new InitiatorSprite();
			child_A.name = 'childSprite_A';
			child_A.x = child_A.wide

			addChild( sprite_B );
			addChild( sprite_A );
			sprite_A.addChild( DisplayObject( child_A ) );

			child_A.addHandler( sprite_B );
			// pass sprite_B ass the successor of child_A
			sprite_B.addHandler( new NullHandler() );
			// pass NullHandler ass the successor of sprite_B;
		}
	}
}
