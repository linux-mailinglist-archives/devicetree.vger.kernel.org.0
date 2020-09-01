Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3E125993F
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 18:38:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732097AbgIAQhD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 12:37:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730172AbgIAP3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Sep 2020 11:29:24 -0400
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DB6DC061244
        for <devicetree@vger.kernel.org>; Tue,  1 Sep 2020 08:29:24 -0700 (PDT)
Received: by mail-io1-xd42.google.com with SMTP id m23so1670524iol.8
        for <devicetree@vger.kernel.org>; Tue, 01 Sep 2020 08:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pHxjuSV9NUzS/wJaT9o8NUKofpfERj3ovhpXmxzBlOw=;
        b=MhxT9fINlZVmPLEYgL0EIrm38OZ2GJ+bOJdK4EkEBk8uVXVoxNzKWKSRCnZ+hQTk++
         kC2jXW0z86WBrXhnlDoOz6SPqwG15swO9G8pzOXo1JS0VQzVfb0MPmOqDe5avkJRPu1s
         Qd70DrCCdUzFDqxK3jbAZMkA0c4TpcPh+YZjc6MdNTVfGyoh5q9KBzRxN5QOKoveRQOT
         tGwMQo5B3E3+LJmNWjpETuZvMkS5bNiKw+VDud3h+7VjzRQESczpmXHqS9e81c5ySLam
         GsAq/VyViCPpfBn44P3xdUJvYjxeDCOdNiObeEq+YIDOMbajpcqPktzyZbEGsCMnNMSi
         MtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pHxjuSV9NUzS/wJaT9o8NUKofpfERj3ovhpXmxzBlOw=;
        b=Cf45FxY7aUQWmZAnlPiVFKBss1wHqxhyccEVRXIRWd+S8z0vbhjjXczZ0FdPowxVPe
         /0q2Z4GlWXM1rMUQzlMIQHk4PteIPTvNmIhdgRfxSclLcJhY4hsAWlCXX3eEi6MkP49V
         XPyf89lGUPEU3BOBYzTno4gm7F2nrIbO1VVVqlSpYG9sBACaVpZfWcBrNqHjCFuYvzRv
         EMTQKwAE6Bv2Gjvta3jVELGDAGYE07DXOnkQktGFV59mjyS72nHiwsL25gJQLgSkNl57
         au1UNjXVEwkt1cGlxTmZmEu2+yrAvrpm15EGRFAkHzIEvFrdtEOoIvRw/RcfyiFCnm/M
         6FnQ==
X-Gm-Message-State: AOAM531jhIeWbBLJ99oG6Bb676ViiWsumJZoDnAtMqRemefpXhTmm+WW
        hICL0m2YJD+0HJ/JW3Iu27sZ396bi72tevN37ZMMIfeYKnYycw==
X-Google-Smtp-Source: ABdhPJyFdViTJqc5756mey3f2srm+eK8JehZ/mane868jiiGbeUQEZx6IFVHx/nprrNwJ/g3cqElGynC47LDYIBKVrs=
X-Received: by 2002:a02:3f2d:: with SMTP id d45mr1920165jaa.120.1598974163299;
 Tue, 01 Sep 2020 08:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200831075911.434-1-linux.amoon@gmail.com> <20200831075911.434-2-linux.amoon@gmail.com>
 <7hpn767f6x.fsf@baylibre.com> <CANAwSgSjSU3wrgSkg+vE1u7JZKr3-8KHXHbMarvhSGKHXR0Khw@mail.gmail.com>
 <d944e388-8112-4490-bc6d-d7bfc5ee0762@baylibre.com>
In-Reply-To: <d944e388-8112-4490-bc6d-d7bfc5ee0762@baylibre.com>
From:   Anand Moon <linux.amoon@gmail.com>
Date:   Tue, 1 Sep 2020 20:59:12 +0530
Message-ID: <CANAwSgRyV_Sz3GbLZ__-Ed8nhw5WCbChULVX8hhFLmgSs1tb-A@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Neil,

