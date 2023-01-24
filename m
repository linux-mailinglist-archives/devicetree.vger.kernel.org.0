Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EED6679BBC
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 15:26:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233910AbjAXO0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 09:26:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233644AbjAXO0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 09:26:21 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2090.outbound.protection.outlook.com [40.107.21.90])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C857F3D09C
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 06:26:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P92r6DKplXu3rZdtjArfO5RxEDeM379FSWwUbyYRs8TNJKCHwswUupVbznR4PwvBwsvZgEfk08aA+2mdgYog3V0GENmUWGvfhbNG5XJqv0j2/QLa4svVflTDon/+uvWW8XDnvCHGHtRs94VWG8VryNUSPLwdGIWckZDUCmmmwsnTymTOdTyUkBkk1VgB62ZKbXDuRX9x23KPV6f5+WdcZaYRzA5cdhrw9HogK0YLIWTz0wdBb+MSVPORyI9RTf1Xl3yhqFQnpsybvgUKKduxlSx2k9xN/9RvPXbZ1rM8/rKIKJK24HUQoy9aJn6B+03B++4nw0g1IA/gxG9EsHKIvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sc0YkIkQOxv1LKoXIkCHCW2T7/GeXGA6r6iDmZTfECc=;
 b=WQQ79zLg3r0bz5MKgrKJKMnicucWlvYXwDS7IMl3OpDDbMaGuhhJUHlRFA9ug20cZDllG0hU/2GDJzndO9WgxCCz3ctPRQitAIiOWP4kEOxN15B07KG79jgAoQV524wXLK5xnj52IKHM2DcKFQ1Rht2gA4Epw17tCMd045gD3F9iWI2FASjdVp5Zl+EEkhBitCO//YvSqljOgrDR4kujtftCIe627rDVTSbB3wDEn5OoZ6K2cBCt/UnHwoBDarSHOl7iXZhnej/JLHo/9eNGhqG5wF9U4JKzCNbzxLm148SajL9kY5bcksuf6G9Owip424nEzY+rxj5XqUE2TIWn5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sc0YkIkQOxv1LKoXIkCHCW2T7/GeXGA6r6iDmZTfECc=;
 b=H7UfTYUWQZcbGayKNvvOG9vXVbosMHceX8WdwRAm/RkHk037tNmhTzgejusCQEPUwZTLKKk6fmPp7fEO8mhOAcZtqBCTlv3qihX4I6CB4FmfJM5ZwOgaQ53CDtskRPR2ieXh32MXQN90AWNjN5YDmd1z6Dnr5ZeHAVUgHqthSkA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=prevas.dk;
Received: from DU0PR10MB5266.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:34a::22)
 by AS8PR10MB7280.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:614::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Tue, 24 Jan
 2023 14:26:15 +0000
Received: from DU0PR10MB5266.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::722b:5d41:9862:10e5]) by DU0PR10MB5266.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::722b:5d41:9862:10e5%9]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 14:26:15 +0000
Message-ID: <32a46b0a-5548-8dfd-e7cb-2388cfad2d56@prevas.dk>
Date:   Tue, 24 Jan 2023 15:26:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To:     richard.leitner@linux.dev
Cc:     alexander.stein@ew.tq-group.com, devicetree@vger.kernel.org,
        festevam@gmail.com, kernel@pengutronix.de,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
