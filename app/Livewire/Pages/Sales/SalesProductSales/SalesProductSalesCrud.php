<?php

namespace App\Livewire\Pages\Sales\SalesProductSales;

use App\Models\Product;
use App\Models\Company;
use App\Models\Image;
use Livewire\WithFileUploads;
use App\Livewire\Pages\Sales\SalesProductSales\Forms\ProductForm;
use Livewire\Component;
use Illuminate\Support\Facades\Http;
use App\Helpers\ImageUpload\Traits\WithImageUpload;

class SalesProductSalesCrud extends Component
{
  use WithFileUploads;
  use WithImageUpload;

  public $route = '';
  public string $title = 'Product Sales';
  public string $url = '/sales//product-sales';

  private string $uploadFolderName = 'files/images/product-contents';
  private string $baseImageName = 'product-content-image';

  #[\Livewire\Attributes\Locked]
  public null|string $id = null;
  public string $name = '';
  public $image = '';
  public $filepond = '';
  private  string $model = Product::class;
  private  string $modelImage = Image::class;
  public ProductForm $productForm;

  public function mount()
  {

    if ($this->id) {
      $this->edit(); // Menampilkan form edit
    } else {
      $this->store(); // Menyimpan produk baru jika tidak ada ID
    }
  }

  public function create()
  {
    $this->productForm->reset();
  }


  public function edit()
  {
    $record = $this->model::findOrFail($this->id);
    $this->productForm->fill($record);
  }

  public function store()
  {
    $validatedForm = $this->productForm->validate();

    $folderName = 'files/product-sales/' . e($this->id);
    $newImageUrl = $validatedForm['image'];
    $newImageName = $this->id . '_' . $this->baseImageName;
    $oldImageUrl = null;
    $validatedForm['image'] = $this->saveImage(
      $folderName,
      $newImageUrl,
      $newImageName,
      $oldImageUrl
    );

    $validatedForm['slug'] = str($validatedForm['name'])->slug();
    $record = $this->model::create($validatedForm);

    $imageData = [
      // 'image' => $record['image'],

      'image' => $validatedForm['image'],
      'product_id' => $record['id']
    ];

    Image::create($imageData);


    session()->flash('success_notification', __('messages.created_notification_message'));
    return redirect('sales/product-sales');
  }

  public function destroy($id)
  {
    $product = Product::find($id);

    if ($product) {
      $product->delete();
      session()->flash('message', 'Product successfully deleted!');
      return redirect('sales/product-sales');
    } else {
      session()->flash('message', 'Product not found!');
      return redirect('sales/product-sales');
    }
  }




  public function render()
  {

    $companies = Company::all();

    return view('livewire.pages.sales.SalesProductSales.sales-product-sales-crud', [
      'companies' => $companies,
    ])
      ->layout('components.layouts.app', [
        'sidebar' => view('livewire.pages.sales.components.sidebar-sales', [
          'companies' => $companies,
        ]),
      ])->title($this->title);
  }
}
