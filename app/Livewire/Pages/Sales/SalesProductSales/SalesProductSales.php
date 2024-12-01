<?php

namespace App\Livewire\Pages\Sales\SalesProductSales;

use Livewire\Component;
use App\Models\Company;

class SalesProductSales extends Component
{

  public $route = '';

  public function mount()
  {
    $this->route = request()->route()->getName(); // Set initial route on mount
  }


  public function render()
  {
    $companies = Company::all();
    return view('livewire.pages.sales.SalesProductSales.sales-product-sales', [
      'companies' => $companies,
    ])
      ->layout('components.layouts.app', [
        'sidebar' => view('livewire.pages.sales.components.sidebar-sales', [
          'companies' => $companies,
        ]),
      ]);
  }
}
