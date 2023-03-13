Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60D8B6B7D0B
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 17:10:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbjCMQKH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 12:10:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbjCMQKG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 12:10:06 -0400
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2040.outbound.protection.outlook.com [40.107.243.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 059FE4205
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 09:10:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/GIS89HQbspJETw3YfczU6y//jL6lJ3QMxL5uYM5O+2MVug7cRPPtM9b50EyGKFtxumAqUAk6H93tncYTC1Hbc8KB7WDjY7wm2YYMePRCO1hfJvjFH91NWZibyxzEtn24PNePOyP890FKhmRywn63t1mTPxm77oAqDBS/C/BUVowyAOligTA0hXvPggr2DWe/T7pHKt8OqpGFmqahrEM3fvxok1ypjWD1h92XxgUMgFX963EAUBLNM48bmsu7O/eSJDyd7jZjFy2TqnhkJLqxVjEZAFhivFX0nxKynQWiGAkPpV6RZUv9egGxWRrxl75OkiclLRTds04+puRjTzDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZlSIOQeLSG4mh7RPjDP8se/+gF8vjeJtmdSBpoWhb5g=;
 b=ALB4H4mEetldFDYgGXuPfNdpH8F6GScdLwqFA6KgYssvLC6GrJFo5R0CGVgij/3ymA9vnuupDgZoFKxDlrHrVWf7B8VKAVnOf8AR+Wg6pBqIPQqryWyBTq2norN8DAyJk8BwDHw9KHd5kVnar6DEKX3bHKCwth3ZdYHb2YQENWp6uV0R2yi5i3qHDA9ZTY8kdAMyAH/qE9Np5nRnAGghfGAAbkJPecjgMKbuQQwH6gLMhHx9akOEYbc790jzFBGFZQDOY21949eBAROnJU5pvW/WN2gyiCi45FxMFapgKnqHO6dCJX0/+A8cy8y0HTb+ngWFMVfyuc5780iwlY6P7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZlSIOQeLSG4mh7RPjDP8se/+gF8vjeJtmdSBpoWhb5g=;
 b=Ser2tfvdX1KBZOC40yxapbhoz4VTDRdc12zQKvrZ5YOetYjbD/L3/jRx40Sgd9dCPEamc1ScSnXw0kVtTOze13Itzequ29SePObTu8pK0YJg0gtzUnQN9tCC69sFAjqdsB6HiLVIyQ33O0TDBF+mzW5f5LsA3wrRKxVoW9rrpdQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB7018.namprd12.prod.outlook.com (2603:10b6:510:1b8::14)
 by MW6PR12MB8957.namprd12.prod.outlook.com (2603:10b6:303:23a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 16:10:02 +0000
Received: from PH7PR12MB7018.namprd12.prod.outlook.com
 ([fe80::7ba8:1d8a:9f63:b85f]) by PH7PR12MB7018.namprd12.prod.outlook.com
 ([fe80::7ba8:1d8a:9f63:b85f%8]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 16:10:02 +0000
Message-ID: <27ccade4-17b7-1852-bf1b-51e0b4da0798@amd.com>
Date:   Mon, 13 Mar 2023 11:09:58 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.8.0
Subject: Re: [RESENT PATCH 1/2] arm64: zynqmp: Update MALI 400 interrupt and
 clock names
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>,
        Parth Gajjar <parth.gajjar@amd.com>, robh@kernel.org,
        mripard@kernel.org, heiko@sntech.de
Cc:     git-dev@xilinx.com, varunkumar.allagadapa@amd.com,
        vishal.sagar@amd.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
 <1678181001-2327-2-git-send-email-parth.gajjar@amd.com>
 <169f240d-8bee-b1ec-6dc2-5071bdf48e8f@amd.com>
From:   Mark Hatle <mark.hatle@amd.com>
In-Reply-To: <169f240d-8bee-b1ec-6dc2-5071bdf48e8f@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0029.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::34) To PH7PR12MB7018.namprd12.prod.outlook.com
 (2603:10b6:510:1b8::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB7018:EE_|MW6PR12MB8957:EE_
X-MS-Office365-Filtering-Correlation-Id: 38dbf666-24b9-4489-7ef6-08db23dd66b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JlWhTMCshf6mMdxrU37NhBhyNUxX/MXFD2pVpbp9BVyWil14znscKxm+75KH/Fy4xQcrOLsLgQQM2kczQiwflil7ICB7Wn27kPlhZzo5voyKWb8Oeb9J46rPK8Hk5CNkzQicUo5+bKs0/otCA3tS14gyp4/icz8o3IKGmeybeY6n3hac1XO1nQfVPP9KroSXx0MdNpqILvHmCSaTf9JF6MI356CVEAsMjtZSWi70PIVj/oD9k+WsVCcruvxPAo+/7ny04xkaTIqGHhDLyTejFp+wHTm2PwIDInGCMFklcCt+OqbCAjna1IfAnxakP3qg0Z8RuRhNHGd515OEoFxsYlzqPdDQ+sowPxMj9PRF9VHtWt4HTMahgM/fBt9oorhLwmCFzXPI/aPsax1X/wQXNAulwImd53aAvK3Szs2geOP82xht1AJQgYDeHqrpU0mlK/Km28RDdsPRt6x9ro6E317BiZpFIBb+ibw5wTam4lXQBP0Q9WgWrXwKOYLqYP6GYcqvSmPaqIwnwx9Kn96ah4487j9TNnFeepJkSKP762tf6Pbb+4FxAHVPEKiv8S/x49++9hWlXxmgtSm+xUaAjBLA8+lARYsA+zv2CrKC3wguHtdLyXbFmFAGNCMxaVgjsGniY+sK7XMWOCjE91dAzuAlbNvfWEye5u9op3xRmy7/vSdbNAwK7ZeXIkPnsfUVBXdX5N8OzQkTbkkGDuG3BD8XjYlSLmSrhuffOD68oPU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB7018.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39860400002)(346002)(396003)(376002)(136003)(451199018)(31686004)(110136005)(8936002)(478600001)(41300700001)(4326008)(66556008)(66946007)(66476007)(8676002)(36756003)(86362001)(31696002)(38100700002)(6506007)(26005)(53546011)(6486002)(6666004)(186003)(5660300002)(44832011)(2906002)(316002)(6512007)(83380400001)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WktKQ0FJbHhGQUpaRXRHRlJVN1N2bU53U2RoV2xXZE9Hcm5aWHRsd2E5T0RM?=
 =?utf-8?B?YkZYQlc4MnFEbW5RQUlKYk5wMHJvWnJSS1FxcUdmQTQrMGRjUURmL3NuU0Ru?=
 =?utf-8?B?VytCZWVhSjArdHkzNkNPQjVMNGJZbE96NHhqNndLVWJQODNmL09LUTVFekJ6?=
 =?utf-8?B?azkzV1g5Wk0vZzlRUFFYUWkxK0VKOXNlekdSU1E1TVNQZ0RTME5nZi9QcWZX?=
 =?utf-8?B?SVV4MXRHNXBabWRhS1gzcDJJL1lyWFQ2bGQzS0gxZ3h1MzVKc2pjdE5ka0lF?=
 =?utf-8?B?YzZ4V2hWcitnQ3ZFVGRDM1ROQ1ZtY2FuV2tqOEU1ZU9EdTlIUVRUMWdWK291?=
 =?utf-8?B?Vi95RUl5Z1k2L2Vic3hUVEU4YVBObzlpZjE3a2NOQiszaXNTMjVGNkdqYUtk?=
 =?utf-8?B?djlVZnJTYzhQOGVoY2tlZFpnSzd4dXp2NE5jNGEzNW9RaDhlcXhIS1hmb1ZC?=
 =?utf-8?B?WGlidkhqWkhmRHpDRitSejJWQVRvaU5WMjg3UDNpWlg1YWlDTzVvcU5USFdy?=
 =?utf-8?B?bzRGUFhDRVlVRmw4NmxSVkJDdzZMSGtvdjMxRHZsZUNWaG5FWk9kR1pLaTUy?=
 =?utf-8?B?L1V3SVFRYTZiSEJiNlJITW9VZFJrakxtTXBDZ21NZmtKakVqN0g5aUhNVTVY?=
 =?utf-8?B?MzJuaTJvNHNuQTc4c3FKelVYL0Q2WlFsbG1NK2dhMktBZ2RTY2pSZDhuWjdx?=
 =?utf-8?B?YmhFNGtPT3NCZXl0WndXM3R6NWltaXQ0QUZ5bEZsL1ZvTVZZNERSOU1lQWNK?=
 =?utf-8?B?Q3RZUUMzUmJmQ1lFVG9iSFRITm5IWXUrczAwZ3lrcWwwSnJoZGZKTWN5RUVv?=
 =?utf-8?B?Nmg3MkhxLzV6bGRhOHhQUTdDZTlOZituTjB5a2VYU3VNemUzdzRDdjNXRkVQ?=
 =?utf-8?B?UVpjbytRWVptZUQ5RjdvQjROVGFsdE5KcFhiV0lnTUtnUVJDT1NyZFExVjZ4?=
 =?utf-8?B?UUxPTFBMSFpOUmpwTHBsT3lwUm5Jd0FuTVR6YzA4cGlPWFFMWE1wOGlyYWd5?=
 =?utf-8?B?bHlPRGl0dFA5b05yQzFUNHlPOU5ONnl3dXA5UUkyWmZHNTB0cFRraDdsaUJU?=
 =?utf-8?B?YUhQV09kVHM0RWYxb1d3Tnp0SWpNdFN6NENWRnRsbmZqZ3ZyUXRCNWo0QWpn?=
 =?utf-8?B?VzNVam9pVWtxNmV1c25abHB5QmhKQUxoWTdxeHJ2bk1VQkpnL3JwRjV0UXBq?=
 =?utf-8?B?NjNlTkdpY2FWSTUvSU9sQnVBaW1aNysrZEZxOWZEM2N1c1lUM2ZkV3YrR05C?=
 =?utf-8?B?L3plcnIxbmlpYSt3eHFhQ1ExcEMzUDZOejlpUHExR2JiL0V6UkhrMENDU01v?=
 =?utf-8?B?UWtqa2FUcGNlc25ZQ3cvQkhaS2RkVWQvRTRkU3kyN1ZSaXUyZ1E4UkM0K2tx?=
 =?utf-8?B?Nm5qTFUrbERDb0xEYStCdDZKQUIzc0NkSUdYZENwUHI2cFRyenM4UmFjdkkw?=
 =?utf-8?B?UUl0RjZMajBUTS92TmxldUlkeUh5NXpCclFDZkZQRGVDM2dQa0dFQk1kN3ZG?=
 =?utf-8?B?QXplaGhOWStMb1RtVUE2b05TZVpPdmV2MEt6Z1hPWVBnVGV6NVhxS2V1YWp0?=
 =?utf-8?B?ejcvWjE2M1JrWGFFUld2ZWRKZjFlK0pGdFptcmx6ZFBHQ3VxT1U4bW42dWZN?=
 =?utf-8?B?N1BPYWYrOGRadFdWUEFXbUQyYnZvMURFRUNzYU43UmprWjNiRFlVbC95eDBG?=
 =?utf-8?B?UDdZRW40U01BZys0bG9kcUdVT0pSNll4dWlNUC9IeUpCc0dROGtjL2lyWU85?=
 =?utf-8?B?NjJLQmJ2S0ZCa0Q0TjBZaEMzengwdHNGU05QbHNaMVBEL3VDOWM4ckdUeVpR?=
 =?utf-8?B?R0czd2NBODlkc0RjQ2hENjJ2OGtWZzdzbFNpUkhLWUpWS3V4U2VxU0F0eTFX?=
 =?utf-8?B?ZUt0c1JDU1A0N0dGOGFlVjdIT01pWHcwTnpkbEFDbDczYlkrWXlQUmZNMlBu?=
 =?utf-8?B?TnltRWN3SDVYVlE5Uy90YldzQW5POE81aDc3UlNwdndiMlY3a25mQTE4MjVv?=
 =?utf-8?B?S1o4RWZjVzJPdkZLWllHTDJLTXM2VWVMMUdranBDT2NHL0pNRTJtZVREMTVM?=
 =?utf-8?B?b3V3VzR5TkdxREo0cXBTM0VVR2dyb0EyeDVyTnVva2lnY0FhNEJwQjFYcWN5?=
 =?utf-8?Q?6GGlM/hqaoaWK4Z+E+IDjtcrK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38dbf666-24b9-4489-7ef6-08db23dd66b4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB7018.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 16:10:02.2625
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zzfaKdvgc/T9slJz/phspNbnRTmPSS/8WWa8Qv1bSflnYANoV3VFy2t3kP3UuPGB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8957
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/13/23 5:49 AM, Michal Simek wrote:
> 
> 
> On 3/7/23 10:23, Parth Gajjar wrote:
>> Motivation for the commit is to utilize the upstream community
>> device tree so that the either modified ARM Mali 400 driver
>> or upstream lima driver can be used.
>>
>> Signed-off-by: Parth Gajjar <parth.gajjar@amd.com>
>> Signed-off-by: Vishal Sagar <vishal.sagar@amd.com>
>> ---
>>   arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi | 2 +-
>>   arch/arm64/boot/dts/xilinx/zynqmp.dtsi         | 6 +++---
>>   2 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
>> index ff2f34ce380c..ac8ed4a434d0 100644
>> --- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
>> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
>> @@ -133,7 +133,7 @@
>>   };
>>   &gpu {
>> -    clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>, <&zynqmp_clk GPU_PP1_REF>;
>> +    clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>;
>>   };
>>   &lpd_dma_chan1 {
>> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
>> index 96cba469ab5d..6a210cb9bce9 100644
>> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
>> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
>> @@ -448,12 +448,12 @@
>>           gpu: gpu@fd4b0000 {
>>               status = "disabled";
>> -            compatible = "arm,mali-400", "arm,mali-utgard";
>> +            compatible = "xlnx,zynqmp-mali", "arm,mali-400";
>>               reg = <0x0 0xfd4b0000 0x0 0x10000>;
>>               interrupt-parent = <&gic>;
>>               interrupts = <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>;
>> -            interrupt-names = "IRQGP", "IRQGPMMU", "IRQPP0", "IRQPPMMU0", "IRQPP1", "IRQPPMMU1";
>> -            clock-names = "gpu", "gpu_pp0", "gpu_pp1";
>> +            interrupt-names = "gp", "gpmmu", "pp0", "ppmmu0", "pp1", "ppmmu1";
>> +            clock-names = "bus", "core";
>>               power-domains = <&zynqmp_firmware PD_GPU>;
>>           };
> 
> This patch can't be applied because gpu is not in upstream kernel. Please based it on the latest tree and resend.

lima support isn't in the upstream kernel?  It should be.

--Mark

> Also this should be 2/2 not 1/2.
> 
> Thanks,
> Michal
