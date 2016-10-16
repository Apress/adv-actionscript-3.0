package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.controller.AbstractController;
   import chapter_eleven.mvc.controller.ComponentRenamerController;
   import chapter_eleven.mvc.elements.DisplayField;
   import chapter_eleven.mvc.model.ConfigModel;

   import flash.display.Bitmap;
   import flash.events.MouseEvent;

	/**
	 * @author Ben Smith
	 */
	public class LeafView extends OSComponent
	{
	
		private var embeddedClass : Class;

		public function LeafView( mdl : ConfigModel = null )
		{
			super( mdl );

			_representation = createIcon()
			_field = createDisplayField()
			this.x = mdl.xPos
			this.y = mdl.yPos
			addChild( _representation )
			_field.text = mdl.name
			_field.y = this.height + PADDING
			_field.x = (this.width - _field.textWidth) * .5;
			_field.addEventListener( MouseEvent.MOUSE_DOWN , dispatch )
			_field.addEventListener( MouseEvent.MOUSE_UP , dispatch )
			addChild( _field )
			_strategy = createDefaultController()
		}

		protected function createDisplayField() : DisplayField
		{
			return new DisplayField()
		}

		protected function createIcon() : Bitmap
		{
			return new Bitmap(new FileImage())
		}

		override protected function createDefaultController() : AbstractController
		{
			return new ComponentRenamerController( _mdl , this )
		}
	}
}
