package chapter_seven.strategy_method.form
{
	/**
	 * @author Ben Smith
	 */
	public class FormPacket extends Object
	{
		protected var _hasErrors : Boolean;
		protected var _isRequired : Boolean;
		protected var _errors : Array;
		protected var _data : String;
		protected var _prompt : String;

		public function FormPacket()
		{
			_isRequired = true
			_hasErrors = false
			_data = ""
			_prompt = "Do it"
		}

		public function get data() : String
		{
			return _data;
		}

		public function set data( data : String ) : void
		{
			_data = data;
		}

		public function get errors() : Array
		{
			return _errors;
		}

		public function set errors( error : Array ) : void
		{
			if (_errors == null)
			{
				_errors = error
			}
		}

		public function addError( error : String ) : void
		{
			if (_errors == null)
			{
				_errors = []
			}
			_errors[_errors.length] = error
		}

		public function get hasErrors() : Boolean
		{
			return _hasErrors;
		}

		public function set hasErrors( hasErrors : Boolean ) : void
		{
			_hasErrors = hasErrors;
		}

		public function get isRequired() : Boolean
		{
			return _isRequired;
		}

		public function set isRequired( isRequired : Boolean ) : void
		{
			_isRequired = isRequired;
		}

		public function get prompt() : String
		{
			return _prompt;
		}

		public function set prompt( prompt : String ) : void
		{
			_prompt = prompt;
		}
	}
}
