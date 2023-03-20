Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2CA6C0B6B
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 08:36:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbjCTHgr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 03:36:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbjCTHgo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 03:36:44 -0400
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2079.outbound.protection.outlook.com [40.107.94.79])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD05012865
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 00:36:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PtFW3nlJajkIbCzZm0laofCUHbKbW2f0L+JVLjI8Oe4tztS4FIKrMhwFszTp2LRItnrvVOHzDHC+1a7dMxD3pMOEbax0EDvmESUyo6rgEhKZndC3bCmGUcbzOGvGD9xOXasRz6KV18tVNbVrDyXTaU71W5SRhRn4v+/XxTW81OPtYhzofkfmN8zdtryQ4a4enGUgu/pb0Zub1HnzvRFZUxSy0CkgbrwZiDFyUWMahc776QS4qC//09cKzwwY/PYP810mj+/VCe5N1cUQlL94bpRQoBZp8UykmWrQHoUhNg069/eHk1jnWflMtKUJ5i994ShyYHDTwLpTKBl3ZWVrEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xdhkEySkF+PY7voesZnGPERu++Rpi5j9zUkGInIytjM=;
 b=W/G9ImSflM5ZzU1Sto4KPkzxTK03xQSrRBbV2HRx/gnSSt7jATiroPxmolJ1xJBvaBTfclwTCPeYnXT76nj+ajRYxIMZ0WUUAXq0/M98kdnWblhgezF1OVI32Q+GpTFbiM8dCxPO6dPDdzSw95zgRXfPFF5n5n0FHAfXORqyNXYqPtSuyRHqZdPHVdDUqznjNjBwhqddGx4Q/rzxRixvFAhwrCp92187UbBmRAezOxqrLY5k02P2747VbN0r9AA090331qZol/YFh+kixz7a5WH7m5FAzqDRHNMMJnbDhCjCsPXjaYdteZ0oSfG5eyW2e9ZX1rduz7qu84HjsfOoIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xdhkEySkF+PY7voesZnGPERu++Rpi5j9zUkGInIytjM=;
 b=NSC+0pRAbk9BeGzTTUDxOQfkgbOQjOGl4e7zcXODWqUQ4E9i+jqmGZ1LJmr27dM9VWqsDft/GyKekozyWuRT12T69JxOFBShQTnSQR89ABhQEDAHdEL6DxMz4z0FJbKpzNHsDCf/XfZNvxmZqYeaE0UfTSwCVQcrnHFt7KcCqfM=
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
Message-ID: <94dd1ff3-808c-8f0c-7ecb-772cf1ffd642@amd.com>
Date:   Mon, 20 Mar 2023 08:36:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] dt-bindings: i2c: cadence: Fix `clock-names` property
 name
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org
References: <20230318134255.282359-1-lars@metafoo.de>
 <20230318134255.282359-2-lars@metafoo.de>
 <4f435c2f-810a-b13a-fa64-e8948b003ba4@linaro.org>
Content-Language: en-US
From:   Michal Simek <michal.simek@amd.com>
In-Reply-To: <4f435c2f-810a-b13a-fa64-e8948b003ba4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0091.eurprd08.prod.outlook.com
 (2603:10a6:800:d3::17) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|MW6PR12MB8997:EE_
