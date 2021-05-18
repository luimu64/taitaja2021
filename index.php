<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.2.0/chart.min.js" integrity="sha512-VMsZqo0ar06BMtg0tPsdgRADvl0kDHpTbugCBBrL55KmucH6hP9zWdLIWY//OTfMnzz6xWQRxQqsUFefwHuHyg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <title>Document</title>
</head>

<body>
    <a id="banner" href="https://iltasanomat.fi">
        <div id="bannerlogo"><img src="images/compressoitulogo.png" alt="logo"></div>
        <div id="bannertext">Test how Finnish your school is?</div>
    </a>
    <div id="image-container">
        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            viewBox="0 0 3535 2500" width="1000">
            <image width=" 3535" height="2500" xlink:href="images/school.jpg"></image>
            <a>
                <rect x="80" y="1723" fill="#fff" opacity="0" width="267" height="430"></rect>
            </a>
            <a>
                <rect x="1747" y="926" fill="#fff" opacity="0" width="430" height="430"></rect>
            </a>
            <a>
                <rect x="2630" y="1557" fill="#fff" opacity="0" width="710" height="357"></rect>
            </a>
            <a>
                <rect x="1493" y="540" fill="#fff" opacity="0" width="360" height="313"></rect>
            </a>
        </svg>
    </div>
    <div id="text-container">
        <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nisl nulla, porta venenatis mi sed, lacinia
            bibendum odio. Maecenas sit amet efficitur felis, eu rutrum odio. Proin a porttitor massa.
        </div>
        <div>
            Nunc pharetra tortor vestibulum elit lobortis, vitae placerat ante elementum. Aenean fermentum ornare
            sapien id commodo.
        </div>
        <div>
            Nullam nec orci ac sem tempus tempor at eget diam. Nulla viverra est vitae turpis laoreet, vel varius ligula
            tincidunt.
        </div>
        <div>
            Sed id volutpat sem, vitae bibendum mauris. Nullam fringilla sapien vel vehicula faucibus. Donec congue, sem
            pretium imperdiet luctus, velit quam ullamcorper sem, sit amet porttitor leo eros euismod est.
        </div>
    </div>
</body>
<div><canvas id="myChart" width="10" height="10"></canvas></div>


<script>

var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var name = [];
        var grade = [];

        let data = JSON.parse(this.responseText);

        for (var i in data) {
            name.push(data[i]["name"]);
            grade.push(data[i]["grade"]);
        }

        var chartdata = {
            labels: name,
            datasets: [
                {
                    label: 'Example test',
                    backgroundColor: '#49e2ff',
                    borderColor: '#46d5f1',
                    hoverBackgroundColor: '#CCCCCC',
                    hoverBorderColor: '#666666',
                    data: grade
                }
            ]
        };

        var ctx = document.getElementById('myChart').getContext('2d');

        var barGraph = new Chart(ctx, {
            type: 'bar',
            data: chartdata
        });

        barGraph.canvas.parentNode.style.width = '1000px';
      }
    };

xmlhttp.open("GET","query.php", true);
xmlhttp.send();


    function changeDisplay(element) {
        if (element.style.display == "block") element.style.display = "none";
        else element.style.display = "block";
    }

    let clickables = document.querySelectorAll("svg > a");
    let text_divs = document.querySelectorAll("#text-container > div");

    for (let i = 0; i < clickables.length; i++) {
        clickables[i].addEventListener("click", () => changeDisplay(text_divs[i]));
    }
</script>

</html>