<script lang="ts">
  import { cn } from '$lib/utils';
  import type { Snippet } from 'svelte';
  import type { HTMLAttributes } from 'svelte/elements';

  type Props = HTMLAttributes<HTMLHeadingElement> & {
    children: Snippet;
  };

  const { children, class: className, ...rest }: Props = $props();
</script>

<h2 class={cn('text-2xl font-semibold', className)} {...rest}>{@render children()}</h2>
