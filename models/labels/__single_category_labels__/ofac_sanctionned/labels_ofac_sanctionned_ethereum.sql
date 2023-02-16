{{config(alias='ofac_sanctioned_ethereum',
        post_hook='{{ expose_spells(\'["ethereum"]\',
                                    "sector",
                                    "labels",
                                    \'["hildobby"]\') }}')}}

SELECT blockchain, address, name, category, contributor, source, created_at, updated_at, model_name, label_type
FROM (VALUES
    -- Source: https://home.treasury.gov/policy-issues/financial-sanctions/recent-actions/20220808
    ('ethereum', '0x8589427373d6d84e98730d7795d8f6f8731fda16', 'Tornado Cash: Donate', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x722122df12d4e14e13ac3b6895a86e84145b6967', 'Tornado Cash: Proxy', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xdd4c48c0b24039969fc16d1cdf626eab821d3384', 'Tornado Cash: Gitcoin Grant', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xd90e2f925da726b50c4ed8d0fb90ad053324f31b', 'Tornado Cash: Router', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xd96f2b1c14db8458374d9aca76e26c3d18364307', 'Tornado Cash: 100 USDC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x4736dcf1b7a3d580672cce6e7c65cd5cc9cfba9d', 'Tornado Cash: 1000 USDC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xd4b88df4d29f5cedd6857912842cff3b20c8cfa3', 'Tornado Cash: 100 DAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x910cbd523d972eb0a6f4cae4618ad62622b39dbf', 'Tornado Cash: 10 ETH Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xa160cdab225685da1d56aa342ad8841c3b53f291', 'Tornado Cash: 100 ETH Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xfd8610d20aa15b7b2e3be39b396a1bc3516c7144', 'Tornado Cash: 1000 DAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xf60dd140cff0706bae9cd734ac3ae76ad9ebc32a', 'Tornado Cash: 10000 DAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x22aaa7720ddd5388a3c0a3333430953c68f1849b', 'Tornado Cash: 5000 cDAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xba214c1c1928a32bffe790263e38b4af9bfcd659', 'Tornado Cash: 50000 cDAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xb1c8094b234dce6e03f10a5b673c1d8c69739a00', 'Tornado Cash: 500000 cDAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x527653ea119f3e6a1f5bd18fbf4714081d7b31ce', 'Tornado Cash: Trees', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xd691f27f38b395864ea86cfc7253969b409c362d', 'Tornado Cash: 10000 USDC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xaeaac358560e11f52454d997aaff2c5731b6f8a6', 'Tornado Cash: 5000 cUSDC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x1356c899d8c9467c7f71c195612f8a395abf2f0a', 'Tornado Cash: 50000 cUSDC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xa60c772958a3ed56c1f15dd055ba37ac8e523a0d', 'Tornado Cash: 500000 cUSDC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x169ad27a470d064dede56a2d3ff727986b15d52b', 'Tornado Cash: 100 USDT Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x0836222f2b2b24a3f36f98668ed8f0b38d1a872f', 'Tornado Cash: 1000 USDT Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xf67721a2d8f736e75a49fdd7fad2e31d8676542a', 'Tornado Cash: 10000 USDT Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x9ad122c22b14202b4490edaf288fdb3c7cb3ff5e', 'Tornado Cash: 100000 USDT Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x905b63fff465b9ffbf41dea908ceb12478ec7601', 'Tornado Cash: Old Proxy', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x07687e702b410fa43f4cb4af7fa097918ffd2730', 'Tornado Cash: 10000 DAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x94a1b5cdb22c43faab4abeb5c74999895464ddaf', 'Tornado Cash: Mixer 1', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xb541fc07bc7619fd4062a54d96268525cbc6ffef', 'Tornado Cash: Mixer 2', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x12d66f87a04a9e220743712ce6d9bb1b5616b8fc', 'Tornado Cash: 0.1 ETH Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x47ce0c6ed5b0ce3d3a51fdb1c52dc66a7c3c2936', 'Tornado Cash: 1 ETH Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x23773e65ed146a459791799d01336db287f25334', 'Tornado Cash: 100000 DAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xd21be7248e0197ee08e0c20d4a96debdac3d20af', 'Tornado Cash: 5000000 cDAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x610b717796ad172b316836ac95a2ffad065ceab4', 'Tornado Cash: 1 WBTC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x178169b423a011fff22b9e3f3abea13414ddd0f1', 'Tornado Cash: 0.1 WBTC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xbb93e510bbcd0b7beb5a853875f9ec60275cf498', 'Tornado Cash: 10 WBTC Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x2717c5e28cf931547b621a5dddb772ab6a35b701', 'Tornado Cash: 500000 cDAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x03893a7c7463ae47d46bc7f091665f1893656003', 'Tornado Cash: 50000 cDAI Pool', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0xca0840578f57fe71599d29375e16783424023357', 'Tornado Cash: L1 Helper', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    , ('ethereum', '0x58e8dcc13be9780fc42e8723d8ead4cf46943df2', 'Tornado Cash: Relayer Registry', 'ofac_sanction', 'hildobby', 'static', TIMESTAMP('2022-09-20'), now(), 'ofac_sanctionned', 'identifier')
    ) AS x (blockchain, address, name, category, contributor, source, created_at, updated_at, model_name, label_type)