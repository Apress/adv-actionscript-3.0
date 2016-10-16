package chapter_seven.command_pattern.commanders.pauseable_commands
{
   import chapter_seven.command_pattern.commanders.pauseable_commands.abstractions.APauseableCommand;
   import chapter_seven.command_pattern.interfaces.IPause;

   /**
    * @author Ben Smith
    */
   public class ResumeCommand extends APauseableCommand
   {
      public function ResumeCommand( aReceiver : IPause ) : void
      {
         super( aReceiver );
      }

      override protected function doExecution() : void
      {
         _receiver.resume();
      }
   }
}