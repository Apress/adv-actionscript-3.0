package chapter_seven.memento
{
   import chapter_seven.memento.components.Caretaker;
   import chapter_seven.memento.components.Originator;
   import chapter_seven.memento.components.util.FormField;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.text.TextFieldType;

	/**
	 * @author Ben Smith
	 */
	public class DocumentClass extends Sprite
	{
		var careTaker : Caretaker
		var ff : FormField

		public function DocumentClass()
		{
			stage.align = StageAlign.TOP_LEFT
			stage.scaleMode = StageScaleMode.NO_SCALE

			ff = new Originator()
			ff.width = 300;
			ff.height = 500;
			ff.type = TextFieldType.INPUT;
			ff.border = true;
			addChild( ff )

			careTaker = new Caretaker( Originator( ff ) )
		}
	}
}
