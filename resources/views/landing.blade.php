<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Moodpix</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <main class="container">
    <section class="p-5  m-2 text-center">
        <img src="https://cdn.pixabay.com/photo/2023/02/15/13/06/mood-7791841_1280.png" alt="" class="img-fluid" style="height: auto; max-width: 00px">
        <div class="text-white rounded p-3 bg-dark">
            <h1 class="mt-3">Welcome to <strong>Moodpix</strong></h1>
            <p>Share your mood anytime</p>
            <a href="{{ route('register') }}" class="btn btn-light">Create an account</a>
            <div class="mt-3">
                <a class="text-white" href="{{ route('login') }}">Already have an account? Click here to <strong>Login</strong></a>
            </div>
        </div>
    </section>
    </main>
</body>
</html>