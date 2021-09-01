<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laitelista</title>
    <!--bootstrap css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js" integrity="sha512-Wt1bJGtlnMtGP0dqNFH1xlkLBNpEodaiQ8ZN5JLA5wpc1sUlk/O5uuOMNgvzddzkpvZ9GLyYNa8w2s7rqiTk5Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="charts.js"></script>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="opinsys-logo.png" alt="" class="nav-logo">
            </a>
            <button class="navbar-toggler shadow-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" href="#">Koulu</a>
                    <a class="nav-link" href="#">Laitelista</a>
                    <a class="nav-link active" href="#">Graafit</a>
                    <a class="nav-link" href="#">Yhteystiedot</a>
                </div>
            </div>
        </div>
    </nav>
    <div class="graphs">
        <canvas id="battery-health" width="100%" height="100%"></canvas>
        <canvas id="os-version" width="100%" height="100%"></canvas>
    </div>
    <div class="search-filters">
        <button class="button" onclick="getAll()">Hae kaikki koneet</button>
        <button class="button" onclick="get2020()">Hae kaikki koneet joita ei ole käynnistetty vuonna 2020</button>
        <button class="button" onclick="get2021()">Hae kaikki koneet joita ei ole käynnistetty vuonna 2021</button>
    </div>
    <div style="overflow-x:auto;">
        <table id="devicelist-table" class="table">
            <tbody id="devicelist-content">
            </tbody>
        </table>
    </div>

    <!--bootstrap js-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>

</html>