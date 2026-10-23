import { LaundryPriceIndexEntityBase } from '../LaundryPriceIndexEntityBase';
import type { LaundryPriceIndexSDK } from '../LaundryPriceIndexSDK';
import type { Control } from '../types';
import type { Enquiry, EnquiryCreateData } from '../LaundryPriceIndexTypes';
declare class EnquiryEntity extends LaundryPriceIndexEntityBase<Enquiry> {
    constructor(client: LaundryPriceIndexSDK, entopts: any);
    make(this: EnquiryEntity): EnquiryEntity;
    create(this: any, reqdata?: EnquiryCreateData, ctrl?: Control): Promise<EnquiryEntity>;
}
export { EnquiryEntity };
