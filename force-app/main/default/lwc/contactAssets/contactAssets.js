import { LightningElement, api, track } from 'lwc';
import getContactAssets from '@salesforce/apex/AlchemyCallout.getContactAssets';

export default class ContactAssets extends LightningElement {

    @api recordId;
    @track assets;
    @track error;

    handleClick(event) {
        const calloutURI = 'https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=20';
        fetch(calloutURI, {method: "GET"}).
            then()
        /*
        getContactAssets()
            .then(result => {
                this.assets = result;
            })
            .catch(error => {
                this.error = error;
            });
            */
    }
}