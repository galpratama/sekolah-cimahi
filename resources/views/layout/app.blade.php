<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="/manifest.json">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#0f3032">
    <meta name="apple-mobile-web-app-title" content="CROWDE">
    <meta name="application-name" content="CROWDE">
    <meta name="theme-color" content="#ffffff">

    <title>@yield('title') - Sekolah Cimahi</title>
    <meta name="description" content="@yield('description')">
    <meta name="keywords" content="@yield('keywords')">

    @include('layout.includes.style')
    @yield('custom-style')

</head>
<body>
<div class="app">
    @include('layout.includes.header')
    <section id="main">
        @yield('content')
    </section>
</div>
@include('layout.includes.footer')
@include('layout.includes.script')
@yield('custom-script')
</body>
</html>