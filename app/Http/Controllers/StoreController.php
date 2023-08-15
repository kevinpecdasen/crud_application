<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AddStoreRequest;
use App\Http\Requests\EditStoreRequest;
use App\Models\Store;

class StoreController extends Controller
{
    public function index() {
        $stores = Store::paginate(10);

        $data = [
            'title'         => "Store List",
            'subtitle'      => "Paginated store list",
            'storesList'    => $stores
        ];
        return view('store.index', $data);
    }

    public function showAddStore() {

        $data = [
            'title'         => "Add Store",
            'subtitle'      => "Add store record",
            'action'        => "/addStore"
        ];
        return view('store.fields', $data);
    }

    public function addStore(AddStoreRequest $request) {
        $request->validated($request->all());

        Store::create([
            'name' => $request->name,
            'description' => $request->description,
        ]);

        return redirect()->back()->with('success', 'Successfully Registered!.');

    }




    public function showEditStore($id)
    {
        $store = Store::findOrFail($id);

        if ($store) {
            $data = [
                'title'         => "Edit Store",
                'subtitle'      => "Edit the store record",
                'action'        => "/editStore/$id",
                'store'         => $store
            ];
            return view('store.fields', $data);
        } else {
            return redirect()->back()->with('error', "Cannot find the specified store record.");
        }
    }

    function editStore(EditStoreRequest $request, $id) {
        $request->validated($request->all());

        $store = Store::findOrFail($id);

        $store->name = $request->name;
        $store->description = $request->description;
        $store->save();

        return redirect("/showEditStore/$id")->with('success', 'Store has been successfully updated.');
    }
}
