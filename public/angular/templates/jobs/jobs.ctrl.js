app.controller('JobsCtrl', function ($scope, $http, ROUTES, $cookies, $location, $rootScope) {

    $scope.jobs = [];
    $scope.categories = [];
    $scope.searchText = '';
    $scope.categoryName = '';
    $scope.searchApi = 'search/job';
    $scope.role = $cookies.get('role');

    if ($scope.role === 'Worker') {
        $scope.searchApi = 'search/job/smart'
    } else {
        $scope.searchApi = 'search/user/smart'
    }

    if($scope.role === undefined) {
        $scope.searchApi = 'search/job';
    }
    $scope.getJobs = function () {
        $http.post(ROUTES.api + $scope.searchApi)
            .then(function (response) {
                $scope.jobs = response.data;
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
    $scope.getJobs();
    $scope.searchOnDelay = function () {
        if ($scope.role === 'Worker' || $scope.role === undefined) {
            $scope.searchApi = 'search/job'
        } else {
            $scope.searchApi = 'search/user'
        }
        $http.post(ROUTES.api + $scope.searchApi, {query: $scope.searchText + ' ' + $scope.categoryName})
            .then(function (response) {

                $scope.jobs = response.data;
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