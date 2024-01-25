@extends('../layouts/backend_layout')

@section('title','Dashboard Page')

@section('content')
<div class="col-lg-12 stretch-card">
  @include('sweetalert::alert')

  <div class="content-wrapper">


    <div class="row">
      <div class="col-md-4 stretch-card grid-margin">
        <div class="card bg-gradient-danger card-img-holder text-white">
          <div class="card-body">
            <img src="{{ asset('backend/assets/images/dashboard/circle.svg') }}" class="card-img-absolute" alt="circle-image" />
            <h2 class="font-weight-normal mb-3"> Transaction <i class="mdi mdi-chart-line mdi-24px float-right"></i>
            </h2>
            <h6 class="mb-5"><span id="TransactionPeriod"></span> 
                <span id="TransactionAll"></span> <br> 
                <span id="TransactionAllSum"></span> 
                <span id="TransactionAllYesterday"></span> <br> 
                <span id="TransactionAllSumYesterday"></span> 
            </h6>
            <div class="tooltip-container card-text">
                <span class="tooltip-trigger" data-tooltip-src=""><i class="mdi mdi-information "></i>  </span>
            </div>
            <span id="transaction_price_change_percentage"></span>
          </div>
        </div>
      </div>
      <div class="col-md-4 stretch-card grid-margin">
        <div class="card bg-gradient-info card-img-holder text-white">
          <div class="card-body">
            <img src="{{ asset('backend/assets/images/dashboard/circle.svg') }}" class="card-img-absolute" alt="circle-image" />
            <h2 class="font-weight-normal mb-3">Orders <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
            </h2>
            <h6 class="mb-5"><span id="OrderAll"></span> <br> 
                <span id="OrderAllSum"></span> 
                <span id="OrderAllYesterday"></span> <br> 
                <span id="OrderAllSumYesterday"></span> 
            </h6>
            <div class="tooltip-container card-text">
                <span class="tooltip-trigger" data-tooltip-src=""><i class="mdi mdi-information "></i>  </span>
            </div>
            <span id="order_price_change_percentage"></span>
          </div>
        </div>
      </div>
      <div class="col-md-4 stretch-card grid-margin">
        <div class="card bg-gradient-success card-img-holder text-white">
          <div class="card-body">
            <img src="{{ asset('backend/assets/images/dashboard/circle.svg') }}" class="card-img-absolute" alt="circle-image" />
            <h4 class="font-weight-normal mb-3">Net Income <i class="mdi mdi-diamond mdi-24px float-right"></i>
            </h4>
            <h2 class="mb-5"><span id="NetIncomeAll"></span></h2>
            {{-- <h6 class="card-text">Increased by 5%</h6> --}}
          </div>
        </div>
      </div>
    </div>
    
    <div class="row">
      <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <div class="clearfix">
              <h4 class="card-title float-left">Transaction</h4>
            </div>
            <div class="bg-white mb-1 rounded ">
              <select id="timePeriodTransaction" class="btn btn-sm btn-outline-primary "  name="timePeriodTransaction">
                  <option value="" >-</option>
                  <option value="today" selected>today</option>
                  <option value="week" >Week</option>
                  <option value="month" >Month</option>
                  <option value="quarter" >Quarter</option>
                  <option value="semester" >Semester</option>
                  <option value="year" >Year</option>
              </select>
              <input type="date" id="startDate" class="btn btn-sm btn-outline-primary ">
              <input type="date" id="endDate" class="btn btn-sm btn-outline-primary ">
              <button id="submitTimePeriodTransaction" class="btn btn-sm btn-primary"> Search </button>
            </div>
                <canvas id="DashboardChartTransactionToday"></canvas>
                <canvas id="DashboardChartTransactionToday1"></canvas>
          </div>
        </div>
      </div>

    </div>

    <div class="row">
      {{-- <div class="col-md-7 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <div class="clearfix">
              <h4 class="card-title float-left">Transaction Month</h4>
            </div>
                <div class="bg-white mb-1 rounded ">
                  <select id="timePeriod" class="btn btn-sm btn-outline-primary " name="timePeriod">
                      <option value="today" selected>today</option>
                      <option value="week" >This Week</option>
                      <option value="month" >This Month</option>
                      <option value="quarter" >This Quarter</option>
                      <option value="semester" >This Semester</option>
                      <option value="year" >This Year</option>
                  </select>
                  <input type="date" id="startDate" class="btn btn-sm btn-outline-primary ">
                  <input type="date" id="endDate" class="btn btn-sm btn-outline-primary ">
                </div>

                <canvas id="myChart"></canvas>
          </div>
        </div>
      </div> --}}
      <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              
                <div class="card-body">

                  <div class="bg-white mb-1 rounded ">
                    <select id="timePeriodTransaction" class="btn btn-sm btn-outline-primary "  name="timePeriodTransaction">
                        <option value="today" selected>today</option>
                        <option value="week" >This Week</option>
                        <option value="month" >This Month</option>
                        <option value="quarter" >This Quarter</option>
                        <option value="semester" >This Semester</option>
                        <option value="year" >This Year</option>
                    </select>
                    <input type="date" id="startDate" class="btn btn-sm btn-outline-primary ">
                    <input type="date" id="endDate" class="btn btn-sm btn-outline-primary ">
                  </div>
                  
                    <h4 class="card-title">The Most Status Order</h4>
                    <canvas id="status-chart-order"></canvas>
                </div>
            </div>
     </div>

    </div>



  </div>



