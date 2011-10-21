package uk.co.iameight.models.portfolio
{

	public class PortfolioEntry
	{
		private var _title:String;
		private var _description:String;
		private var _previewImageUrl:String;
		private var _fullImageUrl:String;

		public function PortfolioEntry(title:String, description:String, previewImageUrl:String, fullImageUrl:String)
		{
			this._title=title;
			this._description=description;
			this._previewImageUrl=previewImageUrl;
			this._fullImageUrl=fullImageUrl;
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

		public function get previewImageUrl():String
		{
			return _previewImageUrl;
		}

		public function set previewImageUrl(value:String):void
		{
			_previewImageUrl=value;
		}

		public function get fullImageUrl():String
		{
			return _fullImageUrl;
		}

		public function set fullImageUrl(value:String):void
		{
			_fullImageUrl=value;
		}
	}
}
