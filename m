Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90BD46328ED
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:01:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231224AbiKUQB4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:01:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231691AbiKUQBs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:01:48 -0500
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01olkn2090.outbound.protection.outlook.com [40.92.98.90])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77D79D298D
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:01:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GZW/O3R7I9Qo/Rw1IiPa02XmOX293xB/0YXze8h0WQyEZEe32Uh8qGj+hEBUCflLYn/NyZS3VO+IZJdMreJazJX9RtiGu8nUSHbNnUIS4dtRBx5oM2/KeSDI2D6UHMcn+VFdrVzYOI0qszsD/AB7AJg91btdUK3+GxVT6VoVe7WWiDq3NSdtOk364HB2sRy7pMkNOUcJppZp+ioacQqoEKuz4KBSBUu5p/y5xsSCJLQVKi+eQVrPW4/syedUG8oGtj+sp8HjGmxVlzNNZjF3p3JqPMancwf4qNYJYZkbkjzRsvElKYT4KwP2sSYRUZ3m3JA2ppSKAtdafbdxfPK4rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1VSsGMvsxYOIdsHHABy6Zg5qEfF6y/kAFj0GiyHGKo=;
 b=TnzB6QOVptrw7J7knXFrFDWvIKXYTgparmh8MuLVQnuefnl3zcLkiCbPoU3tHQduQEB4/cREUTEsbhBdzVn0VJojbbdkApOMpau0guZat+GYVq2BHEp6i6xtri28XLVEHIMwrpypORFjFJA+sv6dPTTLIJoL/Xv4m7z1fZvuo6RRcSks4G+PneYeI5Pxus8vRZkyOrLadhR26GotxJ3QQEeeMfvE+uFjKKfiO36WvxoTnOsaZ6hIE4c5ihe2GxZOGrHGWi8f0f/W0PfXdR3A500kU4+1PYJzxVWHv44ZSr+p4GYaHaCoBOnNI5v0voPMO6XoZaCLSpDzIwx73Zwhug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H1VSsGMvsxYOIdsHHABy6Zg5qEfF6y/kAFj0GiyHGKo=;
 b=MG2Ikk/zWUiWZ+HlmoP0tHt0gMLFlCXqK0EYBvl5cdi2HwZuNSc9ozJabRAIT1YI33O/Wjpabhtwa+cEa9LMqzKBgNeGExnEAzrMCD6NHB7Zd4uYML0EH7ybi/96S1WyhgVUur4TxN3fkHccdBglyYrE/ucjk7WmolqHq2MKaJC0+B6aO/1AjhD11Fr2fhzOyT6gbyCs0xY+aQGbt4LvtE0RTjYt2lFWCnXKI8YQs589lN7Jm/5EhSY0fBBbjiuFfsg/so+IewtH6xi28wlt1mmO3S4KEc7ctHSk6+sz99jr+ofQJiTmi0QpPz8sWSUniM7Zjgh13bw0KjQ1DcNmRQ==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by TY3P286MB2482.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:22d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 16:01:41 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2fc3:974a:e206:6963]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2fc3:974a:e206:6963%9]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 16:01:41 +0000
