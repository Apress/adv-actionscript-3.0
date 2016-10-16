package chapter_seven.memento.components.util
{
   import chapter_seven.memento.components.Memento;
   import chapter_seven.memento.components.interfaces.IMemento;
   import chapter_seven.memento.components.namespaces.originatorOnly;

   import flash.errors.IllegalOperationError;
   import flash.text.TextField;

   /**
    * @author Ben Smith
    */
   public class FormField extends TextField implements IMemento
   {
      use namespace originatorOnly
      public function FormField()
      {
      }

      public function setMemento( memento : Memento ) : void
      {
         this.text = memento.string
         this.setSelection( memento.cursor , memento.cursor )
      }

      final public function makeMemento() : Memento
      {
         var memento : Memento = doMakeMemento()
         memento.string = this.text
         memento.cursor = this.caretIndex
         return memento
      }

      protected function doMakeMemento() : Memento
      {
         throw new IllegalOperationError( 'doMakeMomento must be overridden' )
         return null
      }
   }
}
