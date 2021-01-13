Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBC352F48B7
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 11:32:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727271AbhAMKbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 05:31:39 -0500
Received: from foss.arm.com ([217.140.110.172]:33822 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727265AbhAMKbi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 05:31:38 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5D511042;
        Wed, 13 Jan 2021 02:30:52 -0800 (PST)
Received: from [192.168.2.22] (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DE533F66E;
        Wed, 13 Jan 2021 02:30:51 -0800 (PST)
Subject: Re: [linux-sunxi] [PATCH 1/7] arm64: dts: allwinner: H6/A64: properly
 connect USB PHY to port 0
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
References: <20210106150525.15403-1-andre.przywara@arm.com>
 <20210106150525.15403-2-andre.przywara@arm.com>
 <CAGb2v66V6=jeLuLCvOENhuwXfPAMd1nYcMor3K7FToHT9grTTA@mail.gmail.com>
From:   =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Autocrypt: addr=andre.przywara@arm.com; prefer-encrypt=mutual; keydata=
 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
 i4aIXCH3Wv6K
Organization: ARM Ltd.
Message-ID: <e85c945a-f6b2-6c78-b577-f3705535ac22@arm.com>
Date:   Wed, 13 Jan 2021 10:30:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v66V6=jeLuLCvOENhuwXfPAMd1nYcMor3K7FToHT9grTTA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/01/2021 15:56, Chen-Yu Tsai wrote:
> Hi,
> 
> On Wed, Jan 6, 2021 at 11:05 PM Andre Przywara <andre.przywara@arm.com> wrote:
>>
>> In recent Allwinner SoCs the first USB host controller (HCI0) shares
>> the first PHY with the MUSB controller. Probably to make this sharing
>> work, we were avoiding to declare this in the DT. This has two
>> shortcomings:
>> - U-Boot (which uses the same .dts) cannot use this port in host mode
>>   without a PHY linked, so we were loosing one USB port there.
>> - It requires the MUSB driver to be enabled and loaded, although we
>>   don't actually use it.
>>
>> To avoid those issues, let's add this PHY link to the A64 and H6 .dtsi
>> files. After all PHY port 0 *is* connected to HCI0, so we should describe
>> it as this. Remove the part from the boards which were already doing
>> that.
>>
>> This makes it work in U-Boot, also improves compatiblity when no MUSB
>> driver is loaded (for instance in distribution installers).
>>
>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>> ---
>>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 4 ----
>>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi         | 4 ++++
>>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi          | 4 ++++
> 
> It would be better if the H6 parts were separated out.

Sure.

> 
> Please also add a fixes tag, which helps with backporting.

The whole concept of DT backports raises some eyebrows here, but it's
surely easy enough to do.

Thanks,
Andre.

> 
>>  3 files changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> index 896f34fd9fc3..d07cf05549c3 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
>> @@ -126,8 +126,6 @@
>>  };
>>
>>  &ehci0 {
>> -       phys = <&usbphy 0>;
>> -       phy-names = "usb";
>>         status = "okay";
>>  };
>>
>> @@ -177,8 +175,6 @@
>>  };
>>
>>  &ohci0 {
>> -       phys = <&usbphy 0>;
>> -       phy-names = "usb";
>>         status = "okay";
>>  };
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>> index 51cc30e84e26..19e9b8ca8432 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>> @@ -593,6 +593,8 @@
>>                                  <&ccu CLK_USB_OHCI0>;
>>                         resets = <&ccu RST_BUS_OHCI0>,
>>                                  <&ccu RST_BUS_EHCI0>;
>> +                       phys = <&usbphy 0>;
>> +                       phy-names = "usb";
>>                         status = "disabled";
>>                 };
>>
>> @@ -603,6 +605,8 @@
>>                         clocks = <&ccu CLK_BUS_OHCI0>,
>>                                  <&ccu CLK_USB_OHCI0>;
>>                         resets = <&ccu RST_BUS_OHCI0>;
>> +                       phys = <&usbphy 0>;
>> +                       phy-names = "usb";
>>                         status = "disabled";
>>                 };
>>
>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
>> index 8a62a9fbe347..f593cfeaecc9 100644
>> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
>> @@ -680,6 +680,8 @@
>>                                  <&ccu CLK_USB_OHCI0>;
>>                         resets = <&ccu RST_BUS_OHCI0>,
>>                                  <&ccu RST_BUS_EHCI0>;
>> +                       phys = <&usb2phy 0>;
>> +                       phy-names = "usb";
>>                         status = "disabled";
>>                 };
>>
>> @@ -690,6 +692,8 @@
>>                         clocks = <&ccu CLK_BUS_OHCI0>,
>>                                  <&ccu CLK_USB_OHCI0>;
>>                         resets = <&ccu RST_BUS_OHCI0>;
>> +                       phys = <&usb2phy 0>;
>> +                       phy-names = "usb";
>>                         status = "disabled";
>>                 };
>>
>> --
>> 2.17.5
>>
>> --
>> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
>> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20210106150525.15403-2-andre.przywara%40arm.com.

