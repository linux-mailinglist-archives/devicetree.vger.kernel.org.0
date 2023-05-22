Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01C0270BCFA
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 14:10:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231492AbjEVMK3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 08:10:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbjEVMK1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 08:10:27 -0400
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDC5A9B
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:10:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K0qTTjH6V+so4KDXodg9zQJ3b+v/oCyhqGh7vn08YPIcsY4OxNR9VeoeUGlBI5bGgjsCX4pVnreqNco9RioNBShu4u680azprCc46yGAZjx1yaf1c2sd2M4x+LIsF0Y8QC/w1pblakDIS/9Rog0D7C4QmkWH03A4ALs93sTsSUiUyIX7LEweKuJlFBlPGmwuIYmvIuR4wOnLCVz6SOHhuiFTHbDwueQvP4kL5OBHvrugRhgNPMgSzsBN7uHTwCGlmMrdHd8aWeMBbuj2bDBwabYewLv4tD0VKHA2PrR9y8sPNmLUMiaYsjCjT0U+LYAYo9u0pQW4XLl04HEtMLlq/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQf2gKcZT86pBW7+Cn17aJeRcgpPe3pFYj95IcA1ud8=;
 b=MtxiOXDpQyyD5QXKGovGxc0kBHKWPKL+Dh0Vrr8+3wSt3T3bzy9c67CqBmu3ujKLfcN4iDnKTd32J3I4v6e6CK5uhIzyhVHpXs/Bz5Xli7qn0qGMpV4U3AlGaylluoychsx4FaMGsu/m8IPIvzaHcl0br739qrLwzViJStYiAB/gjrt1HvQTU5c/2nralFsY/fmhF/JtByxVMn7pz/klLNMgZqE1UUM6ohUODUHROM4XCregqpf8ZKeslq/41u/UYiFskp6C0J4fRXyXpkZs8kebOCwAlirX7Y4cDm+wscsXRKzIOAmNspWCe2RRhT6TDAwjika4ND5zpYhKgOsi9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQf2gKcZT86pBW7+Cn17aJeRcgpPe3pFYj95IcA1ud8=;
 b=jdnhtjv476bUDMHjHE2eQzKNb922wj8BvRaZgsjBemxdf0Fr7xmL8IaesSKJBnZDvFzqgll/OsZuSxztlrbhF/dGg3F2fNNixWC5TB4rs3KhYGll5TfCRLe0tc6v3ru+m1gz2XuIFm04fNETjKjIgzxpZOqpqmKtGpJFBSXbsNk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB4758.namprd12.prod.outlook.com (2603:10b6:a03:a5::28)
 by MW6PR12MB8897.namprd12.prod.outlook.com (2603:10b6:303:24a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 12:10:23 +0000
Received: from BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::e78e:b7da:7b9a:a578]) by BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::e78e:b7da:7b9a:a578%4]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 12:10:23 +0000
Message-ID: <209682d6-d8ea-f940-909c-e91ece7a7928@amd.com>
Date:   Mon, 22 May 2023 14:10:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: u-boot: Add variables for bootscript
 location
Content-Language: en-US
To:     u-boot@lists.denx.de, git@xilinx.com,
        Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org
