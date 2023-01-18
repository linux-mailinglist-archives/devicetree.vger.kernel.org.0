Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30A426715E1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 09:10:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbjARIKe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 03:10:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229941AbjARIJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 03:09:11 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2107.outbound.protection.outlook.com [40.107.8.107])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45827366A0
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:40:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c6BJiWQxLgL/RtY9Oh+H4opbzKHPlvvRJJ+2J9M7wJUNOBv7KXiQvpd6zw9s3ZUwmojUBvJd/R4FkkeO5c2MllkgAuA0tJ2UtK6fF50lw/aEQh10Iyf+DhVC4bdpWlIRJLonhY20P4zh3JnO8pT7IoIBIVfqUpC5482vurEmF+tRBt/mzWUJSoSjdf2GN6xAFBcE/4823GizgucI3r4JEYO24lp8Mf3CrwE+MRtR51C/5Kfr8bg6VfMGj1hnlCrLVKiBB2cFESuxSfLtCjfnIsq4pH5VI295L/bnckNDOjHUCtJtnWEFodNgK/6BWSHP8LJUnkLqZeI+QuWfV43FEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A7JwhzKpZ4VL1j/3MH4XMVgtowOdSmshW/JYHiQagjs=;
 b=RJMrRSl2Nlq8iu4JQPaJaltYqbOdbwCEAox3TVozp+KAIL0L7jEWcXS3gM8Kt/DRyaJTO3bUqNT8QQJO64Ebubsr46oVhJTBN5iwGBuhy9XwLW+ib5AH9F3ohHw2lbz/QftFCYEG7H36gejRfo7QqcCYsByHVetO2oGOvnaIgJq0bip+egLkCUOcZi31kFTuBJX62hqVFIRXSR+mnOeX9hIyJaazT5dKpoEk+C7tS6rIrVg/Qduqgz7G5DEkpEz8gaPrGhD1IpooJH5ED7IWyMPGlsjZ/bv4Mh7XGSLC2JJ6RyJZsLZtEGaD6ENc85J2bn5K6XPrcGbKICfUwFZgkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A7JwhzKpZ4VL1j/3MH4XMVgtowOdSmshW/JYHiQagjs=;
 b=n9TeJ+O1K/WFURZDYWHG3ZVvnWwkg5j4qSDRtsQoxrExN2ZD72V3kyzcmDKTWH+UhFzyH2e8R0FhTBRvKEAjhM1di/0sqs6kuN2HH4y7eBiRvHHDiDmgiLzEGk0R/rjijwbtQjvTYeHNlsHLEHisjWscce1eBFKqQ9NptNr00zc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by PA4PR10MB5515.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:270::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12; Wed, 18 Jan
 2023 07:40:26 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863%9]) with mapi id 15.20.5986.023; Wed, 18 Jan 2023
 07:40:26 +0000
