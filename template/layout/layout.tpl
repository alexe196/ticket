<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product Admin - Dashboard HTML Template</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <link rel="stylesheet" href="/public/css/fontawesome.min.css">
    <link rel="stylesheet" href="/public/css/bootstrap.min.css">
    <link rel="stylesheet" href="/public/css/templatemo-style.css">
    <link rel="stylesheet" href="/public/css/main.css">

    <title>{block name="title"}Default Title{/block}</title>
</head>

<body id="reportsPage">
<div class="" id="home">
    <nav class="navbar navbar-expand-xl">
        <div class="container h-100">
            <a class="navbar-brand" href="/">
                <h1 class="tm-site-title mb-0">Product Admin</h1>
            </a>
            <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars tm-nav-icon"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto h-100">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">
                            <i class="fas fa-tachometer-alt"></i>
                            Dashboard
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link d-block" href="#">
                            Admin, <b>Logout</b>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

    </nav>
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="text-white mt-5 mb-5">Welcome back, <b>Admin</b></p>
            </div>
        </div>
        <!-- row -->
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                <div class="tm-bg-primary-dark tm-block">
                    <h2 class="tm-block-title">Latest Hits</h2>
                    <canvas id="lineChart"></canvas>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                <div class="tm-bg-primary-dark tm-block">
                    <h2 class="tm-block-title">Performance</h2>
                    <canvas id="barChart"></canvas>
                </div>
            </div>
            <div class="col-12 tm-block-col">
                {block name="content"}{/block}
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-taller">
                    <h2 class="tm-block-title">Storage Information</h2>
                    <div id="pieChartContainer">
                        <canvas id="pieChart" class="chartjs-render-monitor" width="200" height="200"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
                    <h2 class="tm-block-title">Notification List</h2>
                    <div class="tm-notification-items">
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-01.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Jessica</b> and <b>6 others</b> sent you new <a href="#"
                                                                                                   class="tm-notification-link">product updates</a>. Check new orders.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-02.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Oliver Too</b> and <b>6 others</b> sent you existing <a href="#"
                                                                                                           class="tm-notification-link">product updates</a>. Read more reports.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-03.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Victoria</b> and <b>6 others</b> sent you <a href="#"
                                                                                                class="tm-notification-link">order updates</a>. Read order information.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-01.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Laura Cute</b> and <b>6 others</b> sent you <a href="#"
                                                                                                  class="tm-notification-link">product records</a>.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-02.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Samantha</b> and <b>6 others</b> sent you <a href="#"
                                                                                                class="tm-notification-link">order stuffs</a>.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-03.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Sophie</b> and <b>6 others</b> sent you <a href="#"
                                                                                              class="tm-notification-link">product updates</a>.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-01.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Lily A</b> and <b>6 others</b> sent you <a href="#"
                                                                                              class="tm-notification-link">product updates</a>.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-02.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Amara</b> and <b>6 others</b> sent you <a href="#"
                                                                                             class="tm-notification-link">product updates</a>.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle"><img src="/public/img/notification-03.jpg" alt="Avatar Image" class="rounded-circle"></div>
                            <div class="media-body">
                                <p class="mb-2"><b>Cinthela</b> and <b>6 others</b> sent you <a href="#"
                                                                                                class="tm-notification-link">product updates</a>.</p>
                                <span class="tm-small tm-text-color-secondary">6h ago.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
            <p class="text-center text-white mb-0 px-4 small">
                Copyright &copy; <b>2025</b> All rights reserved.
            </p>
        </div>
    </footer>
</div>

<script src="/public/js/jquery-3.3.1.min.js"></script>

<script src="/public/js/moment.min.js"></script>

<script src="/public/js/Chart.min.js"></script>

<script src="/public/js/bootstrap.min.js"></script>

<script src="/public/js/tooplate-scripts.js"></script>

<script src="/public/js/main.js"></script>

<script>
    Chart.defaults.global.defaultFontColor = 'white';
    let ctxLine,
        ctxBar,
        ctxPie,
        optionsLine,
        optionsBar,
        optionsPie,
        configLine,
        configBar,
        configPie,
        lineChart;
    barChart, pieChart;
    // DOM is ready
    $(function () {
        drawLineChart(); // Line Chart
        drawBarChart(); // Bar Chart
        drawPieChart(); // Pie Chart

        $(window).resize(function () {
            updateLineChart();
            updateBarChart();
        });
    })
</script>
</body>

</html>