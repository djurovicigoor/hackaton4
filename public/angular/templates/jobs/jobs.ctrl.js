app.controller('JobsCtrl', function ($scope, $http, ROUTES) {
    $scope.jobs = [];

    $scope.getJobs = function (page) {
        $http.get(ROUTES.api + 'job?page=' + page)
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
});