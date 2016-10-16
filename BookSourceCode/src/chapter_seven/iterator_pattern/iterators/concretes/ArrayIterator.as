package chapter_seven.iterator_pattern.iterators.concretes
{
   import chapter_seven.iterator_pattern.iterators.abstractions.AbstractIterator;

   /**
    * @author Ben Smith
    */
   public class ArrayIterator extends AbstractIterator
   {
      protected var _collection : Array;

      public function ArrayIterator( collection : Array )
      {
         _collection = collection;
      }

      override protected function doNext() : void
      {
         _cursor++;
      }

      override protected function doHasNext() : Boolean
      {
         return _cursor < (_collection.length );
      }

      override protected function doReset() : void
      {
         _cursor = 0;
      }

      override protected function doCurrentElement() : *
      {
         return _collection[_cursor]
      }
   }
}
