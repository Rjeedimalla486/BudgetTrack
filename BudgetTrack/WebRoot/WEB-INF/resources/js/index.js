var notesAppmdl = angular.module('notesApp', ["ng-fusioncharts"]);
notesAppmdl.controller('MainCtrl', [ function() {
	var self = this;
	self.message = 'Hello ';
	self.changeMessage = function() {
		self.message = 'Goodbye';
	};

	self.not = [ {
		id : 1,
		msg : 'rajesh'
	}, {
		id : 2,
		msg : 'kumar'
	} ];
	self.notes = [ {
		label : 'First Note',
		done : false,
		assignee : 'Shyam'
	}, {
		label : 'Second Note',
		done : false
	}, {
		label : 'Done Note',
		done : true
	}, {
		label : 'Last Note',
		done : false,
		assignee : 'Brad'
	} ];
	self.getNoteClass = function(status) {
		return {
			done : status,
			pending : !status
		};
	};
	console.log('this is writen to controller');
	self.notes2 = {
		shyam : {
			id : 1,
			label : 'First Note',
			done : false
		},
		Misko : {
			id : 3,
			label : 'Finished Third Note',
			done : true
		},
		brad : {
			id : 2,
			label : 'Second Note',
			done : false
		}
	};

	self.test='rajesh';
	self.testFn = function() {
		return self.test+' kudavara';
	}
} ]);

notesAppmdl.controller('subctrl', [function() {
	var ctrl2 = this;
	ctrl2.change = function(){
		ctrl2.username = 'changed';
		ctrl2.password = 'password';
	};
	ctrl2.submit = function() {
		if(ctrl2.username=== undefined||ctrl2.password=== undefined) {
			alert('entersomething in ');
		}
		else{
			console.log('User clicked submit with ',
					ctrl2.username, ctrl2.password);
			};
		}
	ctrl2.submit1 = function() {
		// Create user object to send to the server
		var user = {
			username : ctrl2.username,
			password : ctrl2.password
		};
		console.log('First form submit with ', user);
	};
	ctrl2.submit2 = function() {
		console.log('Second form submit with ', ctrl2.user);
	};
	ctrl2.myDataSource = {
		    chart: {
		        caption: "Age profile of website visitors",
		        subcaption: "Last Year",
		        startingangle: "120",
		        showlabels: "0",
		        showlegend: "1",
		        enablemultislicing: "0",
		        slicingdistance: "15",
		        showpercentvalues: "1",
		        showpercentintooltip: "0",
		        plottooltext: "Age group : $label Total visit : $datavalue",
		        theme: "fint"
		    },
		    data: [
		        {
		            label: "Teenage",
		            value: "1250400"
		        },
		        {
		            label: "Adult",
		            value: "1463300"
		        },
		        {
		            label: "Mid-age",
		            value: "1050700"
		        },
		        {
		            label: "Senior",
		            value: "491000"
		        }
		    ]
		}
			
}]);
$(document).ready(function () {
    $('#container').highcharts({
        chart: {
            type: 'pie',
            options3d: {
				enabled: true,
                alpha: 45,
                beta: 0,
            }
        },
        plotOptions: {
            pie: {
                depth: 25
            }
        },
        series: [{
            data: [2, 4, 6, 1, 3]
        }]
    });
});
