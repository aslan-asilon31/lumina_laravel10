<?php

namespace App\Livewire\Components;

use Livewire\Component;

class MenuSidebar extends Component
{
  public $companies;

  public function mount($companies)
  {
    $this->companies = $companies;
  }
  public function render()
  {
    return view('livewire.components.menu-sidebar');
  }
}
