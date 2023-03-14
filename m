Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 818746B8BDD
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 08:23:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbjCNHXa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 03:23:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229709AbjCNHX2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 03:23:28 -0400
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2064.outbound.protection.outlook.com [40.107.220.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB6AD584B4
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 00:23:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LRKmuQix3ghitQpAOMAOdo3K+hFwCsdGpVYKwYq6GZmaacHxnAGRcmuc0wdVE6ObGVxF2gal11fCB1B186iSFJfhT6e94CpoGQSMCj8uUSGNHlchOE5ER8XdgMcwiTup1NtrIJD7fOvVyQDMitI6JoFda78LDoRVtu1v1xjmCj6l8rQdTgq9E6TKAyZYpjZhU+n38E3hqyEvrxz1pfJPH+D0PNsgqb6ceF9j2NUMZaXviDOJqwvCpsXcfzDeYjFPEAuOFUw+IKLEC6AH4ueHN3CStuChAKbh58/wKY74y9HuqMDBDaI/hl21kFrGJpIkCQVctnVwjGbOZ4RKRh2viw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h1BRJ7KgWV3pvoZ4YBbAhcg0MXhXMAOxwBQLJE+i48Q=;
 b=lziItfP+KhakgV5qnfxguc+UEUnCxtOtcSo5yJNUB7DmUbtEwuscFxaF7//3EZl4H0NipqPC7M9tJFE29ESHiLnxCybardIYwnTxcBSqTZaiDT/RlFk9Si/GOAJz/15XszhuvT72OPpNhLiDfT3ByNX29/ASb8pAuC0CuCemgV3SfvHUBpUieuGW+57kDQ2L1kYR9DL6KpkydnAHOZDLvfPbUeHhiE7zLdo/0zmxPq8RBVxYkJq8UJJXUisGjPY1HdYKCDBEdluIwrfGpJwohE/UMQCv+xihq/E4AwO7PVqKOD6gAI7K5Fn9qoBYnM90pGya38IAgh6EnVq8RQItag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h1BRJ7KgWV3pvoZ4YBbAhcg0MXhXMAOxwBQLJE+i48Q=;
 b=JZ2IB5Gos3QPbouhBG4YP5ulBhPaKpPyeFNPojE2vYIYjmC9GCHQZ8zG32EuNUPJxjDI5DrsV8Cv/wkKFunM5ZBYlRNeu/1RaxQnhGRlB+50dUBq6+rI16/icSv8TAtuTb5n4olVCBaEIeN+IAzVGh3Mg2QwRF7LJQiUtXlx1KY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB4758.namprd12.prod.outlook.com (2603:10b6:a03:a5::28)
 by CY5PR12MB6574.namprd12.prod.outlook.com (2603:10b6:930:42::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Tue, 14 Mar
 2023 07:23:23 +0000
Received: from BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::4d07:7f52:c833:9603]) by BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::4d07:7f52:c833:9603%6]) with mapi id 15.20.6178.026; Tue, 14 Mar 2023
 07:23:23 +0000
Message-ID: <e1d572c3-abe5-7589-fe94-f59b4d0d49fd@amd.com>
Date:   Tue, 14 Mar 2023 08:23:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RESENT PATCH 1/2] arm64: zynqmp: Update MALI 400 interrupt and
 clock names
To:     Mark Hatle <mark.hatle@amd.com>,
        Parth Gajjar <parth.gajjar@amd.com>, robh@kernel.org,
        mripard@kernel.org, heiko@sntech.de
Cc:     git-dev@xilinx.com, varunkumar.allagadapa@amd.com,
        vishal.sagar@amd.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
 <1678181001-2327-2-git-send-email-parth.gajjar@amd.com>
 <169f240d-8bee-b1ec-6dc2-5071bdf48e8f@amd.com>
 <27ccade4-17b7-1852-bf1b-51e0b4da0798@amd.com>