Cc:     Algapally Santosh Sagar <santoshsagar.algapally@amd.com>
References: <ca0715934133dbce6a5a3fd91483e0af92ea8ac6.1683815597.git.michal.simek@amd.com>
From:   Michal Simek <michal.simek@amd.com>
In-Reply-To: <ca0715934133dbce6a5a3fd91483e0af92ea8ac6.1683815597.git.michal.simek@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P194CA0027.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::16) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|MW6PR12MB8897:EE_
X-MS-Office365-Filtering-Correlation-Id: 101d8e1c-bf6c-4cf9-afe5-08db5abd853b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6zTaHQS0sTxC5hdP9ByYD9CDQzBAHXwWz5hIYBXPXBTNresf9d7IapEwbEacmSiEdj2PXH1zgWhB0kUIyqhP99MH11YGVPGOQqQGZ8YKqgxLcw7w0bHXpYG1K2Y+2yRf6xwu/RShg5fPE7b/oossre4WeL5bHkq3WHQQ/U1YwIfNpbpSe+MU3U/pVHszBHosUWxqPEvv4+Yn4ZVCz4NhyZ8DMvlvPS2nYfl/H+WlGo7kafbl5FForpShs/pyyzhdlwY/G9vkuL5/4HpJsOmHfOtTfEbhwcYsEpQe6MqC+xcOPZTWU34PO6GyDtMAx74NxMfJCkSMDGhtEOtzUShfJqzPUp7V3zDmiMTMe6S4hYaoFKMWu4LjzS3z1NLOQcDob/FC1O7UNrt/uwvJa7kQQGV4ahCHuRtLM5pngSVN2FetPqZp5sGtwkNONx45bppnKAsqiIgQ+Aj0CnGDD0hWCIkEfFHAfbvwLB3ORqUfeQISbi1rTIMmXFP15eraoPpi6i+HIeqXHyQE9hP3UsiuLAhKYepgEJe0SnwYlm6JPB4NuZwhJO7dov6ILZkhIKwzDrehjlsDamDyBgChVmLCwb9ED8omxfofQFOmCrQwKLwVPbYES63R6sqbcIeGkInW
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199021)(478600001)(186003)(31686004)(41300700001)(5660300002)(26005)(6486002)(6666004)(966005)(66476007)(316002)(4326008)(6506007)(44832011)(6512007)(8676002)(8936002)(53546011)(4744005)(2906002)(2616005)(83380400001)(66946007)(66556008)(38100700002)(36756003)(31696002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djZGaWc0eEZHOVBwbmNYNktZQUlrOHpzL2pLQjR0MXhkRTFIVExYY1hHVjB0?=
 =?utf-8?B?Sm5nOXJFTnpuSDQrMThLN0JCQXU0T2V1eWtsYlo2SFFVb08xWGc5WXl1TUYr?=
 =?utf-8?B?Y1AxT08xSDV3OTdhajN6TjcvNnJNYldWV1lRYVd3MHd3TGRYYjNKN1FpSWNl?=
 =?utf-8?B?TVRuSjlsLzhOeFlLdkNsUHZzTzlJbnBRcFBRWUFFQ2pJZWR0V2VGQkpSQ05y?=
 =?utf-8?B?MmdJRndCK2JLTGhtZlR2cUZHaDdXd0kwclpscG5UT0Uyc1U0eStyRTJvUXY5?=
 =?utf-8?B?bXpWMWRlVGNhdmtEQ253ZTU3aDN0WVN2SUZxdHpFbkdlQ0l1QUE0OEpZREZq?=
 =?utf-8?B?akwyVXFaRHRuOVBUdVI0dlJyRXhjc0ZwdFRjUmJiWEZqcUN1aGxkbmN2V0VK?=
 =?utf-8?B?dzExSzRjSUx0SUVzYjF4bGVqN3laeVU4VHBQSG9Jc2FFdk1WU2pObmRLODQ4?=
 =?utf-8?B?MEFSTEFjQi9yTlVCcmF2eElhUk53UHhveEJzamdaWStOdG1IZjVqUlFoaURp?=
 =?utf-8?B?cmg1Z2pNSzgwM0ZtWGMrNDJEQ0thMW04UXE3WEJKaitjYTVDaVlldloyV1Y3?=
 =?utf-8?B?Z0FWWlNpWm5HYnF6NVRuY25xdVZSM1VMeFp0ejBsUFNORUpjcTQyT1VpaXN2?=
 =?utf-8?B?TU11bGJjaDhtTnF6NFRFOERtUHkzOXY1SjBOSWFibERGWjYwTWdjTlp2R3FF?=
 =?utf-8?B?ZHdEUDAxMDR0ZHVldVBmc0FFVU5nWlNPV2hFSUM3QnJkc0xKOVRVeWtyekhH?=
 =?utf-8?B?SkZ2NldpaWliRlM2djNpdytlTmlpWU9CdGZUbzYwTjA3ZWNDTUFjVi9TVmtz?=
 =?utf-8?B?ODJmMHU2Y21RMFZpWDhMdFdkTHRzWkUwWmFvYWloRVFrT0xsU253RXZaeHo5?=
 =?utf-8?B?VGFCVmhabEFueTJ4Qmh3VVpoUEdMM3l0a0plWnJRSnZUTldpRDV0a2NjTDdv?=
 =?utf-8?B?bjVPUUVvYUFRd210WTFSNGxhUUxqbk1qTXhyNHRNUDdJWmErMkNIRDZrYWw4?=
 =?utf-8?B?a0xrenZIbll1WUd5K1J0RHM5Tkovdm9QS2ZScXBaZ2ZKL2RYVGRuU3hmU3RW?=
 =?utf-8?B?em9TYStFMnkvOUFqcXBPdzBEMGhab2F3WmMrb0lHM0NwdjRpUVVvTTJJN3lB?=
 =?utf-8?B?YlpUV09RR3hwZWJPN3MwTUQ1L1pMcndtTUUzeEo1dFBIQzFHTlFENjQ5QUFJ?=
 =?utf-8?B?dS9YaHdlM3FPb1htYk0yZEdpbGNBMm5xMUcwM2s2UVV6TSsvUEd3bFY0RzMy?=
 =?utf-8?B?UGJNa0d2bGVBbTlsL1Q3V1p2T2IyYllsTnNWRE56bEMrSkp5UHNkelNtSW8v?=
 =?utf-8?B?RGJkT0czVSt0eE45TExPdGFNQ21rdXhVdDZOR01TYlFlVXNWcG93NFNVYytT?=
 =?utf-8?B?dDJmOW5wQkNQRmZ0SjdCem83UUlIeWQwWWtTZll0UkFSakZnUlFnQ2dLb2FC?=
 =?utf-8?B?SWw3M3ZEem1JRHhhRU1BQTN4dWE5SUg4dlJIcElQbjhISEZod08wMWkxWkta?=
 =?utf-8?B?T0VWNTJ2V0FyOXZpbHFlN0E1anBkRFpYSzdFTlJsVzlYVWkwMzFQeDdUdERo?=
 =?utf-8?B?SjJDMGErVFdqUDU5UTZrdmcxam5iMzJ6c0FGQ0FsZldSSTZyV0tqbzdzblR3?=
 =?utf-8?B?aUlTcjlSRTllcjd2alB6eC9mOC9GSlZnYVlKSUZHVENyZnBBVGR0eDFremNS?=
 =?utf-8?B?dGFwNUEyWXBvWFh1VklVbzBSSzVWTWVNVVY4YkNaYXh1WlJGN0xCTkQreWhJ?=
 =?utf-8?B?NTdhMFNTenhPVVh4UmJzRmpRQStURHNYaWkrY0ZMY3VyREZmcllmaTgzV2or?=
 =?utf-8?B?ZnYwZHpCcEVjSXpobWt5Rjhwa0luanhUMms2ZGR0M0Qzem1pQjdqV1U4VjR3?=
 =?utf-8?B?VnZ0YXdQd3NJK2NxaUtzOWQ1K05zSHc0L2g0Vlg3Znl0MkYvWVNSSjhBMUIv?=
 =?utf-8?B?T245b2Z2eTlQYkJlclliWFdWM0s5dzVvZTJUakxBVDVaYkt6bmlZNDY2cVdG?=
 =?utf-8?B?dkJ1TStSZTU2MFFTRDc4ZWpnU29PTDVsV1U3YzJMRHZhcjFxdTIrZERoZ3ZY?=
 =?utf-8?B?TTNYWnFSMm5pZDJqQ1cyclZSNU1xbnZRU3NtOVhSZEQwbEdUeUVmMkRIVTNQ?=
 =?utf-8?Q?xTbT/i+eLOdzpilZb69T747Oe?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 101d8e1c-bf6c-4cf9-afe5-08db5abd853b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 12:10:23.4618
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mSoi1RmM1I+UJo/UaCAMPpIhJQ4jB/J8jSQX47b8lrPTj8ki0BdzgQ1Ooai0XTjd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8897
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/11/23 16:33, Michal Simek wrote:
> From: Algapally Santosh Sagar <santoshsagar.algapally@amd.com>
> 
> Add bootscr-address and offset-from-ram-start properties to help in easier
> picking of boot script file when automated flows are used.
> 
> The bootscr-address holds the full 64 bit address of the bootscript
> file.
> 
> The bootscr-offset-from-ram-start holds the offset address of the
> bootscript file from the start of the ram base in systems with RAM
> detection.
> 
> Signed-off-by: Algapally Santosh Sagar <santoshsagar.algapally@amd.com>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
> The patch targets dtschema repository.
> 
> We would like to get opinion about option names before sending PR via
> github.

I sent pull request to dt-schema.

https://github.com/devicetree-org/dt-schema/pull/105

Thanks,
Michal
