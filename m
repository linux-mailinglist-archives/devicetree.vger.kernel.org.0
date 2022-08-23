Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8E1A59E854
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 19:07:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245351AbiHWQ6z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:58:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244812AbiHWQ6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:58:31 -0400
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10olkn2071.outbound.protection.outlook.com [40.92.42.71])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55051B62
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 06:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MTTYTP/ur2cdJ3rj0+uU5olBTyQZIpY+jFNwJnMLtv8ASdp2wvZjDierorHiDlsg8MwAb11HpyHaIuoAvlAc1Kwm9Vt3rJAUSRswRfOwJ5/RyDwbb0GQ26Nr5BqQrka+SaAMwqmUw9feKAjrrxYxMKLsRrM6C0BYcLSovTzg71m4CijezADeRx6Gs5yzWj7eG5wJufbabg0Ig37CiR4maO0aBeNChLgzscqFHG+y4hHejYj7M5DrzK4znA+N2hTy9ofSMqC40D+A9jDzuP90kZt5Xj8+NNvcKLO933VbhFf5FipTEnGxImmULvZV2UfFVIGPdS6LKhmzPHgXQ261Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzmN1Kl8ab4ixmsyfDq1tXpE6zB8F4vrpZB4rJv+WzA=;
 b=jdu7hnNvvgLAVRi/XjYPPvtdzrnqNM8wi3I90Q9L+gnNysXzcBKtmpdN7Wfz1wp6mKUGIguAVbH13YWy7COWQdeqWCI2L1eP/WlFGQ6hSGTQg3zPDxjZDxzvuEqkgrw3/OkWRRt54QaV3+6pvlZZ4+oOKOe09g6ia86Y+x3TEiIxQBQi8XBLbqdTw9fH4Ehhs8ndzwPfQWVhf8vStgD5kReQ2bXTSWdrbpizFNAmkomDPpbcFSv+1eijuv4siqST+uG+E1FemPi+VSI6OjogdUExnCOgJ7uSEWPMSSQJqh5pOhJIf1xcdVLmIxriDY+Slqr5dLqPJTZ483Y2BxnUEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gzmN1Kl8ab4ixmsyfDq1tXpE6zB8F4vrpZB4rJv+WzA=;
 b=JGIt8SWyn1lz4+qBGRb1dvUkhL8PqheSjA4v0p17N1VONucD6ky+koXaYmgSHndiJIEAmUfLmW2KJiMv0eicsPvVp5yGLa518MEn7svQZInXg4pe5WxucOdFHFT+gw3I/ya9vNyBE2r3Xsg6tTJ3qSs2ouQQ/hPWGFgIVHeh7+Ay2Mqp6qY00pCKZenaR9oWBGMdAtxmHsfHsLGYOYlN59CTmQKrZuaQUkncQ7ZNPW1F8ajgXmb2LDzsBcz29BeGidUxMJ4JznpU+Qb4jNVosOIxdpFzWR7HTg8k1WeUfpHNMVggxKzefugYP0s48K0+0fgI25VTBdOCMC2M0giJZQ==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by DM8PR06MB7797.namprd06.prod.outlook.com (2603:10b6:8:39::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.19; Tue, 23 Aug
 2022 13:29:35 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 13:29:35 +0000
Date:   Tue, 23 Aug 2022 08:29:32 -0500
From:   Chris Morgan <macromorgan@hotmail.com>
To:     Maya Matuszczyk <maccraft123mc@gmail.com>
Cc:     Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Chris Morgan <macroalpha82@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Healy <cphealy@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Message-ID: <SN6PR06MB53427782CA5417F2FE3B9B32A5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
 <CAO_Mup+D7B+GJcUpy+JpaNFsxC=nxnNTYCdzkyT7qSdRS-JcSA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAO_Mup+D7B+GJcUpy+JpaNFsxC=nxnNTYCdzkyT7qSdRS-JcSA@mail.gmail.com>
X-TMN:  [Bnp8AgAEXU+MgUob/kOdbVulRe+CzlBI]
X-ClientProxiedBy: SN6PR2101CA0021.namprd21.prod.outlook.com
 (2603:10b6:805:106::31) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220823132932.GA9933@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f95e2424-0183-47ad-db55-08da850b84ec
X-MS-TrafficTypeDiagnostic: DM8PR06MB7797:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XAzO4Kwoc6q3EFdr/FVOdUt4Q+v1JOF6tEQJRfrMDECgnY2glZN8UFms/I0ikXHz2rxssH+VhRVV4W+s4ZFfp4Bp4MMxIvPONbACekdp/IwpJr4JjXWQIpbVn5Y1Zgdt3C4z4rf1xYjitiaQrmPRIwKlwTvLrF4+WQnfJkWmju/+zIiIffvg7zN6slLOmotQOyJftB6S3DPL77vNk5Y0dspDdtZe4dWiwv37jsvGb44nwX5GQx09I9iif+leJyh2y7L5R1oSeVQkbHczG/F2Nhg7gB+hwgDxdrg/VoS9YmrVTxyJRGqL1vOLqJgtl2T/5/CEWMR/X+D2rUf5q4nhFBZ6kLhmyaOOglir//6zceVsK2GrcUDfJXmbta4AXYO/e2HkrhHpZrkgQ93PfksXPpLZaqJcYFL+OVZhrA+2e0m3lyPLL5sR6DYreoS0gaT+T3/DWhnkoSS4PYiDUDVvsVr+atFSpKKN2FAO2JK/I645fuqFSkNm8/MMVMPtHGVfnQAtMlzNXtp5a7GwOKnB0YNX1X3SO0Buh/XUhVhsCG7UwScz+/00FCjDJ/6vziBwFENl18NNt0ql4Rj4OHoAXWBzXLf1xrkwiWUzl+HRCFVdd7uW+0Ttsj9oFx0u9hjw/FGK5hbd3mPBxnM2YnFdceo7nNiyXipr4TsqO5UIcYaD52lRo/tCaq7/68sbn672
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2V6eFBrNWFjWVJLUjZ0U2NnUHVIYjBmbEpZaDN4VWVVUGZyeWhCQSt5UGk2?=
 =?utf-8?B?VWdDQU13dDVFZ3NHRDVMRlRGNEh1WHBBbzR4aktUYW54WlQ0NUhGVks4Zkk5?=
 =?utf-8?B?L0pFemJNRnJ1T0FrZ1V2TXA1dDFldlFReklFTWJROTFVN1N3eE1rOFZlKzMy?=
 =?utf-8?B?RFBlSDZyY1dGblVCdVduMUI4Y2hXSU4zbEJwV0lVTlF6SXU4ZzVYMmV3UlhY?=
 =?utf-8?B?azhWQmwvNld5WnVrZnI4Z2l5Z0RTS3llNUMyWVZyYmRjNFpvZEZjR3N1OXRG?=
 =?utf-8?B?OERFcXBHa0d6NWxSSDk4U2pITi9lcllJa0wxZkRpNCs0TFRwRTVCMkREajQ0?=
 =?utf-8?B?cmVtUC9DdFNpMURxN0FyS0ZqUGxtaXdEVXVTazF0K3Yva0ZoTEZSNllodjJw?=
 =?utf-8?B?TFNkckNVbFhkYTRqeHlmSHJLVmlhQi94aUw3UzQ0bFpJZUVFbVEwaVNvRkNR?=
 =?utf-8?B?b2lXRXNnK3hDMExZaktXNTZEUUVORE1oemV6NEVRWFE4aS9jcnFDbngwKzRG?=
 =?utf-8?B?aVpHR3A3bnU0ZkhZbHZtVUJXbVNISDJUN0x4Q3Q0SXdidHpVeGdlVVhna1Y4?=
 =?utf-8?B?WWtHcDNWTFRFVXNCUTcxNkl3R05rWUhhUXZ2UGIvVWE2RllJYml0QXNYYVZt?=
 =?utf-8?B?blJXQmsrUm0wQlgyWm5tZ0FrUHZOTG5pd25HYXZQRVN6NXpJbWwzUTNPOHFU?=
 =?utf-8?B?NTdSaWtEcFJVejRNU21jOG1TVFA3OExrOFVmdGxJQUl2My8wdXJIYlhFVEI4?=
 =?utf-8?B?VjJOR0RlY3E5bWl0ZHJwOWVLOUg0UDhpa3lWSUozU3NCZThyZTNZUVlibEtz?=
 =?utf-8?B?WVNjMDVxeVdwZ3Rrc0FLTFFFb1E4eHBqREk0S2FnQVVRMHpKQS92OEpUSDBU?=
 =?utf-8?B?TDBmUFdMWU15SWV1OCthY1NVcXBkbzRVYVZjTjlGZXFEZ1ozRkp6UklYT1Ez?=
 =?utf-8?B?WlFMOUhUQnZJRWM4cTY4MFFIQm1wS3ViTjBUVTBSTkVCRDBDZUttdzFJT1BB?=
 =?utf-8?B?MVVzdUlQVFFmYUc1NStXdXlnUDc3UWRmWmRhVlVOTXk4MkRyNURQZHJnb1hl?=
 =?utf-8?B?alM1ZDY1amNEL1pzajR5K0NESjluR3dPMXN0NG90NTNvajU2NVJlZUppdDFP?=
 =?utf-8?B?Qnl2WDNDQ3lTb3JhTkNOL21LdldjVXVmSFF0Z3I0a1J3NVY5Q2pqb2gvZW1U?=
 =?utf-8?B?b3MyV2tsUnI5R0hTSW9JOTFob0p0WEhmTHVsSzUyQWR4cXBTU2xUdi9HWk5q?=
 =?utf-8?B?N2lFQklkdFg3Q2hoOG5kY3JFakJiK3JYaXFSeW1jYXVsWUtnczZUaGs0MDFV?=
 =?utf-8?B?ejNvNWE5S2NNdy9IdzhFbXAySEZpRGtPWlYrUm4ydVhCMXBjOExydmFWc1hB?=
 =?utf-8?B?UDV1ekptdDVxUlhENkNPNDNxZ2tNK3ZscVBvcmdyT1JSWlZ4a3hPMS9YcS9u?=
 =?utf-8?B?YkxSendFYmE3bUk2SXRaM3VwQjN3NkpSZjJUMXlmZ1cxWVRvYmNrNktCM2M4?=
 =?utf-8?B?YlFZKy9uOWJiSURvZmRyOWdVVHJVSkxMbEs2R2doYUs3TmV4Ulk1b2NmbjZ2?=
 =?utf-8?B?eTBZckt2TG4vSUpyckhOc0VKUWZDMDlmejNEcnlvTWhOTmNWZHQ3WkQ0MUlN?=
 =?utf-8?B?TW5EQkZrZCtqL0Ixb1VhM3MwRDhwVDBFcjlqRDZxd2tscXRSNGFEaFNFdytD?=
 =?utf-8?B?SHZOd2wvQ1l5NTJrV1hRcU1ZZnhFZEhqYkM4ajcwMEk5Q2lwcUttU2NRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: f95e2424-0183-47ad-db55-08da850b84ec
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 13:29:35.1970
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR06MB7797
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 23, 2022 at 02:28:27PM +0200, Maya Matuszczyk wrote:
> wt., 23 sie 2022 o 14:16 Heiko Stübner <heiko@sntech.de> napisał(a):
> >
> > Am Samstag, 20. August 2022, 10:40:34 CEST schrieb Maya Matuszczyk:
> > > sob., 20 sie 2022 o 00:26 Chris Morgan <macroalpha82@gmail.com> napisał(a):
> > > >
> > > > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > [...]
> >
> > > > +&gpio_keys_control {
> > > > +       button-5 {
> > > > +               gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> > > > +               label = "DPAD-LEFT";
> > > > +               linux,code = <BTN_DPAD_RIGHT>;
> > > > +       };
> > > > +
> > > > +       button-6 {
> > > > +               gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> > > > +               label = "DPAD-RIGHT";
> > > > +               linux,code = <BTN_DPAD_LEFT>;
> > > > +       };
> > > > +
> > > > +       button-9 {
> > > > +               gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> > > > +               label = "TR";
> > > > +               linux,code = <BTN_TR2>;
> > > > +       };
> > > > +
> > > > +       button-10 {
> > > > +               gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> > > > +               label = "TR2";
> > > > +               linux,code = <BTN_TR>;
> > > > +       };
> > > > +
> > > > +       button-14 {
> > > > +               gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> > > > +               label = "WEST";
> > > > +               linux,code = <BTN_WEST>;
> > > > +       };
> > > > +
> > > > +       button-15 {
> > > I don't think just having the buttons numbered sequentially
> > > is the best course of action, but this preserves the GPIO
> > > ordering while other options don't...
> > > I'm thinking about either having them named after
> > > their function, or named after what they're labeled
> > > on the PCB of the device.
> > > Can any of DT maintainers give their input on this?
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
> I disassembled my device and DPAD buttons on pcb have
> silkscreened labels U/D/L/R, for up/down/left/right,
> Select and start buttons are named SELECT and START,
> action buttons are named A/B/X/Y for East, South,
> North and West buttons, The "F" button on front of the
> device has F label, but on PCB it's "RECOVERY".
> And TR/TL/TR2/TL2 are named R1/L1/R2/L2 on their
> test points, I wasn't able to find a silkscreen label as
> they are on their own PCBs.
> 
> Volume buttons are SW3 for Volume up and SW2 for
> Volume down.

Thanks Maya, this is for the 353P correct? I was looking at my spare
503 board to get the labels earlier. Of course, this brings up another
intersting point... the labels are different on each board (at least
for the R/L buttons, the volume buttons, and the recovery button which
is sw11 on the 503). Does that warrant separating them out despite the
GPIOs themselves being identical?

> 
> >
> >
> > [...]
> >
> > > > +&pinctrl {
> > > > +       gpio-lcd {
> > > > +               lcd_rst: lcd-rst {
> > > > +                       rockchip,pins =
> > > > +                               <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> > > > +               };
> > > Is it unused? If it is I think it would belong to patch that would add
> > > panel to this device
> >
> > I tend to agree :-) .
> >
> > > > +/ {
> > > > +       chosen: chosen {
> > > > +               stdout-path = "serial2:1500000n8";
> > > I'm wondering if this should be changed to 115200 baud rate
> > > so it would end up the same as on other devices,
> > > like Odroid Go Advance.
> >
> > That heavily depends on the bootloader. I.e. speeds should be
> > consistent between them.
> >
> > A lot of cheaper usb-ttl adapters tend to have difficulties with the
> > faster speeds, so 115200 is easier for those, but you need u-boot
> > to also use this speed.
> Yeah I've had troubles finding an adapter that could do the default
> 1500000 baud rate.
> 
> >
> >
> > On the Odroid-Go I did both the u-boot and kernel parts, so could
> > make sure those matched.
> I think we can just use 115200 baud rate, as Odroid Go Advance
> already uses it, and it's likely that it's the first thing people would
> try.
> 
> >
> >
> > [...]
> >
> > > > +       adc_keys: adc-keys {
> > > > +               compatible = "adc-keys";
> > > > +               io-channels = <&saradc 0>;
> > > > +               io-channel-names = "buttons";
> > > > +               keyup-threshold-microvolt = <1800000>;
> > > > +               poll-interval = <60>;
> > > > +
> > > > +               /*
> > > > +                * Button is mapped to F key in BSP kernel, but
> > > > +                * according to input guidelines it should be mode.
> > > > +                */
> > > > +               button-mode {
> > > > +                       label = "MODE";
> > > The physical button is labeled "F", so maybe this should be "F"
> > > too?
> >
> > same comment about ideally using board/schematics names.
> > But then again, I won't make a fuss if it's named differently :-)
> So I guess it'd be "btn-recovery" as it's labeled "RECOVERY"
> on PCB, with "F" label as it's what's the user sees?
> 
> Best Regards,
> Maya Matuszczyk
> 
> >
> >
> > Heiko
> >
> >
