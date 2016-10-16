package chapter_seven.iterator_pattern.iterators.concretes
{
   import chapter_seven.iterator_pattern.interfaces.IIterate;

   /**
    * @author Ben Smith
    */
   public interface IArrayIterator extends IIterate
   {
      function set agregate( arrayAggregate : Array ) : void
   }
}
