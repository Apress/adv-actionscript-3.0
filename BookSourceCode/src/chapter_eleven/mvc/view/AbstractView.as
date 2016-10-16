package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.model.AbstractModel;
   import chapter_seven.the_observer_pattern.interfaces.IObserve;
   import flash.display.Sprite;



	/**
	 * @author Ben Smith
	 */
	public class AbstractView extends Sprite implements IObserve
	{
		protected var _mdl : AbstractModel

		public function AbstractView( mdl : AbstractModel=null )
		{
			if(mdl)
			this.mdl = mdl;
			
		}

		public function notify( str : String ) : void
		{
		}

		public function get mdl() : AbstractModel
		{
			return _mdl;
		}

		public function set mdl( mdl : AbstractModel ) : void
		{
			_mdl = mdl;
			_mdl.addObserver(this,null)
		}
		
	}
}
