component
	extends = "TestCase"
	output = false
	hint = "I test the QueryHelper component."
	{


	// --- 
	// LIFECYCLE METHODS.
	// ---


	public void function setup() {

		queryHelper = new lib.QueryHelper( buildFriendsQuery() );

	}


	public void function teardown() {
		
		// ...

	}


	// ---
	// TEST METHODS.
	// ---


	public void function testThatQueryHelperCanBeInitialized() {

		var queryHelper = new lib.QueryHelper();

	}


	public void function testThatQueryHelperCanBeInitializedWithQuery() {

		// NOTE: Assumes the use of "setup()" to build query.
		assert( isQuery( queryHelper.getQuery() ) );

	}


	// ---
	// PRIVATE METHODS.
	// ---


	private query function buildFriendsQuery() {

		var friends = queryNew( "" );

		queryAddColumn( 
			friends,
			"id",
			"cf_sql_integer",
			[ 1, 2, 3, 4, 5 ]
		);

		queryAddColumn(
			friends,
			"name",
			"cf_sql_varchar",
			[ "Sarah", "Joanna", "Kim", "Heather", "Tricia" ]
		);

		return( friends );

	}


}