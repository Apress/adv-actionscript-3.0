package chapter_eleven.mvc.model
{
	/**
	 * @author Ben Smith
	 */
	public class ConfigModel extends AbstractModel
	{
		private var _name : String;
		private var _xPos : int;
		private var _yPos : int;

		public function ConfigModel()
		{
			super();
		}

		public function get name() : String
		{
			return _name;
		}

		public function set name( name : String ) : void
		{
			_name = name;
		}

		public function get xPos() : int
		{
			return _xPos;
		}

		public function set xPos( xPos : int ) : void
		{
			_xPos = xPos;
		}

		public function get yPos() : int
		{
			return _yPos;
		}

		public function set yPos( yPos : int ) : void
		{
			_yPos = yPos;
		}
	}
}
