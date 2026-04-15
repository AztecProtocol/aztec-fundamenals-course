use crate::{test::utils::{self}};

#[test]
unconstrained fn test_increment_counter() {
    // deploy the contract innit
    let (mut env, counter_contract_address) = utils::deploy_counter_contract();
    
    // get their initial value
    let user = env.create_light_account();
    // check the value is as expected
    let counter_value_before = utils::get_private_counter(&mut env, counter_contract_address, user);
    assert(counter_value_before == 0, "counter value not as expected");

    //increment the counter
    let counter_value = utils::increment_counter(&mut env, user, counter_contract_address);

    // check the value 
    assert(counter_value == (counter_value_before +1), "counter value not expected");
}