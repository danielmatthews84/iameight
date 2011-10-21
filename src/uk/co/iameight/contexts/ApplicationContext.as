package uk.co.iameight.contexts
{
	import flash.display.DisplayObjectContainer;

	import org.robotlegs.mvcs.Context;

	import uk.co.iameight.commands.portfolio.LoadPortfolioCommand;
	import uk.co.iameight.events.portfolio.PortfolioEvent;
	import uk.co.iameight.services.portfolio.IPortfolioService;
	import uk.co.iameight.services.portfolio.PortfolioService;
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
			commandMap.mapEvent(PortfolioEvent.LOAD, LoadPortfolioCommand, PortfolioEvent);

			// Injectors
			injector.mapClass(IPortfolioService, PortfolioService);

			// Mediators
			mediatorMap.mapView(MainView, MainViewMediator);
			mediatorMap.mapView(NavigationTree, NavigationTreeMediator);

			dispatchEvent(new PortfolioEvent(PortfolioEvent.LOAD));
		}
	}
}