var xhttp = new XMLHttpRequest();

let releaseVersion = []
let devicePercentages = []
let counts = {};

const CHART_COLORS = {
    red: 'rgb(255, 99, 132)',
    orange: 'rgb(255, 159, 64)',
    yellow: 'rgb(255, 205, 86)',
    green: 'rgb(75, 192, 192)',
    blue: 'rgb(54, 162, 235)',
    purple: 'rgb(153, 102, 255)',
    grey: 'rgb(201, 203, 207)'
};

xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
        let data = JSON.parse(this.responseText)

        for (var i in data) {
            if (data[i].battery != "" && data[i].battery != null && data[i].battery != undefined) {
                devicePercentages.push(parseInt(data[i].battery.capacity.replace("%", "")))
            }
            if (data[i].release != "" && data[i].release != null && data[i].release != undefined) {
                releaseVersion.push(data[i].release)
            }
        }

        counts = {};

        for (const num of devicePercentages) {
            counts[num] = counts[num] ? counts[num] + 1 : 1;
        }

        const batteryData = {
            labels: Object.values(counts),
            datasets: [{
                label: 'Akkujen kunto prosentteina',
                backgroundColor: '#ee7116',
                data: Object.keys(counts),
            }]
        };

        let = batteryContext = document.getElementById('battery-health')

        var battery = new Chart(
            batteryContext, {
            type: 'bar',
            data: batteryData,
            options: {
                indexAxis: 'y',
                responsive: true
            }
        }
        );

        counts = {};

        for (const num of releaseVersion) {
            counts[num] = counts[num] ? counts[num] + 1 : 1;
        }

        const releaseData = {
            labels: Object.keys(counts),
            datasets: [{
                label: 'Käyttöjärjestelmä versiot',
                backgroundColor: Object.values(CHART_COLORS),
                data: Object.values(counts),
            }]
        };

        let releaseContext = document.getElementById('os-version')
        var release = new Chart(
            releaseContext, {
            type: 'pie',
            data: releaseData,
            options: {
                responsive: true
            }
        }
        );


    }
}
xhttp.open("GET", "testilaitteet_graafi.json", true)
xhttp.send()

function getAll() {
    var httpreq = new XMLHttpRequest();
    httpreq.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let data = JSON.parse(this.responseText)
            let tableElement = document.getElementById("devicelist-content")
            tableElement.innerHTML = ""
            let trTag1 = document.createElement("tr")
            trTag1.innerHTML = `<tr>
                    <th>Verkkonimi</th>
                    <th>Typpi</th>
                    <th>Valmistaja</th>
                    <th>Malli</th>
                    <th>Käynnistysaika</th>
                </tr>`
            tableElement.appendChild(trTag1)
            for (var i in data) {
                let trTag2 = document.createElement("tr")
                trTag2.innerHTML = `<td>${data[i].hostname}</td><td>${data[i].type}</td><td>${data[i].manufacturer}</td><td>${data[i].product}</td><td>${new Date(data[i].timestamp * 1000)}</td>`
                tableElement.appendChild(trTag2)
            }
        }
    }
    httpreq.open("GET", "testilaitteet_graafi.json", true)
    httpreq.send()
}

function get2020() {
    var httpreq = new XMLHttpRequest();
    httpreq.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let data = JSON.parse(this.responseText)
            let tableElement = document.getElementById("devicelist-content")
            tableElement.innerHTML = ""
            let filterDate1 = Date.parse("1-Jan-2020 00:00:00") / 1000
            let filterDate2 = Date.parse("31-Dec-2020 11:59:59") / 1000

            let trTag1 = document.createElement("tr")
            trTag1.innerHTML = `<tr>
                    <th>Verkkonimi</th>
                    <th>Typpi</th>
                    <th>Valmistaja</th>
                    <th>Malli</th>
                    <th>Käynnistysaika</th>
                </tr>`
            tableElement.appendChild(trTag1)
            for (var i in data) {
                if (data[i].timestamp < filterDate1 || data[i].timestamp > filterDate2) {

                    let trTag2 = document.createElement("tr")
                    trTag2.innerHTML = `<td>${data[i].hostname}</td><td>${data[i].type}</td><td>${data[i].manufacturer}</td><td>${data[i].product}</td><td>${new Date(data[i].timestamp * 1000)}</td>`

                    tableElement.appendChild(trTag2)
                }
            }
        }
    }
    httpreq.open("GET", "testilaitteet_graafi.json", true)
    httpreq.send()
}

function get2021() {
    var httpreq = new XMLHttpRequest();
    httpreq.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let data = JSON.parse(this.responseText)
            let tableElement = document.getElementById("devicelist-content")
            tableElement.innerHTML = ""
            let filterDate1 = Date.parse("1-Jan-2021 00:00:00") / 1000
            let filterDate2 = Date.parse("31-Dec-2021 11:59:59") / 1000

            let trTag1 = document.createElement("tr")
            trTag1.innerHTML = `<tr>
                    <th>Verkkonimi</th>
                    <th>Typpi</th>
                    <th>Valmistaja</th>
                    <th>Malli</th>
                    <th>Käynnistysaika</th>
                </tr>`
            tableElement.appendChild(trTag1)
            for (var i in data) {
                if (data[i].timestamp < filterDate1 || data[i].timestamp > filterDate2) {

                    let trTag2 = document.createElement("tr")
                    trTag2.innerHTML = `<td>${data[i].hostname}</td><td>${data[i].type}</td><td>${data[i].manufacturer}</td><td>${data[i].product}</td><td>${new Date(data[i].timestamp * 1000)}</td>`

                    tableElement.appendChild(trTag2)
                }
            }
        }
    }
    httpreq.open("GET", "testilaitteet_graafi.json", true)
    httpreq.send()
}