export const LISAM_MODE_STORAGE_KEY = 'lisamMode';

export const theme = $state({
  light: true, // Will be updated from localStorage in +layout.svelte
  lisamModeDelay: {
    from: 1000,
    to: 4000
  }
});
