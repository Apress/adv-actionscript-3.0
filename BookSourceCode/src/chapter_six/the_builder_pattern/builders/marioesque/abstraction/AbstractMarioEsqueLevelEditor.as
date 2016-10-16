package chapter_six.the_builder_pattern.builders.marioesque.abstraction
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import flash.geom.Rectangle;

	/**
	 * @author Ben Smith
	 */

   public class AbstractMarioEsqueLevelEditor
   {
      private var _bitmap : BitmapData;
      private var _backgroundColor : uint;
      private var _width : int;
      private var _height : int;
      private var _pt : Point;
      private var _tile : Shape;

      public function AbstractMarioEsqueLevelEditor()
      {
         _tile = new Shape();
         _pt = new Point( 0 , 0 );
      }

      final public function createMap() : void
      {
         bitmap = doCreateMap();
      }

      final public function getLevel() : BitmapData
      {
         return _bitmap;
      }

      final public function createStone( rect : Rectangle ) : void
      {
         addTile( doCreateStone() , rect );
      }

      final public function createSolidBrick( rect : Rectangle ) : void
      {
         addTile( doCreateSolidBrick() , rect );
      }

      final public function createBreakableBrick( rect : Rectangle ) : void
      {
         addTile( doCreateBreakableBrick() , rect );
      }

      final public function createMoneyBox( rect : Rectangle ) : void
      {
         addTile( doCreateMoneyBox() , rect );
      }

      final public function createCloud( rect : Rectangle ) : void
      {
         addTile( doCreateCloud() , rect );
      }

      final public function createHill( rect : Rectangle ) : void
      {
         addTile( doCreateHill() , rect );
      }

      final public function createBush( rect : Rectangle ) : void
      {
         addTile( doCreateBush() , rect );
      }

      final public function createCastle( rect : Rectangle ) : void
      {
         addTile( doCreateCastle() , rect );
      }

      final public function createPipe( rect : Rectangle ) : void
      {
         addTile( doCreatePipe() , rect );
      }

      final public function get width() : int
      {
         return _width;
      }

      final public function set width( width : int ) : void
      {
         _width = width;
      }

      final public function get height() : int
      {
         return _height;
      }

      final public function set height( height : int ) : void
      {
         _height = height;
      }

      final public function get backgroundColor() : uint
      {
         return _backgroundColor;
      }

      final public function set backgroundColor( backgroundColor : uint ) : void
      {
         _backgroundColor = backgroundColor;
      }

      final public function get bitmap() : BitmapData
      {
         return _bitmap;
      }

      final public function set bitmap( bitmap : BitmapData ) : void
      {
         _bitmap = bitmap;
      }

      protected function doCreateMap() : BitmapData
      {
         return new BitmapData( width , height , false , backgroundColor );
      }

      protected function doCreateStone() : DisplayObject
      {
         throw new IllegalOperationError( 'doCreateStone must be overridden' );
         return null;
      }

      protected function doCreateSolidBrick() : DisplayObject
      {
         throw new IllegalOperationError( 'doCreateSolidBrick must be  overridden' );
         return null;
      }

      protected function doCreateBreakableBrick() : DisplayObject
      {
         throw new IllegalOperationError('doCreateBreakableBrick must be overridden');
         return null;
      }

      protected function doCreateMoneyBox() : DisplayObject
      {
         throw new IllegalOperationError( 'doCreateMoneyBox must be overridden' );
         return null;
      }

      protected function doCreateCloud() : DisplayObject
      {
         throw new IllegalOperationError( 'doCreateCloud must be overridden' );
         return null;
      }

      protected function doCreateHill() : DisplayObject
      {
         throw new IllegalOperationError( 'doCreateHill must be overridden' );
         return null;
      }

      protected function doCreateBush() : DisplayObject
      {
         throw new IllegalOperationError( 'doCreateBush must be overridden' );
         return null;
      }

      protected function doCreateCastle() : DisplayObject
      {
         throw new IllegalOperationError( 'doCreateCastle must be overridden' );
         return null;
      }

      protected function doCreatePipe() : DisplayObject
      {
         throw new IllegalOperationError( 'doCreatePipe must be overridden' );
         return null;
      }

      private function addTile( dO : DisplayObject , rect : Rectangle ) : void
      {
         var sprite : BitmapData = snapShot( dO );
         _pt.x = rect.x;
         _pt.y = rect.y;
         if (rect.width > 0 || rect.height > 0)
         {
            sprite = tile( sprite , rect );
         }
         bitmap.copyPixels( sprite , sprite.rect , _pt );
      }

      private function snapShot( dO : DisplayObject ) : BitmapData
      {
         var snapshot : BitmapData = new BitmapData( dO.width, dO.height, true, 0 );
         snapshot.draw( dO );
         return snapshot;
      }

      private function tile( bmpd : BitmapData , rect : Rectangle ) : BitmapData
      {
         var _t : Shape = _tile;
         var g : Graphics = _t.graphics;
         g.clear();
         g.beginBitmapFill( bmpd , null , true , false );
         g.drawRect( 0 , 0 , rect.width , rect.height );
         g.endFill();
         return snapShot( _t );
      }
   }
}
