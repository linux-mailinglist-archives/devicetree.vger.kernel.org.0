Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93F5459E6C1
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242871AbiHWQPP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:15:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242091AbiHWQOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:14:49 -0400
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10olkn2014.outbound.protection.outlook.com [40.92.40.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BF5C9E8AB
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:35:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDT5Or4We2sKpTJemuu3gk7LPv6YdEu4CGIn1D4ztnpSthPKEGEstwVyPKSDrWLdj86c3HhePIMAqQ8m8bsozZOlLsYpQC5DWSdG90m0YC+bTzszLhY/+LdUW8V3ez7KzCXwQACc7eRwjIoJrR1lZHUobKBlGrsu050kBvqMPUgbBazFl0K/y/B2+FOLirfShwD64z7CMAqGd9q/SKt4uDeChjvX14LyQlbJ0Pq0ReMyqQO3R0Pl6JfkewSdN0uzxl6omQ9EZwQp7Uwlddil1Sj8V+m/CuM5I8/aTIbORuBSP7Zrj0KMOIADneX8I6VAlR7pAYPvVDsXF8GhBsOBQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iCERFIL5N3LFljk4hX2TjAGmNpjZ8PwxI2dZvKkw1y8=;
 b=lsUfTOYIJrylfoSEVBAhmJ38x2k/o9qwmZXBh2mOKWU2Ounz+XUqHUgEBeryTXUWpjuCfDGMBlx1/Ypv1/rJ8L4WxRl7L9J7pOUUC7RSRrNmSEyEqTDUhO6eNvfCj11BNiiF1861zBDLSdY+TwTr3QRmUb0/3pRACOssE32qH6D5a29H9zlXkKkDV/slVFRK2Ws3ZYr0MEbMswOtCKGbTHQ7s+prUZe9/HxaRKO5JZK1+KSwEPQR8X2Sg+ZU1RNy4hjDoAYefR8g/JXodgqltkggEb3EEEKAbfNJ/+RzIald4XFuGAPsusstrScQjNeG+gsN2X3/RtmlUbyC4at+vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iCERFIL5N3LFljk4hX2TjAGmNpjZ8PwxI2dZvKkw1y8=;
 b=eboKljoU1Ej9rtF4Qz9/fJgBTtvFFtrF4G7PllaDyXacY5vWxDG2X8AQ899RXJ/+RNv4reQjL9qirEaB7Lm8i4YhM3j1vJ9x2BEs7KcJOW9aIln++w2x6X5//xoAXoWIhZGQeFRIGnKSacTUIXb01nEp6JCDy2BfOfyZu/0owZ3Evbq4qaFB2NwzdNhCt/IKeqFNAWZJSmxRwmHCaHHf2zSASeNjoMDg856WOHYkHuRju2WRhDqMtsMW3R/j/+gC4/m5vxyVof7KOSBr0y62CQ2W2jcTFYcmSJ6XxNCTaaE8S7x746lHufXmEwTWnHZeaF8la0ge76AI7VAOD9iljw==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by BL0PR06MB4401.namprd06.prod.outlook.com (2603:10b6:208:4c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Tue, 23 Aug
 2022 12:35:32 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 12:35:32 +0000
Date:   Tue, 23 Aug 2022 07:35:29 -0500
From:   Chris Morgan <macromorgan@hotmail.com>
To:     Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Healy <cphealy@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Message-ID: <SN6PR06MB534234586EE8AE8C708B4150A5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45694752.fMDQidcC6G@diego>
X-TMN:  [fn/nT76ss9j/s8H9cWl9cdiHKpUH+AMY]
X-ClientProxiedBy: SN6PR2101CA0010.namprd21.prod.outlook.com
 (2603:10b6:805:106::20) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220823123529.GA9857@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7498571-e57b-4d78-dd5f-08da8503f82a
X-MS-TrafficTypeDiagnostic: BL0PR06MB4401:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Osax65BwOfQagDHCqtKzljTvfVNdoWC+ok2qp71XTvilOPzb2Gr7+2P+lNAbqjs9l2Lr23Bzvfg99e8KHnxzos4JcmGiz85BlrNz4o3IwWnK85C6E0R7IhRTufwhAgVlLvNqvTa/v7c9sPF47kwkqOcLf3kGkceACC/PiDelFtSKwl4zFLiy2B+NAiNd78PnZ9QOEsT5x2G4bwbFZqnBqIgMbLAv0hEaAeuJABkAR/DROVuBNOivnt6tGNCs6WEq+1QdY4TEgxrLmNtpRnSnWbWBM80GZb5sw7PkMFzJv7CIQtNr91oGCKRB8OeULmqjQAAMYrukCUIXRlinbM2rGQNmgKhJd9QXJfiWcXOZmPJRLGqOUp8z2IzBazZgvylr3bI233v9/hbZ9sUwBZYTYWf5gCYqD0N1ooFuHB1xPNZbdTZ1t0ovip9mMfL6OxL9rGthehWIGR6UTnbL87g3S225zXIMeqp+Cjb513IQjrc9s8VtxDnqU/UaNpNa0ki7LRHX7KcyBUNcWyLtnNJxcOyKb/Ga4i2VQEq8wn6ld1vE92M0Ne0AuSMtmso6Rxjuwz9Nt1z8CtGzQ3ShDkf7isRw74we+5zXbrUbm2EQG6zSX7cAL2BNF0uQ3zHLYo4vncGQunE0ASwWS+H0gTWJuwgZQWczY4diINGd7DoXCNsvndtNp9v6ajU7nvqNUZvK
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YW5sWk5HaytqSSswaWwzeExVayt1UkdqZDZKbndOeEpmeXNBU2YwWDZpcmRI?=
 =?utf-8?B?Z2l0M0hIK211WVBqU01KK2U0dnIwakxvWC81eTE0M1RCZEdzS09PYnJzRDNT?=
 =?utf-8?B?M0JmckVMNXJmaUZpLzJpbW1XSStYSkF0cWhNR092NmRoTXhwUTlJT3pUTy9E?=
 =?utf-8?B?ZGRySFc5dEorZVRsNGtDQmdNVnNHK1IvRzQ4MGdTRTI1d09DQnplT2pQenhz?=
 =?utf-8?B?aVdaampjeUtxNGFMS2doZmVhVEtkRUNuSjE1OWxGc2ZYUlJoSEw1ak14bnhx?=
 =?utf-8?B?NS9OcXhFN0NjYlhFNmpsNzBZcE5NWW1VWC9TUmI4MzVGMWtUeWZlL1RpWWN5?=
 =?utf-8?B?dnlIWjJLZDlQTGQzcy9CS0FCN2dSb3dNd0l5ODUyTGZoVHNpOEh1RWsxaWdG?=
 =?utf-8?B?VGNsSlFDd0grZUVmM3Z2RXQxTXdwZm5MQThjaHJIT0Nuem0vYll4VW9XM244?=
 =?utf-8?B?TGFSRko5T2RwdmxSUTRXZkc3MkhDV1FQY0IxbVZac2ZZeVdoeWVhSlNpc0Nt?=
 =?utf-8?B?U3NtYUFXNHJzSi9FdWxLT3BXbUZPa2srQ0REVTYrL3NnY1h4THYwc2xQTmQ2?=
 =?utf-8?B?cjA0WUxEM2JHWWdYdFQ2eC8vWUZrOGV2Yi9yc0xEWkRGbmI4TjVidDFYV2I2?=
 =?utf-8?B?SS96cmpPTlhXMDFMLzZpanV2dDdXajYva3d6UFd6RWY4UDRXb21lT01CTDJM?=
 =?utf-8?B?cWU2VzRZbjE4a1hoZ0t6OVFLc2laNWt3OVkrdWE2d1hLekwvdXBzZENkY2ZN?=
 =?utf-8?B?TjhvRkhKanQ0cm5LeG91SnpEN2ZPNDlxdWV4d1dENG1Gd1pZYnBVUG5nelcr?=
 =?utf-8?B?emRFb2NZa0wzR0hmM21IL0g2blhvRTJBSFN2ai9ESWMyN3YrVnF5Z0txeFBj?=
 =?utf-8?B?Y2VPbDAvbWpJVG0zcWE4K1Nld0RvQ1p0YVRuOEk0eTYzbTVENThpQlFoSW1R?=
 =?utf-8?B?TEptZTAzM2o4cTVUTVVwRURIdGtONDRHRFMvNVk3NG9qcHB5bEorZHlmL1Q1?=
 =?utf-8?B?Nk1PV1JBb0pCSTEwVE9rcVFPSUhXZGJZZlFLNVlUaXFUaURiM2dveFhxQmlu?=
 =?utf-8?B?S0VKVmtNSC9DOTVzM1ZDRlBNd0huUUFZVlRLczExczR6dElvNU9MV2ZTbytm?=
 =?utf-8?B?NFp3bEJnVTZIZ1ZOQm52WUhyUnpyUnNKbXFuVFU4Q3A0SnAxQ0lDKzFFYkdi?=
 =?utf-8?B?cUlkYjlRK0UwdkJZdDZWVUxxNVB5djFRa292enFQZWVOUXhwa2tacWdOS3NI?=
 =?utf-8?B?Y29xUjR2Yy9vVG5RbDlUQ1NNd0RWVjdmK1pNU1FqUzlhandRM1NDa1Yvc05l?=
 =?utf-8?B?ZkFzVWFmRVRzQmZKc3ZrZnF1aEhRMVlFdUJBbXZwT3FyS3QrVTBtd1BFQ0J4?=
 =?utf-8?B?Z01aNjkrN1VjL3hubkdwL0VFcmx2Y0lpQ0lVdTFaZ0ZiRlY2YzQ5TGVFT3N2?=
 =?utf-8?B?OWlQOVczbkRCRmF4bUpmMzFPWHcxMGFnN3NjSzNxdlVvby80a2ZnNVZoamds?=
 =?utf-8?B?RTN0eEpiK0lKK1BJY1VsQmtITFRkdzh6NUFzQ2doTHVQaklnbnBHRHUzUXU0?=
 =?utf-8?B?Q0pJWFZJSFFjSFBia2FvQmhOVmlpSUVsY2U5NTVHT1UzS1EwbFBWczhlTHY4?=
 =?utf-8?B?NU9vS2FPSUtvQjYwMGdBdTVMZUM2WkJPQ2Vwd3h5RzJQdFAzU0pQRDUxMzRP?=
 =?utf-8?B?a29ic290dVE1cGgwclRGOTdGVU5OUVNCSmxwR1J4RVRHc2V5TysrU2ZRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: d7498571-e57b-4d78-dd5f-08da8503f82a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 12:35:32.6925
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

On Tue, Aug 23, 2022 at 02:16:03PM +0200, Heiko Stübner wrote:
> Am Samstag, 20. August 2022, 10:40:34 CEST schrieb Maya Matuszczyk:
> > sob., 20 sie 2022 o 00:26 Chris Morgan <macroalpha82@gmail.com> napisał(a):
> > >
> > > From: Chris Morgan <macromorgan@hotmail.com>
> 
> [...]
> 
> > > +&gpio_keys_control {
> > > +       button-5 {
> > > +               gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> > > +               label = "DPAD-LEFT";
> > > +               linux,code = <BTN_DPAD_RIGHT>;
> > > +       };
> > > +
> > > +       button-6 {
> > > +               gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> > > +               label = "DPAD-RIGHT";
> > > +               linux,code = <BTN_DPAD_LEFT>;
> > > +       };
> > > +
> > > +       button-9 {
> > > +               gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> > > +               label = "TR";
> > > +               linux,code = <BTN_TR2>;
> > > +       };
> > > +
> > > +       button-10 {
> > > +               gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> > > +               label = "TR2";
> > > +               linux,code = <BTN_TR>;
> > > +       };
> > > +
> > > +       button-14 {
> > > +               gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> > > +               label = "WEST";
> > > +               linux,code = <BTN_WEST>;
> > > +       };
> > > +
> > > +       button-15 {
> > I don't think just having the buttons numbered sequentially
> > is the best course of action, but this preserves the GPIO
> > ordering while other options don't...
> > I'm thinking about either having them named after
> > their function, or named after what they're labeled
> > on the PCB of the device.
> > Can any of DT maintainers give their input on this?
> 
> Personally, I'd prefer going with what is on the PCB
> or defined in the schematics.
> 
> This makes it way easier finding dt-elements either in
> schematics or on the board itself.
> 
> This is true for all names ;-)
> 
> On the Odroid-Go for example buttons are really named
> sw1, sw2, ... so the dt-name became button-sw1 etc.

There are no schematics, so I'll see if I can locate names on the boards.
If I can, I'll rename these, and if not leave them in numerical order.
Will that work?

> 
> 
> [...]
> 
> > > +&pinctrl {
> > > +       gpio-lcd {
> > > +               lcd_rst: lcd-rst {
> > > +                       rockchip,pins =
> > > +                               <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> > > +               };
> > Is it unused? If it is I think it would belong to patch that would add
> > panel to this device
> 
> I tend to agree :-) .

Okay, will remove.

> 
> > > +/ {
> > > +       chosen: chosen {
> > > +               stdout-path = "serial2:1500000n8";
> > I'm wondering if this should be changed to 115200 baud rate
> > so it would end up the same as on other devices,
> > like Odroid Go Advance.
> 
> That heavily depends on the bootloader. I.e. speeds should be
> consistent between them.
> 
> A lot of cheaper usb-ttl adapters tend to have difficulties with the
> faster speeds, so 115200 is easier for those, but you need u-boot
> to also use this speed.
> 

I don't have A-TF sources which have the output set at 1500000. I can
recompile U-Boot, but the stock bootloader also has it at 1500000. I'd
love to be at a sane 115200, but until we have A-TF sources that might
not be possible, right?

> 
> On the Odroid-Go I did both the u-boot and kernel parts, so could
> make sure those matched.
> 
> 
> [...]
> 
> > > +       adc_keys: adc-keys {
> > > +               compatible = "adc-keys";
> > > +               io-channels = <&saradc 0>;
> > > +               io-channel-names = "buttons";
> > > +               keyup-threshold-microvolt = <1800000>;
> > > +               poll-interval = <60>;
> > > +
> > > +               /*
> > > +                * Button is mapped to F key in BSP kernel, but
> > > +                * according to input guidelines it should be mode.
> > > +                */
> > > +               button-mode {
> > > +                       label = "MODE";
> > The physical button is labeled "F", so maybe this should be "F"
> > too?
> 
> same comment about ideally using board/schematics names.
> But then again, I won't make a fuss if it's named differently :-)
> 

Ditto, I'll see if I can find names on the boards and rename
accordingly. If not, will this work? Thank you.

> 
> Heiko
> 
> 
