package chapter_seven.iterator_pattern
{
   import chapter_seven.iterator_pattern.collections.abstractions.AbstractArrayCollection;
   import chapter_seven.iterator_pattern.collections.concretes.ArrayCollection;
   import chapter_seven.iterator_pattern.interfaces.IIterator;
   import chapter_seven.iterator_pattern.iterators.concretes.ArrayIterator;
   import flash.display.Sprite;


   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      public function DocumentClass()
      {
         var arrayCollection : AbstractArrayCollection = new ArrayCollection()
         arrayCollection.append( 1 )
         arrayCollection.append( 2 )
         arrayCollection.append( 3 )
         arrayCollection.append( 4 )
         arrayCollection.append( 5 )

         var it : IIterator = arrayCollection.createIterator();

         do
         {
            trace( it.currentElement() );
            it.next();
         }
         while (it.hasNext())

         arrayCollection.each( test )
         var ar : Array = [ 1 , 2 , 3 , 4 , 5 , 6 ]

         var itr : IIterator = new ArrayIterator( ar )
         do
         {
            trace( itr.currentElement() + ' via AS3.0 Array ' );
            itr.next();
         }
         while (itr.hasNext())
      }

      function test( element : int , index : int , arrayCollection : Array ) : Boolean
      {
         trace( element , index , arrayCollection )
         return true
      }
   }
}
