
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { LaundryPriceIndexSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = LaundryPriceIndexSDK.test()
    equal(testsdk instanceof LaundryPriceIndexSDK, true,
      'LaundryPriceIndexSDK.test() must return a client synchronously')
  })

})
