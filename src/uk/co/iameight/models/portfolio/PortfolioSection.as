package uk.co.iameight.models.portfolio
{
	import mx.collections.ArrayCollection;

	public class PortfolioSection
	{
		private var _title:String;
		private var _description:String;
		private var _entries:ArrayCollection=new ArrayCollection();

		public function PortfolioSection(title:String, description:String)
		{
			this._title=title;
			this._description=description;
		}

		public function get title():String
		{
			return _title;
		}

		public function set title(value:String):void
		{
			_title=value;
		}

		public function get description():String
		{
			return _description;
		}

		public function set description(value:String):void
		{
			_description=value;
		}

		public function get entries():ArrayCollection
		{
			return _entries;
		}

		public function set entries(value:ArrayCollection):void
		{
			_entries=value;
		}

		public function addEntry(value:PortfolioEntry):void
		{
			if (!_entries.contains(value))
				_entries.addItem(value);
		}
	}
}
