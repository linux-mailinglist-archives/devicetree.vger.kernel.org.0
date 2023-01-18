Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF2856715DF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 09:10:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbjARIKR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 03:10:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjARIIn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 03:08:43 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2125.outbound.protection.outlook.com [40.107.8.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E82353A5BC
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:39:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VHxgQPexlGyvejhE0vZqr37pe4RVivc0TpinMnuLCF6sjRzBwKkin+6GqRFDsM8V604yvUpy27auq0Or5svNKYx0xzGJCCNZ5OzC2tjQ4yWwRy4ZFX3gOSu7sVBR8z96yHjf1vTvsztFZcqFBxAEoqzkdieKNuj7CcH30jtmT2s9roeiDrF8ENSPBnq7rl4WWNp2k2TmW0ExnwcsgHX2wlaF0HPJHQugIX5HobH1F91wcvgxWW7pMOw2Sw2TaK+kuADoaWHho8j4e1ElBbb8xgLT+7/Y610IAIIKloCmZynQfA+e3pXCZcH/S2ohLcx19wqVPPynbqs/qX4h/PgkJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A7JwhzKpZ4VL1j/3MH4XMVgtowOdSmshW/JYHiQagjs=;
 b=ZT68w5KarVyiWZ6yhn3fGa5Uy2JWC/hpbVUqv1jE6kSMiGaKd2/8oMTZesbRqbyBbDVt/Ge+k/1Izd7f1eBsQu0vdB8BbeYXrMFzu5PQaqnAWKgP8EjOQv1qfxKdtDn2gfk3+2jrGHoqrOgIm777X84CYSNqHx9wkevwd/tZ7RkfFkC9D8z2P9JSfoZ5GigFB77omBxlaAB1O71nJXcY2gpMf7QUARKpOniTeCYA8/Lmvv1JOqcBd2q4VqAxi2CGo7SZ4UWxj7uLJYSY/MTlPT/veyNjjm/11N6JLWzIycDgmKlc2XXoEDULLtf3dKAvP7fMYt3tpJ+590JH8zz60Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A7JwhzKpZ4VL1j/3MH4XMVgtowOdSmshW/JYHiQagjs=;
 b=e7/93Fxhiba8BGNfEcA2IROcBdImQctsshZCkqiKUvGZk5ccDTri9HK+u2rNmsmlrffrggY+aDXcebIYObib1NRQsVO0+VgVfdg0vzGio1S0F8lx4dNAb/3Wo56T7k/hJgQ8mW30nch8DkaMnYAGlmJ9G/qcFqLzGiRcLzIgGUw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by PA4PR10MB5515.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:270::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12; Wed, 18 Jan
 2023 07:39:57 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::59e9:ea90:b6ea:3863%9]) with mapi id 15.20.5986.023; Wed, 18 Jan 2023
 07:39:57 +0000
Message-ID: <a1d55736-cb3e-2e52-b58a-cf12cd5aa833@kontron.de>
Date:   Wed, 18 Jan 2023 08:39:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/3] arm64: dts: imx8mp: Drop sd-vsel-gpios from i.MX8M
 Plus Verdin SoM
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
 <20230118030757.254086-2-marex@denx.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <20230118030757.254086-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE0P281CA0010.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::20) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|PA4PR10MB5515:EE_
