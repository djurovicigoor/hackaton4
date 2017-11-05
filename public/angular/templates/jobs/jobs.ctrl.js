app.controller('JobsCtrl', function ($scope, $http, ROUTES, $cookies, $location, $rootScope) {

    $scope.jobs = [];
    $scope.categories = [];
    $scope.searchText = '';
    $scope.categoryName = '';
    $scope.searchApi = 'search/job';

    if ($cookies.get('token')) {
        $scope.searchApi = 'search/job/smart'
    }

    $scope.getJobs = function (page) {
        $http.post(ROUTES.api + $scope.searchApi, {page: page})
            .then(function (response) {
                $scope.jobs = response.data.data;
                angular.forEach($scope.jobs.data, function (job) {
                    job.catArray = [];
                    angular.forEach(job.category, function (category) {
                        angular.forEach(category.sub_categories, function (subcat) {
                            job.catArray.push(subcat.name);
                        });
                    });
                });
            }, function (error) {

            });
    };
    $scope.getJobs(1);
    $scope.searchOnDelay = function () {
        $scope.searchApi = 'search/job';
        $http.post(ROUTES.api + $scope.searchApi, {query: $scope.searchText + ' ' + $scope.categoryName})
            .then(function (response) {
                $scope.jobs = response.data.data;
                angular.forEach($scope.jobs.data, function (job) {
                    job.catArray = [];
                    angular.forEach(job.category, function (category) {
                        angular.forEach(category.sub_categories, function (subcat) {
                            job.catArray.push(subcat.name);
                        });
                    });
                });

            }, function (error) {

            });
    };

    $scope.getCategories = function() {
        $http.get(ROUTES.api + 'subcategory')
            .then(function (response) {
                $scope.categories = response.data.data;
            }, function (error) {

            });
    };
    $scope.getCategories();

    $scope.addCatName = function (catName) {

        $scope.categoryName = catName;
        $scope.searchOnDelay();
    };

    $scope.goToUrl = function (url) {
        $location.path(url);
    };

    if($rootScope.srch !== '' && $rootScope.srch !== undefined) {
        $scope.searchText = $rootScope.srch;
        $scope.searchOnDelay();
    }

});