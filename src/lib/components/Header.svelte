<script lang="ts">
  import { Label } from '$lib/components/ui/label/index.js';
  import { Switch } from '$lib/components/ui/switch/index.js';

  import liu_notext_black from '$lib/assets/LiU-Black_Liu_noText.svg';

  import { fly } from 'svelte/transition';
  import { cubicOut } from 'svelte/easing';

  let open = false;

  function toggle() {
    open = !open;
  }
</script>

<header>
  <nav class="flex items-center gap-4 bg-[#80dcf3]">
    <button
      on:click={toggle}
      class="p-4 hover:cursor-pointer hover:bg-gray-300"
      aria-label="menu-select"
    >
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

    <div class="left absolute relative top-full inline-block">
      {#if open}
        <div
          transition:fly={{
            x: -12, // move from right
            y: -8, // move from slightly above
            duration: 100,
            easing: cubicOut,
            opacity: 0
          }}
          class="absolute top-full left-0 z-50 mt-2 w-48 rounded-md bg-white p-4 shadow-lg"
        >
          <div class="flex items-center space-x-2">
            <Switch id="airplane-mode" />
            <Label for="airplane-mode">Lisam Speed</Label>
          </div>
        </div>
      {/if}
    </div>
    <img class="mr-20" width="30" src={liu_notext_black} alt="YALC logo" />
    <b class="mr-20">Share</b><b>Point</b>
  </nav>
</header>