</div>
@endsection

@push('css')
<style>
    .tooltip-container {
        position: relative;
        display: inline-block;
    }

    .tooltip-trigger::before {
        content: '';
        display: none;
        position: absolute;
        width: auto; /* Set to 'auto' to allow the image to determine the width */
        height: auto; /* Set to 'auto' to maintain image aspect ratio */
    }

    .tooltip-trigger:hover::before {
    display: block;
    width: 480px;
    height: 50px; /* Set the height based on your requirement */
    content: ''; /* Remove content attribute, as you are using background-image */
    background-color: #323232;
    background-image: url({{ asset('info/persentase_perubahan_harga_per_hari.png') }});
    background-size: contain;
    background-repeat: no-repeat; /* Prevent the background image from looping */
    padding: 8px;
    border-radius: 4px;
    position: absolute;
    bottom: 125%;
    left: 50%;
    z-index: 99 !important;
    transform: translateX(-50%);
}
</style>
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/mdi/css/materialdesignicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/css/vendor.bundle.base.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/css/style.css') }}">
    <link rel="shortcut icon" href="{{ asset('backend/assets/images/favicon.ico') }}" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endpush

@push('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            loadDataToday()
            $('#timePeriodTransaction').val('');
            setDefaultDateRange()
        });
    </script>



    <script src="{{ asset('backend/assets/vendors/js/file-upload.js') }}"></script>

    <script src="{{ asset('backend/assets/vendors/js/vendor.bundle.base.js') }}"></script>
    <script src="{{ asset('backend/assets/vendors/chart.js/Chart.min.js') }}"></script>
    <script src="{{ asset('backend/assets/js/jquery.cookie.js') }}" type="text/javascript"></script>
    <script src="{{ asset('backend/assets/js/off-canvas.js') }}"></script>
    <script src="{{ asset('backend/assets/js/hoverable-collapse.js') }}"></script>
    <script src="{{ asset('backend/assets/js/misc.js') }}"></script>
    <script src="{{ asset('backend/assets/js/dashboard.js') }}"></script>
    <script src="{{ asset('backend/assets/js/todolist.js') }}"></script>

    
    <script>
        function setDefaultDateRange() {
            var endDate = new Date();
            var startDate = new Date(endDate);
            startDate.setDate(endDate.getDate() - 7); // Set start date to a week ago

            // Format dates to 'YYYY-MM-DD'
            var formattedStartDate = startDate.toISOString().split('T')[0];
            var formattedEndDate = endDate.toISOString().split('T')[0];

            // Set the values in the input fields
            $('#startDate').val(formattedStartDate);
            $('#endDate').val(formattedEndDate);
        }

        function updateOptionTimePeriods() {
            var timePeriodSelect = $('#timePeriodTransaction').val();

            // Depending on the selected time period, update the options or perform other actions
            switch (timePeriodSelect) {
                case '':
                    var timePeriodSelect = $('#timePeriodTransaction').val(null);
                    break;
                case 'today':
                    var timePeriodSelect = $('#timePeriodTransaction').val('today');
                    break;
                case 'week':
                    var timePeriodSelect = $('#timePeriodTransaction').val('week');
                    // Additional options or actions for 'week'
                    break;
                // Add cases for other time periods as needed
            }
        }

        $('#timePeriodTransaction').on('change', function () {
            // var startDate = $('#startDate').val(null);
            // var endDate = $('#endDate').val(null);


            $('#timePeriod').on('change', function () {
                // Get the selected value from the dropdown
                var selectedValue = $(this).val();

                // Call the appropriate function based on the selected value
                switch (selectedValue) {
                    case 'today':
                        loadDataToday();
                        break;
                    case 'week':
                        loadDataWeek();
                        break;
                    case 'month':
                        loadDataMonth();
                        break;
                    case 'quarter':
                        loadDataQuarter();
                        break;
                    case 'semester':
                        loadDataSemester();
                        break;
                    case 'year':
                        loadDataYear();
                        break;
                    default:
                        // Handle any additional cases or provide a default action
                        break;
                }
            });

        });

        $('#startDate').on('change', function () {
            $('#timePeriodTransaction').val('');
            $('#TransactionAll').val('');
        });

        $('#endDate').on('change', function () {
            $('#timePeriodTransaction').prop('selectedIndex', 0);
            // loadDataTransaction();
        });

        function loadDataToday() {
            $.ajax({
                url: '/dashboard-today',
                method: 'GET',
                success: function (response) {

                    // alert(response.priceChangePercentageOrder)
                    var tolerance = 0.0001;

                    if (!isNaN(response.transactions)) {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html('Today : '+response.transactions+' Transaction');
                        $('#TransactionAllSum').html('Today Sum : '+formatRupiah(response.totalPriceToday));
                        $('#TransactionAllYesterday').html('Yesterday : '+response.transaction_yesterday+' Transaction');
                        $('#TransactionAllSumYesterday').html('Yesterday Sum : '+formatRupiah(response.totalPriceYesterday));
                        if(response.priceChangePercentage > tolerance){
                            $('#transaction_price_change_percentage').html(' <i class=" mdi mdi-arrow-up-bold " style="color:green;"></i> '+Math.ceil(response.transaction_price_change_percentage)+' % from Yesterday');
                        }else if(response.priceChangePercentage < tolerance){
                            $('#transaction_price_change_percentage').html('<i class=" mdi mdi-arrow-down-bold " style="color:red;"></i> '+Math.ceil(response.transaction_price_change_percentage)+' % from Yesterday');
                        }else{
                            console.log('')
                        }
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html(0);
                    }
                    if (!isNaN(response.orders)) {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html('Today : '+response.orders+' Order');
                        $('#OrderAllSum').html('Today Sum : '+formatRupiah(response.totalPriceTodayOrder));
                        $('#OrderAllYesterday').html('Yesterday : '+response.order_yesterday+' Order');
                        $('#OrderAllSumYesterday').html('Yesterday Sum : '+formatRupiah(response.totalPriceYesterdayOrder));
                        $('#NetIncomeAll').html(formatRupiah(response.totalPriceToday));
                        if(response.priceChangePercentageOrder > tolerance){
                            $('#order_price_change_percentage').html(' <i class=" mdi mdi-arrow-up-bold " style="color:green;"></i> '+Math.ceil(response.order_price_change_percentage)+' % from Yesterday');
                        }else if(response.priceChangePercentageOrder < tolerance){
                            $('#order_price_change_percentage').html('<i class=" mdi mdi-arrow-down-bold " style="color:red;"></i> '+Math.ceil(response.order_price_change_percentage)+' % from Yesterday');
                        }else{
                            $('#order_price_change_percentage').html(' '+Math.ceil(response.order_price_change_percentage)+' % from Yesterday');
                        }
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html(0);
                    }
                },
                error: function (error) {
                    $('#WeeklyTransaction').html(0);
                }
            });
        }

        function loadDataWeek() {
            $.ajax({
                url: '/dashboard-week',
                method: 'GET',
                success: function (response) {
                    if (!isNaN(response.transactions)) {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html('This Week : '+response.transactions);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html(0);
                    }
                    if (!isNaN(response.orders)) {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html('This Week : '+response.orders);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html(0);
                    }
                },
                error: function (error) {
                    $('#WeeklyTransaction').html(0);
                }
            });
        }

        function loadDataMonth() {
            $.ajax({
                url: '/dashboard-month',
                method: 'GET',
                success: function (response) {
                    if (!isNaN(response.transactions)) {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html('This Month : '+response.transactions);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html(0);
                    }
                    if (!isNaN(response.orders)) {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html('This Month : '+response.orders);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html(0);
                    }
                },
                error: function (error) {
                    $('#WeeklyTransaction').html(0);
                }
            });
        }

        function loadDataQuarter() {
            $.ajax({
                url: '/dashboard-quarter',
                method: 'GET',
                success: function (response) {
                    if (!isNaN(response.transactions)) {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html('This Quarter : '+response.transactions);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html(0);
                    }
                    if (!isNaN(response.orders)) {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html('This Quarter : '+response.orders);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html(0);
                    }
                },
                error: function (error) {
                    $('#WeeklyTransaction').html(0);
                }
            });
        }

        function loadDataSemester() {
            $.ajax({
                url: '/dashboard-semester',
                method: 'GET',
                success: function (response) {
                    if (!isNaN(response.transactions)) {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html('This Semester : '+response.transactions);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html(0);
                    }
                    if (!isNaN(response.orders)) {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html('This Semester : '+response.orders);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html(0);
                    }
                },
                error: function (error) {
                    $('#WeeklyTransaction').html(0);
                }
            });
        }

        function loadDataYear() {
            $.ajax({
                url: '/dashboard-year',
                method: 'GET',
                success: function (response) {
                    if (!isNaN(response.transactions)) {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html('This Year : '+response.transactions);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#TransactionAll').html(0);
                    }
                    if (!isNaN(response.orders)) {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html('This Year : '+response.orders);
                    } else {
                        $('#TransactionPeriod').hide();
                        $('#OrderAll').html(0);
                    }
                },
                error: function (error) {
                    $('#WeeklyTransaction').html(0);
                }
            });
        }

    </script>


