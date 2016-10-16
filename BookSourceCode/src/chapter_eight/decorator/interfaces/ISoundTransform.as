package chapter_eight.decorator.interfaces
{
	/**
	 * @author Ben Smith
	 */
	public interface ISoundTransform
	{
		function get leftToLeft() : Number;
		function set leftToLeft( leftToLeft : Number ) : void;
		function get leftToRight() : Number;
		function set leftToRight( leftToRight : Number ) : void;
		function get pan() : Number;
		function set pan( panning : Number ) : void;
		function get rightToLeft() : Number;
		function set rightToLeft( rightToLeft : Number ) : void;
		function get rightToRight() : Number;
		function set rightToRight( rightToRight : Number ) : void;
		function get volume() : Number;
		function set volume( volume : Number ) : void;
	}
}
