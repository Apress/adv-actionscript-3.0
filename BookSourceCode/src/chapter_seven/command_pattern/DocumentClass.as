package chapter_seven.command_pattern
{
   import chapter_seven.command_pattern.commanders.pauseable_commands.PauseCommand;
   import chapter_seven.command_pattern.commanders.pauseable_commands.ResumeCommand;
   import chapter_seven.command_pattern.components.ReusableButton;
   import chapter_seven.command_pattern.interfaces.IPause;
   import flash.display.Sprite;


   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      var btn : ReusableButton

      public function DocumentClass()
      {
         var whateverPauseable : IPause = addChild(new SomeMovieClip()) as IPause;
			
         btn = addChild(new SomeButton()) as ReusableButton;
         btn.exitCommand = new ResumeCommand( whateverPauseable )
         btn.hoverCommand = new PauseCommand( whateverPauseable );
         btn.y=50;
      }
   }
}
