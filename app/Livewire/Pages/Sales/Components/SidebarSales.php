<?php

namespace App\Livewire\Pages\Sales\Components;

use Livewire\Component;
use App\Models\Company;

class SidebarSales extends Component
{
  public $companies;

  public function mount()
  {
    $this->companies = Company::all(); // Ambil semua data perusahaan
  }

  public function render()
  {

    return view('livewire.pages.sales.components.sidebar-sales', [
      'companies' => $this->companies, // Pastikan data dikirim ke Blade
    ]);
  }
}
