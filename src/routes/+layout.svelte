<script lang="ts">
  import './layout.css';
  import yalc_logo from '$lib/assets/yalc-logo.svg';
  import lisam_logo from '$lib/assets/lisam-logo.png';
  import liu_primar_vit from '$lib/assets/LiU_primar_vit.svg';
  import Sidebar from '$lib/components/Sidebar.svelte';
  import Header from '$lib/components/Header.svelte';

  let { children } = $props();
</script>

<svelte:head>
  <link rel="icon" href={yalc_logo} />
</svelte:head>

<Header />

<section class="flex flex-1">
  <Sidebar />

  <main>
    <h1 class="flex items-center gap-2 text-3xl font-bold">
      <img src={lisam_logo} alt="Lisam logo" class="h-12 w-12" />
      Lisam
    </h1>
    {@render children()}
  </main>
</section>

<footer class="bg-[#03787c] p-4 text-white">
  <img width="200" src={liu_primar_vit} alt="liu logo" />
  No rights reservd!!!
</footer>
