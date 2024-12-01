<?php

namespace App\Livewire\Pages\Sales\SalesProductSales\Forms;

use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;

use Livewire\Form;

class ProductForm extends Form
{
  public string|null $name = null;
  public TemporaryUploadedFile|string|null $image = null;

  public function rules(string|null $id = null): array
  {
    return [
      'name' => 'required|string',
      'image' => [
        'nullable',
        new \App\Rules\StringOrImageRule,
      ],
    ];
  }


  public function attributes(): array
  {
    return [
      'productForm.name' => 'Product',
      'productForm.image' => 'Image',
    ];
  }
}
