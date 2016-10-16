package chapter_six.the_builder_pattern.directors.marioesque
{
   import chapter_six.the_builder_pattern.builders.marioesque.abstraction.AbstractMarioEsqueLevelEditor;
   import chapter_six.the_builder_pattern.directors.marioesque.abstraction.AbstractMarioLevelDirector;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;


   /**
    * @author Ben Smith
    */
   public class LevelOne extends AbstractMarioLevelDirector
   {
      private const _width : int = 400;
      private const _height : int = 300;
      private var rect : Rectangle = new Rectangle( 0 , 0 , 0 , 0 );

      public function LevelOne( builder : AbstractMarioEsqueLevelEditor )
      {
         super( builder );
      }

      public override  function getLevel() : BitmapData
      {
         _builder.width = _width;
         _builder.height = _height;
         _builder.backgroundColor = 0x0000FF;
         _builder.createMap();
         buildPipes();
         buildFloor();
         buildScenicBushes();
         buildClouds();

         buildMoneyBox();
         buildScenicBricks();
         return _builder.getLevel();
      }

      private function buildScenicBushes() : void
      {
         assignRect( 100 , _height - 28 * 2 - 32 );
         _builder.createBush( rect );
      }

      private function buildMoneyBox() : void
      {
         assignRect( 50 , _height - 51.25 - 95 );
         _builder.createMoneyBox( rect );
      }

      private function buildScenicBricks() : void
      {
         assignRect( 50 - 28 , _height - 51.25 - 95 );
         _builder.createBreakableBrick( rect );
         assignRect( 50 + 28 , _height - 51.25 - 95 );
         _builder.createBreakableBrick( rect );
      }

      private function buildPipes() : void
      {
         assignRect( 250 , _height - 28 * 2 - 65 );
         _builder.createPipe( rect );
      }

      private function buildFloor() : void
      {
         assignRect( 0 , _height - 56 , _width , _height - 56 );
         _builder.createSolidBrick( rect );
      }

      private function buildClouds() : void
      {
         assignRect( 0 , 40 );
         _builder.createCloud( rect );
         assignRect( 200 );
         _builder.createCloud( rect );
      }

      private function assignRect( x : int = 0 , y : int = 0 , w : int = 0 , h : int = 0 ) : void
      {
         rect.x = x;
         rect.y = y;
         rect.width = w;
         rect.height = h;
      }
   }
}
