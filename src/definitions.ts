export interface MediationPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
