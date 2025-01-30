import { WebPlugin } from '@capacitor/core';

import type { MediationPluginPlugin } from './definitions';

export class MediationPluginWeb extends WebPlugin implements MediationPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