Content-Language: en-US
From:   Michal Simek <michal.simek@amd.com>
In-Reply-To: <27ccade4-17b7-1852-bf1b-51e0b4da0798@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1P195CA0079.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::32) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|CY5PR12MB6574:EE_
X-MS-Office365-Filtering-Correlation-Id: f2eeda6b-256e-47f2-2781-08db245cfec4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zo1D5V2MvUMWfscIfQEcsi+qKTUmwkOkeeJ1mAFG0ZXCyNeil8i7JpC0BEm/TeDbynuTy5mcLkKrzK8EBqfwX61EP/jygjBFt95vOrX9g0cJCpdjTC5Rmh0v50pyBnxzEV2yMiI1W/DnrXVPTYYado7UWhRVtAw4SwtaUvpYywTvFSimNrKIHVjuiY75XpPtfMS4u7EsePL5VbsB6sb4qQK6Va94Drx3KYZEUc3b5j3DquLcofeUpNgxwvhFbIRtFvpL8l03+5YMLiuYbgCKAveU37xIdO5WfvjKDclkL522a8GSy5X+uZyCf1/+X2rE1LQyTWxT7ss8CmcQOInDaMsVMiso4YSVKrb6qZkHCtNQn2sttlwKxWv3/B1y0U/UDI2LrXl7D/zo/xmnRVipbE7vuXtYK02W2TCNxsDYl4uAfJTFG8ZeBLQ7dfgBJxhoL0QOLd5SyiLyER1Kk2BFAG97DUl3u4F5TW5wftjYhaK8bdpCwCW/f3yzl1svAi2OIT/OS1UXIsXOpth8P2V7fYWOmVAMnmMa5DcrsdnWIzgE9uW5x/Axut5nvd9c9dj1G7PVnqBorF05cHvaUG5OfzfbL8hnCttj4UMQ6Db+ZdAVFfNOOptT2QXYag7vjQPw0kn1ZNDPvQSSJ+4rbTl1/oQasxBbUVb5mHM9p9Ezs90sypIEOPmegD2Tris0XfBh/JIWCv0NekI8Hy56/ZDhUQ5CXvvYBY8udhnTif8WAQM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199018)(2906002)(31686004)(83380400001)(36756003)(44832011)(5660300002)(41300700001)(66556008)(66946007)(8936002)(4326008)(8676002)(66476007)(38100700002)(31696002)(316002)(86362001)(110136005)(478600001)(186003)(2616005)(53546011)(6486002)(6512007)(26005)(6666004)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnE3anh2YnR2L3Z3YlJEZlhGeFlpdVZHU2pwSlQ1anV5QnZJcFYwS1NVQUxT?=
 =?utf-8?B?blBYV0w1ekFGQXByNHF0SnpxTVhJemluU1psV2lGaVlYNVA5ZTRubW85ZldJ?=
 =?utf-8?B?MEJucXczZjV6bFB6cE9zbERDTzFrLzh4eUIzOGg5bWZWYTZBbGlXOGVKbXE4?=
 =?utf-8?B?dmErQWQ4TEhHSW1rUzRPTWxMaGI0K0k1ZC9rWEh4SzRET0FnQlF5aHUzRkM3?=
 =?utf-8?B?dEQ2WlhuVTk1VTBZWFRKeGs0ZFJEbjZwK0FFT1B1NVZEQkVrUElMUERiYmVB?=
 =?utf-8?B?Vk1aK25XZlhNMGFSaXRvT0lZdFJDR1Fvck52TUdlekZyU0dRVlVwOWJJOVhm?=
 =?utf-8?B?T3Y4SjUzWHQycmw0bjNiTzEvRlRMRDRYak9YUlJqUTh4T2xMUUx3ZjAvaTF1?=
 =?utf-8?B?QVI1RWZ6VDRvU2dWbXdLOFMvR2liUWhGOTR0UjNvSDRuclZPTFZWTktNOEw3?=
 =?utf-8?B?M00waGNWMUJSdzJpSkVlMzBhSzZXdEZLRWhLUW1KTkdqZEd1dzJSMnkzRElq?=
 =?utf-8?B?WjJ0OUZYZ0RmSmcxdHNFQ0pIakI4dGZ0QTdtb24rRFhZUW1wK2l1N29vV1Ja?=
 =?utf-8?B?bXIxQm5JTWh6dklubXpzT0laenpkMW54L0ZvTDZBTjRxSzBac21YOHdDR0Rl?=
 =?utf-8?B?RElMOUZ2U1FiWmtoWG41KzR0cS9wYkwwMjRneW94WGNJaUZPaWdpNjBwSEpn?=
 =?utf-8?B?YlV5WlhJNm4xbWJmeVdOT0lUMnhXYjNoUzBRTmlDUjdyajN3azRiTXI0Qzdv?=
 =?utf-8?B?bjVqQmJDUTNMUWZqSFdBTnN4aW1VNk90K2lOaEdacTNRVFJWelFadkY4dk05?=
 =?utf-8?B?cm1uandoMXp6NVAyZXF4T2U5c1U5dGg0ZW1jWFlEOXhvc05lUWR4MWlIYmdO?=
 =?utf-8?B?aG5lZ2dNL0laOHlRY2dYM3JaQk5hbEpxS28xWDBFWHQ2a29OdW1yN243eUN6?=
 =?utf-8?B?dmdOV3ptaVNyZ0MvSjdIUlJJWTIwOGVlenhNakhqMGo2VWw4MEphSW5vWXZ2?=
 =?utf-8?B?dzBjREM1dE54dDVDWERvdnlCSkZyVi9YZGZHMWprTkpVYUlOTVZRdEduQWVE?=
 =?utf-8?B?QUYvUTBTV3M1VXY1MTBrNXR4RDVnOUc4Q0NPak9XUG1rU3k2NzFmQ1cxZ3lG?=
 =?utf-8?B?azVQVEQvRUhjdFVkQ0Zub05qTlRoK2gwUEkvV2VSWGdjdm1KYjdrQU5GWG44?=
 =?utf-8?B?Q0FtN2lZN29WQkhyVnI4b3BYeHBjWXV1eWtPMitXZlpEaTZNV3ZITnVjQ2NO?=
 =?utf-8?B?dFVsZlhSdlZhQi9rcHZObGI5NUh5OUxqZXhoZDB2OEdaMjlJWWJhQndQeFhz?=
 =?utf-8?B?ajJZN2Y1d1VQR2t5NkJnbVRQcmNxeWxWZy9FVlFCRVhCdzNsWGRHckhZUklm?=
 =?utf-8?B?VHorOGo1dzBJSHJYM3NTT0NZVTUwdlE0MXE2U1Y0SnhKWXRVMUVXZ2lvYXpt?=
 =?utf-8?B?bWs4c3pQTzRCS3JFQnpvWjdRQncxTGtQN3pMNURhcVRPUVRZUHlpSFZXcDhD?=
 =?utf-8?B?ZUJ3SURvbTRKTTNmZEtNeERwYi9BelVRQi9TWTEzSUwzVk5FekdHSVZHV2ZJ?=
 =?utf-8?B?RWNLNzd3a0luUUZJOVVOSVlQRjRURlhEUEl0WTlYY05SUWFHVmRmZUpFN0Jz?=
 =?utf-8?B?UmFSbFRWeTkwUGlDa0UrY0xWY2IyS3BicUxxbU1iQTJnNkJERHRqeXdrZ3pt?=
 =?utf-8?B?S1RKaWVJdVhjakJTSzBEcTVVa3ZtK24ydzMranJQQzh6QUVibWdFaDZTdHor?=
 =?utf-8?B?TGZhVEtVamFrNUppK25CNENIck5NRUZFN21RcmlNOUxURXRIOEk5NjBVWTRr?=
 =?utf-8?B?YW1IUFVhU0FYNHhpTGFUT2czUjhYY0ZFTGZGQkJpVmgrRm1rNzRRQ3drSW5h?=
 =?utf-8?B?SXhaZHNydk10dlVMei9CU3VJMjV6bDMxWGM1d1ZFUE00ZTkyQzlBc0lyM0RJ?=
 =?utf-8?B?Yzl0YU5XWUM2bXFnZHJJclhmMWVNVXBQcTBncHdZK1poZDA1T3dKL2tIUW5X?=
 =?utf-8?B?SklDZ1Y0TkUyRndxang5VVB3ZWU5Y3Zva2lZZ0hZSDNOTkkzRGpTbU5Ec0Ns?=
 =?utf-8?B?V1lpOStTQk1LSEdSTzlIWW9HUEMxYWtZOXR2TzZSSnZjYytSQlNlNWFCQ0dG?=
 =?utf-8?Q?Qb0gJSWhuJoCSsljl6bSSve7a?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2eeda6b-256e-47f2-2781-08db245cfec4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2023 07:23:23.4478
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dd+vsZYvVICvoAax1If5Z485PPG/Rbm5uKwVvlFVH/EDdYX9phc8lQgIAaxN0HCl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6574
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/13/23 17:09, Mark Hatle wrote:
> 
> 
> On 3/13/23 5:49 AM, Michal Simek wrote:
>>
>>
>> On 3/7/23 10:23, Parth Gajjar wrote:
>>> Motivation for the commit is to utilize the upstream community
>>> device tree so that the either modified ARM Mali 400 driver
>>> or upstream lima driver can be used.
>>>
>>> Signed-off-by: Parth Gajjar <parth.gajjar@amd.com>
>>> Signed-off-by: Vishal Sagar <vishal.sagar@amd.com>
>>> ---
>>>   arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi | 2 +-
>>>   arch/arm64/boot/dts/xilinx/zynqmp.dtsi         | 6 +++---
>>>   2 files changed, 4 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi 
>>> b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
>>> index ff2f34ce380c..ac8ed4a434d0 100644
>>> --- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
>>> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
>>> @@ -133,7 +133,7 @@
>>>   };
>>>   &gpu {
>>> -    clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>, <&zynqmp_clk 
>>> GPU_PP1_REF>;
>>> +    clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>;
>>>   };
>>>   &lpd_dma_chan1 {
>>> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi 
>>> b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
>>> index 96cba469ab5d..6a210cb9bce9 100644
>>> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
>>> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
>>> @@ -448,12 +448,12 @@
>>>           gpu: gpu@fd4b0000 {
>>>               status = "disabled";
>>> -            compatible = "arm,mali-400", "arm,mali-utgard";
>>> +            compatible = "xlnx,zynqmp-mali", "arm,mali-400";
>>>               reg = <0x0 0xfd4b0000 0x0 0x10000>;
>>>               interrupt-parent = <&gic>;
>>>               interrupts = <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>, <0 132 
>>> 4>, <0 132 4>;
>>> -            interrupt-names = "IRQGP", "IRQGPMMU", "IRQPP0", "IRQPPMMU0", 
>>> "IRQPP1", "IRQPPMMU1";
>>> -            clock-names = "gpu", "gpu_pp0", "gpu_pp1";
>>> +            interrupt-names = "gp", "gpmmu", "pp0", "ppmmu0", "pp1", "ppmmu1";
>>> +            clock-names = "bus", "core";
>>>               power-domains = <&zynqmp_firmware PD_GPU>;
>>>           };
>>
>> This patch can't be applied because gpu is not in upstream kernel. Please 
>> based it on the latest tree and resend.
> 
> lima support isn't in the upstream kernel?  It should be.

DT node which describes gpu is not in upstream kernel. Driver should be there.

M

