package chapter_seven.the_observer_pattern
{
   import chapter_seven.the_observer_pattern.interfaces.IObserve;
   import chapter_seven.the_observer_pattern.interfaces.ISubject;
   import chapter_seven.the_observer_pattern.observers.Observer;
   import chapter_seven.the_observer_pattern.subjects.Subject;
   import flash.display.Sprite;

   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      public function DocumentClass()
      {
         var subject : ISubject = new Subject( "FeZEC" );

         var observer_1 : IObserve = new Observer( "Andrew" );

         var observer_2 : IObserve = new Observer( "Mike" );

         var observer_3 : IObserve = new Observer( "Ed" );

         var observer_4 : IObserve = new Observer( "Lucas" );

         var observer_5 : IObserve = new Observer( "Edy" );

         subject.addObserver( observer_1 , null );
         subject.addObserver( observer_2 , null );
         subject.addObserver( observer_3 , null );
         subject.addObserver( observer_4 , null );
         subject.addObserver( observer_5 , null );
      }
   }
}
