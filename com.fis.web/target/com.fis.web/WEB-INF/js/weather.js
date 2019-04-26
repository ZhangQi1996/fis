var customTooltip = function(tooltip) {
	// Tooltip Element
	var tooltipEl = document.getElementById('chartjs-tooltip2');
	
	if (!tooltipEl) {
		tooltipEl = document.createElement('div');
		tooltipEl.id = 'chartjs-tooltip2';
		tooltipEl.innerHTML = "<table></table>"
		this._chart.canvas.parentNode.appendChild(tooltipEl);
	}
	// Hide if no tooltip
	if (tooltip.opacity === 0) {
		tooltipEl.style.opacity = 0;
		return;
	}

	// Set caret Position
	tooltipEl.classList.remove('above', 'below', 'no-transform');
	if (tooltip.yAlign) {
		tooltipEl.classList.add(tooltip.yAlign);
	} else {
		tooltipEl.classList.add('no-transform');
	}

	function getBody(bodyItem) {
		return bodyItem.lines;
	}
	
	//自写函数
	function findIndex(titles, title){
		var _index = -1;
		titles.forEach(function(value, index, array) {
			if(value == title)
				_index  = index;
		});
		return _index;
	}

	// Set Text
	if (tooltip.body) {
		var titleLines = tooltip.title || [];
		var bodyLines = tooltip.body.map(getBody);

		var innerHtml = '<thead>';
		titleLines.forEach(function(title) {
			innerHtml += '<tr><th>' + title + '</th></tr>';
		});
		innerHtml += '</thead><tbody>';
		bodyLines.forEach(function(body, i) {
			var wind_span = '<span class="glyphicon glyphicon-move" style="margin-right: 10px"></span>';
			var weather_span = '<span class="glyphicon glyphicon-cloud" style="margin-right: 10px"></span>';
			var tempe_span = '<span class="glyphicon glyphicon-stats" style="margin-right: 10px"></span>';
			var wind_power_span = '<span class="glyphicon glyphicon-flag" style="margin-right: 10px"></span>';
			var humidity_span = '<span class="glyphicon glyphicon-tint" style="margin-right: 10px"></span>';
			var pm25_span = '<span class="glyphicon glyphicon-asterisk" style="margin-right: 10px"></span>';
			var quality_span = '<span class="glyphicon glyphicon-leaf" style="margin-right: 10px"></span>';
			var htmls_ = [];
			htmls_.push('<tr><td>' + wind_span + '风向：' +  realtime_.wind.direct + '</td></tr>');
			htmls_.push('<tr><td>' + wind_power_span + '风力：' +  realtime_.wind.power + '</td></tr>');
			htmls_.push('<tr><td>' + tempe_span + '温度：' + realtime_.weather.temperature + '</td></tr>');
			htmls_.push('<tr><td>' + humidity_span + '湿度：' + realtime_.weather.humidity + '%' + '</td></tr>');
			htmls_.push('<tr><td>' + weather_span + '天气：' +  realtime_.weather.info + '</td></tr>');
			htmls_.push('<tr><td>' + pm25_span + 'PM2.5：' +  pm25_.pm25.curPm + '</td></tr>');
			htmls_.push('<tr><td>' + quality_span + '空气质量：' +  pm25_.pm25.quality + '</td></tr>');
			var labels = ["风向","风力","温度","湿度","天气","PM2.5","空气质量"];
			var index = findIndex(labels, body.toString().split(":")[0]);
			innerHtml += htmls_[index];
		});
		innerHtml += '</tbody>';

		var tableRoot = tooltipEl.querySelector('table');
		tableRoot.innerHTML = innerHtml;
	}

	var positionY = this._chart.canvas.offsetTop;
	var positionX = this._chart.canvas.offsetLeft;

	// Display, position, and set styles for font
	tooltipEl.style.opacity = 1;
	tooltipEl.style.left = positionX + tooltip.caretX + 'px';
	tooltipEl.style.top = positionY + tooltip.caretY + 'px';
	tooltipEl.style.fontFamily = tooltip._fontFamily;
	tooltipEl.style.fontSize = tooltip.fontSize;
	tooltipEl.style.fontStyle = tooltip._fontStyle;
	tooltipEl.style.padding = tooltip.yPadding + 'px ' + tooltip.xPadding + 'px';
};



var config = {
	type: 'doughnut',
	data: {
		datasets:[{
			"label":"My First Dataset",
			"data":[1,1,1,1,1,1,1],
			"backgroundColor":['rgb(255, 99, 132)','rgb(255, 159, 64)','rgb(255, 205, 86)','rgb(75, 192, 192)','rgb(54, 162, 235)','rgb(153, 102, 255)','rgb(201, 203, 207)']
		}],
		labels: ["风向","风力","温度","湿度","天气","PM2.5","空气质量"]
	},
	options: {
		responsive: true,
		legend: {
			position: 'top',
		},
		tooltips: {
			enabled: false,
			custom: customTooltip
		}
	}
};
Chart.defaults.global.pointHitDetectionRadius = 1;

