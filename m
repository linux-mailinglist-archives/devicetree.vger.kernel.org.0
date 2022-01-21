Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EF2349574C
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 01:24:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348125AbiAUAYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 19:24:45 -0500
Received: from mail-os0jpn01on2106.outbound.protection.outlook.com ([40.107.113.106]:47734
        "EHLO JPN01-OS0-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1348093AbiAUAYo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Jan 2022 19:24:44 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UtJJLIN784aD2HCVmbuoLMCRXL4O7FoQ2NGpMr6dMyJPh/JT34vbe9EyVBITJqmmZAQ3LNb//8qTxn0njIWM0ybWbG/lH3dnwE+znDovraokdey7vYE02gIPJFxA8TgXtgtUXezLCkjj7hzUuQ0rVaIJKt5I7ROJ+KYDnw4P0yEQh1rPX0FmL97k9xwNnnylh99i5+hkQ4VtlPrAeHb1MyurwffJ+PXbsFN+7KDh8cQxQAEh2/IKpDnzy9sY2EaR8dakyfWPfrX92q76Z9aqvGErtLdqX71Ki7GQYKdYJoYuvkEf0k4XmRiFz4av44g1zG7Oa+VymWc55g44OTAAtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpaCda+xL9ZtnG0hEBlpqXGHz51kclZQL4jBIXSsiSM=;
 b=JrXj0XdB0SpML1mfkn1xIEMBweEnSUlRJaPyAU7U//fBJY+xCKaL574yn3X7J8nR2+5WtMRM6URYuUK0gZdKmUvD6SqW74dbPw2jLP6eJXXdaJxRRl7IFq7lKemYVHL80fvU6RZtqDqtq9Oif915no3/pPl6P/IXp9i7xEg/cHXgMNIkKiYBcQvJDcHsHCVSipdyx3ZpJdosf3PMkT8NvKdK5gDX3sSbN0DDgMCbtwBmObGVneUvHfI0g4pb7duxzvrb8HlYRd6pajNAHurIBdSXvNSGtzlMcSemhCRtMirZ/0i63NSaDa2CdmkBVtFvtRCYV5aP/jBiBNWVOpWxtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tpaCda+xL9ZtnG0hEBlpqXGHz51kclZQL4jBIXSsiSM=;
 b=QAY8kwiIhdROL+CC3trsQ++zZnO4AynP8dBr2Pi7m4zqEKCdgAAuExrQpqsA/LV/sr5sSd/tqxHp5tMOgbIHSbepsHXMoYl7hVhtUba7nHIumDQfos1IzC9TRE9pwjOe/EI8PXmaCsiSWcRwKUTZ8kgDvdolJmQjOf8gOrKDApw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB8440.jpnprd01.prod.outlook.com (2603:1096:400:15d::5)
 by OS3PR01MB6119.jpnprd01.prod.outlook.com (2603:1096:604:d0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Fri, 21 Jan
 2022 00:24:41 +0000
Received: from TYCPR01MB8440.jpnprd01.prod.outlook.com
 ([fe80::3987:7c4c:1d2d:6a88]) by TYCPR01MB8440.jpnprd01.prod.outlook.com
 ([fe80::3987:7c4c:1d2d:6a88%7]) with mapi id 15.20.4909.012; Fri, 21 Jan 2022
 00:24:41 +0000
Message-ID: <87h79ylyv5.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To:     Robert Hancock <robert.hancock@calian.com>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, perex@perex.cz,
        tiwai@suse.com, michal.simek@xilinx.com,
        maruthi.srinivas.bayyavarapu@xilinx.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/6] ASoC: simple-card-utils: Set sysclk on all components
In-Reply-To: <20220120195832.1742271-5-robert.hancock@calian.com>
References: <20220120195832.1742271-1-robert.hancock@calian.com>
        <20220120195832.1742271-5-robert.hancock@calian.com>
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date:   Fri, 21 Jan 2022 00:24:41 +0000
X-ClientProxiedBy: TYBP286CA0035.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:404:10a::23) To TYCPR01MB8440.jpnprd01.prod.outlook.com
 (2603:1096:400:15d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 72674997-d61f-43e4-97a6-08d9dc746aaa
X-MS-TrafficTypeDiagnostic: OS3PR01MB6119:EE_
X-Microsoft-Antispam-PRVS: <OS3PR01MB6119C575469A2440275ADBCFD45B9@OS3PR01MB6119.jpnprd01.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TlRDAVXUMAkD35DW53Dugz5eICyOy3BYTXYlq+hv75u/CfHlFyzYPHwTVxQMx+v1MlintPfGnBzA6LX+9feQoeDFSRZOdaJ5zz4Y+igihAGwcffVLBJn47EN4qNKnMyNJFSNwc5/iNbw/2etLtUzACxya0TNCwoZgDVViO8D6NMXWh+BT3EdnOoYTDmVbrc5p+HJjD28fDYOWLhCZo6BDkiulVFaVDtkLVlXLWYadTnnCfrFkM4+LxZD+eHS43ifryfZgW/gTX5WI9vJFoxpQL0XdKw8H7urXwAvBdegdaacFEEuloDLvxZNJZY2Hyt6XdZUUd1BYpmlifVvx/bX7geljdG87WO2zj6LGn7UXx6JeBBOVG/J4IIoT5KF/assHktcLqiewxHroti9XY6qxkJxiu63VrJehptHXJh3VxcyDcGSA9H+KF1PJdyFgb2Cvbv+UpDN3fdLKru6PjuV81TvKl9zs/f5xY27dq6fSClMVOamcDsVL/bKjkNRHQsOe7JIaze2kKGO/oQGRGYZAvXnnSb6cC08tRJkrEH6OQxiMLVUHUe7RkuFh65NCvkkaWfbH4hVSheXAJMyd7jXj0GUzoaGGe5X5qAS4xvhkGKTFdwADu2vNKyHOrjI+m708Gx92BjC0yZmTn5miFBz+KdiESVoG517XxaPcfRoIUhSXk+yktEIsXJD/CmBrcMiJWlDU7nQ/UqVtbcDX8ifJA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB8440.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(7416002)(8676002)(86362001)(52116002)(4326008)(6512007)(508600001)(316002)(6506007)(186003)(6916009)(8936002)(2906002)(2616005)(26005)(4744005)(66476007)(38350700002)(38100700002)(5660300002)(6486002)(66556008)(66946007)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?O4gUn3+uygcrMML9U45V3ogu44me/ztiShHicpmtx7kGiTtMA6qwOYAS3GPJ?=
 =?us-ascii?Q?Utl3BTKEXXdv64Ud08ZEc31waBeYIrFJGMhHpyKNk3TGIn6Sl3LnPj8k+63S?=
 =?us-ascii?Q?RVu1XWofkcj8FsEV7QZRbv5A/bzPxXY40rVivI2KDUOnoEseLoUWrchXMSLs?=
 =?us-ascii?Q?AsdwnPDT94Zv6ZUD5lH6b0DAGEws8ZjXSnqB/AhKbCF/fV9NxQz0unNoAzHx?=
 =?us-ascii?Q?oDHD/bxF84qPn0jCkgdU40crwzcOyuC1rV7Rf1R765CjzoEAwO7EFcH/2bN5?=
 =?us-ascii?Q?7YYkLPJw1iAYsBaef22berFpGjxO7Xgu+7MxrMTUvKCqSKjKtKIrwvVU3XEE?=
 =?us-ascii?Q?kqXuzMf59w/WTXwC4A/MN9Q64QwkQcmp1NXxTA7SF+BlSLnxy6pOT/ZBkAgP?=
 =?us-ascii?Q?g9Mtm5h4+c150M9lR63bFXHDbCFvMldHX+7mI0i0DXmwv9jlDKOo/3O437lt?=
 =?us-ascii?Q?H37R3IXQ8uifr0A74UTXhkpgw0R2WrQw1shfcHcPtwGaqQyajyvtgK/vhHLJ?=
 =?us-ascii?Q?nSzDIqvbKmoqdtbKwHPCpLrI/eiUFa1Y0kdZ7WR9E0ueVJWq9fES0hAHAR8Z?=
 =?us-ascii?Q?Wf+fXzBo06fQq+jyq6nY7O6MmVW1CF7Izccx6W32IsO2aOWHif7yFkEtkwJD?=
 =?us-ascii?Q?Nctk1h94TlyXzIXZmC8/Jc4TlQ01zVVWW/M/0/LeydKHYhV9UzZ4FifQHeQ5?=
 =?us-ascii?Q?eWq65PF3PYeU6x48DqV3fpTL/KQJ9gIsr9D8Prd/z9t8VzPE4QrSdQ/QKVeO?=
 =?us-ascii?Q?uDGVp28lmX6LqsXfNj9U4eR6ET0Jw/QftDwTRFRGlG5EcLB6pRiQTCZoJnKQ?=
 =?us-ascii?Q?iVnFIRLMHEu4WBTSsnrBePcs0yR+GclkPC7yRAqpNeIAZSPycHg/xU2hQLDb?=
 =?us-ascii?Q?U/csrZbuGcP0hXTcOE+A+pEk3KXq+P/zy0Y8v7XAHKmQ3pjErdFyTcbuROv3?=
 =?us-ascii?Q?966KweR1OCrmh+0eVekcwRxcXaei/NNOxr/V3Eb07UoLRxBPyT1ZIYihkJWF?=
 =?us-ascii?Q?HBoBau353RwTAP9CL0ZHbfOyp5oQ2qACrSVNMqoRSxQI2IORUpKYkvJeAWh8?=
 =?us-ascii?Q?u7+yMGkcW3HPaRZK/DIp/AAnURN3Xi2izJ40UtzgXr2SGaK4MNO8l+XkJD6J?=
 =?us-ascii?Q?wXPbCc6IO501BXXHhD7zN1aFSQsnW0sI1fu5u5rnKZa5m73vBXZPMjKD1rOb?=
 =?us-ascii?Q?fLel1Sjso22iNZj1A5MKjsuwmV5CvAW+ce9XhF7TPg+DzzE+lllMvZjjxdaD?=
 =?us-ascii?Q?/u0uhwq37FwAuEI+SJ9nBrEoNmLytt6ibU0Xv9A7/mDW53LMR85+Kf+Cf6yh?=
 =?us-ascii?Q?NuSYC9tK/8OKk4ywGcKMKLdbvHCPYtRSDN6g+59Z7CTFUnop8cBJKIQvFc17?=
 =?us-ascii?Q?KLpAg6BrlEU/VHYW+IOfCI0k/zEQjldByMd6aqzcSB4JSSD05Zmk7xwP93sO?=
 =?us-ascii?Q?blpSb+u8/LPssJOKdctw2/Of66LDx/UHDrQ7nyLJJj3AyK1jackIvFj5Xrw3?=
 =?us-ascii?Q?0fiZUF296l4g9puglriRjGpUq3szDMPxWOF0ozidtFEkaDe4WgCj5+tK6BeX?=
 =?us-ascii?Q?qVsaBOgG4Ozi2jFMWHP5QnojE2PHkBlmWGrxUWXACMH8aGxp6AmjN2bU3nUe?=
 =?us-ascii?Q?rLU8Tm4gBRZMU6Utx9DEBbjuNp/j5dIrnm9EjMcbF3IuXv0cODA6FqJipiT9?=
 =?us-ascii?Q?lA9vwzWiPxtq3kiTXH2jx0ju8z8fskXSvhF+nUvMcKcoWrPoqyZgIUeFKf6H?=
 =?us-ascii?Q?Fi/vbOER/A=3D=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72674997-d61f-43e4-97a6-08d9dc746aaa
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB8440.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2022 00:24:41.5548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DAgLfk14ZXmsRLEmisgcvC11WoPKjA/EgaEvl7I4re8FExey07YNzbdcXd/kZioL4N/+9iM5F3VJJDV7hJmeHV9wnNyiGzde2ZMHRFX+KGH7ZZ0cLuqY8TjeQo6dvC/5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB6119
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi

> If an mclk-fs value was provided in the device tree configuration, the
> calculated MCLK was fed into the downstream codec DAI and CPU DAI,
> however set_sysclk was not being called on the platform device. Some
> platform devices such as the Xilinx Audio Formatter need to know the MCLK
> as well.
> 
> Call snd_soc_component_set_sysclk on each component in the stream to set
> the proper sysclk value in addition to the existing call of
> snd_soc_dai_set_sysclk on the codec DAI and CPU DAI. This may end up
> resulting in redundant calls if one of the snd_soc_dai_set_sysclk calls
> ends up calling snd_soc_component_set_sysclk itself, but that isn't
> expected to cause any significant harm.
> 
> Fixes: f48dcbb6d47d ("ASoC: simple-card-utils: share asoc_simple_hw_param()")
> Signed-off-by: Robert Hancock <robert.hancock@calian.com>
> ---

Reviewed-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thank you for your help !!

Best regards
---
Kuninori Morimoto
