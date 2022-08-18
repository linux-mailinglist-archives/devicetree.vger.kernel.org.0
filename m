Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA1A0598945
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 18:51:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345084AbiHRQup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 12:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345193AbiHRQuf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 12:50:35 -0400
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04olkn2010.outbound.protection.outlook.com [40.92.45.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D14E85FE8
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 09:50:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QBS0LIJBAsqlF9jVyt6YzpspvxzNOQrUS10Qc4vzisKUG7BHrBDDtB43kvt+hO+GzmOqovbsGEouVIEI0BuY3UJu6w69H5Q082/NOPCk7/PyaLyW9llufLMzZkzLIYQz/MpSjh6ktU+ScFJlE23ZCfOVy7sEIh+8QvSKFBw8dnWoefzPPgYXghw+MSpmYtLtJq1VmazrXL+XSy+a7Xgf+Zmi4e/d071INa2BylfGbPaGf+vzCwylyz3Ohreatxadc+ND4Jbzqx60BbVvJOpcqvMbkjdNTHVS1rUlR8qZxLrYaO3SLukC4iEHpcJDjRMetDcgAkYkaS1kh91doXGLtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q0NbwtMmg/KkoGmng8WciyRAmXVHSQKERnVbP5arH3M=;
 b=JGGTXGSE2z8DbldtTBuvKPj7sFOQmFJQ1BD0PjlPbCjWVS6lPUmmS1ga6dQ5jBwI9Gg3pA1rniGRR6xMb+HAFofKrhB++ZxALh8kGcTKShJ1YNzRIUrwyOM7Sm/1SWE94Jxg1PgLd5BSCuhrC5o1EqUiPCSOQDfUCGfo8VLy9qShsZq+edu4pYo1vjjAhA8kpSzlNYJ1L6fINwnkXeAFigy2of6aMtnzfGXyRb/RThwkIWux1DqBWhB4xYWiLOxB6+XNu3/pKMFJVYd+fg6dIsIwkkzlv44DzxuGeKD4yS9GhtmM5EyPj2uFo5/MpYp4fOiN/XQzv+WPMjTicuQQqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q0NbwtMmg/KkoGmng8WciyRAmXVHSQKERnVbP5arH3M=;
 b=ZWaa53MtvVffyVjzGNidQLLK23qF+yxYp62/cbtSXitKHYMGZxMXKEtY22yePfAkJFG6ZC5z/gwqeeGx+UWDu49u8z2Kn0CzDL1o2EPir2EhRWICwqTWFEyHe8TE2TUNglfKDkqvV39JRQoIhzz02FKvTOtYuW01mqIQwBpE6mHHTTHGFpD1Fg9Oxr+xKcRGyZg4mkNlCiJnSTxVL6cO6f46w3buoozRYev62dqbxJ3CiHrr+Kp4zzb+p+Sc777Unxs0wy82+dvpNlWgRvBXT6OyRYEIE6pdRWxo8A+RbppZrrHCH0FJzE6XI4o1PoSHBsUZDm/UO6qZn6ZOeDEFyw==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by BYAPR06MB4888.namprd06.prod.outlook.com (2603:10b6:a03:7a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.17; Thu, 18 Aug
 2022 16:50:24 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5504.028; Thu, 18 Aug 2022
 16:50:24 +0000
Date:   Thu, 18 Aug 2022 11:50:18 -0500
From:   Chris Morgan <macromorgan@hotmail.com>
To:     Maya Matuszczyk <maccraft123mc@gmail.com>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Anbernic RG353 and RG503
Message-ID: <SN6PR06MB5342BBFE2B7506F7B556C803A56D9@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-4-macroalpha82@gmail.com>
 <CAO_Mup+NS=qEumBKX0Kb=gf0-S21+MJVEbWxhOYrMyqULb23=A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAO_Mup+NS=qEumBKX0Kb=gf0-S21+MJVEbWxhOYrMyqULb23=A@mail.gmail.com>
X-TMN:  [o3qGNRo6/I2zYHFsUPNDyzhiGY0iiMfv]
X-ClientProxiedBy: SA0PR11CA0096.namprd11.prod.outlook.com
 (2603:10b6:806:d1::11) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220818165018.GC3920@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 684295bc-c45e-4112-7143-08da8139bebe
X-MS-TrafficTypeDiagnostic: BYAPR06MB4888:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yvJ7CXmEGQxURYUpjZTUVJHXu8xt1RO734cptOF80Gz1b7tf2vFInZkn9YAhuomb/UDQhY5BQQU6YVX9WSkPPB/yKnt06ANT0L9CrLNen91WBGLpSK9W0W+8C3aWRCAHC+TMCUkZ61fqrP+5I+uCbsowayIUKEZarwJzoBLTCHeXuC0YOUC/wTya8neQTd+ferjqZXdOYvL5Jzpax7xIS9MX9+Unj1SZx4hJqbSAnZkz5vfoHtd1EITFYDKkM3YFo1ZvkPO4VkiZN8CNOvF+9if6hY2DVi/HGUjWKW3ZQtzzXZKq+q6obULI2NBRK9SwWbvb7o9uDYCiqRGL5JWRZEPI7N20lGzFL3J1mr/HOfkcksBbYwN/6PJHZ63XJax/vlfq1oTmiZjkJeGfHtqLuZHUp7iVzGkyrS1wji2bofhOf1NY0z4J/Jiy1TdBJbxeGFC4A/hbL7yB4qdSf56Jdp+DVnux2a4hP7K5oqwpQLZgXoh0z0/ISMGtLA1LjkUjfiATaDNqOuEd7Uh3HCIxbdR56JlGLodyw+zI/P/SxuY1wN0KiNG/KeITYjOT6aIdjU1HlqhuQn5tY6cHcTM24FNzd913roq0AGHL+2oGyn+zeED6Etd+JqWfEF7NVBj7nZnbZdv2JmxPfKTsMPaYdePv0Ns+SSfrVq2vFjnjyxxih/P8DV2biwDlmz6b0wuP
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXNyZzZMVXVkOTl1bEVUenBmeHZMMmpSOWQ5bWN3R1M0YVo2WU4wOEhNbXVq?=
 =?utf-8?B?WUI4ZFJrYUljQmd2VWVQc3plVVFvUE1Va3FNNVdMWGRJTFdLaURkOUo1a09S?=
 =?utf-8?B?cVA5QXdpWk1ldzYzOVNlL0NUQ3ZOcUJGWUlvSGltbW1KM3NiM1J2eDdNUnlU?=
 =?utf-8?B?ajdEOEpzM2EzM000U1JGNHBvTzYvZkVhbWJMNmxmcGNzb2hIRDRWWVUzOEc3?=
 =?utf-8?B?b2NiZFZCemVrWW42S2pWSzM3U1F1VzV0U0pvWC93WnR2OHBSZHFJQ3o2TEhJ?=
 =?utf-8?B?NitCcWVnWmJZdjQ4QUZ5NkhKQ2hmWHF6UXlvcTRZajI3cmcyWldMVzA2U1J4?=
 =?utf-8?B?MDNDMG9tZUMwNmJFa0pyeXVETWQwQnZlNTJwclE5ZmF1ckIxN29PdWYrMjh0?=
 =?utf-8?B?Q3BsVURiUDVsd2RadW4xd2hub1R5RC9Na2daMHphNUNHYXN1dlJuZXhuakhZ?=
 =?utf-8?B?Um1Tc0h0K2lmd3FYWW1kTmpnRVF5TzdoZUI2eEpOS0NpN0ZzMkk0NHdQdmxB?=
 =?utf-8?B?dnBVeC9ucm5WUG8xeldyZ3ZkbzlZVUt0NEVuWXczbWEreVExTmsvVzV6MFQ1?=
 =?utf-8?B?M0FlNVc4UW1yZ1pQbjk5V2s1Qi9jZkxQYXZ6bFBNNm9RWkZmV3BOQkF6YWho?=
 =?utf-8?B?dHg5dEtiLzJwZUx4S0RnaHJQQjdJa3JjYXZIUEE3d2F1dVJIdmY1ZVdoeU9l?=
 =?utf-8?B?bEdrUnVVQ2JSaDJ4eERZZDVpNFRCWWFUS0gveU42QzY1M05Cc09SYmc1OHpE?=
 =?utf-8?B?Q0ZoZjd1ekg0MTFVTm1QL0g2WHZOdUo3UkNFbVdSRS8rNU5WTVEzbTZNbmxI?=
 =?utf-8?B?Y1Y3REZBV3NsZXBRRDVDeVNNNlpHeEhnUEU2U1BTTG5JVnA2ZVpwTURGTm5M?=
 =?utf-8?B?RGg5K1NpdTN0bU9hMm9IQXRUalZqVUVqN3VmQ1VzU25xZlc1MEFKb1lLcEg1?=
 =?utf-8?B?NkMvTm84cUFGazU0TGVQa0x2WjVINW5mTVdHWEkvZWJmTnk4SG9wR1QxajNC?=
 =?utf-8?B?V3dwWTlhYTF2eC85eGNLb2gxMmhWZCtEekJIaExhVVZBbFZqNmk4SXM0R0Q5?=
 =?utf-8?B?VStSZU5ObmQwZ2Z3U1p1eFJSdzhKU3VmcGdHWmFuSmYvT2VCcDhCTTRRQWVH?=
 =?utf-8?B?M2lIVENnSU1CcTY0VzJXQUhXeVUvMkNkR1FHcUJVbTBWVEhYQ1k2ZTZSMlZI?=
 =?utf-8?B?cFh0TzJtRkVwVC9yRkgwWFM2aHpLOVlKR044KzJIMWdkQ29UMVk3UTdoV0x3?=
 =?utf-8?B?MUtsN0gvSG8zWWd6TFhJdDY4RzFBWmhPRFZZcHlWRlArbTQwb0lrM211M0RP?=
 =?utf-8?B?L3c3elE1QjhaZWRiUENLZE9CZFVyano1RmQ4djRON1VqY29GVkRraE1hb2dM?=
 =?utf-8?B?SXJzNWRObE9sbWpVTTNRaVZqTi8rU3RiQVpQNVpBNmwrQzRBSlNEVWlkdDUw?=
 =?utf-8?B?eVMycTR5L2lIREVTbnQrMXE1ejJaTnpaQnhlcVRXTUNkeXdIUXVzMVFtU3A5?=
 =?utf-8?B?VWtFamp5WE1LeDJBU1Q2ckRqNHY1QzR0d0E3YVRKRmF2K09RUThqL3B1Vkc0?=
 =?utf-8?B?azhBNFFLdmpyZFk5TGw2WGVKa1VKRDFWOHJlVmxXN0NnbEtNTnNxdEdkU2Ny?=
 =?utf-8?B?aW1kYnpPOHBFdUdRWWZodFhIUmU3ckNEZXRrK0phQjEwdTR6TjJlb3hXQ05k?=
 =?utf-8?B?bVkzL0lHOGFaSXRMeTZVUlM4RitBUllLUnlqUnVSVmRodkdVeHRPLzNRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 684295bc-c45e-4112-7143-08da8139bebe
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 16:50:24.6337
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB4888
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 18, 2022 at 11:49:12AM +0200, Maya Matuszczyk wrote:
> Thanks for the patch,
> but I see some things that could be improved.
> 
> śr., 17 sie 2022 o 22:50 Chris Morgan <macroalpha82@gmail.com> napisał(a):
> >
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > Anbernic RG353 and RG503 are both RK3566 based handheld gaming devices
> > from Anbernic.
> >
> > Both devices have:
> >  - 2 SDMMC slots
> >  - A Realtek rtl8821cs WiFi/Bluetooth adapter
> >  - A mini HDMI port
> >  - A USB C host port and a USB C otg port (currently only working as
> >    device).
> IIRC if you force that dual role port to work as a host it will work fine.

I tried that with both DT bindings and kernel changes to no avail. I
can only seem to get the ports labelled "USB/DC" working as a
peripheral port, and the port labelled as "OTG" as a host port.
Schematics would sure help...

> 
> >  - Multiple GPIO buttons and a single ADC button.
> >  - Dual analog joysticks controlled via a GPIO mux.
> >  - A headphone jack with amplified stereo speakers.
> A PWM-controller vbibration motor too.
> 

Ack.

> >
> > The RG353 has:
> >  - 2GB LPDDR4 RAM
> >  - A 32GB eMMC
> >  - A 3.5 inch 640x480 4-lane DSI panel of unknown origin with an i2c
> >    controlled touchscreen.
> I wasn't able to find the part number of the panel, nor the manufacturer.
> It might be a custom made part.
> On the flex PCB there are markings:
> "YLM-355604-B-A1", underneath it in smaller font is "2201",
> and on the other side, much less visible, "WL-355604-A1".
> I tried disassembling the panle itself, and there were
> still no markings. :/
> 

The WL part number suggests we could be looking at a GiantPlus LCD, but
that could also be the brand of the connector. Going to need a BOM from
Anbernic before I can finish the panel driver.

> The touchscreen is a Hynitron CST340.
> This device also has a SGM4865 audio amplifier,

Thank you, yes. The audio amplifier seems to be controlled via GPIO
so I have it configured as a pinswitch on the audio card.

> 
> 
> >
> > The RG503 has:
> >  - 1GB LPDDR4 RAM
> >  - A 5 inch 960x544 AMOLED 2-lane DSI/DBI panel manufactured by Samsung
> >    with part number ams495qa04. Data for this panel is provided via the
> >    DSI interface, however commands are sent via a 9-bit 3-wire SPI
> >    interface. The MISO pin of SPI3 of the SOC is wired to the input of
> >    the panel, so it must be bitbanged.
> >
> > This devicetree enables the following hardware:
> >  - HDMI (plus audio)
> >  - Analog audio, including speakers.
> >  - All buttons
> >  - All SDMMC/eMMC/SDIO controllers
> >  - The ADC joysticks (note a pending patch is required to use them)
> >
> > The following hardware is not enabled:
> >  - The display panels (drivers are being written and there are issues
> >    with the upstream DSI and VOP2 subsystems).
> >  - Battery (driver pending).
> >  - WiFi/Bluetooth (the drivers are not mainline, however they can be
> >    built and probed out-of-tree).
> Maybe we could still include dose in dts file, as it's supposed to
> describe the hardware?

I don't know what the final bindings will look like yet. The driver
for the 503 is not yet working well (the video pattern generator
causes it to become corrupted). For the 353 I don't have a part number
so I don't know what it will be called. Until the drivers are final
I'd like to not include the bindings. The necessary spi-gpio bindings
to power the 503 panel is present though, as are the pinctrl configs
for both boards and the regulators. So all hardware except for the
not yet working panels, dsi controllers, and dsi-phys are present.

The bluetooth binding is present, however. I assume it would mirror
the 8822CS bluetooth binding, in fact I'm thinking it's possible
the 8822CS driver would work for the bluetooth on this chip, not
sure yet though. The wifi is enabled by enabling the MMC2 of both
devices, probing the driver should work as I'm seeing in dmesg a
SDIO device is detected on SDMMC2 for both boards.

Touchscreen is the same. We have the GPL-2 source code from the
vendor, but it needs a lot of love before it can get mainlined.
No idea if those bindings will change too. i2c2 is enabled however
on the 353P.

> 
> >
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
> >  .../dts/rockchip/rk3566-anbernic-rg353.dts    | 103 +++
> >  .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
> >  .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 807 ++++++++++++++++++
> >  4 files changed, 1005 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index ef79a672804a..228b4ec4b773 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -57,6 +57,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts
> > new file mode 100644
> > index 000000000000..8c6252b63774
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts
> > @@ -0,0 +1,103 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/linux-event-codes.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3566-anbernic-rgxx3.dtsi"
> > +
> > +/ {
> > +       model = "RG353";
> > +       compatible = "anbernic,rg353", "rockchip,rk3566";
> > +
> > +       aliases {
> > +               mmc0 = &sdhci;
> > +               mmc1 = &sdmmc0;
> > +               mmc2 = &sdmmc1;
> > +               mmc3 = &sdmmc2;
> > +       };
> > +
> > +       backlight: backlight {
> > +               compatible = "pwm-backlight";
> > +               power-supply = <&vcc_sys>;
> > +               pwms = <&pwm4 0 25000 0>;
> > +       };
> > +};
> > +
> > +&gpio_keys {
> > +       button-5 {
> Maybe it could be named in a way that would
> be more in-line with what the button actually is, instead
> of a random number?

For now, I have it named in order of GPIOs. If we need we can change it
but then we'd have to alphabetize it and that might actually make it
harder to work on.

I am curious if anyone on mainline would object to me splitting the
volume buttons to their own node, so that we can enable repeat?

> 
> > +               gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> > +               label = "DPAD-LEFT";
> > +               linux,code = <BTN_DPAD_RIGHT>;
> > +       };
> > +
> > +       button-6 {
> > +               gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> > +               label = "DPAD-RIGHT";
> > +               linux,code = <BTN_DPAD_LEFT>;
> > +       };
> > +
> > +       button-11 {
> > +               gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> > +               label = "TR";
> > +               linux,code = <BTN_TR2>;
> > +       };
> > +
> > +       button-12 {
> > +               gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> > +               label = "TR2";
> > +               linux,code = <BTN_TR>;
> > +       };
> > +
> > +       button-16 {
> > +               gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> > +               label = "WEST";
> > +               linux,code = <BTN_WEST>;
> > +       };
> > +
> > +       button-17 {
> > +               gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
> > +               label = "EAST";
> > +               linux,code = <BTN_EAST>;
> > +       };
> > +};
> > +
> > +&i2c0 {
> > +       /* This hardware is physically present but unused. */
> > +       cw2015@62 {
> > +               compatible = "cellwise,cw2015";
> > +               reg = <0x62>;
> > +               status = "disabled";
> > +       };
> > +};
> > +
> > +&i2c2 {
> > +       pintctrl-names = "default";
> > +       pinctrl-0 = <&i2c2m1_xfer>;
> > +       status = "okay";
> > +};
> > +
> > +&pinctrl {
> > +       gpio-lcd {
> > +               lcd_rst: lcd-rst {
> > +                       rockchip,pins =
> > +                               <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +};
> > +
> > +&pwm4 {
> > +       status = "okay";
> > +};
> > +
> > +&sdhci {
> > +       pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>, <&emmc_datastrobe>, <&emmc_rstnout>;
> > +       pinctrl-names = "default";
> > +       bus-width = <8>;
> > +       mmc-hs200-1_8v;
> > +       non-removable;
> > +       vmmc-supply = <&vcc_3v3>;
> > +       vqmmc-supply = <&vcc_1v8>;
> > +       status = "okay";
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> > new file mode 100644
> > index 000000000000..c5941d405d14
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> > @@ -0,0 +1,93 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/linux-event-codes.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3566-anbernic-rgxx3.dtsi"
> > +
> > +/ {
> > +       model = "RG503";
> > +       compatible = "anbernic,rg503", "rockchip,rk3566";
> > +
> > +       aliases {
> > +               mmc0 = &sdmmc0;
> > +               mmc1 = &sdmmc1;
> > +               mmc2 = &sdmmc2;
> > +       };
> > +
> > +       gpio_spi: spi {
> > +               compatible = "spi-gpio";
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&spi_pins>;
> > +               #address-cells = <1>;
> > +               #size-cells = <0>;
> > +
> > +               sck-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
> > +               mosi-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> > +               cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
> > +               num-chipselects = <0>;
> > +       };
> > +};
> > +
> > +&gpio_keys {
> > +       button-5 {
> > +               gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> > +               label = "DPAD-LEFT";
> > +               linux,code = <BTN_DPAD_LEFT>;
> > +       };
> > +
> > +       button-6 {
> > +               gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> > +               label = "DPAD-RIGHT";
> > +               linux,code = <BTN_DPAD_RIGHT>;
> > +       };
> > +
> > +       button-11 {
> > +               gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> > +               label = "TR";
> > +               linux,code = <BTN_TR>;
> > +       };
> > +
> > +       button-12 {
> > +               gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> > +               label = "TR2";
> > +               linux,code = <BTN_TR2>;
> > +       };
> > +
> > +       button-16 {
> > +               gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> > +               label = "EAST";
> > +               linux,code = <BTN_EAST>;
> > +       };
> > +
> > +       button-17 {
> > +               gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
> > +               label = "WEST";
> > +               linux,code = <BTN_WEST>;
> > +       };
> > +};
> > +
> > +&pinctrl {
> > +       gpio-spi {
> > +               spi_pins: spi-pins {
> > +                       rockchip,pins =
> > +                               <4 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>,
> > +                               <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>,
> > +                               <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +
> > +       gpio-lcd {
> > +               lcd_enable: lcd-enable {
> > +                       rockchip,pins =
> > +                               <4 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +
> > +               lcd_reset: lcd-reset {
> > +                       rockchip,pins =
> > +                               <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > new file mode 100644
> > index 000000000000..4b03a677f6dc
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > @@ -0,0 +1,807 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/linux-event-codes.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/soc/rockchip,vop2.h>
> > +#include "rk3566.dtsi"
> > +
> > +/ {
> > +       chosen: chosen {
> > +               stdout-path = "serial2:1500000n8";
> > +       };
> > +
> > +       adc-joystick {
> > +               compatible = "adc-joystick";
> > +               io-channels = <&adc_mux 0>,
> > +                             <&adc_mux 1>,
> > +                             <&adc_mux 2>,
> > +                             <&adc_mux 3>;
> > +               pinctrl-0 = <&joy_mux_en>;
> > +               pinctrl-names = "default";
> > +               #address-cells = <1>;
> > +               #size-cells = <0>;
> > +
> > +               axis@0 {
> > +                       reg = <0>;
> > +                       abs-flat = <32>;
> > +                       abs-fuzz = <32>;
> > +                       abs-range = <1023 15>;
> > +                       linux,code = <ABS_X>;
> > +               };
> > +
> > +               axis@1 {
> > +                       reg = <1>;
> > +                       abs-flat = <32>;
> > +                       abs-fuzz = <32>;
> > +                       abs-range = <15 1023>;
> > +                       linux,code = <ABS_RX>;
> > +               };
> > +
> > +               axis@2 {
> > +                       reg = <2>;
> > +                       abs-flat = <32>;
> > +                       abs-fuzz = <32>;
> > +                       abs-range = <15 1023>;
> > +                       linux,code = <ABS_Y>;
> > +               };
> > +
> > +               axis@3 {
> > +                       reg = <3>;
> > +                       abs-flat = <32>;
> > +                       abs-fuzz = <32>;
> > +                       abs-range = <1023 15>;
> > +                       linux,code = <ABS_RY>;
> > +               };
> > +       };
> > +
> > +       adc_keys: adc-keys {
> > +               compatible = "adc-keys";
> > +               io-channels = <&saradc 0>;
> > +               io-channel-names = "buttons";
> > +               keyup-threshold-microvolt = <1800000>;
> > +               poll-interval = <60>;
> > +
> > +               button-mode {
> > +                       label = "MODE";
> > +                       linux,code = <BTN_MODE>;
> > +                       press-threshold-microvolt = <1750>;
> > +               };
> > +       };
> > +
> > +       adc_mux: adc-mux {
> > +               compatible = "io-channel-mux";
> > +               channels = "left_x", "right_x", "left_y", "right_y";
> > +               io-channels = <&saradc 3>;
> > +               io-channel-names = "parent";
> > +               mux-controls = <&gpio_mux>;
> > +               settle-time-us = <100>;
> > +               #io-channel-cells = <1>;
> > +       };
> > +
> > +       gpio_keys: gpio-keys {
> > +               compatible = "gpio-keys";
> > +               pinctrl-0 = <&btn_pins>;
> > +               pinctrl-names = "default";
> > +
> > +               button-1 {
> > +                       gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
> > +                       label = "THUMBL";
> > +                       linux,code = <BTN_THUMBL>;
> > +               };
> > +
> > +               button-2 {
> > +                       gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
> > +                       label = "THUMBR";
> > +                       linux,code = <BTN_THUMBR>;
> > +               };
> > +
> > +               button-3 {
> > +                       gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
> > +                       label = "DPAD-UP";
> > +                       linux,code = <BTN_DPAD_UP>;
> > +               };
> > +
> > +               button-4 {
> > +                       gpios = <&gpio3 RK_PA4 GPIO_ACTIVE_LOW>;
> > +                       label = "DPAD-DOWN";
> > +                       linux,code = <BTN_DPAD_DOWN>;
> > +               };
> > +
> > +               button-7 {
> > +                       gpios = <&gpio3 RK_PA7 GPIO_ACTIVE_LOW>;
> > +                       label = "VOLUMEUP";
> > +                       linux,code = <KEY_VOLUMEUP>;
> > +               };
> > +
> > +               button-8 {
> > +                       gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> > +                       label = "VOLUMEDOWN";
> > +                       linux,code = <KEY_VOLUMEDOWN>;
> > +               };
> > +
> > +               button-9 {
> > +                       gpios = <&gpio3 RK_PB1 GPIO_ACTIVE_LOW>;
> > +                       label = "TL";
> > +                       linux,code = <BTN_TL>;
> > +               };
> > +
> > +               button-10 {
> > +                       gpios = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
> > +                       label = "TL2";
> > +                       linux,code = <BTN_TL2>;
> > +               };
> > +
> > +               button-13 {
> > +                       gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_LOW>;
> > +                       label = "START";
> > +                       linux,code = <BTN_START>;
> > +               };
> > +
> > +               button-14 {
> > +                       gpios = <&gpio3 RK_PB6 GPIO_ACTIVE_LOW>;
> > +                       label = "SELECT";
> > +                       linux,code = <BTN_SELECT>;
> > +               };
> > +
> > +               button-15 {
> > +                       gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
> > +                       label = "NORTH";
> > +                       linux,code = <BTN_NORTH>;
> > +               };
> > +
> > +               button-18 {
> > +                       gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_LOW>;
> > +                       label = "SOUTH";
> > +                       linux,code = <BTN_SOUTH>;
> > +               };
> > +       };
> > +
> > +       gpio_mux: mux-controller {
> > +               compatible = "gpio-mux";
> > +               mux-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
> > +                           <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
> > +               #mux-control-cells = <0>;
> > +       };
> > +
> > +       hdmi-con {
> > +               compatible = "hdmi-connector";
> > +               type = "c";
> > +
> > +               port {
> > +                       hdmi_con_in: endpoint {
> > +                               remote-endpoint = <&hdmi_out_con>;
> > +                       };
> > +               };
> > +       };
> > +
> > +       leds: gpio-leds {
> > +               compatible = "gpio-leds";
> > +               pinctrl-0 = <&led_pins>;
> > +               pinctrl-names = "default";
> > +
> > +               green_led: led-0 {
> > +                       color = <LED_COLOR_ID_GREEN>;
> > +                       default-state = "on";
> > +                       function = LED_FUNCTION_POWER;
> > +                       gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> > +               };
> > +
> > +               amber_led: led-1 {
> > +                       color = <LED_COLOR_ID_AMBER>;
> > +                       function = LED_FUNCTION_CHARGING;
> > +                       gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +                       retain-state-suspended;
> > +               };
> > +
> > +               red_led: led-2 {
> > +                       color = <LED_COLOR_ID_RED>;
> > +                       default-state = "off";
> > +                       function = LED_FUNCTION_STATUS;
> > +                       gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
> > +               };
> > +       };
> > +
> > +       rk817-sound {
> > +               compatible = "simple-audio-card";
> > +               simple-audio-card,name = "anbernic_rk817";
> > +               simple-audio-card,aux-devs = <&spk_amp>;
> > +               simple-audio-card,format = "i2s";
> > +               simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +               simple-audio-card,mclk-fs = <256>;
> > +               simple-audio-card,widgets =
> > +                       "Microphone", "Mic Jack",
> > +                       "Headphone", "Headphones",
> > +                       "Speaker", "Internal Speakers";
> > +               simple-audio-card,routing =
> > +                       "MICL", "Mic Jack",
> > +                       "Headphones", "HPOL",
> > +                       "Headphones", "HPOR",
> > +                       "Internal Speakers", "Speaker Amp OUTL",
> > +                       "Internal Speakers", "Speaker Amp OUTR",
> > +                       "Speaker Amp INL", "HPOL",
> > +                       "Speaker Amp INR", "HPOR";
> > +               simple-audio-card,pin-switches = "Internal Speakers";
> > +
> > +               simple-audio-card,codec {
> > +                       sound-dai = <&rk817>;
> > +               };
> > +
> > +               simple-audio-card,cpu {
> > +                       sound-dai = <&i2s1_8ch>;
> > +               };
> > +       };
> > +
> > +       sdio_pwrseq: sdio-pwrseq {
> > +               compatible = "mmc-pwrseq-simple";
> > +               clocks = <&rk817 1>;
> > +               clock-names = "ext_clock";
> > +               pinctrl-0 = <&wifi_enable_h>;
> > +               pinctrl-names = "default";
> > +               post-power-on-delay-ms = <200>;
> > +               reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
> > +       };
> > +
> > +       spk_amp: audio-amplifier {
> > +               compatible = "simple-audio-amplifier";
> > +               enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> > +               pinctrl-0 = <&spk_amp_enable_h>;
> > +               pinctrl-names = "default";
> > +               sound-name-prefix = "Speaker Amp";
> > +       };
> > +
> > +       vcc3v3_lcd0_n: vcc3v3-lcd0-n {
> > +               compatible = "regulator-fixed";
> > +               gpio = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> > +               enable-active-high;
> > +               pinctrl-0 = <&vcc_lcd_h>;
> > +               pinctrl-names = "default";
> > +               regulator-boot-on;
> > +               regulator-min-microvolt = <3300000>;
> > +               regulator-max-microvolt = <3300000>;
> > +               regulator-name = "vcc3v3_lcd0_n";
> > +               vin-supply = <&vcc_3v3>;
> > +               regulator-state-mem {
> > +                       regulator-off-in-suspend;
> > +               };
> > +       };
> > +
> > +       vcc_sys: vcc_sys {
> > +               compatible = "regulator-fixed";
> > +               regulator-always-on;
> > +               regulator-boot-on;
> > +               regulator-min-microvolt = <3800000>;
> > +               regulator-max-microvolt = <3800000>;
> > +               regulator-name = "vcc_sys";
> > +       };
> > +
> > +       vcc_wifi: vcc-wifi {
> > +               compatible = "regulator-fixed";
> > +               enable-active-high;
> > +               gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> > +               pinctrl-0 = <&vcc_wifi_h>;
> > +               pinctrl-names = "default";
> > +               regulator-always-on;
> > +               regulator-boot-on;
> > +               regulator-min-microvolt = <3300000>;
> > +               regulator-max-microvolt = <3300000>;
> > +               regulator-name = "vcc_wifi";
> > +       };
> > +
> > +       vibrator: pwm-vibrator {
> > +               compatible = "pwm-vibrator";
> > +               pwm-names = "enable";
> > +               pwms = <&pwm5 0 1000000000 0>;
> > +       };
> > +};
> > +
> > +&combphy1 {
> > +       status = "okay";
> > +};
> > +
> > +&cpu0 {
> > +       cpu-supply = <&vdd_cpu>;
> > +};
> > +
> > +&cpu1 {
> > +       cpu-supply = <&vdd_cpu>;
> > +};
> > +
> > +&cpu2 {
> > +       cpu-supply = <&vdd_cpu>;
> > +};
> > +
> > +&cpu3 {
> > +       cpu-supply = <&vdd_cpu>;
> > +};
> > +
> > +&gpu {
> > +       mali-supply = <&vdd_gpu>;
> > +       status = "okay";
> > +};
> > +
> > +&hdmi {
> > +       status = "okay";
> > +};
> > +
> > +&hdmi_in {
> > +       hdmi_in_vp0: endpoint {
> > +               remote-endpoint = <&vp0_out_hdmi>;
> > +       };
> > +};
> > +
> > +&hdmi_out {
> > +       hdmi_out_con: endpoint {
> > +               remote-endpoint = <&hdmi_con_in>;
> > +       };
> > +};
> > +
> > +&hdmi_sound {
> > +       status = "okay";
> > +};
> > +
> > +&i2c0 {
> > +       status = "okay";
> > +
> > +       rk817: pmic@20 {
> > +               compatible = "rockchip,rk817";
> > +               reg = <0x20>;
> > +               interrupt-parent = <&gpio0>;
> > +               interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> > +               clock-output-names = "rk808-clkout1", "rk808-clkout2";
> > +               clock-names = "mclk";
> > +               clocks = <&cru I2S1_MCLKOUT_TX>;
> > +               assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> > +               assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> > +               #clock-cells = <1>;
> > +               #sound-dai-cells = <0>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>;
> > +               wakeup-source;
> > +
> > +               vcc1-supply = <&vcc_sys>;
> > +               vcc2-supply = <&vcc_sys>;
> > +               vcc3-supply = <&vcc_sys>;
> > +               vcc4-supply = <&vcc_sys>;
> > +               vcc5-supply = <&vcc_sys>;
> > +               vcc6-supply = <&vcc_sys>;
> > +               vcc7-supply = <&vcc_sys>;
> > +               vcc8-supply = <&vcc_sys>;
> > +               vcc9-supply = <&dcdc_boost>;
> > +
> > +               regulators {
> > +                       vdd_logic: DCDC_REG1 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <500000>;
> > +                               regulator-max-microvolt = <1350000>;
> > +                               regulator-init-microvolt = <900000>;
> > +                               regulator-ramp-delay = <6001>;
> > +                               regulator-initial-mode = <0x2>;
> > +                               regulator-name = "vdd_logic";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                                       regulator-suspend-microvolt = <900000>;
> > +                               };
> > +                       };
> > +
> > +                       vdd_gpu: DCDC_REG2 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <500000>;
> > +                               regulator-max-microvolt = <1350000>;
> > +                               regulator-init-microvolt = <900000>;
> > +                               regulator-ramp-delay = <6001>;
> > +                               regulator-initial-mode = <0x2>;
> > +                               regulator-name = "vdd_gpu";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       vcc_ddr: DCDC_REG3 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-initial-mode = <0x2>;
> > +                               regulator-name = "vcc_ddr";
> > +                               regulator-state-mem {
> > +                                       regulator-on-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       vcc_3v3: DCDC_REG4 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <3300000>;
> > +                               regulator-max-microvolt = <3300000>;
> > +                               regulator-initial-mode = <0x2>;
> > +                               regulator-name = "vcc_3v3";
> > +                               regulator-state-mem {
> > +                                       regulator-on-in-suspend;
> > +                                       regulator-suspend-microvolt = <3300000>;
> > +                               };
> > +                       };
> > +
> > +                       vcca1v8_pmu: LDO_REG1 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <1800000>;
> > +                               regulator-max-microvolt = <1800000>;
> > +                               regulator-name = "vcca1v8_pmu";
> > +                               regulator-state-mem {
> > +                                       regulator-on-in-suspend;
> > +                                       regulator-suspend-microvolt = <1800000>;
> > +                               };
> > +                       };
> > +
> > +                       vdda_0v9: LDO_REG2 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <900000>;
> > +                               regulator-max-microvolt = <900000>;
> > +                               regulator-name = "vdda_0v9";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       vdda0v9_pmu: LDO_REG3 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <900000>;
> > +                               regulator-max-microvolt = <900000>;
> > +                               regulator-name = "vdda0v9_pmu";
> > +                               regulator-state-mem {
> > +                                       regulator-on-in-suspend;
> > +                                       regulator-suspend-microvolt = <900000>;
> > +                               };
> > +                       };
> > +
> > +                       vccio_acodec: LDO_REG4 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <3300000>;
> > +                               regulator-max-microvolt = <3300000>;
> > +                               regulator-name = "vccio_acodec";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       vccio_sd: LDO_REG5 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <1800000>;
> > +                               regulator-max-microvolt = <3300000>;
> > +                               regulator-name = "vccio_sd";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       vcc3v3_pmu: LDO_REG6 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <3300000>;
> > +                               regulator-max-microvolt = <3300000>;
> > +                               regulator-name = "vcc3v3_pmu";
> > +                               regulator-state-mem {
> > +                                       regulator-on-in-suspend;
> > +                                       regulator-suspend-microvolt = <3300000>;
> > +                               };
> > +                       };
> > +
> > +                       vcc_1v8: LDO_REG7 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <1800000>;
> > +                               regulator-max-microvolt = <1800000>;
> > +                               regulator-name = "vcc_1v8";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       vcc1v8_dvp: LDO_REG8 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <1800000>;
> > +                               regulator-max-microvolt = <3300000>;
> > +                               regulator-name = "vcc1v8_dvp";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       vcc2v8_dvp: LDO_REG9 {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <2800000>;
> > +                               regulator-max-microvolt = <2800000>;
> > +                               regulator-name = "vcc2v8_dvp";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       dcdc_boost: BOOST {
> > +                               regulator-always-on;
> > +                               regulator-boot-on;
> > +                               regulator-min-microvolt = <4700000>;
> > +                               regulator-max-microvolt = <5400000>;
> > +                               regulator-name = "boost";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +
> > +                       otg_switch: OTG_SWITCH {
> > +                               regulator-name = "otg_switch";
> > +                               regulator-state-mem {
> > +                                       regulator-off-in-suspend;
> > +                               };
> > +                       };
> > +               };
> > +       };
> > +
> > +       vdd_cpu: regulator@40 {
> > +               compatible = "fcs,fan53555";
> > +               reg = <0x40>;
> > +               fcs,suspend-voltage-selector = <1>;
> > +               regulator-always-on;
> > +               regulator-boot-on;
> > +               regulator-min-microvolt = <712500>;
> > +               regulator-max-microvolt = <1390000>;
> > +               regulator-init-microvolt = <900000>;
> > +               regulator-name = "vdd_cpu";
> > +               regulator-ramp-delay = <2300>;
> > +               vin-supply = <&vcc_sys>;
> > +               regulator-state-mem {
> > +                       regulator-off-in-suspend;
> > +               };
> > +       };
> > +};
> > +
> > +&i2c1 {
> > +       /* Unknown/unused device at 0x3c */
> I can try poking around my RG353P and RG503
> motherboards to see what that device actually is.

Let me know if you can. I couldn't figure it out from the board docs,
nor from the TRM, nor from a register dump. Whatever this is it doesn't
look like it's used, but there is something there regardless and I
thought that warranted documenting.

> 
> > +       status = "disabled";
> > +};
> > +
> > +&i2s0_8ch {
> > +       status = "okay";
> > +};
> > +
> > +&i2s1_8ch {
> > +       pinctrl-0 = <&i2s1m0_sclktx
> > +                    &i2s1m0_lrcktx
> > +                    &i2s1m0_sdi0
> > +                    &i2s1m0_sdo0>;
> > +       pinctrl-names = "default";
> > +       rockchip,trcm-sync-tx-only;
> > +       status = "okay";
> > +};
> > +
> > +&pinctrl {
> > +
> > +       audio-amplifier {
> > +               spk_amp_enable_h: spk-amp-enable-h {
> > +                       rockchip,pins =
> > +                               <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +
> > +       gpio-btns {
> > +               btn_pins: btn-pins {
> > +                       rockchip,pins =
> > +                               <3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PC0 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>,
> > +                               <3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_up>;
> > +               };
> > +       };
> > +
> > +       gpio-led {
> > +               led_pins: led-pins {
> > +                       rockchip,pins =
> > +                               <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>,
> > +                               <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>,
> > +                               <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +
> > +       joy-mux {
> > +               joy_mux_en: joy-mux-en {
> > +                       rockchip,pins =
> > +                               <0 RK_PB5 RK_FUNC_GPIO &pcfg_output_low>;
> > +               };
> > +       };
> > +
> > +       pmic {
> > +               pmic_int_l: pmic-int-l {
> > +                       rockchip,pins =
> > +                               <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> > +               };
> > +       };
> > +
> > +       sdio-pwrseq {
> > +               wifi_enable_h: wifi-enable-h {
> > +                       rockchip,pins =
> > +                               <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +
> > +       vcc3v3_lcd {
> > +               vcc_lcd_h: vcc_lcd_h {
> > +                       rockchip,pins =
> > +                               <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +
> > +       vcc-wifi {
> > +               vcc_wifi_h: vcc_wifi_h {
> > +                       rockchip,pins =
> > +                               <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +};
> > +
> > +&pmu_io_domains {
> > +       status = "okay";
> > +       pmuio1-supply = <&vcc3v3_pmu>;
> > +       pmuio2-supply = <&vcc3v3_pmu>;
> > +       vccio1-supply = <&vccio_acodec>;
> > +       vccio3-supply = <&vccio_sd>;
> > +       vccio4-supply = <&vcc_1v8>;
> > +       vccio5-supply = <&vcc_3v3>;
> > +       vccio6-supply = <&vcc1v8_dvp>;
> > +       vccio7-supply = <&vcc_3v3>;
> > +};
> > +
> > +&pwm5 {
> > +       status = "okay";
> > +};
> > +
> > +&saradc {
> > +       vref-supply = <&vcc_1v8>;
> > +       status = "okay";
> > +};
> > +
> > +&sdmmc0 {
> > +       bus-width = <4>;
> > +       cap-sd-highspeed;
> > +       cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> > +       disable-wp;
> > +       pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> > +       pinctrl-names = "default";
> > +       sd-uhs-sdr104;
> > +       vmmc-supply = <&vcc_3v3>;
> > +       vqmmc-supply = <&vccio_sd>;
> > +       status = "okay";
> > +};
> > +
> > +&sdmmc1 {
> > +       bus-width = <4>;
> > +       cap-sd-highspeed;
> > +       cd-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_LOW>;
> > +       disable-wp;
> > +       pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk &sdmmc1_det>;
> > +       pinctrl-names = "default";
> > +       sd-uhs-sdr104;
> > +       vmmc-supply = <&vcc_3v3>;
> > +       vqmmc-supply = <&vcc1v8_dvp>;
> > +       status = "okay";
> > +};
> > +
> > +&sdmmc2 {
> > +       bus-width = <4>;
> > +       cap-sd-highspeed;
> > +       cap-sdio-irq;
> > +       keep-power-in-suspend;
> > +       mmc-pwrseq = <&sdio_pwrseq>;
> > +       non-removable;
> > +       pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
> > +       pinctrl-names = "default";
> > +       vmmc-supply = <&vcc_wifi>;
> > +       vqmmc-supply = <&vcca1v8_pmu>;
> > +       status = "okay";
> > +};
> > +
> > +&tsadc {
> > +       rockchip,hw-tshut-mode = <1>;
> > +       rockchip,hw-tshut-polarity = <0>;
> > +       status = "okay";
> > +};
> > +
> > +&uart1 {
> > +       pinctrl-0 = <&uart1m1_xfer &uart1m1_ctsn &uart1m1_rtsn>;
> > +       pinctrl-names = "default";
> > +       uart-has-rtscts;
> > +       status = "okay";
> > +
> > +       bluetooth {
> > +               compatible = "realtek,rtl8821cs-bt";
> > +               device-wake-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
> > +               enable-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
> > +               host-wake-gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;
> > +       };
> > +};
> > +
> > +&uart2 {
> > +       status = "okay";
> > +};
> > +
> > +/*
> > + * Lack the schematics to verify, but port works as a peripheral
> > + * (and not a host or OTG port).
> > + */
> Maybe it's just missing a usb-c-connector node?
> It would be useful to have in this devicetree.

Without schematics I can't tell if there's some GPIO pin that needs to
be called out or something else afoot. All I know is this port only
worked as power input on the BSP kernel, but it does work in
peripheral mode if we hard code it. Likewise for the other port, I
could only really get it to work consistently as a host port.

> 
> > +&usb_host0_xhci {
> > +       dr_mode = "peripheral";
> > +       phys = <&usb2phy0_otg>;
> > +       phy-names = "usb2-phy";
> > +       status = "okay";
> > +};
> 
> Best Regards,
> Maya Matuszczyk
