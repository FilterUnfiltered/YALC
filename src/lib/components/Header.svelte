<script lang="ts">
  import { Label } from '$lib/components/ui/label/index.js';
  import { Switch } from '$lib/components/ui/switch/index.js';

  import liu_notext_black from '$lib/assets/LiU-Black_Liu_noText.svg';

  import { fly } from 'svelte/transition';
  import { cubicOut } from 'svelte/easing';
  import { Grip } from '@lucide/svelte';

  let open = $state(false);

  function toggle() {
    open = !open;
  }

  import { setContext, getContext } from 'svelte';

  let lisamSpeed = getContext('lisam-speed');

  setContext('lisam-speed', {
    get value() {
      return lisamSpeed;
    },
    set value(v: boolean) {
      lisamSpeed = v;
    }
  });
</script>

<header>
  <nav class="flex items-center gap-4 bg-[#80dcf3]">
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
          class="absolute top-full left-0 z-50 mt-2 w-48 rounded-md bg-white p-4 shadow-lg"
        >
          <div class="flex items-center space-x-2">
            <Switch
              id="airplane-mode"
              checked={getContext('lisam-speed').value}
              on:checkedChange={(e) => (lisamSpeed.value = e)}
            />
            <Label for="airplane-mode">Lisam Speed</Label>
          </div>
        </div>
      {/if}
    </div>
    <img class="mr-20" width="30" src={liu_notext_black} alt="YALC logo" />
    <b class="mr-20">Share</b><b>Point</b>
  </nav>
</header>
