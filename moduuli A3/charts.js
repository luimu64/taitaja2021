const batteryLabels = [
    '1',
    '5',
    '10',
    '20',
    '30',
    '40',
];

const batteryData = {
    labels: batteryLabels,
    datasets: [{
        label: 'Akkujen kunto',
        backgroundColor: '#ee7116',
        borderColor: '#000000',
        data: [0, 10, 5, 2, 20, 30, 45],
    }]
};

const batteryConfig = {
    type: 'bar',
    data: batteryData,
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    },
};

const osData = {
    labels: [
        'Red',
        'Blue',
        'Yellow'
    ],
    datasets: [{
        label: 'Käyttöjärjestelmä versiot',
        data: [300, 50, 100],
        backgroundColor: [
            'rgb(255, 99, 132)',
            'rgb(54, 162, 235)',
            'rgb(255, 205, 86)'
        ],
        hoverOffset: 4
    }]
};

const osConfig = {
    type: 'pie',
    data: osData,
};