<script>
    const labels = [
        'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'
    ];

    // Fetch data from the Laravel controller
    fetch('/chart-data')
        .then(response => response.json())
        .then(data => {
            // Convert data values to numbers
            const numericData = data.data.map(value => Number(value));

            const chartData = {
                labels: labels,
                datasets: [{
                    label: 'Transaction By Month',
                    backgroundColor: 'rgb(255, 99, 132)',
                    borderColor: 'rgb(255, 99, 132)',
                    data: numericData, // Use the fetched data here
                }]
            };

            const config = {
                type: 'line',
                data: chartData,
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                callback: function (value, index, values) {
                                    return 'Rp ' + Number(value).toLocaleString(); // Format the value as Rp
                                }
                            }
                        }
                    }
                }
            };

            new Chart(
                document.getElementById('myChart'),
                config
            );
        })
        .catch(error => console.error('Error fetching chart data:', error));

</script>

{{-- Transaction Today by choose option  --}}

<script>
  const label_hours = Array.from({ length: 24 }, (_, i) => i + ':00'); // Labels for each hour
  const label_days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
  // ---------------month
  // Get the date month from date 1 until last date
    const currentDate = moment();
    const currentMonth = currentDate.month();
    const currentYear = currentDate.year();
    const daysInMonth = moment(currentDate).daysInMonth();

    const label_dates = Array.from({ length: daysInMonth }, (_, i) =>
      moment(`${currentYear}-${currentMonth + 1}-${i + 1}`).format('YYYY-MM-DD')
    );

    // month name in a year
    const label_month = [];

    for (let month = 0; month < 12; month++) {
        const monthName = moment().month(month).format('MMMM'); // Get month name
        label_month.push(monthName);
    }

    const label_quarter1 = [];
    const label_quarter2 = [];
    const label_quarter3 = [];
    const label_quarter4 = [];

    for (let month = 0; month < 12; month++) {
        const quarterNumber = Math.floor(month / 3) + 1; // Calculate quarter number
        const quarterPrefix = "Q" + quarterNumber; // Add quarter prefix

        const monthName = moment().month(month).format('MMMM'); // Get month name
        const quarterMonth = `${quarterPrefix} ${monthName}`; // Combine quarter and month

        // Separate months into Quarter 1 and Quarter 2 arrays
        if (quarterNumber === 1) {
            label_quarter1.push(quarterMonth);
        } else if (quarterNumber === 2) {
            label_quarter2.push(quarterMonth);
        } else if (quarterNumber === 3) {
            label_quarter3.push(quarterMonth);
        } else if (quarterNumber === 4) {
            label_quarter4.push(quarterMonth);
        }
    }

    
    const quater_value = ['Q1', 'Q2', 'Q3', 'Q4'];
  // ---------------end month


  fetch('/dashboard-chart-data-today')
      .then(response => {
          if (!response.ok) {
              throw new Error('Network response was not ok');
          }
          return response.json();
      })
      .then(data => {
          // Process the fetched data
          const data_chart_per_hour = data.map(value => Number(value));

          const chartData = {
              labels: label_hours,
              datasets: [{
                  label: 'Transaction By Hour',
                  backgroundColor: '#b66dff',
                  borderColor: 'rgb(0, 255, 255)',
                  data: data_chart_per_hour,
              }]
          };

          const config = {
              type: 'line',
              data: chartData,
              options: {
                  scales: {
                      y: {
                          beginAtZero: true,
                          ticks: {
                              callback: function (value, index, values) {
                                  return 'Rp ' + Number(value).toLocaleString('id-ID');
                              }
                          }
                      }
                  },
              }
          };

          new Chart(
              document.getElementById('DashboardChartTransactionToday'),
              config
          );
      })
      .catch(error => {
          console.error('Error fetching chart data:', error);
      });
