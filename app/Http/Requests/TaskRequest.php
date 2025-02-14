<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TaskRequest extends FormRequest
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
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'task_name' =>['required','string'],
            'description'=> [ 'required','string'],
            'priority' => ['required' , 'integer'],
            'level'=>['required','integer'],
            'start_date' => ['required','after_or_equal:today'],
            'developer' => ['required'],
        ];
    }
}
