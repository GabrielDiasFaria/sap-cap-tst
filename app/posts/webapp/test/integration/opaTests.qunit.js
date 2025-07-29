sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pt/posts/posts/test/integration/FirstJourney',
		'pt/posts/posts/test/integration/pages/PostsList',
		'pt/posts/posts/test/integration/pages/PostsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PostsList, PostsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pt/posts/posts') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePostsList: PostsList,
					onThePostsObjectPage: PostsObjectPage
                }
            },
            opaJourney.run
        );
    }
);