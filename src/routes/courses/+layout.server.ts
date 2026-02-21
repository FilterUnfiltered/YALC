import fs from 'fs';
import path from 'path';
import yaml from 'yaml';

// TODO: needed?
// export const prerender = true;

const file = fs.readFileSync(path.resolve('src/lib/assets/courses.yaml'), 'utf-8');

const courses = yaml.parse(file);

export async function load() {
  return { courses };
}
