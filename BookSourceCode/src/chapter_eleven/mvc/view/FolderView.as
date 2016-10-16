package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.controller.AbstractController;
   import chapter_eleven.mvc.controller.ComponentRenamerController;
   import chapter_eleven.mvc.elements.DisplayField;
   import chapter_eleven.mvc.model.ConfigModel;

   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;

   /**
    * @author Ben Smith
    */
   public class FolderView extends AbstractFolder
   {
 

      public function FolderView( mdl : ConfigModel = null )
      {
         super( mdl );
        

         _field.text = mdl.name
         _field.x = (this.width - _field.textWidth) * .5;
         _field.y = this.height + PADDING;
         _field.addEventListener( MouseEvent.MOUSE_DOWN , dispatch );
         _field.addEventListener( MouseEvent.MOUSE_UP , dispatch );
         addChild( _field );
      }

      override protected function createDefaultController() : AbstractController
      {
         return new ComponentRenamerController( _mdl , this )
      }

      override protected function createDisplayField() : DisplayField
      {
         return new DisplayField()
      }

      override protected function createIcon() : Bitmap
      {
         return new Bitmap(new FolderImage());
      }
   }
}
