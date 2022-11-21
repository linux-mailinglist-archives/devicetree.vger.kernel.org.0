Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 616D5632A99
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 18:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231452AbiKURPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 12:15:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231490AbiKURO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 12:14:58 -0500
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2070.outbound.protection.outlook.com [40.92.99.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AD1AD904B
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 09:13:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eb8DP6CDTDkQwFi7DOqpo4pxB/TsoPcnc27Ed1zh34aDDPIlYJh2tygRa/SqG6r4GmhTR3OCf/LYchy8drCQRm90ulwm4/zepaiWNOjsRTIgNb4U20NzyG/SELpCesZNhMZwmqM+TWp/Sg4ex++GZvcZg7P+WcW2bxP2S9iHpi1Yxs69Sg8BH37nPEiGVcdXg3lm6r9FOJn8o524QywpN6spk3NHqFhrt9KR6jxTtPSd1zzuxjDSu8q+jg6XtaagDvkwN5XuBLqMmSfy+eetaD1gKAfVJKJ7UNkF46mY9l2b6YQzF1Wdy9sXmzqE810vZGcMp9W7peUMJrL1tAoYKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnXfQPQ4t4bm5arV9+8gd5VkfqXUuRtiwOe2mP3I6GM=;
 b=UFooCfwdwCkJUR8eGcwJRjvaNPiE15TKgT2P/CjaRRbugPU29KE/TJ6VEkhh32e2lOTutQlvJRLNRlfS9jdIpjkRyOw0qHfWk09vZCcI3go8125X7Xqh1jUx+LO3lfUKM01mbGko3EnBqFiyG/93Ng1uq5+PJ6Mzq30qlc7+PJiDjcMdaQrCVEbs5ufdSarU9bp2tnK/C+vDp8ajF665yoUxY8uV5j9ShhScpb4gO4dazj5I9IvkQGJe+54w1mCNBrH+Yu6KfvWM+iDM0T5JXinYcXY9c1RlvdBu6l/kjpio9Ot4QeTmZ4fCXrphB55OK2dNlEtWnV0B0szVYcCUKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rnXfQPQ4t4bm5arV9+8gd5VkfqXUuRtiwOe2mP3I6GM=;
 b=GHw9Qd+faeJrsi/6DzmYmR7V5fXnbSBApsJPAYyWnIts60ALFKj5fghWIg7hyepypRrFapq2qbWHJdLst7JV+Ro7YYCYDZko7FJiskstzvXP7n1RNI28QwywuYLdBbPZERzdnYNghEPhtfh+n0ja56ZBbv0WCXeZG7qBtExyGazw6GUxepGaBZ5kKYP0mxsMf82zK91IpnzIKPmf0McGii6xxQA+INGpy65uqPp1PCKSyRwZiyqw2mNoQivRsj3CKyRG4go5F34IuW6fSQ2sbSe3oPsnLuLOcCy3trsX4x2O68sJugb+7K2Ctv61gnZxWYDZSccmFoCX8uc++Rbezw==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB3276.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:210::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 17:13:11 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2fc3:974a:e206:6963]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2fc3:974a:e206:6963%9]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 17:13:11 +0000
Date:   Tue, 22 Nov 2022 01:13:02 +0800
From:   Shengyu Qu <wiagn233@outlook.com>
To:     Michael Tretter <m.tretter@pengutronix.de>
CC:     devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar,
        heiko@sntech.de, jacob-chen@iotwrt.com, kernel@pengutronix.de,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
        robh+dt@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
In-Reply-To: <20221121164116.GE15565@pengutronix.de>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de> <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM> <20221121164116.GE15565@pengutronix.de>
Message-ID: <TY3P286MB261119C709225F2DED97CF81980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-TMN:  [MJYhKfNc516eIf/hNPuSu9SDubnuFB+l]
X-ClientProxiedBy: SG2P153CA0051.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::20)
 To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <2E893236-E8E8-4C82-83DB-58E4DF830CC5@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB3276:EE_
