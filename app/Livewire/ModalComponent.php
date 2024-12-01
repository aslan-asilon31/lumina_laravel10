<?php

namespace App\Http\Livewire;

use Livewire\Component;

class ModalComponent extends Component
{
  public function showModal()
  {
    $this->dispatchBrowserEvent('openModal');
  }

  public function render()
  {
    return view('livewire.modal-component');
  }
}