Message-ID: <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
Date:   Tue, 22 Nov 2022 00:01:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To:     m.tretter@pengutronix.de
Cc:     devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar,
        heiko@sntech.de, jacob-chen@iotwrt.com, kernel@pengutronix.de,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
        robh+dt@kernel.org
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
From:   Shengyu Qu <wiagn233@outlook.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
In-Reply-To: <20221121151755.2072816-3-m.tretter@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TMN:  [/XH+gykukm8vpG+vQt0b5vc9+sTKYTu2OFfLnk802LyeC6pD17WF9w==]
X-ClientProxiedBy: SI2PR01CA0049.apcprd01.prod.exchangelabs.com
 (2603:1096:4:193::13) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <6eead96e-a254-3c3b-5891-2ec5c386ea8c@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|TY3P286MB2482:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b53d80b-7661-4fc6-9434-08dacbd9acdd
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eRAcW2iPHUFN/+/BMw0kJu6xgYPDupoySJwLMT6BEQkU2PW8Xt2YI1Lz/aLH1re/5GmJGxt5aLQWzMsVJPPjSuudohj2ox8/Sxn5dvA/o7IBw4pGyendBgMHnGmkyQzUSs0Xsb+qWmiVgsnF58RD7YD0UaqVte8mw/vh0B7olHlJTZfCPmr3o3WJSvImZNkz1iduqLwQTy1u52ByVQurSUhMoFIRT+I7J+zJuXtWlNS4+oVIZIpGw1OrwllYSr+kKEPAFU1LSKKoHDgIAK6k8cxcp5GWb4z6z9vFE2nHlYbuM7LHq7TwpIoBAlGNwjZtLnzHRD0NEcyUXoJYY64WG0S3rlRScvFDBXzWexthy2XtEt9qxUSGiNWQe1Krogb5fwYBZOOrYWUVPTDx8CCHN7Stz2zSKnfX/zZXXudq5kM2K05xSIDgKGZ3YBndS/sO3wUWBJD3svTtv3/4D2jDNPImvxUG7OaIYxHCJAwdR+mTgBHuNAEA8Pfp5xTELYBXhbLa5C/hHDY/B3DOq07xJ6iOiaHiJMJwyZL8DZAk/dGltKpr4oKVTWVfb0dKwBBZJq7SgdiO7bT4boAl8prl+dcdJ7PzWvxGTQZomOecrzxEsy77KspHYh/SL+PZeWc3yU9PZT4gKA8lNkBIyhlmpw==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXhEdzQrUE9XclRiaVN5WWFvaG84Rm9jeWtBOVZGMDhKcnZuYzhDY2lEckZD?=
 =?utf-8?B?b1ZGYXpieFMveG00ZC83REF1UVVIMDE3aEpZMkdPbzBITTJOaTM3VTNUV1BT?=
 =?utf-8?B?Qk54THU4ZlNHaVJmN0hjSE5UM25XWHNBVnJMNDVUOGJEdlpEVnZpTTRQbHpF?=
 =?utf-8?B?aFRCTnlBK1QrVFlTN0Z3VUVQQ2JQajF5VWMzR01QWXlVZ0NJelg1dzgzbWY1?=
 =?utf-8?B?NHowREJESG4vcjNHaWNaZnBqbjYrL1VibWhBUUxmWWtqeG9hSmdPMW1neDdU?=
 =?utf-8?B?Ym5MUUkxdVM4MmwzSERzZGJQdVJwOEpySnpYVlc0YmJMODZVVUp4SU5MUHdN?=
 =?utf-8?B?bWZXTWdUY0NYZGNpQkdmUnNmQ2FQeEQ1eXlUL2U4SzNaYXlEbXJlM1hyZlkr?=
 =?utf-8?B?M1VQUUxreDVtK2x6cEc3eWI2QkRVQUp5aHh2d04rUVdzRFFiV0RTdjFzc2FH?=
 =?utf-8?B?cmhsWW56elhmeEhsdEwxTzZpakFTRldRY2l2aUEvYXQ1TXUySjZWdDlqNmNO?=
 =?utf-8?B?T3o5VW9PTlJkWTk5RFhZSUNwS0wrRzBLekxuL1BxSGRuSk1sSHF1WjNuWVZJ?=
 =?utf-8?B?ekdreTk1ay8rNWEzWTZYSE9oZU1DTUdEOTAxODlDYVlHUGxFN2RUWjRVbWRk?=
 =?utf-8?B?eVk1ZnNnWDFVRWpidzNuMzJra3J1SDc1UDFBVDBqc0c5U3NaRzhMSVRvNDFu?=
 =?utf-8?B?cmEyOEJDOEJ5ZHNNeWJTSnNvN3E2ZDZPekJhQnZCU3QvOG5pWFRCaTR0NTFS?=
 =?utf-8?B?L3lTZ0VGbjBQWGphU04yazIxSitaMU9DS2ZweVA1Q1RFNTdreHpPUjUxTTVS?=
 =?utf-8?B?NWVGQzBub2VqZEkwWFFMQW9rMWliL1hqcXlack5qVkxTLzhEM2JoZGRCV0J0?=
 =?utf-8?B?NDczenVFOXErcCsrcGg0SlgrbFFFdXlBMkUvU3FrUkZlcmkrcmtHVWp0eTk4?=
 =?utf-8?B?bHZucTIwV1NmaFRhVThSY2F4MFMzbm45SFNSRmlRVWpwdzBMenZXUFdvNVRm?=
 =?utf-8?B?UDdWZjN2bVk1RlkrUG5mT3NTVmlwUmhSdFBsYjc3UzRQcEFOU00xMXpaSlBT?=
 =?utf-8?B?VHhCd2hyS0JJbGtPeDhnWkpsdWEzbTZWcnhwNThDQ1hnWHlkdG90OTFmdE5k?=
 =?utf-8?B?Y0ZQNHE2K0lPUXVPd1NvL0NXSk9HZERILzVPWThjem0xeEdpN3ZFR3hWWld3?=
 =?utf-8?B?Snl5RGRUbEs1MC9Ddk5PbUZrbDNjR09zc2tKdTNQeFZ0M0x4OVpYL0J2SEpH?=
 =?utf-8?B?NnNJUnBqbnc0NTdINlpJL2RzQXdBTi9tVFdXNDhKalhjMzVzU0ZaOUpLTEpI?=
 =?utf-8?B?bkJaM1NITCtmTEdXcjZrTGkxWFp6blhIc0JZaWNlbFJTT21XemZQOUJ0ZUgv?=
 =?utf-8?B?R2dtWnBxdk1sQkN2Z1JMUjYvaXdZR0FEdTA4SHlRUWJKZWhud1d4NHZtckxM?=
 =?utf-8?B?OWZPTGJ5bTNlL2s2UE01TEkvY2hSSmFYWEFhRmwwUW00NDFwb2hYZUVTbTE0?=
 =?utf-8?B?QS91VkVtVzVxTlU4YUhZb2F2VWtETEJ1VDZjYVdKeHNkWWF4VWZvT0Y0VXdN?=
 =?utf-8?B?WjdYSFQrbUpudllFSHBxdmh0S01Hc0U5TlU4a3k5R3VYa3RORXZPRG5YSXVU?=
 =?utf-8?B?ditLU2FHRmJHcFJrdWhvNGlqKzJvUytoeWFpS05WK1k2eWxreGxhRG8rS0Mw?=
 =?utf-8?B?ckRnOXlrOVM3VGcvckpiOG5PVHllSmZWNEVTM0pRMWEwK0xyQkZuaTd3cE5u?=
 =?utf-8?Q?pOA0E1XjQ/iCla03+fiuogiUPeGivjk669b6FVD?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b53d80b-7661-4fc6-9434-08dacbd9acdd
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 16:01:41.2399
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3P286MB2482
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_MUA_MOZILLA,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Michael,

Someone from pine64 discord found that RGA2 doesn't work properly on over

4GB memory RK3568 devices. Are you sure current driver works now?

Shengyu

