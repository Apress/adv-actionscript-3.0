package chapter_six.the_builder_pattern
{
   import chapter_six.the_builder_pattern.builders.marioesque.MarioLevelEditor;
   import chapter_six.the_builder_pattern.builders.marioesque.abstraction.AbstractMarioEsqueLevelEditor;
   import chapter_six.the_builder_pattern.directors.marioesque.StageTwo;
   import chapter_six.the_builder_pattern.directors.marioesque.abstraction.AbstractMarioLevelDirector;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;


   /**
    * @author Ben Smith
    */
    public class DocumentClass extends Sprite
   {
      private var _bitmap : Bitmap;

      public function DocumentClass()
      {
         var stg : Stage = this.stage;
         stg.scaleMode = StageScaleMode.NO_SCALE;
         stg.align = StageAlign.TOP_LEFT;
         var levelEditor : AbstractMarioEsqueLevelEditor = new MarioLevelEditor();
         var director : AbstractMarioLevelDirector = new StageTwo( levelEditor );
         // LevelOne(levelEditor)
         _bitmap = new Bitmap( director.getLevel() );
         addChild( _bitmap );
      }
   }
}