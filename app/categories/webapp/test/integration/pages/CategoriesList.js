sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pt.cap.categories.categories',
            componentId: 'CategoriesList',
            contextPath: '/Categories'
        },
        CustomPageDefinitions
    );
});