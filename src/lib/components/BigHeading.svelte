<script lang="ts">
  const { children } = $props();
</script>

<h1 class="mb-4 flex items-center gap-6 text-2xl font-semibold">
  {@render children()}
</h1>
