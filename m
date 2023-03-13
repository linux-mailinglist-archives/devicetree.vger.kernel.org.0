Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43FF56B74A2
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 11:50:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbjCMKuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 06:50:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbjCMKuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 06:50:21 -0400
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2066.outbound.protection.outlook.com [40.107.95.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F1791C599
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 03:50:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Er06mg4GS9Bq9wBEj97zxxkDRg1+dq3cQVEvbePMUx9TcPVYgWATezHaMZPauzKXlYbkHTd+HDIemSSxItkiTldQymZbkKf6dxOdNKCKoKKTa0Czlz3AQvZncrmixVUzDttJOeScHyIZZZuaEn+haOFrIt9hSYZqCnudql2gNqch05GZaSw2EY8w/RhbgQxzeqX5Nd02egWJdR5eQ3LeCJzk4O/yuHldXs+bJI+tgkxJ0ME/4bBWac+p8cLqb7auyHeJu6/8RD3bAY2A0l7NYvoYgrMh3PUU+ZbHA/09dg1a2+DR3WCxECtHyZjhUh9InPZYtGYiRLKJJhDYzq10EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3QtP03TCYQMyXUmKdX0s69ChfZK5PPQbeBZKhbbt/0=;
 b=lDi6NulJShi9ywk3a0uctKX0vZ2+jmrBaqZgcpc9E325T9I4Wr4wLjg0vkx65jJawPGSGUUX7jBh3AyIo4jSEXQw/GxeOzGm+npdEfT9KHLBFfCyPrz2CnBpu4iTVX79kyMUsTrobn4JuVkt2JeRxf1j/W4qUmZBn8uQaAgslX6wUuh+XK4Em1T5YXS9O8yBpi8OHjz77o8Mw/JAMNU1fL7YYUOxN7jUEfoDeSMYikY64XrQrHPtuDBFvVC1QqfObAmBM6jXqOXebVYWDky0+n5c67GtSGsDE3Ty8ob8ygleeR+/38m21+HcbNrlGYCtHjAqTWh+KIbITY0hGfqOQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B3QtP03TCYQMyXUmKdX0s69ChfZK5PPQbeBZKhbbt/0=;
 b=v4r2Fh9h5dNWgHeI886BSsGiiP0xoiWIm4SiW3UKR7vGtN44aq8R/rxyO+DoPVVb44MKHe4SWa3yMywK5KGy49vHhziM2Oq0lPcu+goahQK7w/YUqWhXkhiP81yUiRmOvNZSF10U0rjllfZVn4JR+WMP3q6uSM9cK0oh/wvXgdg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB4758.namprd12.prod.outlook.com (2603:10b6:a03:a5::28)
 by IA0PR12MB7774.namprd12.prod.outlook.com (2603:10b6:208:430::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 10:50:16 +0000
Received: from BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::4d07:7f52:c833:9603]) by BYAPR12MB4758.namprd12.prod.outlook.com
 ([fe80::4d07:7f52:c833:9603%6]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 10:50:16 +0000
Message-ID: <169f240d-8bee-b1ec-6dc2-5071bdf48e8f@amd.com>
Date:   Mon, 13 Mar 2023 11:49:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RESENT PATCH 1/2] arm64: zynqmp: Update MALI 400 interrupt and
 clock names
Content-Language: en-US
To:     Parth Gajjar <parth.gajjar@amd.com>, robh@kernel.org,
        mripard@kernel.org, heiko@sntech.de
Cc:     git-dev@xilinx.com, varunkumar.allagadapa@amd.com,
        vishal.sagar@amd.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
 <1678181001-2327-2-git-send-email-parth.gajjar@amd.com>
