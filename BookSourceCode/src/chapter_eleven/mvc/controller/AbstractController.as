package chapter_eleven.mvc.controller
{
   import chapter_eleven.mvc.model.AbstractModel;
   import chapter_eleven.mvc.view.AbstractView;

	

	/**
	 * @author Ben Smith
	 */
	public class AbstractController extends Object
	{
		protected var _mdl : AbstractModel;
		protected var _view : AbstractView;

		public function AbstractController( mdl : AbstractModel=null , view : AbstractView=null )
		{
			_mdl = mdl;
			_view = view;
		}

		public function get mdl() : AbstractModel
		{
			return _mdl;
		}

		public function set mdl( mdl : AbstractModel ) : void
		{
			_mdl = mdl;
		}

		public function get view() : AbstractView
		{
			return _view;
		}

		public function set view( view : AbstractView ) : void
		{
			_view = view;
		}
	}
}
