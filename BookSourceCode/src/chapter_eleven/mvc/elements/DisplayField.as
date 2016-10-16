package chapter_eleven.mvc.elements
{
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;

	/**
	 * @author Ben Smith
	 */
	public class DisplayField extends TextField
	{
		public function DisplayField()
		{
			super()
			this.autoSize = TextFieldAutoSize.CENTER;
			this.height = 10;
			this.width = 1;
			this.embedFonts = false;
			display()
		}

		public function rename() : void
		{
			var end : int = this.text.indexOf( '.' )
			this.type = TextFieldType.INPUT
			this.selectable = true
			this.setSelection( -1 , (end > -1) ? end : text.length )
			border = true
		}

		public function display() : void
		{
			this.type = TextFieldType.DYNAMIC
			this.selectable = false
			border = false
		}
	}
}
