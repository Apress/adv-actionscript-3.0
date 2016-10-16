package chapter_six.the_builder_pattern.directors.marioesque.abstraction
{
   import chapter_six.the_builder_pattern.builders.marioesque.abstraction.AbstractMarioEsqueLevelEditor;
   import flash.display.BitmapData;


   /**
    * @author Ben Smith
    */
   public class AbstractMarioLevelDirector
   {
      protected var _builder : AbstractMarioEsqueLevelEditor

      public function AbstractMarioLevelDirector( builder : AbstractMarioEsqueLevelEditor )
      {
         _builder = builder;
      }

      public function getLevel() : BitmapData
      {
         return _builder.getLevel();
      }
   }
}