Message-ID: <34c69733-a0ac-9f38-0c03-290e421cdd5c@kontron.de>
Date:   Wed, 18 Jan 2023 08:40:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 3/3] arm64: dts: imx8mp: Drop sd-vsel-gpios from i.MX8M
 Plus DHCOM SoM
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230118030757.254086-1-marex@denx.de>
 <20230118030757.254086-3-marex@denx.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20230118030757.254086-3-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE0P281CA0007.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::17) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|PA4PR10MB5515:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ff81369-021f-4d83-a18f-08daf927438e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rFkfDSU7qnBzPvZgs9JxsZydgnWPIVKfaOyAGicgSpVvvqnTr/s4+OMxvoZ4vEilybYR90Hf8UQ7vqN9sqVsMfuNr2BL9C3RVMtnqj7W3IqlXFDVB6vzS4kDOxVfe6xV8veCqlGXXxrOD3kS6dMdjTXQGetcf79f7QCxk+EmlMZ8Il1HRjEaQXTEtQB/ce1AQaU+GO15QgC+0ySSc7rZGJardo28gmCky6vBL1/kAbziZU2EKqQYFNy7COD1og1zLHoIwGnevIbLuFY6OVZfgkOcW6SOezhiVJl9wQTrzW7SsmdtCbtdYE8P0UgifgL+XcM+yuEha3CJ4l5lTnSqKI/mF8tNK/YbNd2+lOmAukSge1amPRJgUMHWxnTybRpPhFw2tUUMd8E0avnhuSzcuUTt3guv0v8cTi/S3wJE/jehXCrjYPOOnjWojlOUQExu67DKrZv3Qdkx+ItlhJGmausZx3R495HFvwKRoAeePP2vPW7aSksYFCpVvaGQYz4HMTkxsUUYwfRwMFaeAaariUjAx/u3w8oAsng735yayDSMNphMtJt5+CCb/+EMGbqs6R8lAN1NlinPAzlqfcyLohO1+pmRfnfKPqCah2XgmAGQouds8wWWQ9nBDn3RBOjpOF+D+8rbINWAA1xxIgV6i1fmaZa7Ha1iOzO2TDJIV0iCKNmtWXi0NecVE1sy9DUYi5BsaRigIc0PQBe1F/VNGQuAkTzCflhO4rwNE5gEIOwH1FzoUoGp8kBsClwnmypC
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(376002)(39860400002)(136003)(396003)(346002)(451199015)(31696002)(6666004)(86362001)(36756003)(54906003)(316002)(478600001)(6486002)(44832011)(5660300002)(7416002)(4744005)(2906002)(66476007)(4326008)(8676002)(66556008)(8936002)(66946007)(41300700001)(6506007)(38100700002)(6512007)(186003)(53546011)(2616005)(83380400001)(31686004)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFZIQWEvTlRTU2pPcVp3ZGloMUFsd2VrMzhFRngzeHRmZjRveXN2YVh0OGpm?=
 =?utf-8?B?Z1E3VnlVTU4yNkJJVDJreVlyWWN3OEhyZlhjUFpKVXc0cVEwTk9sTWkwUnFW?=
 =?utf-8?B?UThJbWFHeUZTQzloWldVS3NVUWpla05SWVJ2Z1JzM2ZZaTdhSTZZRVc5TGdh?=
 =?utf-8?B?TVBHWldJNmtlQ21zUFJQV0pZMUR4UnUyUk13M1RKcUt1NGFTVEpjTEwwcHU3?=
 =?utf-8?B?Mll4bVFQb3NGY2tYQTFFd3F0aEdaMStDQmlMWnRvWWlKOGd1Q3lTNjlvOHRS?=
 =?utf-8?B?YVdrdUZDR0tUUDBYM056S3JBbTlUbitHZHBBVEgrNTVkOU9pQlNXYUgyYVpx?=
 =?utf-8?B?OFFSNllrN1Rpc1NwdzJuQzZqMXJwU0NHWFY1eFVBcFdhamphTHdybVI2dnhs?=
 =?utf-8?B?ZkFOTnFNOFN6UjM0S2pKbk53eXlQSzVTbEVyWDlBZjBiNTErZjFvckZEeWxa?=
 =?utf-8?B?MEdyUHg2NFBNZy90SU1ISWZqRmIwWlFoVFU1TGo5YTZXT3MwNTZrM1ZrZUdF?=
 =?utf-8?B?V1NDTmxYdlJGcjQrZkl0cXlHbllHUmczNFFuY1hnVWJ4TEtHTUVXMWVyM2Rt?=
 =?utf-8?B?K1RMQUxFMCtlWC80WUU0Rlh1OUUrV0xHMmJjM1dWT2V5amYwYmF3aUVxaUpq?=
 =?utf-8?B?RUEzRWdnTDE1UitlMllRb0dNSlk0TGNmSVJnSC9zUzU0Qm45T2FERnUyR2Ji?=
 =?utf-8?B?QVdYM0EwSnp6OTR2MlVBWWNBNnR4Zm5IR2U4MDJrOW1ER1ZiZ015UUpvTUxq?=
 =?utf-8?B?QnJvQ2o4Q3ZNNUlHa1RleFNkUGxkamxJZ1EvK1drc1E4a0pxUHFVdEpHNUQz?=
 =?utf-8?B?bWNvc2ViTkxHdzBJVUdjR2hjdytlbFhVMlo2NlIxNkRWSlVON0lINHp3Rko0?=
 =?utf-8?B?YlcrcExkTVZDRWw4UkhDTE1WUWRoUjNndEc5ZkNZQ053Sm51MUV1ZXhmVHZC?=
 =?utf-8?B?dlBzRnNVZU5SeC91eW1YbisxUzdwSXpleEt4SVVKYjU0T1lvSTJqdGxSSUhJ?=
 =?utf-8?B?Vm1NbWQ3R3dFM3RPNXBCeUVhR0pMQ1FnSWg2MHZGaVZZc29xSTBqam1IMnhl?=
 =?utf-8?B?bG1aSkRlWWlGSVl5QUpVd1RWbWtNcUl6ZEhLdTZlSHM4WkxjWVVyakNDc0dv?=
 =?utf-8?B?UEg1d1V5bnVIRENZUDBkS2UzWStzVTdpdlR4RTlCTmtFY3g0dmduQ0tBWCt4?=
 =?utf-8?B?NnVzemgzRCtWbk83MUNLaVgzbTEyd2dCUXFPYTU1b2NKRXpsREdjQjNFSWIz?=
 =?utf-8?B?Q2VrS1ZrZG1rNlQrSXU0V1RRaXBVUGo4Qkw5MjRTSjJCOTNPOEQxTDhtM09t?=
 =?utf-8?B?WitQTE1vQWM2TlIzTEpXekNmcjRlWkRtMGZzVGt1djRQbWdHaEpLSzI0N3Vm?=
 =?utf-8?B?Ty9FZmswVEVVdDVjbU1obU4weEMyTHgzbTlUeUt4bkhEWk16a3U4Yk8yNmRF?=
 =?utf-8?B?bDEvb2xHalZpemlVeWhlWWFvVm0yVjkyazAzdnEvcHJRbWNHVnBFMEZsTGdV?=
 =?utf-8?B?NTl0cFY0dVJjVzlxS2dOMWl0aUlVVndZWEsvRE5BN1MvOEdDNEMrRHN3WnhY?=
 =?utf-8?B?cEd6Q3VrRzRraFFXTDNZWWpLaE1QeGF3azN0d3N4RWRKVldOdmZhYktlcE95?=
 =?utf-8?B?aE1wUWpHWXJhY3Y5b3p1NXZ5RXJibGhmRjJqQ2Zia1psYWljWW1tazJSSHps?=
 =?utf-8?B?YkJhZW8zLytaTVc5YVBWL3lwZnUzTGFpSXVMNTJzQ1BaWmh3WlV4NE9TanRM?=
 =?utf-8?B?WVR2aFhSWmFScGZ5S1BSUGdiM2h2RUl0ak5kcURtYjN6bm9NYy9PcnJRRDhE?=
 =?utf-8?B?cjFJSCtsd01QSnR3cTc3YzBkY3BkS3pXb0lVSDgyN0wwTyt0K1BkWlIwcFhi?=
 =?utf-8?B?QW40VS9KSmd0QmVQdWMzdHZtMDRQa3dKdGpPT0MyKzIxQmVKd1ZhZkZYVXV4?=
 =?utf-8?B?ZFoxWW1IdXI2cTAwTGlNbFJmRC80M2dhNXdUS0gzMjFPb1E2WWdBSUdZaVhD?=
 =?utf-8?B?QURDQkpXM0ZmckhVdzdjTWJvT3pZWk1GZFhaRTJBY1hXbnErY3JCV2FqV1Vk?=
 =?utf-8?B?c3ArZ1FOTXdGbklkOXZXeitOSllQeTBkWjdKYTlzUDRHbkpNU3pJZXhVTmlI?=
 =?utf-8?B?eDNxSTA3bjBvNFdIblNvRjY1ZTJKajUrei9mNFlxazRwaC8xVDhjVzU4RWxp?=
 =?utf-8?Q?D1qWsQtm9tOARir1dgcY1ld/j6YrGfvV6c5u8U8+bWKw?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ff81369-021f-4d83-a18f-08daf927438e
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 07:40:26.0057
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BhZzR7vuBsKwQWtCA3FKpZJgFRj39EO5tQmrTtC2EN8b2I8SSelhW+MgJGRNL06XUxIAxuOUGGV4+5CIE1CfLmixYC2cOa5oqBw7mbPh0R4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR10MB5515
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18.01.23 04:07, Marek Vasut wrote:
> The VSELECT pin is configured as MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT
> and not as a GPIO, drop the bogus sd-vsel-gpios property as the eSDHC
> block handles the VSELECT pin on its own.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
