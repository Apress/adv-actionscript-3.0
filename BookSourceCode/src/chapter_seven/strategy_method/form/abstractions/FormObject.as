package chapter_seven.strategy_method.form.abstractions
{
   import chapter_seven.strategy_method.form.FormPacket;
   import flash.display.Sprite;


	/**
	 * @author Ben Smith
	 */
	public class FormObject extends Sprite
	{
		private var _packet : FormPacket

		public function FormObject()
		{
			_packet = new FormPacket();
		}

		public function resetData() : void
		{
		}

		public function get packet() : FormPacket
		{
			return _packet;
		}
	}
}
