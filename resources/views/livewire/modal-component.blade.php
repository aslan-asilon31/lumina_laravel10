<div>
  <button wire:click="showModal">Open Modal</button>

  <!-- Modal -->
  <div id="myModal" style="display: none;">
    <div class="modal-content">
      <span class="close" onclick="closeModal()">&times;</span>
      <p>This is a modal!</p>
    </div>
  </div>
</div>

<script>
  window.addEventListener('openModal', event => {
    document.getElementById('myModal').style.display = 'block'; // Menampilkan modal
  });

  function closeModal() {
    document.getElementById('myModal').style.display = 'none'; // Menutup modal
  }
</script>