X-MS-Office365-Filtering-Correlation-Id: a036634b-c10d-4a92-7d3b-08dacbe3a9e3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W9VpJObrYvpyuaa7WT9AzsPWVijk49H1bB0JIqPjkQOG3vx/rmDspXAuN7jrSWYQs1z/gm4WVXSYhy4a8kOSX7Hz4koTt3XAnrjV85JBgws59pO5YVSPg8PfPi5rPxaNisAaEO0DsTfxLdRNjyeVcxzwnZFGHBaYrdCinyItNukX1sGP8yi4j580yVtUtvoiwOuvxOxAIUTIDC+/kPa/HptX/JgldvXpFotq0552QhFAQV/PTbhH4Gdw9UnJzsHCzPaJpdy4xJRFFEK2y+OgByNjXRc0XAQ/intBzI7b2HolyhcHhS77G8zYF+66mmBnxt3Jth91JxQBrLU8bcRhYVF9JFxAUw5Oi0pVX7M6FUMnT4F4eTzDG7nhwsdcgNMZFkb7eWyNpPFw7s21S8Mdr8w1ASumoQ0+VWmWJK5TIaJRyFVNY9TQGhNQzQrcAGfUHR3d4lL6YGrSjcl3+DwPFi0VYNybayMLuLSVC4sDIsrTp3NCBV2YkPNJzrz3cJNNGT7q2WTNvxo/9EPXVmvHZfc6pI0JJk5ABkXL0qGkA5udxG/Jf1D2DbHNFdafprfRZqns/WlSYPFrad84JhFZohHmu4jJXDQfuDAQ2ztm3mlNyqzDWHt1UFXKCnMKNesp0CE3/7UiDe2ynvYEd6gOyg==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTBGL0JCdjFJcTZkaUlndEQ1VzN4VU40NEpRT3U4SWZNcE5WaTFpb1R0dFZt?=
 =?utf-8?B?Wkc0bFoyODFRUHJuUFc2bVVKc3UyTHRHWHRtWDNqOXhXM0c5NnNrWDdrbjJE?=
 =?utf-8?B?WGovcEg4U0tUbnJvaUg0TEF1RmJDYm1GelQ2akw0ZU51d2hCTG5JSDRjSjFD?=
 =?utf-8?B?aGdEWjRGVjZNZ3kySndIcERiVUVYWERVbGxITHBtdHB5bUwrQVd1bFRjY1cv?=
 =?utf-8?B?bS9sMC82Nml4d3FxbUFTZ3NoUittZTFNZXZHbnJPWkdhdy9lbkZUdG83U2l6?=
 =?utf-8?B?QlBVNkc3ZmN6Q3Vhd24wSUttVGJva3lKZDhtUWtCOUZkS0w5Q0xQNSt2akp3?=
 =?utf-8?B?RXpKa1Y4MnVKa1c0SFZDeVFCVThkTmdGemd5YmNzcS9EeVlPY2N5RElQVWhs?=
 =?utf-8?B?N0UwWUlKK1lBb0FuTHh0MUx0MkN6enkrYXFZd25LeTZFbHo0YzhVNnltTnd2?=
 =?utf-8?B?K0w5UXZydTNEczEvb2I1TmpQaERQZGNPbG9rSzRFVGNxVFRNaDFFVVg1elo5?=
 =?utf-8?B?TlNuUE9kZ0VOUUVwLytiWnZ2eTdlTXExYWlYTFBaK2M0UFlHUlpDNzhUeG1V?=
 =?utf-8?B?Vkd4ZVZMNHlqYjFYL2c5UFVTeVlBWWJITytOQzFGUno0MHdSVnRUSXlqYk9Y?=
 =?utf-8?B?VjJoUWpPdWdiM0VPN2tLd3huLzIwQk40RHRPK1FGWHJQNm9pYTVpeGRkZUph?=
 =?utf-8?B?cHYyVTlaY1BNWm1HalBYYnR1YlI0T0dGOGFQNVZjcUZrakUzOXBaMWZqV0ZF?=
 =?utf-8?B?QWtBVDdPdEhDQlBPNEE2ZUVFNWdNOWVhNkJwdDJlVTNXWDZyQzhVUmdsV0d6?=
 =?utf-8?B?WmdUMUVjLzgxbmh4eHViZXpNV2JXVWw0SUpHY0duaEovdUtxbm1odjA5dWF5?=
 =?utf-8?B?WTFlV2pCcnVUd1FkWmlIc2d6S1dIT0Q5RGpsdWYxRzVCMUVXNHRyY1g4d0hH?=
 =?utf-8?B?dkV1ZlczRGdZK0ZnSWN2QTJWVlBPbzdDUmJuQ0dSelZDU3pzMXhCZjZNYmxD?=
 =?utf-8?B?dnN5QjhHYlJSblY4YzkrNzJHTmlsWHFMMmI3VzB1NlJxK3hudjdrOXBXZ2hV?=
 =?utf-8?B?Y3ArdDJVLzdBQU0vWHZCc1FBTC9QM0t4ZjNXTFpYM0NkNkE0aGlSK3VJbmpt?=
 =?utf-8?B?OGgzK00zM2Z5WHFleU9lRVdsUGZkRkM3cGdmS2FKcWlpNnJzdVFJSG1UWWVp?=
 =?utf-8?B?ditpVkZ6ZTVWRytMQnRiTnlOa21VWldxdHpIdEFTSzdwVG1Cay9YR0tWQUhq?=
 =?utf-8?B?WVlORUw1bHd0aVVoR1pOUmdFcnpyYnlrUGZuT0V5L0NhdXJVUHlDOWRLd01s?=
 =?utf-8?B?L0YvRklVZmNzQlRKajg3azMwd3pEOGhqc2pNaUUva2ZCejhnOHNCOG9vVGJL?=
 =?utf-8?B?Ylg5aS9ZdGJrVVhmcFc2ZUJEdW9keWNXTlFmVnk0R0lEQTM2dEY5Z1ZnOE9N?=
 =?utf-8?B?ZytxelhqY0RXdVV3RVlBb29mZXd5U3Znc1JtVGQwUkwyZ0hTNGNMSlZrdEor?=
 =?utf-8?B?eU4vSHRFZ01Gb3dYR05nblh5WGgwT0o0OHV0UFNPRXZ4T0l6QmxOT2l2eXRQ?=
 =?utf-8?B?WHhld3NXeXZUUHZxS05UUmQ2UzdVWjVhUVBWN1BvYXUrRnpSRUxGa3J5bVZy?=
 =?utf-8?B?Sk9qcGw3Y0t0TzlBTSt2eVRESkVvUEtoTWo1QzdwSzFIbEMwTlNLUnBqT3Ux?=
 =?utf-8?B?dVFpakFSKytQUVBMdkNNQUtrMHU5eUhRNCtHTkZhVThsRStqVVNGTWVBPT0=?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a036634b-c10d-4a92-7d3b-08dacbe3a9e3
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 17:13:11.1503
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB3276
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
I remember someone said that rga2 has only 32bit address space but not havi=
ng a mmu or mmu needs to be configured. Better ask by yourself in pine64 di=
scord since I'm not sure about that.

Shengyu=20


=E4=BA=8E 2022=E5=B9=B411=E6=9C=8822=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=8D=881=
2:41:16, Michael Tretter <m.tretter@pengutronix.de> =E5=86=99=E5=88=B0:
>Hi,
>
>On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
>> Someone from pine64 discord found that RGA2 doesn't work properly on ove=
r
>>=20
>> 4GB memory RK3568 devices. Are you sure current driver works now?
>
>I am absolutely sure that the driver works on a 2GB ROCK3A board.
>Unfortunately, I don't have a device with 4GB or more memory and I cannot =
test
>the driver with such a device.
>
>As the documentation for the RGA2 is the same in the TRM of the rk3288 and
>rk3568, I would guess that the driver doesn't work on a rk3288 with more t=
han
>4GB (if there is such a thing) either and the driver needs to be fixed for
>both SoCs.
>
>Michael