X-MS-Office365-Filtering-Correlation-Id: fa2e216b-2b11-4053-23e0-08db2915d784
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NMhAByNnUAmYT0PRJni9+1/OBm1D726o440ALrhvUyGHOSTArBcLrwLGXiBebii/27UhqAjN+0+YyjUgqgxGN9k4iHpGCK9+up2o6kuvxjTExJhozWgnktJHA05Tzm2ujj4wqINWS+nva5SehhzR2G+Qjz12fwxmlueuPvFLWS5V+PtH2fQDKFroGOEVZPMVpAW97TOmbdpJZMD0/xWT0bew30lh8VSp2gHT5BELT0YXxqGFTaqggZvBR4k1WqzcIUBK94L1XRHNe56uuS4POlsENgyhKJIER/wWvs8nbAeXSpQk2jTl3k43mWvwgxWPsHk/MFcUMBz8h3pH0Ntz5eZw2sis8mTX74Rej6k0I3EuCwy+JNWHGCxyyc0nZ0gjR3icd7SXsSuZXd2NwoBUwDmM0pDYnQk8VHFBxZkQuDwO3prZqExE7dKemAZpnnGeQV7EM+FXBAwHjUQDQqr++SwuGu0rx69I44B0blhyKfCSTvjEzP683m5JSPi8O1NV/gh13QZdUBh55WJYy20/D8uUePR8chAUFJPgtOxtBMT85bCV7Ei+gYgHAFxlzdk3cLac23hkTTnbvYv44lKQLhrVi3N55ucZW3PH2zUFMYbojR6Oxp97VJw5SI04NN4yEPkJ6NZz3yJPDjzI4HRNmzC9TPfqzRcb++FzOXJ3fhyCzjvKIYexoLVZX3E6crppfWELTbxgOXKiXISjxRQZzi/SVMb55BbPADeAq75kGz16FYj9uxhH+jjHbli0eFFJ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199018)(186003)(6666004)(478600001)(26005)(6486002)(6506007)(83380400001)(6512007)(53546011)(31686004)(110136005)(2616005)(316002)(66556008)(66476007)(8676002)(66946007)(4326008)(4744005)(44832011)(41300700001)(5660300002)(8936002)(38100700002)(2906002)(31696002)(86362001)(36756003)(81973001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHc1dWxoUkRWWXAzZi9mZUhwbGxoR2tDTUVMR0tpZVppWVZQYWdDQVU1VUVk?=
 =?utf-8?B?c2p2WlFRNmxXTTF3TTRvVHAwdDRmc0hkcjVpazF1aDF3eXRZRjF4T3ViQXZs?=
 =?utf-8?B?N3RWNWZQc29yeDFWYk5qMlFJZTAzVzRWaVljTVFEMGFVU043d1UwZHJWVW14?=
 =?utf-8?B?YUN0WDcwU1hJVU0xTWRFZEU2Y2QxYmZ0Y2ZMZzlwVk9tSnNmY0haRGZsZUVs?=
 =?utf-8?B?THpGcjY4dytJRk8zeVM2NDVqbE1ZVjBNMjYzUVArckdyV0dGTC9uNFhFYlpN?=
 =?utf-8?B?UzQ5TjRFVnhHS0grZGlubjhrWHA1UWFSSFU1bkxBVFZyekI5bEE5d0U1M1FM?=
 =?utf-8?B?MCt6NkpGbVdpaUdFRlJnTFEyZG9BUC96YStQZUN4bXhzWG02bnYrZzFTRnNQ?=
 =?utf-8?B?VDE0ZXJJcjVvMnBnS2ViWjNSWDM5ZnNoYWNhOHhVeGkwZ2JGVU9LWHA5Rm1n?=
 =?utf-8?B?YWE4aHAvOFR1WG9BeWF1QzJwWTQ1TEh1SEFpRTN3QUtPNnFJcWcrQ04zUXcv?=
 =?utf-8?B?a3VyRXQzWk1OeVNXa1pIb2RYanN1dGZ1R3dmOWpFcllvWmozeUx5ZXR3VHlZ?=
 =?utf-8?B?a08xVDNhb3RYQVdJVWtNb3F0dTZ2K1J0Q1hYbTEvSnNlUVh1SEJtSDFHQVo1?=
 =?utf-8?B?NW9GQjVJaEZCMlFSWFpvcjJXNEUvZzJMaGliWFVsM1NMNHdkMUZxRGhvQWU1?=
 =?utf-8?B?RHR1Z3podDVSekNGUWFqYXdYaUo4cnZ1bUNTcXdqUldmWFZ3V1krVHBmY0dj?=
 =?utf-8?B?M3JnTGpFbmFwbWVTRjBiNENGWmhaYW5XMG9YRHl4NTVXVnRwZXBUK0c2N0di?=
 =?utf-8?B?ZUUwQndvZk9tdU1VazBDdGZSL0kzbVdpVFlXcllGMEZ0MDdZdVA1TWhsZktm?=
 =?utf-8?B?YnRYK3pMWmQ5eVFKcEkyOXBEQnZ3NlZzd0Q0S1Y1WURyRElxYWYzWURudmlS?=
 =?utf-8?B?MjZsTlFaSHd0MnJWWlpTOGtiVC8rT21zY3U1YXhsWGlGb3N3VGZLakRYd2Rm?=
 =?utf-8?B?WWVJSHhnK2l0Y0FmTUwvR0FWZWViNHF0cXc1WUJnK244aG4rNU1TZTN1OWVz?=
 =?utf-8?B?MHF2M2c1bjhabytzNm5tOFREWG5GSGZPSGt2UVZhQzg0Y2QrZ3BnbURKU0xm?=
 =?utf-8?B?NmhBS3VpSnMwcTJhMDRvNFljRVExd3JBcE13eXdIdWw0Q0RWc2pyUTFvNkFn?=
 =?utf-8?B?cGphbzV3VXlSZ09DQktYWXpmRzhTYnVqOXp6UkpITi9XZFFLUUdtOGdVWFRi?=
 =?utf-8?B?Qk1zU0lFUmQ0Rk93M0RCZndlV21FVkc2K0ZKcUE4bkFsL0xCcEhxVjd2Kytn?=
 =?utf-8?B?Znl3L1lyUkx0NUNMditkQzVsYjYrQmQyOHFIenVtR2p3Y0RVV1NBR1RHcGlr?=
 =?utf-8?B?c25zTVp5S3g2TkVQQWl4RWdtYWZYUDNiUC8xU3FoY3lqQU1laEVQdVhaenBs?=
 =?utf-8?B?Q3dSQzlyRDR1YytUZTZWaThOWWRmc1R0MkROSmdYc3l3b2ZDaW1ZK2hyOFdq?=
 =?utf-8?B?U1pDOVpkKzI4Y3lIR0NOVGNINHFua3hRVWxDQVFNWXZvaDEzeWE3YUlySG9Q?=
 =?utf-8?B?VVp2VWs4MTB1U3NVRFJyT2E2dUQwT2crTXFGcmJBN1AvVktua0hlaU1OdVVa?=
 =?utf-8?B?SUw2MldIbVIxcGZsQUk4aks1c1prN0k1cFB2cnFtOVI4anRRYnZwem9weWJu?=
 =?utf-8?B?d3VuQlUvczFnM0crbTQxMzk3dm9XbkhheUpINWg4QjAwdmRscEdHNXh5Y1Q0?=
 =?utf-8?B?QTdySG15Vk9CTGRVTlk1dW91eTZuWHpYV1lLOStWOVU3TTgxNVIyNkc1OU9Y?=
 =?utf-8?B?bHdadDEyeGtyb2NvWDJQZEJ0OHVDTXg0KzVKKy82S1Z4NFdkM3pqY2hUOFBs?=
 =?utf-8?B?eFRMU0tmbWc5eXo5QU1VWDZPb0F5Zm5OdlVkTHdlRGFaV3hZaldNWlg3V2VX?=
 =?utf-8?B?dWd5ejN6TytzUWl4MVFwTktXMmR1TEU0K0R0RDRKMWhnZG4zdjh3NHU2aWd2?=
 =?utf-8?B?dVczUTVsd1pWd3dkbmpnL3lpNG9xc2hxTjhlQXFTMnk3SHFVR25HRHRxVFBV?=
 =?utf-8?B?Z1daSkhTMUhjZVVDNnVacCtFaFlaUTg4QW9UT1BiQ1RtaysvUE5jNXFqR2lU?=
 =?utf-8?Q?ql9g52ZXXG1Ytbm6SNPStKmmh?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa2e216b-2b11-4053-23e0-08db2915d784
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 07:36:39.0807
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U2hy5PM1el4Ddi82olP1fe3y9kmELhHj8OPCy0YHSf6DaEo4sq7XsT4FoQKjFLbo
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
>> The Cadence I2C controller device tree bindings documentation documents a
>> `clock-name` property. There is no such property, the correct property name
>> is `clock-names` with a `s`. The `s` was accidentally dropped during
>> conversion from txt to yaml.
>>
>> Fixes: aea37006e183 ("dt-bindings: i2c: cadence: Migrate i2c-cadence documentation to YAML")
>> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
>> ---
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Reviewed-by: Michal Simek <michal.simek@amd.com>

Thanks,
Michal
