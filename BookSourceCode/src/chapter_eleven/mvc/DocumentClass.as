package chapter_eleven.mvc
{
   import chapter_eleven.mvc.model.ConfigModel;
   import chapter_eleven.mvc.view.LeafView;
   import chapter_eleven.mvc.view.WindowView;

   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;

	/**
	 * @author Ben Smith
	 */
	public class DocumentClass extends Sprite
	{
		public function DocumentClass()
		{
			stage.scaleMode = StageScaleMode.EXACT_FIT;
			stage.align = StageAlign.TOP_LEFT;
			mouseEnabled = false;

			var cm : ConfigModel = new ConfigModel();
			
			cm.name = "Default_Text.txt"
			cm.xPos = Math.random() * this.stage.stageWidth;
			cm.yPos = Math.random() * this.stage.stageHeight;

			var windowView : WindowView = new WindowView( cm );
			addChild( windowView );
			windowView.addComponent( new LeafView( cm ) )
		}
	}
}
