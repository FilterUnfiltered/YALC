<script lang="ts">
  import './layout.css';
  import yalc_logo from '$lib/assets/yalc-logo.svg';
  import lisam_logo from '$lib/assets/lisam-logo.png';
  import liu_primar_vit from '$lib/assets/LiU_primar_vit.svg';
  import liu_notext_black from '$lib/assets/LiU-Black_Liu_noText.svg';
  import Sidebar from '$lib/components/Sidebar.svelte';

  let { children } = $props();
</script>

<svelte:head>
  <link rel="icon" href={yalc_logo} />
</svelte:head>

<header>
  <nav class="flex items-center gap-4 bg-[#80dcf3]">
    <button class="p-4 hover:bg-gray-300" aria-label="menu-select">
      <svg
        width="24"
        height="24"
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
      >
        <circle cx="5" cy="5" r="1" fill="currentColor" />
        <circle cx="12" cy="5" r="1" fill="currentColor" />
        <circle cx="19" cy="5" r="1" fill="currentColor" />
        <circle cx="5" cy="12" r="1" fill="currentColor" />
        <circle cx="12" cy="12" r="1" fill="currentColor" />
        <circle cx="19" cy="12" r="1" fill="currentColor" />
        <circle cx="5" cy="19" r="1" fill="currentColor" />
        <circle cx="12" cy="19" r="1" fill="currentColor" />
        <circle cx="19" cy="19" r="1" fill="currentColor" />
      </svg>
    </button>
    <img class="mr-20" width="30" src={liu_notext_black} alt="YALC logo" />
    <b class="mr-20">Share</b><b>Point</b>
  </nav>
</header>

<Sidebar />

<main>
  <h1 class="flex">
    <img width="50" src={lisam_logo} alt="Lisam logo" />
    Lisam
  </h1>
  {@render children()}
</main>

<footer class="bg-[#03787c] p-4 text-white">
  <img width="200" src={liu_primar_vit} alt="liu logo" />
  No rights reservd!!!
</footer>
