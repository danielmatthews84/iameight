package uk.co.iameight.commands.portfolio
{
	import org.robotlegs.mvcs.Command;

	import uk.co.iameight.events.portfolio.PortfolioEvent;
	import uk.co.iameight.services.portfolio.IPortfolioService;

	public class LoadPortfolioCommand extends Command
	{
		[Inject]
		public var event:PortfolioEvent;

		[Inject]
		public var portfolioService:IPortfolioService;

		public function LoadPortfolioCommand()
		{
			super();
		}

		override public function execute():void
		{
			portfolioService.loadPortfolio();
		}
	}
}