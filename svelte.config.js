import adapter from '@sveltejs/adapter-node';

/** @type {import('@sveltejs/kit').Config} */
const config = {
  kit: {
    // adapter-node creates a standalone Node.js server for production
    adapter: adapter({
      out: 'build'
    }),
    alias: {
      '@/*': './path/to/lib/*'
    }
  }
};

export default config;
