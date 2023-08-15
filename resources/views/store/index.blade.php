@extends('layout.main')

@section('content')
<br>
    <div class="container">
        <h4 class="card-title">{{ $title }}</h4>
        <h6 class="card-subtitle mb-2 text-muted">{{ $subtitle }}</h6>
        <div class="row align-items-start">
            <div class="col">
                @if(session('error'))
                    <div class="alert alert-danger">
                        {{ session('error') }}
                    </div>
                @endif

                @if(session('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                @endif

                <div class="d-flex flex-wrap justify-content-lg-end">
                    <div class="float-end">
                        <button class="btn btn-sm btn-secondary mb-1">
                            <a href="/showAddStore" class="text-decoration-none text-light">Add Store</a>
                        </button>
                    </div>
                </div>

                <table class="table table-condensed table-bordered">
                    <thead>
                        <tr>
                            <td>Name</td>
                            <td>Description</td>
                            <td>Action</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($storesList as $store)
                            <tr>
                                <td>{{ $store->name }}</td>
                                <td>{{ $store->description }}</td>
                                <td>
                                    <a href="/showEditStore/{{ $store->id }}">
                                    <span class="btn btn-sm btn-outline-secondary">Edit</span></a>
                                    <a href="/deleteStore/{{ $store->id }}"
                                        onclick="return confirm('Are you sure you want to delete this store?')">
                                        <span class="btn btn-sm btn-outline-danger" >Delete</span></a>
                                </td>
                            </tr>
                        @endforeach
                </tbody>
                </table>

                {{ $storesList->links() }}

            </div>
        </div>
    </div>
@endsection
