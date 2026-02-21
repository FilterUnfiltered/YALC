<script lang="ts">
  import { Label } from '$lib/components/ui/label/index.js';
  import { Switch } from '$lib/components/ui/switch/index.js';
  import { Input } from '$lib/components/ui/input/index.js';
  import { theme } from '$lib/theme.svelte.ts';

  import liu_notext_black from '$lib/assets/LiU-Black_Liu_noText.svg';
  import search from '$lib/assets/search.svg';
  import settings from '$lib/assets/settings.svg';
  import copilot from '$lib/assets/copilot.svg';

  import { fly } from 'svelte/transition';
  import { cubicOut } from 'svelte/easing';
  import { setContext, getContext } from 'svelte';

  import { Grip } from '@lucide/svelte';

  let open = $state<boolean>(false);
  function toggle() {
    open = !open;
  }
</script>

<header>
  <nav class="flex h-16 items-center justify-between gap-4 bg-[#80dcf3]">
    <button
      onclick={toggle}
      class="flex h-12 w-12 items-center justify-center hover:cursor-pointer hover:bg-gray-300"
      aria-label="menu-select"
    >
      <Grip class="h-6 w-6" />
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
          class="fixed top-10 left-0 z-50 mt-2 w-48 rounded-md bg-white p-4 shadow-lg"
        >
          <div class="flex items-center space-x-2">
            <Switch id="airplane-mode" bind:checked={theme.light} />
            <Label for="airplane-mode">Lisam Speed</Label>
          </div>
        </div>
      {/if}
    </div>
    <img class="mr-20" width="30" src={liu_notext_black} alt="YALC logo" />
    <b class="mr-20">Share</b><b>Point</b>
    <div class="relative flex-1">
      <!-- Search input with icon. Should be in center of nav -->
      <img
        class="absolute top-1/2 left-2 -translate-y-1/2"
        width="16"
        src={search}
        alt="Search icon"
      />
      <Input type="search" placeholder="Search across sites" class="max-w-xs pl-8" />
    </div>
    <button class="ml-4 h-full rounded-md p-2 hover:bg-gray-300" aria-label="copilot">
      <img width="16" src={copilot} alt="Copilot icon" />
    </button>
    <button class="ml-4 h-full rounded-md p-2 hover:bg-gray-300" aria-label="settings">
      <img width="16" src={settings} alt="Settings icon" />
    </button>
  </nav>
</header>
