package chapter_seven.memento.components.interfaces
{
	import chapter_seven.memento.components.Memento;
	/**
	 * @author Ben Smith
	 */
	public interface IMemento
	{
		function setMemento( memento : Memento ) : void
		function makeMemento() : Memento
	}
}