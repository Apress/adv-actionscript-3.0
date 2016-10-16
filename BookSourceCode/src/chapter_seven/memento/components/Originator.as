package chapter_seven.memento.components
{
   import chapter_seven.memento.components.namespaces.originatorOnly;
   import chapter_seven.memento.components.util.FormField;

   /**
    * @author Ben Smith
    */
   public class Originator extends FormField
   {
      use namespace originatorOnly
      public function Originator()
      {
         super();
      }

      override protected function doMakeMemento() : Memento
      {
         var memento : Memento = new Memento()
         return memento
      }
   }
}
