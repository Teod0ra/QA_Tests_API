function fn() {
    var config =
        {
            baseUrl: 'https://sandbox-partners-api.airalo.com/v2',
            authUrl: 'https://sandbox-partners-api.airalo.com/v2/token',
            client_id: '7e29e2facf83359855f746fc490443e6',
            client_secret: 'e5NNajm6jNAzrWsKoAdr41WfDiMeS1l6IcGdhmbb',
            formFieldsNewOrder: {
                quantity: '6',
                package_id: 'merhaba-7days-1gb',
                type: 'sim',
                description: 'Example description',
                brand_settings_name: 'example brand'
            }
        };
    var authResponse = karate.callSingle('classpath:com/airloo/auth.feature', config);
    config.authToken = 'Bearer ' + authResponse.response.data.access_token;

    return config;
}
