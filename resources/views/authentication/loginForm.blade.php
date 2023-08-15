@extends('layout.main')

@section('content')
    <div class="container">
        <div class="row justify-content-md-center">
        <div class="col col-lg-6">
        <div class="card mt-4">
            <div class="card-body">
                <form method="post" action="/login">
                    @csrf
                    <h2>Login</h2>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if(session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                        <span class="input-group-text" id="email_label">Email</span>
                        </div>
                        <input type="email" required name="email" class="form-control" placeholder="Email" aria-describedby="email_label">
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                        <span class="input-group-text" id="password_label">Password</span>
                        </div>
                        <input type="password" required name="password" class="form-control" placeholder="Password" aria-describedby="password_label">
                    </div>

                    <input class="btn btn-outline-dark" type="submit" name="Submit" />

                </form>
            </div>
        </div>
        </div>
        </div>
    </div>
@endsection
