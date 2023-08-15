
@extends('layout.main')

@section('content')

<div class="container">
    <div class="row justify-content-md-center">
        <div class="col col-lg-6">
            <div class="card mt-4">
                <div class="card-body">
                    <form method="post" action="/register">
                        <h2>Register User</h2>

                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif


                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                            <span class="input-group-text" id="email_label">Email</span>
                            </div>
                            <input type="email" name="email" class="form-control" placeholder="Email" aria-describedby="email_label">
                        </div>

                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                            <span class="input-group-text" id="first_label">First Name</span>
                            </div>
                            <input type="text" name="first_name" class="form-control" placeholder="First Name" aria-describedby="first_label">
                        </div>

                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                            <span class="input-group-text" id="last_label">Last Name</span>
                            </div>
                            <input type="text" name="last_name" class="form-control" placeholder="Lastn Name" aria-describedby="last_label">
                        </div>

                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                            <span class="input-group-text" id="password_label">Password</span>
                            </div>
                            <input type="password" name="password" class="form-control" placeholder="Password" aria-describedby="password_label">
                        </div>

                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                            <span class="input-group-text" id="confirm_label">Confirm Password</span>
                            </div>
                            <input type="password" name="password_confirmation" class="form-control" placeholder="Confirm Password" aria-describedby="confirm_label">
                        </div>

                        @csrf
                        <input class="btn btn-dark" type="submit" value="Submit">
                        <input class="btn btn-outline-dark" type="reset" value="Reset">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
