Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B698259E722
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 18:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242484AbiHWQ0M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 12:26:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245124AbiHWQZq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 12:25:46 -0400
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10olkn2072.outbound.protection.outlook.com [40.92.41.72])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A154F122BCD
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:50:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lClQvkHyZdtZkV/3zSPlq5ygaZRGHvPPSSSKm4AI6ZmNI3DPAquno4Hl/pK7DhNFoy5WD5ij4RTJag2Ib7q78qcrwc3ZN4khFm337XuKzf/MFNlB2uraN2dh6P9Tc97ehFBLuj4xBJrGfI53rHO7CCVA+5X/mbkrdwu/WJgDMz3O+8gl3Pg+8ExTE4jhtMIHCtLRlYLhWYqu5IEdP6j+Bh5AGhabctKxWoDMxwTHqr3VKYOjbnIyW/r03cAohMXllA7BYCmGFojtnINgabJ499zCuJx6hNllU8l7seVx6D21sz0P9EVr2jpD8bBR9XxE+1y7O4wRBpH2omiw4d3sug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzxlwHV4nqlXt2BHDRHEeoCjDVVvf1lrH8NMZQANKWU=;
 b=F5JB0rCz0LAq4JCiyEtSceTDDQrIIAslv0IgslTGkU3GrO0y7MI2+20MZ3zvcl49rh2x28/ZztPOdwLVGYm8cj8i2OvyfsbBI6KWeG6AvSJI135T/O6F8I98vkSlCqLLeAg96L80ELL+tHpptHlFbcBr7Jf5bCpeJpqlk+gYqjQucPJSoIOz+ShIFaB5JSoSMwBqGfBIhMLzBiBjxwFTMALY04Ilm0Z5UwUR8EYkA/BHXd7OWv6wVFqNmcC+1xwRKnOgv9VxgZMG0DLUl4rwR3f72bo8lK4lrYz/97HLdraKka1ShCJH25KhgWaXe6f+CxO2/E1YcyQI0ericd7uUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rzxlwHV4nqlXt2BHDRHEeoCjDVVvf1lrH8NMZQANKWU=;
 b=H4gmVDSxeQwAwTJYsz47W/7fIoBMvTFfiECV3vwsW/6e7EEsJJl5siyD1vSVIbvEy8Vt+4DL2tojdSiTycVBFu/UHjxw0Dml19DJFkh6zlSF9uTpXsxh6rGtyoZT7d2LYS38xfa4aaXOCTV9wwrhAjigBaLRliIHpOiCYMMOgN8j5ypOjX6O7yqjyeawcvXHzOD4Y3HMSdhT10ZWuIC4ijvuj0S1FV6lrxsyxdWfL1KRuaz2vnYBJme1eCgxLXl7g0ieVELxXeAl27oN2Bq0Cnu7zj7gbbG237I1HdcjPeS8J2Z5/sSRePxLvPt5Kckhcx8DXWpVE0KYS8bkHURedg==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by DS7PR06MB6936.namprd06.prod.outlook.com (2603:10b6:5:2c1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Tue, 23 Aug
 2022 12:50:21 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 12:50:21 +0000
Date:   Tue, 23 Aug 2022 07:50:17 -0500
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
Message-ID: <SN6PR06MB5342F9D5B650EA496CB4CC34A5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
 <20220823123529.GA9857@wintermute.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220823123529.GA9857@wintermute.localdomain>
X-TMN:  [5tot2k37aDi73IcrOQlRgYo7CKgCq+sv]
X-ClientProxiedBy: SA9P223CA0020.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:806:26::25) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220823125017.GA9917@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 675d1da2-0470-4eb1-9a32-08da850609c7
X-MS-TrafficTypeDiagnostic: DS7PR06MB6936:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Z6Y4VwmQ23c+jwjuHuE6eFKNQViuj3S6fC1tZMNr/jDybYEmuSQVzN7OlGUdGYkejCUtpHew5idAfHeTNPtvM5oh2OCmqxC02EYWyq37nLhLlTWJkT8yhVtiuEy7dfT46sGcLC04Jd4RW/BMa0n/yD4/8yuL5jlAhM0FRaQ4rO7ygLX86PKwVqtL5MLQ14QcM+QpsDTOEHoJmOgUu9urIzv/qc73hc+0f5PawNy5QBxQaWSR1gUB/pSdyEZxMFNNOuHIVQqYfdKpTBdthW3OZZe0Wi0mXMish5nwFdoCOPNdreQML1bizTO50jfu8sivSkwMlDn22Xe+ttttBgIlTcCc2z4mx20ICzQvKofu8MecJomTfw8GeUtrrlw0qAlBgBtJ6mStZWQb5RM3ieHagftUbI6fOnOa3CSoL7kprq0X14s7j7+jZgPB0Mo3q22s1GS3/C6rA8xV9pPfD4lU7lwqVlf43gESbTqUdsOQIQGs62w8y4HN+mEja0nVCbKMG//bDiTlsew6aAKL98PeZRIcndkOCe9qy9VQakleVwP9Ot0bDlqPYHZ6igO0bbbDTasIemtcZ3AiJhjG3/088zWU8bEInIsvtbmbmXi+83lFz0JxIHpskjBuL+p0MwigAJ1FKartRysjneFAyrIp0GE1UqiARZke/skJPdAsBIF6Q5Ac7zjpWbXvCoeKPqY
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1gwQWVKTVE0TnBiUlJiTHRhOTZPL0NxQjQzakxhOEFDQkJYbzVYTUE3RUxY?=
 =?utf-8?B?cXV2dTRBbnN5djRmTjRxcG1iN0gwYW40Y1FFdHFwTGlteElXNkh6amFaZnA4?=
 =?utf-8?B?SnY1aTNxYnJxbERQM0ZEUjNJS1J3TzRzSDJ5NGJtamdRSGUxeGkrcFg5L0RL?=
 =?utf-8?B?OU5PcDQyYWlGU0o2Nkp5NjErbVZzU1p5OUxybS9QNjRMczZBb2dRTWZudWhH?=
 =?utf-8?B?NVlnVlhRRlVFbFRLTFJQQnBuMUlyazBQVzE4NVBNUUczblIwOGlkc20xQmpN?=
 =?utf-8?B?b09GMDJOVXJ1RHZKUGIzeFd4VzROMWJZLytGZDFVQm56bkt3RTdXdTRCY0F6?=
 =?utf-8?B?MHpFTnBWeEhTYjVCQzJiblcySVVITEx5YXJ4ckdSRzBJdTl1ajZEVkFZaEYy?=
 =?utf-8?B?QUdrZGtIc1VrczdmdFRva1NPalNLLzcreENDUHgwbUt5NVhHNmJ6djROWDFC?=
 =?utf-8?B?MnJzVkxJMWlYYjJZNG1OY1VjQ1Fmd0ZDc0dCSll2QWdTNDFpakNRUEZtTGR5?=
 =?utf-8?B?aTNwNEJxcWJBbE02cjVUanFTRUYzTG4rQWtCNWd0eFVZNm1ZR3dJNHQzV2VL?=
 =?utf-8?B?VHUwQ08wR1p3T0dkV2MrMk9qeFVGNFRidFNaSmMweXZzUEhvYUlnSG82Y3BO?=
 =?utf-8?B?YTRKUGpiWjRZMFhSczZDZmUyUmFJbFJBZGdlVGR2bHJyeE4wVmhyQmUvQStO?=
 =?utf-8?B?MGVic2JkbzR2ZENGaGVYcHNvcktueDFIYXkyenpFdUthUWV6VUR0U05rM2x5?=
 =?utf-8?B?c0x6a0luZmVtMmpmU3ZpQ01rSDIwRkk5OEk3c0c1RlVBVjlidzUvWnJFTW1Q?=
 =?utf-8?B?MmNpUkhCaHpUcTJWbFY2d2tZc2RBOFBXNm5Wd2J5TUN5MzlZT0xUL2N6NWdp?=
 =?utf-8?B?YjhnazZDNHhpSmRGRm56QXRodWtGOUpPM1c5bU41YTRFSFdmREtjNXlOR2Z2?=
 =?utf-8?B?TURNMFVpRHd5bTNGMk1hbHdmUnA4dXlNaUM0cWVMQVY2a1lVQVZDVGNpQkZL?=
 =?utf-8?B?cFRWbGtBVndVL0k3aXBuaE9MYzRzbDVUT1ZraGR3MDJIVE9FMlMxZUxwN0V0?=
 =?utf-8?B?K3F3dTBxbStuS2V5cTAvZFBkRHd6ZVBVWkJUZlczVVdkK1JRdWpsbkp6cFhT?=
 =?utf-8?B?R3NvMmdmVm9KZ3hoYTBwYnlmQzFpSEkvejRqVlcybTVOMlNUajVacnJ2d2lO?=
 =?utf-8?B?VzhLNjFWVm9BUjdNUlgxRzN5ejNRSXhUNGl6RGNrUzI1czUxMy9qVWxCMUVR?=
 =?utf-8?B?YVIwUkJhVW5ZYWQ1WDFrSEQ5d2t2VTRhaThEUU5LejBnUDZ2OFpWN1cxbjI2?=
 =?utf-8?B?V1ZhbXk4NkMwNVgrYUhNdFB3dGE1UGhHM29IZzdzb2pya2V2dTI2OEhRV1dF?=
 =?utf-8?B?NnI1WE5ETitzLzdLQ3JMVUhWay9PdHhlOVBUS3NvRDhkZmJuVysxZ3F6eWx0?=
 =?utf-8?B?a3h5TWtHNmZFYXN1UW1JWFdNTG1RWnhYaFQ4TTAxaEdEZ09sTXhTbTdiVStD?=
 =?utf-8?B?aGhwYW1RS3dzbWFuZ25BRFdlZElMbWIzYVZrdmRXRnBwdUFuNFBQb1FOZVJa?=
 =?utf-8?B?SmxPbEZVZ2JkWk1NalVENUcybGQxRWl2eXl6TWp3WDUzZTZsNldhTGRqdmVE?=
 =?utf-8?B?OTlmRGpzd2tETmhhR1R2K0w0VXJiUUg1K1JGN3BheUxjblhEVjFYWnliYmtn?=
 =?utf-8?B?elVMVWJHY3h6b2ZQNlhyWUxzSDFyWDFuYkZmUTZoVm9Na1kwVWNndHF3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 675d1da2-0470-4eb1-9a32-08da850609c7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 12:50:21.1095
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR06MB6936
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 23, 2022 at 07:35:32AM -0500, Chris Morgan wrote:
> On Tue, Aug 23, 2022 at 02:16:03PM +0200, Heiko Stübner wrote:
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
> 
> There are no schematics, so I'll see if I can locate names on the boards.
> If I can, I'll rename these, and if not leave them in numerical order.
> Will that work?

Okay, what if some have names and some don't? Should I just label it
based on the board if they do have names, and function if they don't?

For example volume up is sw14 and volume down is sw15. The north button
is labelled "X", and the south button "B". However, the thumb stick
buttons and the L/R/L2/R2 don't have labels (at least on my revision).
Should those then be named by their function?

Thank you.

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
> 
> Okay, will remove.
> 
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
> > 
> 
> I don't have A-TF sources which have the output set at 1500000. I can
> recompile U-Boot, but the stock bootloader also has it at 1500000. I'd
> love to be at a sane 115200, but until we have A-TF sources that might
> not be possible, right?
> 
> > 
> > On the Odroid-Go I did both the u-boot and kernel parts, so could
> > make sure those matched.
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
> > 
> 
> Ditto, I'll see if I can find names on the boards and rename
> accordingly. If not, will this work? Thank you.
> 
> > 
> > Heiko
> > 
> > 
