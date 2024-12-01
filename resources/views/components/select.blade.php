<div class="mb-3">
  <x-label :for="$attributes->get('for')">{{ $placeholder }}</x-label>

  <select wire:model="{{ $attributes->get('wire:model') }}" class="form-control"
    {{ $attributes->merge(['class' => '']) }}>
    <option value="" disabled selected>{{ $placeholder }}</option>
    @foreach ($options as $option)
      <option value="{{ $option['id'] }}">{{ $option['name'] }}</option>
    @endforeach
  </select>
</div>
