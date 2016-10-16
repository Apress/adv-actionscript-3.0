package chapter_six.the_builder_pattern.directors.marioesque
{
   import chapter_six.the_builder_pattern.builders.marioesque.abstraction.AbstractMarioEsqueLevelEditor;
   import chapter_six.the_builder_pattern.directors.marioesque.abstraction.AbstractMarioLevelDirector;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;



	/**
	 * @author Ben Smith
	 */
	   public class StageTwo extends AbstractMarioLevelDirector
   {
      private const _width : int = 400;
      private const _height : int = 300;
      private var rect : Rectangle = new Rectangle( 0 , 0 , 0 , 0 );

      public function StageTwo( builder : AbstractMarioEsqueLevelEditor )
      {
         super( builder );
      }

      public  override  function getLevel() : BitmapData
      {
         _builder.width = _width;
         _builder.height = _height;
         _builder.backgroundColor = 0x0000FF;

         _builder.createMap();
         buildPipes();
         buildFloor();

         buildClouds();
         buildStairs();
         return _builder.getLevel();
      }

  

      private function buildStairs() : void
      {
         var totalWide : int = _width;
         var floorTall : int = _height - 28 * 2;
         var row : int = 6;
         var col : int = 1;
         while (--row)
         {
            var dist : int = totalWide - row * 28;
            assignRect( dist , floorTall - col * 28 , row * 28 , 28 );
            _builder.createStone( rect );
            col++;
         }
      }

      private function buildPipes() : void
      {
         assignRect( 50 , _height - 28 * 2 - 65 );
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
         assignRect( 40 , 40 );
         _builder.createCloud( rect );
         assignRect( 400 , 30 );
         _builder.createCloud( rect );
      }

      private function assignRect( x:int = 0, y:int = 0, w:int = 0, h:int = 0 ) : void
      {
         rect.x = x;
         rect.y = y;
         rect.width = w;
         rect.height = h;
      }
   }
}
