package chapter_seven.command_pattern.commanders.pauseable_commands
{
   import chapter_seven.command_pattern.commanders.pauseable_commands.abstractions.APauseableCommand;
   import chapter_seven.command_pattern.interfaces.IPause;

   /**
    * @author Ben Smith
    */
   public class PauseCommand extends APauseableCommand
   {
    
      public function PauseCommand( aReceiver : IPause ) 
      {
   		 super(aReceiver)	
   	 }
 
      override protected function doExecution() : void
      {
         _receiver.pause();
      }
    
   }
}