import React from 'react';
import {
    Chart as ChartJS,
    CategoryScale,
    LinearScale,
    BarElement,
    Title,
    Tooltip,
    Legend,
} from 'chart.js';
import { Bar } from 'react-chartjs-2';

const Grafico = ({memData}) => {
    ChartJS.register(
        CategoryScale,
        LinearScale,
        BarElement,
        Title,
        Tooltip,
        Legend
    );

const options = {
    responsive: true,
    plugins: {
        legend: {
            position: 'top',
        }
    },
};

const labels = memData.map(item => item.timestamp.substring(11,16));
const values = memData.map(item => (parseInt(item.memoria) / 100000000));

const data = {
    labels,
    datasets: [
        {
        label: 'Consumo debe multiplicarse por 100M',
        data: values,
        backgroundColor: 'rgba(53, 162, 235, 0.5)',
        },
    ]
};

    return (
        <>
            <Bar className={'bar-chart'} options={options} data={data} />
        </>
    )
}

export default Grafico;