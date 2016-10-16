package chapter_seven.command_pattern.components
{
   import chapter_seven.command_pattern.commanders.interfaces.ICommand;

   import flash.display.Sprite;
   import flash.events.MouseEvent;

   /**
    * @author Ben Smith
    */
   public class ReusableButton extends Sprite
   {
      private var _exitCommand : ICommand;
      private var _hoverCommand : ICommand;

      public function ReusableButton()
      {
         buttonMode = true;
         mouseChildren = false;
         addEventListener( MouseEvent.MOUSE_OVER , onHover )
         addEventListener( MouseEvent.MOUSE_OUT , onOut )
      }

      final public function get hoverCommand() : ICommand
      {
         return _hoverCommand;
      }

      final public function set hoverCommand( command : ICommand ) : void
      {
         _hoverCommand = command;
      }

      final public function get exitCommand() : ICommand
      {
         return _exitCommand;
      }

      final public function set exitCommand( command : ICommand ) : void
      {
         _exitCommand = command;
      }

      final private function onHover( me : MouseEvent ) : void
      {
         _hoverCommand.execute();
      }

      final private function onOut( me : MouseEvent ) : void
      {
         _exitCommand.execute();
      }
   }
}
