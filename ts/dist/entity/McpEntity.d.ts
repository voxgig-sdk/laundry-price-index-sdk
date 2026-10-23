import { LaundryPriceIndexEntityBase } from '../LaundryPriceIndexEntityBase';
import type { LaundryPriceIndexSDK } from '../LaundryPriceIndexSDK';
import type { Control } from '../types';
import type { Mcp, McpLoadMatch, McpCreateData } from '../LaundryPriceIndexTypes';
declare class McpEntity extends LaundryPriceIndexEntityBase<Mcp> {
    constructor(client: LaundryPriceIndexSDK, entopts: any);
    make(this: McpEntity): McpEntity;
    load(this: any, reqmatch?: McpLoadMatch, ctrl?: Control): Promise<McpEntity>;
    create(this: any, reqdata?: McpCreateData, ctrl?: Control): Promise<McpEntity>;
}
export { McpEntity };