</script>


{{-- Transaction Today automatic reload  --}}
<script>
    const label_hours = Array.from({ length: 24 }, (_, i) => i + ':00'); // Labels for each hour

    fetch('/dashboard-chart-data-today')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            // Convert data values to numbers
            const data_chart_per_hour = data.map(value => Number(value));

            const chartData = {
                labels: label_hours,
                datasets: [{
                    label: 'Transaction By Hour',
                    backgroundColor: '#b66dff',
                    borderColor: 'rgb(0, 255, 255)',
                    data: data_chart_per_hour, // Use the fetched data here
                }]
            };

            var options = {
                // animation: false,
                
                function(label){return label.value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");}
                
            };

            const config = {
                type: 'line',
                data: chartData,
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                callback: function (value, index, values) {
                                    return 'Rp ' + Number(value).toLocaleString('id-ID'); // Format the value as Rp
                                }
                            }
                        }
                    },

                }
            };

            new Chart(
                document.getElementById('DashboardChartTransactionToday1'),
                config
            );

            // Show a success alert
        })
        .catch(error => {
            console.error('Error fetching chart data:', error);
            // Show an error alert
        });

    // Function to format numeric values as Rupiah
    function formatRupiah(value) {
        return 'Rp ' + Number(value).toLocaleString('id-ID');
    }
