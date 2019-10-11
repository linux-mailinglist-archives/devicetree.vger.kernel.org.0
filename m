Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F9CBD3F5B
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 14:20:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727907AbfJKMUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 08:20:41 -0400
Received: from foss.arm.com ([217.140.110.172]:58430 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727243AbfJKMUl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Oct 2019 08:20:41 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E98A28;
        Fri, 11 Oct 2019 05:20:40 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 922D83F6C4;
        Fri, 11 Oct 2019 05:20:39 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Add Beelink A1
To:     Rob Herring <robh@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
References: <9037b7edbbb41cbbf699ebe3a511daf22d886e7d.1570444695.git.robin.murphy@arm.com>
 <CAL_JsqKBy+i+=gGyYhBgcMUYsWd_CL_GnEoQqALBb+Gy7Ogb6A@mail.gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <4c490e48-7a85-4ef9-771c-165defde39cc@arm.com>
Date:   Fri, 11 Oct 2019 13:20:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKBy+i+=gGyYhBgcMUYsWd_CL_GnEoQqALBb+Gy7Ogb6A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/10/2019 13:53, Rob Herring wrote:
> On Mon, Oct 7, 2019 at 6:33 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> Beelink A1 is a TV box implementing the higher-end options of the
>> RK3328 reference design - the DTB from the stock Android firmware is
>> clearly the "rk3328-box-plus" variant from the Rockchip 3.10 BSP with
>> minor modifications to accommodate the USB WiFi module and additional
>> VFD-style LED driver. It features:
>>
>> - 4GB of 32-bit LPDDR3
>> - 16GB of HS200 eMMC (newer models with 32GB also exist)
>> - Realtek RTL8211F phy for gigabit ethernet
>> - Fn-Link 6221E-UUC module (RealTek RTL8821CU) for 11ac WiFi and Bluetooth 4.2
>> - HDMI and analog A/V
>> - 1x USB 3.0 type A host, 1x USB 2.0 type A OTG, 1x micro SD
>> - IR receiver and a neat little LED clock display.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>
>> One question I'm wondering about is whether it's worth pushing the HDMI
>> and analog codec audio cards down into rk3328.dtsi (as with HDMI audio
>> on RK3399), since those audio pipelines are internal to the SoC and the
>> board only really governs whether the outputs are wired up or not.
> 
> Seems reasonable. One other candidate below.
> 
>>
>>   .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> 
> In the future, please split bindings to a separate patch.

Ha, busted! I thought this might be trivial enough to slip through, but 
I'll split it out if you prefer.

>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts    | 399 ++++++++++++++++++
>>   3 files changed, 405 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index c82c5e57d44c..f27f7805f57e 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -40,6 +40,11 @@ properties:
>>             - const: asus,rk3288-tinker-s
>>             - const: rockchip,rk3288
>>
>> +      - description: Beelink A1
>> +        items:
>> +          - const: azw,beelink-a1
>> +          - const: rockchip,rk3328
>> +
>>         - description: bq Curie 2 tablet
>>           items:
>>             - const: mundoreader,bq-curie2
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>> index 1f18a9392d15..a6f250e7cde2 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -1,5 +1,6 @@
>>   # SPDX-License-Identifier: GPL-2.0
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>> new file mode 100644
>> index 000000000000..03ad663ff821
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>> @@ -0,0 +1,399 @@
>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>> +// Copyright (c) 2017-2019 Arm Ltd.
>> +
>> +/dts-v1/;
>> +#include "rk3328.dtsi"
>> +
>> +/ {
>> +       model = "Beelink A1";
>> +       compatible = "azw,beelink-a1", "rockchip,rk3328";
>> +
>> +       /*
>> +        * UART pins, as viewed with bottom of case removed:
>> +        *
>> +        *           Front
>> +        *        /-------
>> +        *  L    / o <- Gnd
>> +        *  e   / o <-- Rx
>> +        *  f  / o <--- Tx
>> +        *  t / o <---- +3.3v
>> +        *    |
>> +        */
>> +       chosen {
>> +               stdout-path = "serial2:1500000n8";
>> +       };
>> +
>> +       gmac_clkin: external-gmac-clock {
>> +               compatible = "fixed-clock";
>> +               clock-frequency = <125000000>;
>> +               clock-output-names = "gmac_clkin";
>> +               #clock-cells = <0>;
>> +       };
>> +
>> +       vcc_host_5v: usb3-current-switch {
>> +               compatible = "regulator-fixed";
>> +               enable-active-high;
>> +               gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&usb30_host_drv>;
>> +               regulator-name = "vcc_host_5v";
>> +               vin-supply = <&vcc_sys>;
>> +       };
>> +
>> +       vcc_sys: vcc-sys {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "vcc_sys";
>> +               regulator-min-microvolt = <5000000>;
>> +               regulator-max-microvolt = <5000000>;
>> +       };
>> +
>> +       cpus {
>> +               idle-states {
>> +                       entry-method = "arm,psci";
>> +
>> +                       cpu_sleep: cpu-sleep {
>> +                               compatible = "arm,idle-state";
>> +                               arm,psci-suspend-param = <0x0010000>;
>> +                               local-timer-stop;
>> +                               entry-latency-us = <120>;
>> +                               exit-latency-us = <250>;
>> +                               min-residency-us = <900>;
> 
> This doesn't seem like something that's board specific, but I guess
> the regulator could have some influence on these times. If so, the
> board file could always override a default.

True, this is traceable back to the Rockchip Android BSP where it's 
actually applied to the entire SoC family[1]. I don't know if there's 
likely to be any difference between the downstream "RKTRUST" firmware 
binaries (which this nominally represents) and upstream ATF in terms of 
their PSCI implementation/performance.

I've not got round to properly tinkering with suspend/resume and power 
management stuff yet, so I guess another option would be to just forget 
about this part for now - Heiko, any opinions?

Cheers,
Robin.

[1] 
https://github.com/rockchip-linux/kernel/blob/release-3.10/arch/arm64/boot/dts/rk322xh.dtsi#L107-L118
