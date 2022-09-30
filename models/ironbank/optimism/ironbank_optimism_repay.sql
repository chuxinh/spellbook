{{ config(
    alias = 'repay',
    post_hook='{{ expose_spells(\'["optimism"]\',
                                "project",
                                "ironbank",
                                \'["michael-ironbank"]\') }}'
) }}

SELECT
'ironbank' AS project,
'1' AS version,
evt_block_number AS block_number,
evt_block_time AS block_time,
evt_tx_hash AS tx_hash,
evt_index,
borrower,
i.underlying_token_address AS asset_address,
repayAmount AS repay_amount
FROM (
SELECT * FROM {{ source('ironbank_optimism', 'CErc20Delegator_evt_RepayBorrow') }}
) ironbank
LEFT JOIN {{ ref('ironbank_optimism_itokens') }} i ON ironbank.contract_address = i.contract_address