From:   Michal Simek <michal.simek@amd.com>
In-Reply-To: <1678181001-2327-2-git-send-email-parth.gajjar@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0270.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::37) To BYAPR12MB4758.namprd12.prod.outlook.com
 (2603:10b6:a03:a5::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB4758:EE_|IA0PR12MB7774:EE_
X-MS-Office365-Filtering-Correlation-Id: 48265b62-15c1-4478-c260-08db23b0babd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rzdIoD1OYWiDJwOwIw7hb+QIWTcyHib2u8UqOy9/usmhBbVHQP75fzWWyw+EKCyECPTvHfJetuo116Wp/18dS5E1JlEVVQv0aTeS7Q0uq5pqRcDgbUr4q4P5O6hdO2JS9km0asrfQuxPZSzthGSglQjf+Lbpqoyf4U2UboT8hdakfTINPc0r4eTdjS3TKZAMlLYypwO5nu6diKOBrzOyN4UrmSXP0V1rawOPGiMxahEczCFi8yhAHplN3jcjbnY+2VgI8+XuBiok7CiGO79/wsKLut/73QkEvOgeVTp9ujZKSexPtX1CEBc+s4kkRFUGt4YUxx2TZqTGed/yDa7Q5kyh8vmkucX5dojsZAXwv7J1FxpRTgp459FnHSRNw9Z+wxmjDeteIedOBJf6qEigu1eVZswpeIxXL0kUD94BEeDRf/wRny9a+IJ1FaNngVd54/D2Q07dOvS0+hJPjDL7A3NPVZL674UiFWE1RNE/hi/wWN3bD4mlUx5HMPCJAitnav0rlAj/0cvFMReqZoHhpwIJhYLmniHTeqovbAzaWbFCnSj/Zxheq4ElzEYRZkmDeRTAAJRSuGXOZhJBtAbLE2bjpNbHjnUpHx4nCrXtcQeS1dkMVhibc2Ae+u7qjubtNdSpDiSmEj9NA6oBcR2writ7mWZdfz71LYVGM1Kmj6RbdclAkUrHZ+bI13bL8hBmqUsB8CygLP+RklbG8Izn9HvIvqoslGq6ENsv4CGagtA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB4758.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(39860400002)(366004)(346002)(136003)(396003)(451199018)(5660300002)(36756003)(44832011)(83380400001)(478600001)(6512007)(53546011)(6506007)(26005)(6666004)(6486002)(2616005)(4326008)(41300700001)(66946007)(8676002)(66556008)(8936002)(66476007)(31696002)(86362001)(186003)(38100700002)(316002)(2906002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDhwdVdkRmdyV1kxWjI3SEx1WitoK21xMmlJM20wYmRxOHBCUGZkUnltR2lK?=
 =?utf-8?B?VGYwWmV1SEpLRUQ5YU5iRGlHZ2xlaU1ITDZ0azBBVlVlbkhJT05RKzdybGpO?=
 =?utf-8?B?WlROT1BUZU5QWlNFNHVQd29OcjI3d09MWHBOekxVQzRDZWlzSmYvdjBiejIx?=
 =?utf-8?B?UkM1SDZFWWUvMmhzcUtUZnJJdFB0ejVPQ0w0RmN2alpQRWFCMWVPRDJ4VWNu?=
 =?utf-8?B?YUFzWVRIVjNqY0JkdWVJY1RIV0RhTjFWUlhxWW1jUHNxdU1kaFBUSHlUMzhJ?=
 =?utf-8?B?WnFqNVVqZ0xSTHJqN0h0by9XcExUd0NSdFliSytaL2tBV0FYckt3enlGRkxV?=
 =?utf-8?B?eE1mWllvTDkzVUNzUzZsZzd3MWVGck9kMldUYWhJM2NsMG5KQWxmU1F3aW9G?=
 =?utf-8?B?RFNxanJJb2NKbUt3RFdDWDNGaEkvYWR3TjB3VmpmVzJ3UnN3cUo2a2VubTZJ?=
 =?utf-8?B?Nmt3VG1MM3Z6a0UyTWtzakxOMlFKVmVvMHVGdWxVVnh2TUdkK3VBT1p3UlY0?=
 =?utf-8?B?TUdmMHVKdXhOK0NycEZFR0xKaGl6OEh4bDlDYmlpVHE5U1BZcUVGSkZGNDNU?=
 =?utf-8?B?cWV5K01hUEdQVStMTStkakFxRTB6dzJsTkZYdkJzaW8rem9UQWhLRWlCeFRG?=
 =?utf-8?B?VFR5V1JJbEorVW1qNm14QU5nWGdWVk5EN2tLUWNoVWk5WDJxeVFLUjQ1QVg5?=
 =?utf-8?B?OEk5SXV2QjVucUNWbTJEYlFIMFVUTVBhekRRZGpjaHpZVFBrYUVrd2JPcUpB?=
 =?utf-8?B?WXdjeEtLemg3bU43dE1DcU85a1RXTjFxVFhBcnVsNW1NQWgwS25vWFBKVXQw?=
 =?utf-8?B?NkJFSHJMZHdONkttYWdGOWZMT1pFQmVCK0QrMzduRVFVQkh2YjU0UTFxYno0?=
 =?utf-8?B?K1JxUlhydnB0Q1AzczRoMFVzeTJrOGVxSngzeTExNTFhQUcrMVprRy8rbXhk?=
 =?utf-8?B?NDJKdnJ6bEptWXI2M2ZJd1VKd1RkaGRnamI5MmF3N0lnZGdOUlZrOHg2M3dt?=
 =?utf-8?B?V1Z1bEdkL216UURMWDFxNlJUc1lIR3dNZnM0T3FJcTlQWG1Gak1xY1RIa0J4?=
 =?utf-8?B?VjgwbzlDamRzZXBCRmdUQkh6czRFSDBtdkp4QzJDcU1LeThMcktUMTBDQ09Z?=
 =?utf-8?B?Rm9ja3dZbDdYd1VITVp0R1JjSDQ3UWVRK2J3QlFEbkRrVjdQempJSmgyazY3?=
 =?utf-8?B?WEFNUmI4c2dDRXh5aTlNOE0yTnpaNTUrRlBKNEJRVTVjSjlHb2VSZEdOdC83?=
 =?utf-8?B?bldUQW40ZXYwMkN5amlqcGc2aUVoMWsxYjZkc2dTdmRDaFB2L1llajZyY0JP?=
 =?utf-8?B?NUFQUEtuZ2s3N25hSjYvaXBReDJvZmk0dHhJTzJtR09nM25vWUR3cWhTdmNr?=
 =?utf-8?B?a01qR0dtODhLcjJ6OE1FeENLL2NmdnpTS3NHTjVDdWRERnJraXpNaHArNjhV?=
 =?utf-8?B?ajIrVzJ2SDBCeWNQdU42eUFBSUpyUWRSNnBRTng2VkpwdHhZZWxocjlQZTZI?=
 =?utf-8?B?eGJFT2hmcW5lQnRDK25QcXhFZy9lbGcweGlzMmxQV0pmcGpNM25LRWRDdjZ5?=
 =?utf-8?B?TXJEOHlBVlNEeWxBQjJMTDQ3OW95UEJOSWtadG1jaEZnV2RjZnJZOHNjdit5?=
 =?utf-8?B?WWFJZ1lQNGhHcXREMXRzNTR0NnE1aHhtWDlJdnkrSStwOTBNSnhVOHVtYUVP?=
 =?utf-8?B?c0dGb0tGbTJJcWFtQkhZVVFJdG9id2FrZFh2cGdrZzEvSlBJK3hJU2pSKzdh?=
 =?utf-8?B?WE0vbFU4THZrVHIwWTNMcHZHNEw4Y0hEWGVCM0ZKS2pDUnRmMHlJaHZXRFo1?=
 =?utf-8?B?VzBtQmdhQlpvaTdJb0hrdG0waDZ4dm11UDNVclp6NjFkdmJ2RHQwTU9MWmJU?=
 =?utf-8?B?ZlV4WkVOTU03UkVNR0JkbnhsMGozT0lvRnJwNUNGSWpPc3crMjhMNWp4Sktz?=
 =?utf-8?B?MTBHWmRhQjlJUUlYVjBtZC8xL2duNHcyOEpNRWdXMjlrOWgzTUlrVHlnZ2w2?=
 =?utf-8?B?WjlQTU44RzhGTEhtdjlyd1o3cDY3NHVlMHVlbzVDV0xBU1FMZWhER01vUVFu?=
 =?utf-8?B?VC9qNGxLM2VGZmI3ZllGWC9Ia3ZvdzJ4Z21SMXF4SlB5azVDV1c5TVNkemNT?=
 =?utf-8?Q?yPANc91G+usF9sQCw+CYLsxLD?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48265b62-15c1-4478-c260-08db23b0babd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB4758.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 10:50:15.8834
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ifxQkb7f1X5XI+1fB3Li8unKPfUWhGI4tzIuTAC6T+sSumGxgvhxlCar5a9AeDN4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7774
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/7/23 10:23, Parth Gajjar wrote:
> Motivation for the commit is to utilize the upstream community
> device tree so that the either modified ARM Mali 400 driver
> or upstream lima driver can be used.
> 
> Signed-off-by: Parth Gajjar <parth.gajjar@amd.com>
> Signed-off-by: Vishal Sagar <vishal.sagar@amd.com>
> ---
>   arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi | 2 +-
>   arch/arm64/boot/dts/xilinx/zynqmp.dtsi         | 6 +++---
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
> index ff2f34ce380c..ac8ed4a434d0 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
> @@ -133,7 +133,7 @@
>   };
>   
>   &gpu {
> -	clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>, <&zynqmp_clk GPU_PP1_REF>;
> +	clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>;
>   };
>   
>   &lpd_dma_chan1 {
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index 96cba469ab5d..6a210cb9bce9 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -448,12 +448,12 @@
>   
>   		gpu: gpu@fd4b0000 {
>   			status = "disabled";
> -			compatible = "arm,mali-400", "arm,mali-utgard";
> +			compatible = "xlnx,zynqmp-mali", "arm,mali-400";
>   			reg = <0x0 0xfd4b0000 0x0 0x10000>;
>   			interrupt-parent = <&gic>;
>   			interrupts = <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>;
> -			interrupt-names = "IRQGP", "IRQGPMMU", "IRQPP0", "IRQPPMMU0", "IRQPP1", "IRQPPMMU1";
> -			clock-names = "gpu", "gpu_pp0", "gpu_pp1";
> +			interrupt-names = "gp", "gpmmu", "pp0", "ppmmu0", "pp1", "ppmmu1";
> +			clock-names = "bus", "core";
>   			power-domains = <&zynqmp_firmware PD_GPU>;
>   		};
>   

This patch can't be applied because gpu is not in upstream kernel. Please based 
it on the latest tree and resend.

Also this should be 2/2 not 1/2.

Thanks,
Michal
