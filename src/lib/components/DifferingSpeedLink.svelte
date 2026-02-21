<script lang="ts">
  import type { Snippet } from 'svelte';
  import type { HTMLAttributes } from 'svelte/elements';
  import { theme } from '$lib/theme.svelte';
  import { goto } from '$app/navigation';
  import { resolve } from '$app/paths';

  type Props = HTMLAttributes<HTMLAnchorElement> & {
    to: string;
    children: Snippet;
  };

  const { children, to, ...rest }: Props = $props();

  function handleClick(event: MouseEvent) {
    if (theme.light && to) {
      event.preventDefault();

      // Delay navigation when in Lisam Speed mode
      setTimeout(
        () => {
          // eslint-disable-next-line @typescript-eslint/no-explicit-any
          goto(resolve(to as any));
        },
        Math.random() * (theme.lisamModeDelay.to - theme.lisamModeDelay.from) +
          theme.lisamModeDelay.from
      );
    }
  }
</script>

<a
  {...rest}
  href={// eslint-disable-next-line @typescript-eslint/no-explicit-any
  resolve(to as any)}
  data-sveltekit-preload-data={theme.light ? 'off' : 'hover'}
  onclick={theme.light ? handleClick : undefined}
>
  {@render children()}
</a>
