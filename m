Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C65336C0B6C
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 08:36:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230062AbjCTHgw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 03:36:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbjCTHgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 03:36:49 -0400
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2079.outbound.protection.outlook.com [40.107.94.79])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 165601C7F9
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 00:36:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eCm1xUOfDi5g6gJopn/h2HUTHrLSBRd3CPanr49xd8i3do69P3GsO/iLRd47SYmLid3j4ou0hKLnYxGijklJAYAx5ahHvZ9d1PZLJKNc9OHt9/i+/YPi1PrQxlsuvqt49TiOrkGJhFkN8zrRoH6LCZtg/Y8WialcdVSEURbl47QyT4qsx8dCjhkBT4ByEO+kW/+5dkAobgYf+/KWEqD4fnkEjI/p4rqOKFun18urtk5tobdxUbr1js/Rk91a1POlTKcYwCXaxwXMS/R9wXJK6kTHxLwqkn0fIr11F77KRznOstTZAUUB6/X9ZbjjJjqDpxXp2ZHBE6SeFZmyguZUiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O4jP20jRdfeD5BOZweGtNu1dbqNiny92IAflNAzBNs4=;
 b=hKd8aXIj0R+esJtZZ4ZkJlRB7NagZfTZpebzZhTzP5mxWfqcqHi4F2K5KzGFmVJ+ha3yujmZt8XoY6gYfgRHESSFpp+oTwhwr259Dv7Zii/YAg3hzEYSgH4YnBYHQCoSuze0ZawyM0Ca7tLf7g1XfshXgD7XubeUUl3/4tc/ezoEs1l6RrFsecHMFWi9GP2UTpVpwPzi+SsI7KY+riQ0yFhlaYUQgjJjJBc5NRCR/kc5agPBD9/kecVvGK7LrtqiayL+olwpn/xKeDxiLYjkZb5O5NecZRCy8CRpnLqvG48SsqtFOyIwsvQhQJsolVcwalTq4GuPT3SioJBYoKARbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O4jP20jRdfeD5BOZweGtNu1dbqNiny92IAflNAzBNs4=;
 b=UOtzScDCkXIRyEhflIGQBX0GL3fG5EPbpF4p2D2Aeb0mzDoOM1GYDAApgmKQQ6c1ANwpfh8HuHCTAO5qGChGU9kBuXj3JTNf61u6K9nvM9Cv8PJohyXjQ56WmNQjWpvduke/M90r7T8GMOc1KrfFhPY6Wl86fkM4P9KiLmx1ZQ0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB4758.namprd12.prod.outlook.com (2603:10b6:a03:a5::28)
 by MW6PR12MB8997.namprd12.prod.outlook.com (2603:10b6:303:23e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 20 Mar
 2023 07:36:39 +0000
Received: from BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::4d07:7f52:c833:9603]) by BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::4d07:7f52:c833:9603%6]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 07:36:39 +0000
Message-ID: <caf53eca-a2f9-c3e2-309d-0e49b4f37a69@amd.com>
Date:   Mon, 20 Mar 2023 08:36:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: i2c: xiic: Fix `clock-names` property
 name
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org
References: <20230318134255.282359-1-lars@metafoo.de>
 <43cf5792-fa98-fec0-518c-b18068ac83f5@linaro.org>
