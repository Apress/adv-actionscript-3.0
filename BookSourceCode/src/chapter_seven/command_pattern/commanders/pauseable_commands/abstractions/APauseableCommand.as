package chapter_seven.command_pattern.commanders.pauseable_commands.abstractions
{
   import chapter_seven.command_pattern.commanders.interfaces.ICommand;
   import chapter_seven.command_pattern.interfaces.IPause;

   import flash.errors.IllegalOperationError;

   /**
    * @author Ben Smith
    */
   public class APauseableCommand implements ICommand
   {
      protected var _receiver : IPause

      public function APauseableCommand( aReceiver : IPause ) : void
      {
         _receiver = aReceiver;
      }

      final public function execute() : void
      {
         doExecution();
      }

      final public function set receiver( aReceiver : IPause ) : void
      {
         _receiver = aReceiver;
      }

      final public function get receiver() : IPause
      {
         return _receiver ;
      }

      protected function doExecution() : void
      {
         throw new IllegalOperationError( 'doExecution must be overridden' );
      }
   }
}