References: <Y6Gx/mwh/jwRMOxP@g0hl1n.net>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mp: Add LCDIF2 & LDB nodes
Content-Language: en-US, da
From:   Rasmus Villemoes <rasmus.villemoes@prevas.dk>
In-Reply-To: <Y6Gx/mwh/jwRMOxP@g0hl1n.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: GV3PEPF000000D8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:2:0:1f) To DU0PR10MB5266.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:34a::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR10MB5266:EE_|AS8PR10MB7280:EE_
X-MS-Office365-Filtering-Correlation-Id: d436a1fe-fa69-4e20-b778-08dafe16f34e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8NAJ4sPoq0dA9Z/+uUZg6duurf0U9G22r3j1anrAJtEy8YpOJ9CcrV2nscinmtuzdPYsv428yGhfTdhiPZqmhYc/dBWlAWBPk+qSACgahV8zb0iU1gw3yUiMAy+VHjFkRVKt21KgCdaB8jNenKakY4TVbmHoM9gaRY0U/WnfMtF3NfQWjTIZ4IJV1eOjh4rYUBx0Xi4Do/vJeqeoxk+SCWkqYL0/pkrdCrynaYfp1J2kZEc1NmDk+LQoBwxomGGfbJ9uyAhSSx2jA17NysM13XzmrC2vukhI6CKXEaSAkhNcG7DKG9XSS2pA3Tsf4iawZoInokB/5ucZghDRHt1W3KSnJ61kUhxha/rroY+BwKZkRmr1em+JsZenjb7j3lWz69dJX4b8pXoPoxSgi4Bf2HenjTHXrpk9ivaoSZSkDDV+3GhuQkXo6yKUDcpZnp6xlGC9yinwU4orABgdWbWgjHNreXr1B064x+kPa6sn+uJ3s8kyk/baiw911m6s3UfzV2jdtJ6mRRyfypnVV2KCVolbRKbT+mEdh+esmh0UTffSZA55NkVeHj5Lpl+QFVMSLF3+9PwsYq77qqCVNEfCu2KGmnNs8JWoCCctF4Wn47akanMpEMnKY/unjNoPqxfrdK4JMrGV0CnSrPp9vqzjdNUINREsrElsvEG2/rzENXHHZVYO5Qlso57Rcr7MF/7/8A5pQG+jpDHnnr/3B4UHA9fdsiFHAVaIUXXpA1Xd0LGZuDvIfsEsOzVAggEC4KQq8SdvP5eDtxyYUKDd11MPu5+wmgFJjxRvbseF4qgGzhc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR10MB5266.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(366004)(396003)(346002)(376002)(136003)(39850400004)(451199015)(36756003)(186003)(66476007)(66556008)(41300700001)(26005)(6512007)(4326008)(2616005)(478600001)(6506007)(44832011)(31696002)(66946007)(86362001)(2906002)(31686004)(8676002)(316002)(6486002)(52116002)(6666004)(7416002)(6916009)(83380400001)(4744005)(8936002)(8976002)(5660300002)(38350700002)(38100700002)(32563001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am5tQ3Q3dUw0VEFWWCt1empWWi9WckpubHg5NCs2TC8zdmdwQ3JYUWs2U0xj?=
 =?utf-8?B?a1pyczBIdHRzd0Izbi90MUZxN1Z0QlBWU2o4VWpMVmZleU5HWktmOCsyanNJ?=
 =?utf-8?B?ZlNudFdLT1RjcVBlcTUvV2hPaS91RzFQbWxKMC91QVVPdkJSQzZ1Z0NaTFNR?=
 =?utf-8?B?N2twaTlZSlRiaWxxQ1ZwK1hXcm4rZGdBblJWaWZxdElCQkxMQ012emErQjY2?=
 =?utf-8?B?S1FYby9rQURxZE53RnZPaS96d2dRSlUxQ1pCWUJvUmxRcEw3WHpwWXJaWlBr?=
 =?utf-8?B?Z1VYellDN1JJR1dLTU5VSE13N1NsQXZIdDA3VzduZWpoeXk4ZlQwYlBZV2ZV?=
 =?utf-8?B?WllCcEZLcG1YU1ovTURKZTBiQVlxQ3JNUlV6UGY3U3dHY1dmbHdLQ1lxQXZX?=
 =?utf-8?B?bFliTkd5cFRkTjJIL1ErWGpzVk54WUhmRVRlZUJuck9pdk9YS1VYYWtaK3Js?=
 =?utf-8?B?YkNqOWNwbnBpMGpqMXp2aFg2QXhUR0crNzNEWVQ2RWN6b3g3NDB0UjBkb2xr?=
 =?utf-8?B?OEVKZUwwYksxZGhreEhQOEdjcWJ6TCtTcHhGQVBWY3F1UkxHWXE2T3Yya2Ji?=
 =?utf-8?B?Nnp0bHNDQVRsZ1VpdUgxelJPa3F5TnlQNzA5K2pxVVRZNCt6ME1RS0lrak5i?=
 =?utf-8?B?TkZoSVdMcmdTbE8xL2htUXd3Y1hHbi9tY0pCYXd3V1prTXZpQVJhTW9LWVg2?=
 =?utf-8?B?L0w1VUk3UzRKNVNVVGVDRHJibUg1bjl6WXdUUHczdmlBNzZOKzloNTZUb1d4?=
 =?utf-8?B?bWJZbWRjTjBkVFY1L3ZqVURNQVRzU25pYjJRL25EblBMUFRsdDNSUFhrZnA4?=
 =?utf-8?B?dGMwZndwcXY0a1F2MnpMY2sxcThhd2ovNnVub0tyT2NOUkNGaDUzek9mN1Ri?=
 =?utf-8?B?S2Y0czY2K1NRd3J1eVNmc0ZVY0pxTjVheUhja0xQL0xxMVpDUUV5b2JwZjI2?=
 =?utf-8?B?ekVUZGRzSGZWekVjdHVnck9tQ0p1M1poeHlWVzV4ZG01dkdtZXZ2Uk83cUdj?=
 =?utf-8?B?bzZwR1YyRzhuWXNVUktjMkg2UDZ5OGsrMzJSTEFGY2lldGgvQVNGK0QwazJk?=
 =?utf-8?B?b2Z4OExDNVZSeTU1QzVUd3M4Smk4UmNzMHJIREoxbDUrSVVrVU93OW5mdVcy?=
 =?utf-8?B?OTR2Nm1Qak9iN1hjSnlsbm13VWNVOEJGajdUcDc5Rnl0SjJRTEdnRkRvNjFp?=
 =?utf-8?B?NHlIby94SGdhc0dIdnRSdmpzY0lzcHNjWHZZc085OHJYd2ppQ3JaTTFqbVFW?=
 =?utf-8?B?eWRYRmlHSW5vODMyTU80MjVIaXAybkUyYzFHZTB1WUo0OXFlRm1CWjZQaW5n?=
 =?utf-8?B?cytCbDd0cUlJckdZWXdSVXc5UlpPQkVFdW5rZE5GL24rbmQzTVVHaW1hTUZU?=
 =?utf-8?B?TEt5eGw1ZkQvdUR3RnRzVkxqOTc4SVVNQ0p1WXZRdmxUNmh1bFI4dk9Hd2V5?=
 =?utf-8?B?OHpvOTBaaGtMZFQwV09KYWxQS3RDajZnUmphTGg5RW9zOHFCeG5ISVMxM1pi?=
 =?utf-8?B?c1BxNVlKVnNJL0dBTkMzQVFObk11SitoT1B3dDgraDM3OHNGY1ZOaDVvNUVh?=
 =?utf-8?B?SFlNZWpZYnM4Qlp1T2pxSTNTNnNWTVFlRnhPcUZnSGpYRnFEL1k4dmZ1dlk1?=
 =?utf-8?B?dDJKYkdLNC9DZG9oUXEwL241TldtUkp3MXRVbGh1OTMyTUJWcVo4ZGU0TlRy?=
 =?utf-8?B?NFJSOGtZcWJMV2VPTGtST0xGMzFMbitOOUswcGE0b0ZtMFcvRGZ0VVUyVWVZ?=
 =?utf-8?B?OWJHRElFZ2xuUytUNGRPV1NUcGdZMEd5akVtTklMTm82Yjl5N0lQR0VsWGt4?=
 =?utf-8?B?dWxWSEtndGtFSEtHaUsrTXh6QVhTMEVaMm5oL3NURDhWRmw4L2p5RFlFZHFt?=
 =?utf-8?B?MDRtNEhPRGFOSkJMa2tsZGhtU3pWdTB1MzBWN0YrUFVwV0w3bVZHdmhrZzdF?=
 =?utf-8?B?L3REMkp1bmg0a2xXUlBEL3l0a2xLRldHVGNKTmt4OVR4bnVETDBTRytPZUt1?=
 =?utf-8?B?L0ZIYTBBb3B5ZFNpNmNSRm1kc29xcUNvN04rZStLOE1LS2Y3ZzdyU2h1Rmli?=
 =?utf-8?B?R1NyY1NoaEYwN2JQdzR6aWpTMkl6UlAzdk1tSmNsUU9LT1REODhjelY3Njhh?=
 =?utf-8?B?NGxZRnFGdGVMUmFDdGpVYnVtRTMyVFpYZHdXaURQU2NZcVFZNXdkTTdzUzJO?=
 =?utf-8?B?bFE9PQ==?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: d436a1fe-fa69-4e20-b778-08dafe16f34e
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5266.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 14:26:15.5491
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VNlX7DwcNwZdfX7K2KbR2FtKw5eb3THCH/NwWPDaKdJN+Vg2UyF+5kfO4maY0Nrgp8J2WAl4mEoK7MkdEtXY7Ng4KD4GBGVhJGEnM2KOCeM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB7280
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 08, 2022 at 10:08:41AM +0100, Alexander Stein wrote:
> LCDIF2 is directly attached to the LVDS Display Bridge (LDB).
> Both need the same clock source (VIDEO_PLL1).

As Richard, I've tested this on a custom imx8mp board, so this is also

Tested-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>

Can this be picked up and make way towards mainline please?

Rasmus