</script>




<script>

    fetch('/dashboard-status-chart-data-order') // Update the URL based on your Laravel route
        .then(response => response.json())
        .then(data => {
            // Generate dynamic colors based on the length of the labels array
            const dynamicColors = Array.from({ length: data.labels.length }, (_, index) => getRandomColor(index));

            // Create a pie chart
            const ctx = document.getElementById('status-chart-order').getContext('2d');
            new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: data.labels,
                    datasets: [{
                        label: 'Status Orders',
                        backgroundColor: dynamicColors,
                        borderColor: dynamicColors,
                        data: data.counts,
                    }]
                },
                options: {
                    // Your existing options
                }
            });
        })
        .catch(error => console.error('Error fetching status chart data:', error));

        // Function to generate a random color
        function getRandomColor(index) {
            const colors = [
                'rgb(255, 99, 132)',
                'rgb(54, 162, 235)',
                'rgb(255, 205, 86)',
                'rgb(75, 192, 192)',
                'rgb(153, 102, 255)',
                'rgb(255, 159, 64)',
            ];

        return colors[index % colors.length];
    }

</script>


<script>
         $('#submitTimePeriodTransaction').on('click', function () {
            // Get selected values
            var timePeriod = $('#timePeriodTransaction').val();
            var startDate = $('#startDate').val();
            var endDate = $('#endDate').val();

            // Make Ajax request
            $.ajax({
                url: 'dashboard-transaction-data', // Replace with your actual Laravel controller route
                method: 'GET',
                data: {
                    timePeriod: timePeriod,
                    startDate: startDate,
                    endDate: endDate,
                    // Add any other parameters you need to send
                },
                success: function (data) {
                    $('#DashboardChartTransactionToday').hide();

                    if(data.timePeriod == 'today') {
                      const chartData = {
                          labels: label_hours,
                          datasets: [{
                              label: 'Transaction By Hour',
                              backgroundColor: '#b66dff',
                              borderColor: 'rgb(0, 255, 255)',
                              data: data.resultToday,
                          }]
                      };
  
                      const config = {
                          type: 'line',
                          data: chartData,
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true,
                                      ticks: {
                                          callback: function (value, index, values) {
                                              return 'Rp ' + Number(value).toLocaleString('id-ID');
                                          }
                                      }
                                  }
                              },
                          }
                      };
  
                      // Create the second chart
                      new Chart(
                          document.getElementById('DashboardChartTransactionToday1'),
                          config
                      );

                    }else if(data.timePeriod == 'week' ){
                      const chartData = {
                          labels: label_days,
                          datasets: [{
                              label: 'Transaction By Week',
                              backgroundColor: '#b66dff',
                              borderColor: 'rgb(0, 255, 255)',
                              data: data.resultWeek,
                          }]
                      };
  
                      const config = {
                          type: 'line',
                          data: chartData,
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true,
                                      ticks: {
                                          callback: function (value, index, values) {
                                              return 'Rp ' + Number(value).toLocaleString('id-ID');
                                          }
                                      }
                                  }
                              },
                          }
                      };
  
                      // Create the second chart
                      new Chart(
                          document.getElementById('DashboardChartTransactionToday1'),
                          config
                      );
                    }else if(data.timePeriod == 'month' ){
                      const chartData = {
                          labels: label_month,
                          datasets: [{
                              label: 'Transaction By Month',
                              backgroundColor: '#b66dff',
                              borderColor: 'rgb(0, 255, 255)',
                              data: data.resultMonth,
                          }]
                      };
  
                      const config = {
                          type: 'line',
                          data: chartData,
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true,
                                      ticks: {
                                          callback: function (value, index, values) {
                                              return 'Rp ' + Number(value).toLocaleString('id-ID');
                                          }
                                      }
                                  }
                              },
                          }
                      };
  
                      // Create the second chart
                      new Chart(
                          document.getElementById('DashboardChartTransactionToday1'),
                          config
                      );
                    }else if(data.timePeriod == 'quarter' ){
                      const chartData = {
                          labels: quater_value,
                          datasets: [{
                              label: 'Transaction By Quarter',
                              backgroundColor: '#b66dff',
                              borderColor: 'rgb(0, 255, 255)',
                              data: data.resultQuarter,
                          }]
                      };
  
                      const config = {
                          type: 'line',
                          data: chartData,
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true,
                                      ticks: {
                                          callback: function (value, index, values) {
                                              return 'Rp ' + Number(value).toLocaleString('id-ID');
                                          }
                                      }
                                  }
                              },
                          }
                      };
  
                      // Create the second chart
                      new Chart(
                          document.getElementById('DashboardChartTransactionToday1'),
                          config
                      );
                    }else if(data.timePeriod == 'semester' ){
                      const chartData = {
                          labels: data.resultSemester.semester_name,
                          datasets: [{
                              label: 'Transaction By Semester',
                              backgroundColor: '#b66dff',
                              borderColor: 'rgb(0, 255, 255)',
                              data: data.resultSemester.semester_value,
                          }]
                      };
  
                      const config = {
                          type: 'line',
                          data: chartData,
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true,
                                      ticks: {
                                          callback: function (value, index, values) {
                                              return 'Rp ' + Number(value).toLocaleString('id-ID');
                                          }
                                      }
                                  }
                              },
                          }
                      };
  
                      // Create the second chart
                      new Chart(
                          document.getElementById('DashboardChartTransactionToday1'),
                          config
                      );
                    }else if(data.timePeriod == 'year' ){
                      const chartData = {
                          labels: data.resultYear.year_name_transaction,
                          datasets: [{
                              label: 'Transaction By Year',
                              backgroundColor: '#b66dff',
                              borderColor: 'rgb(0, 255, 255)',
                              data: data.resultYear.year_sum_transaction,
                          }]
                      };
  
                      const config = {
                          type: 'line',
                          data: chartData,
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true,
                                      ticks: {
                                          callback: function (value, index, values) {
                                              return 'Rp ' + Number(value).toLocaleString('id-ID');
                                          }
                                      }
                                  }
                              },
                          }
                      };
  
                      // Create the second chart
                      new Chart(
                          document.getElementById('DashboardChartTransactionToday1'),
                          config
                      );
                    }else{
                      const chartData = {
                          labels: label_days,
                          datasets: [{
                              label: 'Transaction By -',
                              backgroundColor: '#b66dff',
                              borderColor: 'rgb(0, 255, 255)',
                              data: data.resultWeek,
                          }]
                      };
  
                      const config = {
                          type: 'line',
                          data: chartData,
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true,
                                      ticks: {
                                          callback: function (value, index, values) {
                                              return 'Rp ' + Number(value).toLocaleString('id-ID');
                                          }
                                      }
                                  }
                              },
                          }
                      };
  
                      // Create the second chart
                      new Chart(
                          document.getElementById('DashboardChartTransactionToday1'),
                          config
                      );
                    }

                  
                },
                error: function (xhr, status, error) {
                    // Handle error
                    console.error(xhr.responseText);
                }
            });
        });
</script>


    
@endpush