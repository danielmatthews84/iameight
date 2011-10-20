package uk.co.iameight.contexts
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	import uk.co.iameight.view.components.mainView.MainView;
	import uk.co.iameight.view.components.mainView.NavigationTree;
	import uk.co.iameight.view.mediators.MainViewMediator;
	import uk.co.iameight.view.mediators.NavigationTreeMediator;
	
	public class ApplicationContext extends Context
	{
		public function ApplicationContext()
		{
			super();
		}
		
		override public function startup():void
		{
			
			// Commands
			
			// Injectors
			
			// Mediators
			mediatorMap.mapView(MainView, MainViewMediator);
			mediatorMap.mapView(NavigationTree, NavigationTreeMediator);
		}
	}
}