package com.ar.vpaid
{
	import com.ar.core.log.Context;
	import com.ar.core.log.Log;
	import com.ar.core.utils.IDisposable;
	import com.ar.core.utils.StringUtils;

	import flash.utils.Dictionary;

	/**
	 * Parser for createData and environmentData strings provided by VPAID initAd function.
	 *
	 * <VAST version="2.0">
	 *    ...
	 *    <AdParameters>
	 *       <![CDATA[ playerId=theID&environment=theEnvironment ]]>
	 *    </AdParameters>
	 *    ...
	 * </VAST>
	 *
	 * More info: http://www.iab.net/vpaid
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class VPAIDVarParser implements IDisposable
	{
		private var _dict:Dictionary;

		/**
		 * Creates a new instance of VPAIDVarParser.
		 */
		public function VPAIDVarParser( str:String )
		{
			_dict = new Dictionary();

			parse( str );
		}

		/**
		 * @private
		 */
		private function parse( str:String ):void
		{
			const pairs:Array = str.split( "&" );

			var i:int = -1;

			while( ++i < pairs.length )
			{
				const pair:Array = pairs[i].split( "=" );

				if( pair.length == 2 )
				{
					const key:String = StringUtils.trim( pair[0] );
					const val:String = StringUtils.trim( pair[1] );

					_dict[ key ] = val;

					Log.trace( Context.DEFAULT, this, "Set " + key + " : " + _dict[ key ] );
				}
				else
				{
					Log.warn( Context.DEFAULT, this, "No valid key value pair:", pair );
				}
			}
		}

		/**
		 * Returns the value for given key identifier.
		 */
		public function getValue( key:String ):String
		{
			return _dict[key];
		}

		/**
		 * Creates and returns a string representation of the VPAIDVarParser object.
		 */
		public function dispose():void
		{
			_dict = null;
		}

		/**
		 * Creates and returns a string representation of the VPAIDVarParser object.
		 */
		public function toString():String
		{
			return "[VPAIDVarParser]";
		}
	}
}