package chapter_eight.adapter.adapters
{
   import chapter_eight.adapter.adapters.abstractions.AMinimalStopPlayToPauseResume;
   import chapter_eight.decorator.concretes.PauseableAudibleDecorator;
	/**
	 * @author Ben Smith
	 */
	public class AudioDecoratorIPauseAdapter extends AMinimalStopPlayToPauseResume
	{
		public function AudioDecoratorIPauseAdapter( startStop : PauseableAudibleDecorator )
		{
			super( startStop );
		}
	}
}