var customTooltips = function(tooltip) {
	// Tooltip Element
	var tooltipEl = document.getElementById('chartjs-tooltip');

	if (!tooltipEl) {
		tooltipEl = document.createElement('div');
		tooltipEl.id = 'chartjs-tooltip';
		tooltipEl.innerHTML = "<table></table>"
		this._chart.canvas.parentNode.appendChild(tooltipEl);
	}

	// Hide if no tooltip
	if (tooltip.opacity === 0) {
		tooltipEl.style.opacity = 0;
		return;
	}

	// Set caret Position
	tooltipEl.classList.remove('above', 'below', 'no-transform');
	if (tooltip.yAlign) {
		tooltipEl.classList.add(tooltip.yAlign);
	} else {
		tooltipEl.classList.add('no-transform');
	}

	function getBody(bodyItem) {
		return bodyItem.lines;
	}
	
	//自写函数
	function findIndex(titles, title){
		var _index = -1;
		titles.forEach(function(value, index, array) {
			if(value == title)
				_index  = index;
		});
		return _index;
	}

	// Set Text
	if (tooltip.body) {
		var titleLines = tooltip.title || [];
		var bodyLines = tooltip.body.map(getBody);

		var innerHtml = '<thead>';

		titleLines.forEach(function(title) {
			innerHtml += '<tr><th>' + title + '</th></tr>';
		});
		innerHtml += '</thead><tbody>';

		bodyLines.forEach(function(body, i) {	//这里的下标问题要解决
			var wind_span = '<span class="glyphicon glyphicon-move" style="margin-right: 10px"></span>';
			var weather_span = '<span class="glyphicon glyphicon-cloud" style="margin-right: 10px"></span>';
			var tempe_span = '<span class="glyphicon glyphicon-stats" style="margin-right: 10px"></span>';
			var wind_power_span = '<span class="glyphicon glyphicon-flag" style="margin-right: 10px"></span>';
			var index = findIndex(labels_, tooltip.title);
			innerHtml += '<tr><td>' + tempe_span + body + '</td></tr>';
			innerHtml += '<tr><td>' + weather_span + '天气：' +  _weather[index] + '</td></tr>';
			innerHtml += '<tr><td>' + wind_span + '风向：' +  wind_[index] + '</td></tr>';
			innerHtml += '<tr><td>' + wind_power_span + '风力：' +  wind_power_[index] + '</td></tr>';
		});
		innerHtml += '</tbody>';

		var tableRoot = tooltipEl.querySelector('table');
		tableRoot.innerHTML = innerHtml;
	}

	var positionY = this._chart.canvas.offsetTop;
	var positionX = this._chart.canvas.offsetLeft;

	// Display, position, and set styles for font
	tooltipEl.style.opacity = 1;
	tooltipEl.style.left = positionX + tooltip.caretX + 'px';
	tooltipEl.style.top = positionY + tooltip.caretY + 'px';
	tooltipEl.style.fontFamily = tooltip._fontFamily;
	tooltipEl.style.fontSize = tooltip.fontSize;
	tooltipEl.style.fontStyle = tooltip._fontStyle;
	tooltipEl.style.padding = tooltip.yPadding + 'px ' + tooltip.xPadding + 'px';
};
var city_ = null;
var realtime_ = null;
var today_ = null;
var weather_ = null;
var labels_ = [];
var tempe_ = [];
var day_ = null;
var night_ = null;
var dawn_ = null;
var _weather = [];
var wind_ = [];
var wind_power_ = [];
var pm25_ = null;
function fun(){
	//跨域json请求
	var url = "../weather/local";
	$.ajax({
	    url:url,
	    type:'GET', //GET
	    async:true,    //或false,是否异步
	    timeout:5000,    //超时时间
	    dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
	    beforeSend:function(xhr){
	    },
	    success:function(data,textStatus,jqXHR){
	    	if(data.reason === 'Succes'){
				realtime_ = data.result.realtime;
				city_ = data.result.realtime.city_name;
				today_ = data.result.realtime;
				weather_ = data.result.weather;
				pm25_ = data.result.pm25;
				$.each(weather_, function(index, value, array) {
					labels_.push(value.date);
					day_ = value.info.day;
					night_ = value.info.night;
					dawn_ = value.info.dawn;
					day_temp = day_ == null ? '0' : day_[2];
					night_temp = night_ == null ? '0' : night_[2];
					dawn_temp = dawn_ == null ? '0' : dawn_[2];
					var num = (parseInt(day_temp) + parseInt(night_temp) + parseInt(dawn_temp)) / 3;
					tempe_.push(num.toFixed(1));
					_weather.push(day_[1]);
					wind_.push(day_[3]);
					wind_power_.push(day_[4]);
				});
			}
			else{
				labels_ = ['内部错误', '内部错误','内部错误','内部错误','内部错误','内部错误','内部错误'];
				tempe_ = [0,0,0,0,0,0,0];
			}
	    },
	    error:function(xhr,textStatus){
	        alert("系统忙碌!");
	    },
	    complete:function(){
	    	myLoad();
	    }
	});
}
function myLoad() {
	var lineChartData = {
		labels: labels_,
		datasets: [{
			label: "温度(摄氏度)",
			borderColor: window.chartColors.red,
			pointBackgroundColor: window.chartColors.red,
			fill: false,
			data: tempe_
		}]
	};
	
	var chartEl = document.getElementById("chart");
	window.myLine = new Chart(chartEl, {
		type: 'line',
		data: lineChartData,
		options: {
			title:{
				display:true,
				text:'未来数天' + city_ +'天气预报'
			},
			tooltips: {
				enabled: false,
				mode: 'index',
				position: 'nearest',
				custom: customTooltips
			},
			scales: {
				xAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: '日期'
					}
				}],
				yAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: '温度(摄氏度)'
					}
				}]
			}
		}
	});
	var weather_info = document.getElementById('weather_info');
	var p_ = weather_info.getElementsByTagName("p");
	p_[0].innerHTML  = '<label>日期：</label>' + realtime_.date;
	p_[1].innerHTML  = '<label>更新时间：</label>' + realtime_.time;
	p_[2].innerHTML  = '<label>地点：</label>' + city_;
	p_[3].innerHTML  = '<label>农历：</label>' + realtime_.moon;
	var ctx = document.getElementById("chart1").getContext("2d");
	window.myPie = new Chart(ctx, config);
};
window.load = fun();