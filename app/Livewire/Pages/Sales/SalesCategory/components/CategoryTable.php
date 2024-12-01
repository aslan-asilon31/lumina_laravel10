<?php

namespace App\Livewire\Pages\Sales\SalesProductSales\Components;

use App\Models\product;
use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Blade;
use PowerComponents\LivewirePowerGrid\Button;
use PowerComponents\LivewirePowerGrid\Column;
use PowerComponents\LivewirePowerGrid\Facades\Filter;
use PowerComponents\LivewirePowerGrid\Facades\PowerGrid;
use PowerComponents\LivewirePowerGrid\PowerGridFields;
use PowerComponents\LivewirePowerGrid\PowerGridComponent;
use Livewire\WithPagination;
use Illuminate\Support\Facades\DB;
use App\Helpers\Table\Traits\WithTable;
use PowerComponents\LivewirePowerGrid\Footer;
use PowerComponents\LivewirePowerGrid\Header;
use PowerComponents\LivewirePowerGrid\Traits\WithExport;


final class ProductTable extends PowerGridComponent
{
  public string $tableName = 'product-table-ux8ik2-table';

  public function setUp(): array
  {
    $this->showCheckBox();

    return [
      PowerGrid::header()
        ->showSearchInput(),
      PowerGrid::footer()
        ->showPerPage()
        ->showRecordCount(),
    ];
  }

  public function datasource(): Builder
  {
    return product::query();
  }

  public function relationSearch(): array
  {
    return [];
  }

  public function fields(): PowerGridFields
  {
    return PowerGrid::fields()

      ->add('action', fn($record) => '
      <div class="flex">
      <a href="/sales/product-sales/' . e($record->id) . '/edit/" :isEdit="true" class="m-4">
      <img width="24" height="24" src="https://img.icons8.com/nolan/64/edit-database.png" alt="edit-database"/>
        </a> 
      <br/>

    <a wire:click="destroy({{ e($record->id) }})" class="m-4">
        <img width="24" height="24" src="https://img.icons8.com/nolan/64/delete-forever.png" alt="delete-forever"/>
    </a>

      </div>
      ')
      ->add('id')
      ->add('name')

      ->add('status', function ($record) {
        return $record->status ? $record->status->name : 'No Status'; // Menampilkan nama status terkait
      })

      ->add('image', function ($record) {
        // Periksa apakah gambar ada
        return $record->image ?
          '<img src="' . asset('storage/' . $record->image) . '" alt="Product Image" width="50">' :
          'No image';
      })


      ->add('price', function ($record) {
        return $record->price ? $record->price->price_selling_after : 'No price';
      })


      ->add('price_before', function ($record) {
        return $record->price ? $record->price->price_selling : 'No price';
      })

      ->add('created_at_formatted', function ($dish) {
        return Carbon::parse($dish->created_at)->locale('id')->isoFormat('D MMMM YYYY HH:mm');
      });
  }

  public function columns(): array
  {
    return [
      Column::make(title: 'Action', field: 'action'),

      Column::make('Name', 'name')
        ->sortable(),

      Column::make('Image', 'image')
        ->sortable(),

      Column::make('Created By', 'created_by')
        ->sortable(),

      Column::make('Status', 'status')->sortable(),
      Column::make('Price', 'price')->sortable(),
      Column::make('Price Before', 'price_before')->sortable(),

      Column::make('Created At', 'created_at_formatted')
        ->sortable(),



    ];
  }

  public function filters(): array
  {
    return [
      Filter::inputText('name')->placeholder('Name'),
    ];
  }

  #[\Livewire\Attributes\On('edit')]
  public function edit($rowId): void
  {
    $this->js('alert(' . $rowId . ')');
  }

  public function action(product $row): array
  {
    return [

      Button::add('edit')
        ->slot('Edit: ' . $row->id)
        ->id()
        ->class('pg-btn-white dark:ring-pg-primary-600 dark:border-pg-primary-600 dark:hover:bg-pg-primary-700 dark:ring-offset-pg-primary-800 dark:text-pg-primary-300 dark:bg-pg-primary-700')
        ->dispatch('edit', ['rowId' => $row->id]),

      Button::add('show')
        ->slot('Show: ' . $row->id)
        ->id()
        ->class('pg-btn-white dark:ring-pg-primary-600 dark:border-pg-primary-600 dark:hover:bg-pg-primary-700 dark:ring-offset-pg-primary-800 dark:text-pg-primary-300 dark:bg-pg-primary-700')
        ->dispatch('show', ['rowId' => $row->id])
    ];
  }
}
