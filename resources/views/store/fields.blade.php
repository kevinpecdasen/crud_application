@extends('layout.main')

@section('content')
    <div class="card">
        <div class="card-body">
            <a href="/stores"><button class="btn btn-outline-dark mb-10">Back to List</button></a>

            <h3 class="card-title">{{ $title }}</h3>
            <h6 class="card-subtitle mb-2 text-muted">{{ $subtitle }}</h6>

            @if(session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif
            @if(session('error'))
                <div class="alert alert-danger">
                    {{ session('error') }}
                </div>
            @endif

            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form action="{{ $action }}" method="post">
                @csrf
                <div class="input-group mb-3">
                    <span class="input-group-text" id="name_label">Store Name</span>
                    <input type="text" class="form-control" name="name" placeholder="Name"
                        value="{{ $store->name ?? '' }}" aria-describedby="name_label">
                </div>

                <div class="input-group mb-3">
                    <span class="input-group-text" id="desc_label">Description</span>
                    <input type="text" class="form-control" name="description" placeholder="Description"
                        value="{{ $store->description ?? '' }}" aria-describedby="desc_label">
                </div>

                <input type="submit" class="btn btn-secondary" value="{{ isset($store) ? 'Update' : 'Submit' }}">
                <input type="reset" class="btn btn-outline-secondary" value="Reset">
            </form>
        </div>
  </div>
@endsection
