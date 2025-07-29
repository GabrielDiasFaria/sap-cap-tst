sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pt.posts.posts',
            componentId: 'PostsObjectPage',
            contextPath: '/Posts'
        },
        CustomPageDefinitions
    );
});