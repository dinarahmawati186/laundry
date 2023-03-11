@extends('layouts.main',['title'=>'Dashboard'])
@section('content')
<x-content :title="[
    'name'=>'Dashboard',
    'icon'=>'fas fa-home',
]">
    <div class="row">
        @can('admin-kasir')
        <x-box :data-box="[
            'label'=>'Transaksi',
            'background'=>'bg-success',
            'value'=>$transaksi->jumlah,
            'icon'=>'fas fa-cash-register',
            'href'=>route('transaksi.index')
        ]"/>

        <x-box :data-box="[
            'label'=>'Member',
            'background'=>'bg-primary',
            'value'=>$member->jumlah,
            'icon'=>'fas fa-user',
            'href'=>route('member.index')
        ]"/>
        @endcan

        @can('admin')
        <x-box :data-box="[
            'label'=>'Outlet',
            'background'=>'bg-olive',
            'value'=>$outlet->jumlah,
            'icon'=>'fas fa-store-alt',
            'href'=>route('outlet.index')
        ]"/>
        <x-box :data-box="[
            'label'=>'User',
            'background'=>'bg-danger',
            'value'=>$user->jumlah,
            'icon'=>'fas fa-user',
            'href'=>route('user.index')
        ]"/>
        
        @endcan
    </div>
    <div class="card">
        <div class="card-body">
            <div class="chart">
                <canvas id="chartTransaksi"></canvas>
            </div>
        </div>
    </div>
</x-content>
@endsection

@push('js')
<script src="{{asset('adminlte/plugins/chart.js/Chart.min.js')}}"></script>
<script>
    var ctx= document.getElementById('chartTransaksi').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: <?= json_encode($label) ?>,
            datasets: [{
                label: "Pendapatan",
                data: <?= json_encode($jumlah) ?>
            }]
        },
    });
</script>
@endpush