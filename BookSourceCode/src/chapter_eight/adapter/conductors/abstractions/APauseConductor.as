package chapter_eight.adapter.conductors.abstractions
{
   import chapter_eight.adapter.IPause;
   import chapter_seven.iterator_pattern.interfaces.IIterate;
   import chapter_seven.iterator_pattern.interfaces.IIterator;
   import flash.errors.IllegalOperationError;


   /**
    * @author Ben Smith
    */
   public class APauseConductor extends Object
   {
      private var _collection : IIterate
      private var _iterator : IIterator

      public function APauseConductor()
      {
         _collection = doCreateCollection()
      }

      final public function addElement( element : IPause ) : void
      {
         doAddElement( element )
      }

      final public function removeElement( element : IPause ) : void
      {
         doRemoveElement( element )
      }

      final public function pause() : void
      {
         doPause()
      }

      final public function resume() : void
      {
         doResume()
      }

      protected function doRemoveElement( element : IPause ) : void
      {
         _collection.remove( element )
      }

      protected function doAddElement( element : IPause ) : void
      {
         _collection.append( element )
      }

      protected function doCreateCollection() : IIterate
      {
         throw new IllegalOperationError( 'doCreateCollection must be overridden' )
         return null
      }

      protected function doPause() : void
      {
         _iterator = _collection.createIterator()

         while (_iterator.hasNext())
         {
       
            var pauseable : IPause = _iterator.currentElement()
            trace( pauseable )
            _iterator.next()
            pauseable.pause()
         }
      }

      protected  function doResume() : void
      {
         _iterator.reset()
         while (_iterator.hasNext())
         {
            var resumeable : IPause = _iterator.currentElement()
              trace( resumeable )
            _iterator.next()
            resumeable.resume()
         }
      }
   }
}
