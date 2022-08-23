Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BC2959E5AD
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:09:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243058AbiHWPIG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:08:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243423AbiHWPH1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:07:27 -0400
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10olkn2076.outbound.protection.outlook.com [40.92.40.76])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E925626394F
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:36:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X2H22B/kXGTuz7IjrTxr/jSdnVVKtZiphGBf3aN1X7SofjAPNvqkDGE0R4cDLxM5RGpw0sZrHo5WdOgTttzww+Rk9o0HaPbgSh/vPLkOYBdElpyAVSj61nK0gnWyNzioRdU9/QIvFD3gtgOjqr5eQy1pfxw7ir4UtNKkv+xEahffQvdDWpzSBffqOrev2Uv5y5sYSPIPclr5KKNEarfO5owwUYp6OrDjFlePqjLHd7YlY6u6Hvcc/vkgAdsN+DrmgVKRIGnX6UVJYuqKSmd1tEwu5c3Xe+KIWslYna4qho8f9R4ekn4h0VMt58P3znqbpVbS4/K9WJULRlZWwdB5Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FFi9DZBF/NOyuz1BnptFpW06gAjN0kAyHsNQ7P4nbt8=;
 b=XDYjKbkQ42hRzosPFb50g+7AYowRXd2LYc5Gq8Xp3YuzEFhBc/nUfWnMi9Mr5yPmmdUwiD/u6J+N0/gqVrU6CsbjBVFnL05dZCWddyjSWn1LhxAV4GtlkqgKVzyo6j/IVnFHurpWp3mMirmRLFoOTkypo6+axaJPxQs4PLn2FS282hLLX/ymAVt9fP/xvJvsKmcA5litPumQVZEduqolm4JdCfWzP6Rdx1rAZTI3QJj1NLjOvh0oDTh7TN1sHazPOYZKYQUZn0JHmd1wKyHWoNwcaCGQ4I1T5BJqtIqOFakzGVuSj1UrLCTvpUReXfUruCkOpWDJXTbAmGb34bxVJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FFi9DZBF/NOyuz1BnptFpW06gAjN0kAyHsNQ7P4nbt8=;
 b=B+k3v4MxZfWsLHksmJV7Ts7ASmgnXvV6zC4evXZGF2zzlQvqkcGibLbp1zH9OucfE+xDhNe1MPLD1qOZQp2/YkKVHZ8eKTrSGTdYYZukZplooHmjVJ9rSykNL+AAZzaisSIyb0DsgwnBA1pKoIaXlKuL2SzchAE9p6BgfcdCLhpLVh50aY9OHc9kV3x0KJDXzTsuufUDKwJlkqO/8T81mcpRJQpE5FyoTycNvd0TMZDpyl0KQmHgU6azdT5eYica/rgpk7CX0VTgobGSjZHyhxaWnXpD+5DtPv6WmXqTx945gEsY353DET7n8KzSSqOQAtva4lPmvB6gPvp75U5BCg==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by BL0PR06MB4401.namprd06.prod.outlook.com (2603:10b6:208:4c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Tue, 23 Aug
 2022 12:36:28 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 12:36:28 +0000
Date:   Tue, 23 Aug 2022 07:36:25 -0500
From:   Chris Morgan <macromorgan@hotmail.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Chris Morgan <macroalpha82@gmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Healy <cphealy@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Message-ID: <SN6PR06MB53420ACEDA3DF63A64F18A21A5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
 <21c798fc-bfc5-ed67-bcea-a213890e5ef1@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <21c798fc-bfc5-ed67-bcea-a213890e5ef1@linaro.org>
X-TMN:  [XCrjC9AoBWMK2H9raE4O0gsNfblFpOtx]
X-ClientProxiedBy: SN7PR04CA0060.namprd04.prod.outlook.com
 (2603:10b6:806:120::35) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220823123625.GB9857@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 89a1da64-3900-4fdd-e89e-08da8504198f
X-MS-TrafficTypeDiagnostic: BL0PR06MB4401:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hWtq9A22NiAQPlRUCzasFvJqLHa2a4Z92Ko52FSHcH6G3LSLRZZ44JM6KubS8t0r/fisjAVhQVkiackuaHQOMFgsUScApBWJivqHeMkbHbUAqVu3Dt+NCdjg+9ENV3PAJxhGLyeFnsJpR8k/XcHGah/CpwM63Lw4A+qWsabEUvUB7GH0vFXBIssptMRDNyGBJOaUQE8CdBhdlTnJL/YCG5unxqzsQgo6R5j3bYUxDAjrUI2vfZHPApU1zNy/WiofqaefmNLMrmXVsiDpu8YYeglJWgFRKaBDOwBGUDQhDNLPkYhl+gNNjaqZ/al8kc4ruBoRM9hj8QbEXAYq2gL/PPU2xNcgs7Kenaa4L3CMx3Q+6dcN1lXC+DtBnG+BHtlF9ymkO/P9H+KyTHdqPjhoWIKCfmGG0+RAtcWBIB3T2jdt39iF7wCUPvJ82+IQo5vKeiGxVINXCBNZPuKYXI3xhNFol8ghRZED/QAkJq2FGn60XfuzEz+8v1JLzLf5BK6v4yL3aOTKdlQk+Qt6IO247H9Nj+fs/EIYzlcT/KT018x4mKuwmzEr6aRm3a+bvfaa37CK0ZJp2XYgu/zbbLf5CFCh6tCCSIrthZg+c7Tl11PC6Y17fg6ONhgJPUGM/mNl8Obx5ef0LcIZ2aQUuZjFlZQ9QmvOuU8kMVcpv3irWXZWbJMAdFfGq7PHHCHT/bb5
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkhFOGRlcnJoaGsyNmFxZVFuZWNNYVZOenpGQlBoOGp0Z1QrcWVXMEppWlhr?=
 =?utf-8?B?M1FjZm53NTRaUGoxYXd5dzhNNlBldlZuYktZN1ZBMUkwSHlQekcyOHdsRUw2?=
 =?utf-8?B?NUlrNGUwdHQ0OGlqOEdLVWpsMjNuV1lQS29OSVRjUjg0Mm82OGRCb29Zemh3?=
 =?utf-8?B?SFJ0Y1JjcDI2NDZ4SlVTNzMvOFJFK2VRTVFsSWx4ejBaMmhRMkdiazhQNUth?=
 =?utf-8?B?NEtMRk14WE1xMWJCQkR6eW9POS9pZE1zcDFzNHFESG5jN21URURGenhTbDlI?=
 =?utf-8?B?aVFuTkpSNFNNTHo3S0hhWXRzZlJiLzhpZVI5NlU0SXllcW9lcGFzY0dlL0lM?=
 =?utf-8?B?T091eWIzMFZuRzlQTTk2MkQwZmQ4WHlyc0ViOTFJMFdHcklOTUJxdFFHYzVC?=
 =?utf-8?B?S1FaTkVqKzdrZ21nWG9HTGtYOGJKY0szMDB2VndGY2Y4YSszOUVjUklYVXZi?=
 =?utf-8?B?dFk3dW5WdzBtajZHbE9icFhkcS9yN1JUUVFqUWk3T3Blczdmb3lOb2VsYTly?=
 =?utf-8?B?Y0RPZkcxSnc5YjJscnJSZVY4TnR6b0NINTYya0twWnJpRk9sTElwcUJnMkhX?=
 =?utf-8?B?YnpKZGFvRDZLSVMwRk1pYU1ZOUx2dUVLVlFod29FdWVIYXhVajVTZW8rNDhM?=
 =?utf-8?B?a0tRVHBiQnNOZjJVQjZTNzlUYzZXa1RQV1c4WkxZZWg2VitBOVNpd0xySThV?=
 =?utf-8?B?ak5aWE80MzgrV1ZCVlBuWmlCVTZwU3lHTXZDQ2c2aVZMRXU2THYva1ZBc24v?=
 =?utf-8?B?a3J0aEdacDBqc3FkMFJ1S0grL2Fxc0tDM0h0Y3N5REJhSlVpQ0wzSk4xbGpZ?=
 =?utf-8?B?Mk9SaHpETnluRUlueXlDUEpNa2VGcGx5NEFDdGtPNmVxb0dHNEFLcjg4ajhw?=
 =?utf-8?B?K3o4ZzhxNlZwNEw0REovemNqSHVjWmlsWnpidFEwWCt3LzEvcUMxYXNtMmNa?=
 =?utf-8?B?dDhrcmtWU3IxMjRmM3RDbGdQS1Q1TmpzZVpnZ3BFUEhZQWU2OVVZTUFFd3M0?=
 =?utf-8?B?K05yT1c0K2FGVkpBUEQwaGxsWTdvVFc3eXZ3enFhMTRuTGZIbzJKZm0xRUFN?=
 =?utf-8?B?aWVrbk1xS1RvbE0xajBZYzZlb2s1LzdGamNhT3NwTTRHMnRoemNuQkVjYjll?=
 =?utf-8?B?VzFvOHIrM2QvU0tHUkY3bHhjZ09pbnlMQjlKbEZMT2k5bEdLWWdZcFlTczRq?=
 =?utf-8?B?em1iT3dwSkFQdXFDa08wZjR0MkR6VGY0WGtLMkZJcDd0ZTI0VHlWNm56MVVS?=
 =?utf-8?B?blBHVU8rd1JBRlFucWJFWUVxMi9PSE1uOExycGtiS2w4Tll1MkoxZlM0bWpU?=
 =?utf-8?B?UmpvdEFvYUV1WEVWclpLbk82bmRTVWZWT0cwcFdqTHpCSXZKZ2V5SlpYeWtX?=
 =?utf-8?B?OWpiMDZZRHFVZmNDM1d5MkdPZGNibVE4eFpJd1ViOEV0b3lsM0o4Z05HUkx5?=
 =?utf-8?B?VzN5bURVbzhiazl2RTR5bHRYeFc2QXhUemNRYy9jYkFJa0tQMUZHdzMwemN5?=
 =?utf-8?B?cEtIMDBGK3JLKzJmdUp3WWpxWUNTTVlCY25zL1ArL0VEbWZvczRoK3p4bGNT?=
 =?utf-8?B?Y3BENUFEZlJ6WHhsblgzdlBDejZOZUkxRmJVNzlTNXg1SVpUMm5Ea3MyVUl0?=
 =?utf-8?B?akxFdVlDa1duNlhQR1JNWVVrRm1LL3duSWJRTFhIVVVad1lOK21NSGtSamFF?=
 =?utf-8?B?MEpSV3Z5S2dYODZGeXEvVUR3bmNJaUJnbU5lVFMyeWlqcVMzTTEzTWNnPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 89a1da64-3900-4fdd-e89e-08da8504198f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 12:36:28.5164
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB4401
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 23, 2022 at 03:28:52PM +0300, Krzysztof Kozlowski wrote:
> On 23/08/2022 15:16, Heiko Stübner wrote:
> > Am Samstag, 20. August 2022, 10:40:34 CEST schrieb Maya Matuszczyk:
> >> sob., 20 sie 2022 o 00:26 Chris Morgan <macroalpha82@gmail.com> napisał(a):
> >>>
> >>> From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > [...]
> > 
> >>> +&gpio_keys_control {
> >>> +       button-5 {
> >>> +               gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> >>> +               label = "DPAD-LEFT";
> >>> +               linux,code = <BTN_DPAD_RIGHT>;
> >>> +       };
> >>> +
> >>> +       button-6 {
> >>> +               gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> >>> +               label = "DPAD-RIGHT";
> >>> +               linux,code = <BTN_DPAD_LEFT>;
> >>> +       };
> >>> +
> >>> +       button-9 {
> >>> +               gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> >>> +               label = "TR";
> >>> +               linux,code = <BTN_TR2>;
> >>> +       };
> >>> +
> >>> +       button-10 {
> >>> +               gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> >>> +               label = "TR2";
> >>> +               linux,code = <BTN_TR>;
> >>> +       };
> >>> +
> >>> +       button-14 {
> >>> +               gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> >>> +               label = "WEST";
> >>> +               linux,code = <BTN_WEST>;
> >>> +       };
> >>> +
> >>> +       button-15 {
> >> I don't think just having the buttons numbered sequentially
> >> is the best course of action, but this preserves the GPIO
> >> ordering while other options don't...
> >> I'm thinking about either having them named after
> >> their function, or named after what they're labeled
> >> on the PCB of the device.
> >> Can any of DT maintainers give their input on this?
> > 
> > Personally, I'd prefer going with what is on the PCB
> > or defined in the schematics.
> > 
> > This makes it way easier finding dt-elements either in
> > schematics or on the board itself.
> > 
> > This is true for all names ;-)
> > 
> > On the Odroid-Go for example buttons are really named
> > sw1, sw2, ... so the dt-name became button-sw1 etc.
> > 
> 
> Matching what's on the schematics/board makes sense.

I'll do my best (in regards to board name). Schematics won't be
possible as Anbernic hasn't released them.

> 
> Best regards,
> Krzysztof
