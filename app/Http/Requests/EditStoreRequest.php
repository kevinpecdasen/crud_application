<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class EditStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        $store = $this->route();

        return [
            'name'  => [
                        'required',
                        'max:150',
                        Rule::unique('stores')->ignore($store->id),
                        'string'],
            'description'  => ['required', 'max:250', 'string'],
        ];
    }
}
