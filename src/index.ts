import { registerPlugin } from '@capacitor/core';

import type { MediationPluginPlugin } from './definitions';

const MediationPlugin = registerPlugin<MediationPluginPlugin>('MediationPlugin', {
  web: () => import('./web').then((m) => new m.MediationPluginWeb()),
});

export * from './definitions';
export { MediationPlugin };