On Tue, 1 Sep 2020 at 18:42, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 01/09/2020 12:14, Anand Moon wrote:
> > Hi Kevin,
> >
> > Thanks for your review comments and testing.
> >
> > On Tue, 1 Sep 2020 at 01:36, Kevin Hilman <khilman@baylibre.com> wrote:
> >>
> >> Anand Moon <linux.amoon@gmail.com> writes:
> >>
> >>> Enable RTC PCF8563 node on Odroid-N2 SBC, In order to
> >>> support the RTC wakealarm feature for suspend and resume.
> >>> Also assign an alias to the pcf8563 to rtc0 and meson-vrtc to rtc1
> >>> timer device to prevent it being assigned to /dev/rtc0
> >>> which disto userspace tools assume is a clock device.
> >>>
> >>> Cc: Neil Armstrong <narmstrong@baylibre.com>
> >>> Cc: Kevin Hilman <khilman@baylibre.com>
> >>> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> >>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> >>> ---
> >>> Changes v4
> >>> --Add gpio interrupt for GPIOAO.BIT7 as suggested by Neil.
> >>> Changes v3
> >>> --Drop the INI GPIOAO.BIT7 pinctrl.
> >>> --Added missing RTC alias so that rtc get assigned correcly,
> >>>   as suggested by Chris Hewitt.
> >>> changes v2
> >>> --Fix the missing INT (GPIOAO.BIT7) pinctrl.
> >>> --Fix the missing rtcwakeup.
> >>> --Drop the clock not required clock property by the PCF8563 driver.
> >>> ---
> >>>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts   | 17 +++++++++++++++++
> >>>  1 file changed, 17 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> >>> index 34fffa6d859d..3e2aaa6f48e5 100644
> >>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> >>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> >>> @@ -19,6 +19,8 @@ / {
> >>>       aliases {
> >>>               serial0 = &uart_AO;
> >>>               ethernet0 = &ethmac;
> >>> +             rtc0 = &rtc0;
> >>> +             rtc1 = &vrtc;
> >>>       };
> >>>
> >>>       dioo2133: audio-amplifier-0 {
> >>> @@ -477,6 +479,21 @@ hdmi_tx_tmds_out: endpoint {
> >>>       };
> >>>  };
> >>>
> >>> +&i2c3 {
> >>> +     pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> >>> +     pinctrl-names = "default";
> >>> +     status = "okay";
> >>> +
> >>> +     rtc0: rtc@51 {
> >>> +             reg = <0x51>;
> >>> +             compatible = "nxp,pcf8563";
> >>> +             /* RTC INT */
> >>> +             interrupts = <GPIOAO_7 IRQ_TYPE_LEVEL_LOW>;
> >>> +             interrupt-parent = <&gpio_intc>;
> >>> +             wakeup-source;
> >>> +     };
> >>> +};
> >>
> >> There's still no pinctrl definition for the GPIO pin being used as the
> >> IRQ.  It looks like you discussed this with Martin and he pointed you in
> >> the right direction in your v3 series, but I don't see it in this
> >> patch.
> >>
> > Yes I had followed the approach suggested by Martin on previous email and IRC.
> > but it really did not work out for me in the testing.
> >
> > rtc-pcf8563 driver does not handle such gpio configuration.
> > so the rtc probe will fail if we add gpio pinctl to *pinctrl-0*.
>
> No need for multiple pinctrl-*, simple add a new pinctrl to the rtc node like:
>
>
> @@ -18,6 +18,8 @@
>         aliases {
>                 serial0 = &uart_AO;
>                 ethernet0 = &ethmac;
> +               rtc0 = &rtc0;
> +               rtc1 = &vrtc;
>         };
>
>         chosen {
> @@ -266,6 +268,17 @@
>         status = "okay";
>  };
>
> +&ao_pinctrl {
> +       rtc_int_pins: rtc-int {
> +               mux {
> +                       groups = "GPIOAO_7";
> +                       function = "gpio_aobus";
> +                       bias-disable;
> +                       output-disable;
> +               };
> +       };
> +};
> +
>  &cec_AO {
>         pinctrl-0 = <&cec_ao_a_h_pins>;
>         pinctrl-names = "default";
> @@ -391,6 +404,23 @@
>         };
>  };
>
> +&i2c3 {
> +       pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +
> +       rtc0: rtc@51 {
> +             pinctrl-0 = <&rtc_int_pins>;
> +             pinctrl-names = "default";
> +             reg = <0x51>;
> +             compatible = "nxp,pcf8563";
> +             /* RTC INT */
> +             interrupts = <GPIOAO_7 IRQ_TYPE_LEVEL_LOW>;
> +             interrupt-parent = <&gpio_intc>;
> +             wakeup-source;
> +       };
> +};
> +
>  &ir {
>         status = "okay";
>         pinctrl-0 = <&remote_input_ao_pins>;
>
> DISCALIMER: not built or run tested
>
> Neil
>

I have built this and tested, but still this gpio pin

# cat /sys/kernel/debug/gpio
gpiochip1: GPIOs 412-426, parent:
platform/ff800000.sys-ctrl:pinctrl@14, aobus-banks:
 gpio-414 (                    |enable              ) out lo
 gpio-420 (                    |regulator-tflash_vdd) out hi
 gpio-421 (                    |TF_IO               ) out lo
 gpio-423 (                    |n2:blue             ) out lo

gpiochip0: GPIOs 427-511, parent: platform/ff634400.bus:pinctrl@40,
periphs-banks:
 gpio-442 (                    |PHY reset           ) out hi ACTIVE LOW
 gpio-447 (                    |usb-hub-reset       ) out hi
 gpio-448 (                    |regulator-hub_5v    ) out hi
 gpio-449 (                    |regulator-usb_pwr_en) out lo
 gpio-464 (                    |reset               ) out hi ACTIVE LOW
 gpio-474 (                    |cd                  ) in  lo ACTIVE LOW

This change fails on *u-boot Hardkernel*
There is some timing issue, some time it wakes up and
some time it gets stuck.

# rtcwake -d /dev/rtc0 -s 10
rtcwake: wakeup from "mem" using /dev/rtc0 at Tue Sep  1 14:05:47 2020
[   35.565415] PM: suspend entry (deep)
[   35.565589] Filesystems sync: 0.000 seconds
[   72.670162] cfg80211: failed to load regulatory.db
[   72.670164] Freezing user space processes ... (elapsed 0.001 seconds) done.
[   72.676235] OOM killer disabled.
[   72.679418] Freezing remaining freezable tasks ... (elapsed 0.001
seconds) done.
[   72.688636] meson8b-dwmac ff3f0000.ethernet eth0: Link is Down
[   72.709953] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[   72.830228] Disabling non-boot CPUs ...
[   72.831157] CPU1: shutdown
[   72.832204] psci: CPU1 killed (polled 0 ms)
[   72.837376] CPU2: shutdown
[   72.837974] psci: CPU2 killed (polled 0 ms)
[   72.843880] CPU3: shutdown
[   72.844742] psci: CPU3 killed (polled 0 ms)
[   72.850925] CPU4: shutdown
[   72.851557] psci: CPU4 killed (polled 0 ms)
[   72.858185] CPU5: shutdown
[   72.858372] psci: CPU5 killed (polled 0 ms)
bl30 get wakeup sources!
process command 00000006
bl30 enter suspend!
Little core clk suspend rate 66700000
Big core clk suspend rate 24000000
store restore gp0 pll
suspend_counter: 1
Enter ddr suspend
ddr suspend time: 17us
alarm=0S
process command 00000001
cec ver:2018/04/19
CEC cfg:0x0000
WAKEUP GPIO cfg:0x00000000
use vddee new table!
kern log_addr:0x00
cec T: 00
err: tx not finish flag
cec reset
Set cec pinmux:0x11
Set cec log_addr:0x10,ADDR0:10
customer pwrkeys for IR is NULL, use defaults!

Best Regards
-Anand
