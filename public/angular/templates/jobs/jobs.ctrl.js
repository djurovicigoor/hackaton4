app.controller('JobsCtrl', function ($scope, $http, ROUTES, $cookies) {
    $scope.jobs = [];
    $scope.searchText = '';
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
        $http.post(ROUTES.api + $scope.searchApi, {query: $scope.searchText})
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
});