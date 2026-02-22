<script lang="ts">
  import { Label } from '$lib/components/ui/label/index.js';
  import { Switch } from '$lib/components/ui/switch/index.js';
  import { Input } from '$lib/components/ui/input/index.js';
  import { theme } from '$lib/theme.svelte';

  import liu_notext_black from '$lib/assets/LiU-Black_Liu_noText.svg';
  import search from '$lib/assets/search.svg';
  import settings from '$lib/assets/settings.svg';
  import copilot from '$lib/assets/copilot.svg';

  import {
    DropdownMenu,
    DropdownMenuTrigger,
    DropdownMenuContent
  } from '$lib/components/ui/dropdown-menu/index.js';

  import foxyGifPath from '$lib/assets/fnaf-foxy-jumpscare.gif';
  import screamPath from '$lib/assets/foxy.opus';

  let doJumpscare = $state(false);

  let audio: HTMLAudioElement;

  $effect(() => {
    audio = new Audio(screamPath);
    audio.volume = 1;
  });

  $effect(() => {
    if (doJumpscare) {
      audio.currentTime = 0;
      audio.play().catch(() => {});

      setTimeout(() => {
        doJumpscare = false;
        audio.pause();
      }, 750);
    }
  });

  let foxyGifSrc = $derived(doJumpscare ? `${foxyGifPath}?${Date.now()}` : null);

  const LISAM_MODE_STORAGE_KEY = 'lisamMode';

  import { browser } from '$app/environment';

  if (browser) {
    const stored = localStorage.getItem(LISAM_MODE_STORAGE_KEY);

    if (stored !== null) {
      theme.light = stored === 'true';
    }

    $effect(() => {
      localStorage.setItem(LISAM_MODE_STORAGE_KEY, String(theme.light));
    });
  }

  import { Grip } from '@lucide/svelte';
</script>

<header>
  <nav class="grid grid-cols-3 items-center gap-4 bg-[#80dcf3] dark:bg-[#03787c]">
    <!-- Left section -->
    <div class="flex items-center gap-4">
      <DropdownMenu>
        <DropdownMenuTrigger
          class="flex h-14 w-14 items-center justify-center hover:cursor-pointer hover:bg-gray-300"
          aria-label="menu-select"
        >
          <Grip class="h-6 w-6" />
        </DropdownMenuTrigger>

        <DropdownMenuContent
          align="start"
          class="mt-2 w-48 rounded-md bg-white p-4 shadow-lg dark:bg-gray-800"
        >
          <div class="flex items-center space-x-2 rounded-md p-2 dark:hover:bg-gray-700">
            <Switch id="lisam-mode" bind:checked={theme.light} />
            <Label for="lisam-mode">Lisam Speed</Label>
          </div>
        </DropdownMenuContent>
      </DropdownMenu>
      <img class="h-12 w-12" src={liu_notext_black} alt="YALC logo" />
      <div class="flex items-center">
        <b class="mx-12">Share</b><b>Point</b>
      </div>
    </div>

    <!-- Center section -->
    <div class="relative flex justify-center">
      <!-- Search input with icon. Should be in center of nav -->
      <div class="relative">
        <img
          class="absolute top-1/2 left-4 -translate-y-1/2"
          width="16"
          src={search}
          alt="Search icon"
        />
        <Input
          type="search"
          placeholder="Search across sites"
          class="h-[32px] w-116 pl-12 shadow-sm"
        />
      </div>
    </div>

    <!-- Right section -->
    <div class="flex items-center justify-end gap-2">
      <button
        class="h-full rounded-md px-2 hover:bg-gray-300"
        aria-label="copilot"
        onclick={() => {
          doJumpscare = true;
        }}
      >
        <img width="16" src={copilot} alt="Copilot icon" />
      </button>
      <button class="h-full rounded-md px-2 hover:bg-gray-300" aria-label="settings">
        <img width="16" src={settings} alt="Settings icon" />
      </button>
    </div>
  </nav>
</header>

<img
  src={foxyGifSrc}
  alt="Foxy Jumpscare"
  class="pointer-events-none absolute top-0 left-0 h-full w-full object-cover"
/>