From:   Michal Simek <michal.simek@amd.com>
In-Reply-To: <43cf5792-fa98-fec0-518c-b18068ac83f5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0095.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::21) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|MW6PR12MB8997:EE_
X-MS-Office365-Filtering-Correlation-Id: f03d2a35-d755-49f1-e496-08db2915d7c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XXAS/mx1HTrNw/R0kkdstUiqrIdxyRQhrDe31QfWGvgFVWJebMJYypz/CTvnBjGg/x9WT4ySnRAkTgZX3l+wbMyDe6pascoCy4rDQtLiI4aj3H7wgO3FdyEJ1H7pJgeArINV4zsHyHrGkftgB2/EZQnxW2lest1AMSkcseAyvChvNCAHqjASoKT793LrKDY4GypHWK3vQdEl6t2PLXwTZjgAjrzKPiJx3zZD8uctzoz/mLYbhg9dqxgRmtTY2AQ/TxTVue2aBxkicuVlxrhjVl7PtWW769s/umQi2gr9jopvkETBcz6IXSzjXZ5B9LL4M+KuBPIr/YLZOO7vgrMIbkOFc6Bq5dnmFuR4nrhl3VZGvy+HhQQ7ltOspmTR+4P1C91nZ3XF/RMoQtz0jvqn9GTRaIquQGLIzlbl/hCcLJcynhUZCQYj/njJIRoPG9xGfdTwuzgxl3mWgp7A/ZcqZ5i9Cyi2y/P4xhbOmDNhdsz3FyDw9II6JpZjNNMs/bvXTGkpSr/6ajboek7d5IFEjINQNMiXMTKY+FjeYuIB26oB7/o6Jp7/sJgtHJStC3GLjRAl1R+ERQqCMpcptGbLylVaGLOXXz7QKbusad5pu+F7zKpvRTu9yJpj9c4H3CuEKl/ciwrHu0AmwONHVd3W8xSBVAeVZv6Oc9Zg5s8IHI+ULmbOA5o5YJ4hCXlvkyNFxQR4vG9GzsdTUwRSRP/xXv6/ymJ9FhlxzskdMtPG9/Jyu9VPYR3xnm9Dwg4P5CsS
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199018)(186003)(6666004)(478600001)(26005)(6486002)(6506007)(83380400001)(6512007)(53546011)(31686004)(110136005)(2616005)(316002)(66556008)(66476007)(8676002)(66946007)(4326008)(4744005)(44832011)(41300700001)(5660300002)(8936002)(38100700002)(2906002)(31696002)(86362001)(36756003)(81973001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T05leG4rNitmY3JMcElYY0ZkOHp3WG5renJSVFNHcmk3U0dHVU92YWw5YmMv?=
 =?utf-8?B?UThaTGppUW5IWTF2RmI0aUxZNEFienZqdGxYMkwrNGRlWDJ2Tm5EVnZNUytu?=
 =?utf-8?B?TnhjWW9ncVAyT0dIRFFBQ2d5NU44RHU4MWtSbGJ2T3h2YTA4dE5xMURMOVB2?=
 =?utf-8?B?cFJqRm0rU3dZTndsZXVxMFVZYy9abEovTlVPMWdQTEhEdEROR3ZRVWpONHN3?=
 =?utf-8?B?RGZmVVBZVTlwQitxNTRaWVo3alZoY2xDYjFheU9wYlQzNFNOblljWGlnNi90?=
 =?utf-8?B?NkloVWtuYXozbWhCM1pPejhkOWE4Zi9STk1YZW8vRzc3dDE3NWdpZTcvVXhB?=
 =?utf-8?B?WmpuNkVoaUpBeHNMdVN1NmVvWlB5MnJGRWN1SWxNVTRZcWoxTkE4YWRRb2hv?=
 =?utf-8?B?eGhmQzF2NFYzMDlkTFZyYUZ6QTlsdThTbzlQVTUrQVhyYWZaaFFPRkxzQXVm?=
 =?utf-8?B?amE2LzdlU0tKVElqSWdXdVFlSlRzdmV6Qmtqd3pVdThFS0F5bXR5K0NpK01h?=
 =?utf-8?B?V3hLMHVrZWx0QUVaQnl6aytIK05ZUGdYdUFlVWtSVlRRMzB4cUZ1czdVNko5?=
 =?utf-8?B?ZmNVV1dzOHlHemEraEVyRkJSTFdsUG5DdWg1aUpKeUcvWXRUS2ZBTC9meW00?=
 =?utf-8?B?TTRxUmZHM09UNUZPUEl6ay9POU1UTm9pMjVtaHVpZlNRYThOOGFldTJwNXY3?=
 =?utf-8?B?ZkcxWTBMZ0VZNXZiN1Iwc1A2dTVOc2NWZDhLYUV5Qm1pMkJIVzB0bWVSWGs0?=
 =?utf-8?B?Y0owak1RZDBnQUtaNHFGM3R6cEJMWXp3OXg4akpPVG1RV2tLRGp1Vlc1T1Q2?=
 =?utf-8?B?MkZzNGJVVVduQ3J6VitVT0I3RVhzK3VsYTJwNFJCRmdUejZyK3hQUTlvNS8w?=
 =?utf-8?B?cnVpWUk0NkxJeWQyRjdzanI5bzI4UWhVUUlaeVFJQ1pxYXBRVk1mUkN0QlBP?=
 =?utf-8?B?dEpPTHo1WnRYSHI4Z29BNXY2ZWtSNjh0dmNISkcvNW1UU0p4a3dhNXJXUThB?=
 =?utf-8?B?b3htOWdOcmQ5azdJaVZRWW1PY05PTnVrZC9ubnh1THRXaE4zbjQzS3d3bUR1?=
 =?utf-8?B?NWNlVXB5b0xEMVVabm1icG1tUVN1cnZEM1hMOGZvcW5QWFowQWdLdElFWE9m?=
 =?utf-8?B?OGpXekRJS1ZKTFpoNU42VmMwUjc2SThUaUdZTmRzNEV5bndTK0pIU1AvSlJ3?=
 =?utf-8?B?QXJWTzFSZVJIbXN3N1VSc1c0MkJMaU01TjM2cE9CcGllZ2ZvTk5VR0lQZDRY?=
 =?utf-8?B?QWRzWllOL0dIM0RETGY4Y3FvS0s5MGI2RFFHL3h5bWxndjNycFVSOHlqOWFS?=
 =?utf-8?B?bElzenBJc2libVpGVGpnUndNQk5LWk9JMUl2dXB3MlBEbituZ2tQZzQrYmMr?=
 =?utf-8?B?aXZESkM0eld3Q0N2K1BmeC9xWnZuK0xXQXEvQ0NVVWpRL3pPN01hZ1hvQUw2?=
 =?utf-8?B?bmtYOGtiYVlkMTVkWU01WlN1azBoQkxwZ2J3UGZvazJwdFIwcHg3M05TQVdP?=
 =?utf-8?B?ZW1oZzR6ZmxPeFV2UlBoUXZkSnpPZWY3VStGTWtRdWlZYUdyVUlLMXQ4Q1Bo?=
 =?utf-8?B?VEo3VnNKc2lwSnJOY0l4dzhkejVoZjBzN3oxY0dCVlNpeEx0anFOOFpzT3Vm?=
 =?utf-8?B?b3ZuTzhDdENwb1NVbi8xRW9YTEExeVcvR0dyNHlhZHJuRGdOdEhmM0kzQnA0?=
 =?utf-8?B?bHZlQkZNbVplUWpVaWZtU0lyQnRQaGgvdkhyWmNPUkdSVUY4Z2pNQ0pmdGpE?=
 =?utf-8?B?WlBXeG50Sy8vZ0kwY0hUT2U3aTdRS0pKeS9qd0FjaWpJRDBHKzlvVk94bnFK?=
 =?utf-8?B?d3F4UmM5WTJ6K29HaWVnMXBvTjJnRWdnKy9nc3dMdWR4MWp3eWlCQXVUYm5S?=
 =?utf-8?B?bTlkbXEwQklNNWZMVWNSUXYzRThaMGJ0MjlzS0xqSEw1VmdZc0FLR2tYbkxC?=
 =?utf-8?B?cFErV1h5c29GMmxBWVBKNTBMdGtUYjF5d2h0T2c3dmEvWjVPV2RDbDRGSjlE?=
 =?utf-8?B?Ky95Ymw0cTFoQW9PTS9rdDFTNWh1MTYwdlJvdXhoUThIaFdBckZyRGNiQm5L?=
 =?utf-8?B?V3JIbkdidC9pZ05EYlBWTzdtandSeTF2NVRndG9ZRWdSNGlCekt6akhiTHVO?=
 =?utf-8?Q?RAJDcr5hHA336RvXJKpFNrpJm?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f03d2a35-d755-49f1-e496-08db2915d7c6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 07:36:39.5026
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KvVXPBMynxZA4TrtTQqLcwHbY+CmOmz5HYp8SZrY+/TAoG+ExwHRm6nMTQxiDNYK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8997
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/19/23 13:03, Krzysztof Kozlowski wrote:
> On 18/03/2023 14:42, Lars-Peter Clausen wrote:
>> The Xilinx I2C controller device tree bindings documentation documents a
>> `clock-name` property. There is no such property, the correct property name
>> is `clock-names` with a `s`. The `s` was accidentally dropped during
>> conversion from txt to yaml.
>>
>> Fixes: f86ca4147976 ("dt-bindings: i2c: xiic: Migrate i2c-xiic documentation to YAML")
>> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Michal Simek <michal.simek@amd.com>

Thanks,
Michal