X-MS-Office365-Filtering-Correlation-Id: 8dd0cd32-bb5a-4e0f-a052-08daf9273277
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bRzEryNcsuiDuErdH6UkjJzd0U6TR4yPbdxHlk7zlZ2b5u0tnmRcLUtJAN4G45utU46c2TC2BOryuml1Mp+5nS4Qhx0f66TWoQ3VwuUm7d6iBgepXj7f+umEwroYelHZXdl3fp5S/Ot2QiT8uTSkqzv+XuzwvNfclEfOymIw290Nz4Hw9mZy6SOxFd7BHTmfZ+pKDsjOFGBoK4e+ko2O2dCVlJ0XbkWHf8EqOcLDtZ8mU3CAeH+gr+GHxtAykJlWeq8+EJpWIKmiNhaMlEVL4oROr916DLwwBEyShRQ1zAXIQfCrWKjRYmYYiMN0uYxQD1UAcX9ZbQKVex9yzUcoC3v6ks+U+xCwaZL0X9qy+yQGYYd9hNbtd+gXPpFV6+ghFyXVFqjf57EngVHDs1HsvH1SwuuBAboNJXwAvyqfnLhZ4poxZqJPLrL7K+vHQWO9S7amq2mf5biWXD60mXYuv1r6phdHiOWB951TGwR3rok8hbaOm4FRAajHS5wMrMm1ZkbeSdhoQaHESswBl5wZi77NbGxU14TRQiqGfL7+7cP52wRUJGWMV/sYuXLfezzY8TTNQuce3F8oNdfEeXXniB5nL7mm7p58A3lAJE7R6ztUQCPx3sbZMj1fTzImZAro/wxsgtlziMM23GZl3NzdYsJdMHTVWSbXazLsC5ny7GN3aY2dF1PSabSBlKE3A6f3s8ZeHGDjjp+NkWb10HZ3OTuCFZehfuVpUoN6atrCLdz95F8K2A+lsLhHRU91vIlI
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(376002)(39860400002)(136003)(396003)(346002)(451199015)(31696002)(86362001)(36756003)(54906003)(316002)(478600001)(6486002)(44832011)(5660300002)(7416002)(4744005)(2906002)(66476007)(4326008)(8676002)(66556008)(8936002)(66946007)(41300700001)(6506007)(38100700002)(6512007)(186003)(53546011)(2616005)(83380400001)(31686004)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHFvVDZhYVoxdEdLN2hoMS9wU3JPMytsZ25iYlZFYlZaZXNWYzRlZVlGL1lL?=
 =?utf-8?B?RXFvbzNFL0RMU3hiWVNGdTJhbEVzYzQzeWliZTFjVDdkR0Z1NEM2ZEpLRXdR?=
 =?utf-8?B?NW5tYVU0aUVyZXM2Mk1pN1N0TXp0c0lnaWFWcktEZ21keDRrN1ZENlVQSSsv?=
 =?utf-8?B?UFVTeWhIY1Qwc2QwYURndWpsOHNOK1NLc01SSVJhcCtVVmJQNW9HQnlDY1Z3?=
 =?utf-8?B?ZVhNR2pCRGswRW82UlZSV3JIL0dnbG9EbDcvM0xJWi9HblE3QXpJb1Nnd010?=
 =?utf-8?B?ZHdYR2Z4WG9hd0xhbURtdUptWktoa0hueXdCZUF4WXM4OXhkMW5sbml5bVEy?=
 =?utf-8?B?NFduc0doL3VqamZvd3cydk0xVDUyYXNyYUpPOUtva2dOb2JHcHFPUTlDT0xW?=
 =?utf-8?B?NGxIOXRFYXJQZ1VYRC9MNjI3TlM2L1N5MmhNQlE4bTRlN1cwb2VBQW8zbzl2?=
 =?utf-8?B?Ukoyd1ZFaEhueFBSbWFwaklTb1ZYcUVkTUtVaDdETmhKWHo2S1Q5SUNiZzVm?=
 =?utf-8?B?VTdQZW9iOVNTeG51ZDMvMCs2K3h4ZEFhV2VzRzdoYkFPcStCSlhpeDVRUngr?=
 =?utf-8?B?aDNIZG02L1M2M0tsd2h1cDArb0huSEgrcUlHNXFYeTNMa3lBbC9IWXg1VWlT?=
 =?utf-8?B?Tm0xWlFJR1JZeE95cENYNkFGZGpaOFVhdU1kYW11ZXh0b0JDcWIrQzBwUG1V?=
 =?utf-8?B?R2Vla29BMVdIUTg4V1l0ZFdrS29SdGgvVTlHSTNmZndZMTg3SXRIV0dGa2VC?=
 =?utf-8?B?RmxoTXU5cEFSajlIYTVSU21CMlI4V0t3WUF0eDh0VkYra1IwQ1ZCS0dyZEZG?=
 =?utf-8?B?SzFkRFUvZjJTNUZ4MDh4Nmo1TzdibFpNbXg4MGlDSXlETG1XYTlrcFp2dmly?=
 =?utf-8?B?dkZPdXd4VE1hNDJuMlRTMlJKYmVzazJ3eUNjd2VWVXJJL1NoUlE1TDM3N3J2?=
 =?utf-8?B?NGthdFBFcDBSUXdSbGlPcm15R1JQVksrVzJjRXRVUnNBWUQzOE84RU85TVgy?=
 =?utf-8?B?eW45UVZWcmMvU0FCc2NreWtqR1EySm8rK3JidmNEZnlUcGM1aUY3SzJQK3Vs?=
 =?utf-8?B?Y01SeUxBMmtneVhZbVdFQnRuS2JwTEYwc3ZsSkhnSWhGNWU2RU9nMndleWZT?=
 =?utf-8?B?NTl6dWlrb2JMdVpLSzhQd2k3Mlh4eTdtdExEYjZmMmZnMnk2UlNBazhMc0w2?=
 =?utf-8?B?REthZGNJRmNTSmxjQ3ZrWUgwM1NTYnRjOVV6d2tVWlY4cDB6T0orNnpkcXYz?=
 =?utf-8?B?Tms5SGtLVGlDelNyWXJsMnMxYk12RnF6enBBUnBzUHdVbXpneU9XZHh6bUlt?=
 =?utf-8?B?b2J5UUY5YVRQU0drVDltaFd2bjQ5WTVWblpVRVptYWVYR1B5SUdHVjZ3azRI?=
 =?utf-8?B?aWFscEpYTnJ4bHJWRTZidTA2SHF5bnlCZlFFNENLdGVhdXpvQi9lTVRjc0xD?=
 =?utf-8?B?ZE96N0cxa1F6LzNQRWpDd0h2RkdOQmZjNCs2U2pDelR3RG1zWStrVjBRenVs?=
 =?utf-8?B?c2ZhenpqMHF2YlIwS3ByRDdDTVpmZmNTbThFaXp4NlBwN29QaE1PTlF5WlAv?=
 =?utf-8?B?TXBFMkhnaCtmVlFjZmVwY1g4bXNEck93R0RKa1I0enJQUmVRbUlYZHkvTmxK?=
 =?utf-8?B?NC9SR3ZNNXlRdnF1UGYrS1YvNGh0aUxjdmliMTcvK2RJYVl2dWZMSUk4TUJP?=
 =?utf-8?B?a3RuRkVBaTFZRWwwVkxVTUg1UTJmenVKSXpZNzB5MjVjVFN5NXpYeGlhODFM?=
 =?utf-8?B?OEVxaVUySVZCU2ZCejJka1I1UW5kZzNEQ3EydGthRDBaaUxkRG5mZ2tnZUpF?=
 =?utf-8?B?OGpNemZQZSs4MTFHZVNtOEIzbnI0QnltREczaDh2UTZUekRycG1yMFNqRCtp?=
 =?utf-8?B?K2xweVVwckZxRzhJWjUzdDRzWTlpV3dnNitucVNrckpZeG5IOUt5cVZidFBO?=
 =?utf-8?B?Sm41blhTZkV2OW9RTm15K0VsVDdzQTl4bnp5dEw0b3pSbjZISkx0OEtMNzE1?=
 =?utf-8?B?b0l5ck4zYU1NR2lyRkdFcTVtd2hyVWtHazFkVWtrSG0ySnVpTGxLSkpLcHRj?=
 =?utf-8?B?dTRMZFpvZGVsZ1oyMjdnRm12YmNTcjNNSmdnWXhNUWVIcnJMalRIS3c2dDR5?=
 =?utf-8?B?b2pNRGRDVVUyTHRLY29MSXdMSzIwZDlZcjJ1aFREeVNkK2pYbmpxMDErc09r?=
 =?utf-8?Q?DUlsguwDeDfd1soezv73oT3Z/aN+7rtvfeUgigredHvP?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dd0cd32-bb5a-4e0f-a052-08daf9273277
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 07:39:57.3337
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P1Ls4Bm93J+kvb+tvZOTeIgOedswfQeS0lZ1+LyQfo4ItJVKB+9lM7gaOg7srG68u60nRbQWkIHfE3BGEq7rCzni/M0rEXnn+atCh4V+g88=
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
