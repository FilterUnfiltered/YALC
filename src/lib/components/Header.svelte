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

  import { Grip } from '@lucide/svelte';
</script>

<header>
  <nav class="flex items-center justify-between gap-4 bg-[#80dcf3]">
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
    <img class="mr-20 h-12 w-12" src={liu_notext_black} alt="YALC logo" />
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
    <button class="ml-4 h-full rounded-md px-2 hover:bg-gray-300" aria-label="copilot">
      <img width="16" src={copilot} alt="Copilot icon" />
    </button>
    <button class="ml-4 h-full rounded-md px-2 hover:bg-gray-300" aria-label="settings">
      <img width="16" src={settings} alt="Settings icon" />
    </button>
  </nav>
</header>
