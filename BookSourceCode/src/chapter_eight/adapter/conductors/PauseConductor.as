package chapter_eight.adapter.conductors
{
   import chapter_eight.adapter.conductors.abstractions.APauseConductor;
   import chapter_seven.iterator_pattern.collections.concretes.DictionaryCollection;
   import chapter_seven.iterator_pattern.interfaces.IIterate;

	/**
	 * @author Ben Smith
	 */
	public class PauseConductor extends APauseConductor
	{
		public function PauseConductor()
		{
			super();
		}

		override protected function doCreateCollection() : IIterate
		{
			return new DictionaryCollection()
		}
	}
}
