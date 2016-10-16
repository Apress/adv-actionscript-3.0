package chapter_seven.the_observer_pattern.abstractions
{

	/**
	 * @author Ben Smith
	 */
	public class TwitterUser extends Object
	{
		private var _twitterName : String

		public function TwitterUser( userName : String )
		{
			_twitterName = userName
		}

		public function get twitterName() : String
		{
			return _twitterName;
		}

		public function set twitterName( twitterName : String ) : void
		{
			_twitterName = twitterName;
		}
	}
}
