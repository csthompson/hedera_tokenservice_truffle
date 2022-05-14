// Contracts
const Example = artifacts.require("ContractExample")

// Utils
const ether = (n) => {
    return new web3.utils.BN(
        web3.utils.toWei(n.toString(), 'ether')
    )
}

module.exports = async function (callback) {
    try {
        // Fetch accounts from wallet - these are unlocked
        const accounts = await web3.eth.getAccounts()

        // Fetch the deployed exchange
        const example = await Example.deployed()

        await example.test()
    }
    catch (error) {
        console.log(error)
    }

    callback()
}