Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54B1F258C85
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 12:14:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725949AbgIAKOl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 06:14:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgIAKOk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Sep 2020 06:14:40 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05A61C061244
        for <devicetree@vger.kernel.org>; Tue,  1 Sep 2020 03:14:40 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id j2so611831ioj.7
        for <devicetree@vger.kernel.org>; Tue, 01 Sep 2020 03:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bWjnRI+ku2agFF+13aMRdMJ5ObU/dgzO9wVkb/3N7U4=;
        b=HYg2GFCVvW8PwUeJHx46EQu4mMRalVGy0pmGeome9OpxX+p4fs0siqrPD8Z7YGSeVA
         M0Z6sfbxdX1fwy168Atp0HNgMT5UykVWLNLsrVFl0PH29rvNLyqCnIdx7O47sCnYf2ha
         /PF7VL48Z8cUVnGQgyGZ7jv7BpwDGU3SwOfZ2+vvPkTIiODNR4U4uI+nH+d/SXoQ+DB6
         LOhQfeefAFohlMHvCwatI12/oF9D1b44LkJ5BEF0Mv7p1j+epDr+5PENj8nXdHoPd1Uc
         f+x5ZQiSzSLqUxcW1VPLJV30T/JKjzz5zWtKvW3h1dtKYx41IC+aT4veOXG/ZF2APFxy
         u6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bWjnRI+ku2agFF+13aMRdMJ5ObU/dgzO9wVkb/3N7U4=;
        b=R8vMrnBBG1vSHsSRhFYjwibpd7b6QRX0Im1Iq5pYcADADRxvxS91quh6CwXeDwKlDs
         IPtZOlk0ok5IqkXx12jkEam/gkvNHPxGl2b6Ue4FIg6WCoLMi5IVywgziz9HDG6AC8uk
         rX/DvAQMxgcbOJwPmEosgi0aQJXuNw72U2aR/ElE5YYhFr8lwrkqQH5aqCtj93k/JV8u
         kekWN61QQ/Wz69E1KFHhBqFxTUypliILhaD4DkduSDSo2Y7P4/kpu13lJR6C9j6lkYTj
         r2XCP5dzvUctLTIDer3d2n2/kvduPSSZFViLmBEld9VQgBdMh0P67PrNNdEaPJPRnDjN
         uYIg==
X-Gm-Message-State: AOAM533eQCTij3ZMj8lfQ4mOde32EQ99wWY1l5m16Jnp2YuIHpLLAKuj
        CR0/xfk8Wph8Xa52vjYAUDF8o2g9Mc8BKqpb0QY=
X-Google-Smtp-Source: ABdhPJxzmq8Wt1eWRxNEqOsg20gMuThCHXCsQZsNqgBBOBbPQFydByVNXYsLIf+X8BpSPYBelL0DIfF9vEwJaEp5d9E=
X-Received: by 2002:a02:3f16:: with SMTP id d22mr674459jaa.30.1598955279256;
 Tue, 01 Sep 2020 03:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200831075911.434-1-linux.amoon@gmail.com> <20200831075911.434-2-linux.amoon@gmail.com>
 <7hpn767f6x.fsf@baylibre.com>
In-Reply-To: <7hpn767f6x.fsf@baylibre.com>
From:   Anand Moon <linux.amoon@gmail.com>
Date:   Tue, 1 Sep 2020 15:44:27 +0530
Message-ID: <CANAwSgSjSU3wrgSkg+vE1u7JZKr3-8KHXHbMarvhSGKHXR0Khw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kevin,

Thanks for your review comments and testing.

On Tue, 1 Sep 2020 at 01:36, Kevin Hilman <khilman@baylibre.com> wrote:
>
> Anand Moon <linux.amoon@gmail.com> writes:
>
> > Enable RTC PCF8563 node on Odroid-N2 SBC, In order to
> > support the RTC wakealarm feature for suspend and resume.
> > Also assign an alias to the pcf8563 to rtc0 and meson-vrtc to rtc1
> > timer device to prevent it being assigned to /dev/rtc0
> > which disto userspace tools assume is a clock device.
> >
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Kevin Hilman <khilman@baylibre.com>
> > Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > Changes v4
> > --Add gpio interrupt for GPIOAO.BIT7 as suggested by Neil.
> > Changes v3
> > --Drop the INI GPIOAO.BIT7 pinctrl.
> > --Added missing RTC alias so that rtc get assigned correcly,
> >   as suggested by Chris Hewitt.
> > changes v2
> > --Fix the missing INT (GPIOAO.BIT7) pinctrl.
> > --Fix the missing rtcwakeup.
> > --Drop the clock not required clock property by the PCF8563 driver.
> > ---
> >  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts   | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > index 34fffa6d859d..3e2aaa6f48e5 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > @@ -19,6 +19,8 @@ / {
> >       aliases {
> >               serial0 = &uart_AO;
> >               ethernet0 = &ethmac;
> > +             rtc0 = &rtc0;
> > +             rtc1 = &vrtc;
> >       };
> >
> >       dioo2133: audio-amplifier-0 {
> > @@ -477,6 +479,21 @@ hdmi_tx_tmds_out: endpoint {
> >       };
> >  };
> >
> > +&i2c3 {
> > +     pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> > +     pinctrl-names = "default";
> > +     status = "okay";
> > +
> > +     rtc0: rtc@51 {
> > +             reg = <0x51>;
> > +             compatible = "nxp,pcf8563";
> > +             /* RTC INT */
> > +             interrupts = <GPIOAO_7 IRQ_TYPE_LEVEL_LOW>;
> > +             interrupt-parent = <&gpio_intc>;
> > +             wakeup-source;
> > +     };
> > +};
>
> There's still no pinctrl definition for the GPIO pin being used as the
> IRQ.  It looks like you discussed this with Martin and he pointed you in
> the right direction in your v3 series, but I don't see it in this
> patch.
>
Yes I had followed the approach suggested by Martin on previous email and IRC.
but it really did not work out for me in the testing.

rtc-pcf8563 driver does not handle such gpio configuration.
so the rtc probe will fail if we add gpio pinctl to *pinctrl-0*.

So there could be an internal way the wakeup gets triggered for the u-boot.
_This is the reason I have opted for Neil's suggestion._

> You can see the GPIOs that the kernel knows about using the GPIO
> debugfs.  For example:
>

Yes I had already checked this /sys/kernel/debug/gpio
it's not reflecting at my end as well.

> / # cat /sys/kernel/debug/gpio
> gpiochip1: GPIOs 412-426, parent: platform/ff800000.sys-ctrl:pinctrl@14, aobus-banks:
>  gpio-414 (                    |enable              ) out lo
>  gpio-420 (                    |regulator-tflash_vdd) out hi
>  gpio-421 (                    |TF_IO               ) out lo
>  gpio-423 (                    |n2:blue             ) out lo
>
> gpiochip0: GPIOs 427-511, parent: platform/ff634400.bus:pinctrl@40, periphs-banks:
>  gpio-442 (                    |PHY reset           ) out hi ACTIVE LOW
>  gpio-447 (                    |usb-hub-reset       ) out hi
>  gpio-448 (                    |regulator-hub_5v    ) out hi
>  gpio-449 (                    |regulator-usb_pwr_en) out lo
>  gpio-464 (                    |reset               ) out hi ACTIVE LOW
>  gpio-474 (                    |cd                  ) in  lo ACTIVE LOW
>
>
> Also, I tested this on my odroid-n2, and it does not fully wakeup[1].
> At the end of the log, you can see the "resume rate" of the big and
> little cores, which suggests that the SoC has woken and trying to
> resume, but it never makes it back to the kernel.

I feel the RTC wakeup is handled by the u-boot bl30
since virtual RTC we pass the seconds as sleep
is reflected in the logs.

# rtcwake -d /dev/rtc1 -s 5 -m mem
...
bl30 get wakeup sources!
process command 00000006
bl30 enter suspend!
Little core clk suspend rate 1398000000
Big core clk suspend rate 24000000
store restore gp0 pll
suspend_counter: 1
Enter ddr suspend
ddr suspend time: 16us
*alarm=6S*
process command 00000001
GPIOA_11/13 off
cec ver:2018/04/19
CEC cfg:0x0000
WAKEUP GPIO cfg:0x00000000
...

>
> Could you be more specific with exactly what u-boot you're running
> (mainline version and Khadas version.)
>

On u-boot Mainline
U-Boot 2020.10-rc2-00133-g60d5402950-dirty (Aug 16 2020 - 20:25:26
+0530) odroid-n2

[0] https://pastebin.com/GGUM7k8Q

On u-boot Hardkernel
U-Boot 2015.01-10 (Dec 08 2019 - 14:54:07) Arch Linux ARM (Hardkernel U-boot)

[1] https://pastebin.com/WbHGFmH2

Note: Yes I have observed there is some off sync in sleep timeout.

> I'm running an older version of mainline u-boot:
> U-Boot 2019.07-rc3-00029-g47bebaa4a3-dirty (Jun 04 2019 - 17:16:32 +0200) odroid-n2
>
> Kevin
>

Yes I have observed this at my end on Hardkernel u-boot.
This message is because you have not sync the hwclock with the timezone.

# sudo hwclock -w -f /dev/rtc0
# sudo  hwclock --systohc

Once you sync with the timezone these messages are resolved.
>
> [1]
> / # dmesg |grep -i rtc
> [   14.799773] meson-vrtc ff8000a8.rtc: registered as rtc1
> [   14.871365] rtc-pcf8563 0-0051: low voltage detected, date/time is not reliable.
> [   14.871519] rtc-pcf8563 0-0051: registered as rtc0
> [   14.873536] rtc-pcf8563 0-0051: low voltage detected, date/time is not reliable.
> [   14.886474] rtc-pcf8563 0-0051: hctosys: unable to read the hardware clock
> / # rtcwake -d rtc0 -m mem -s5
> rtcwake: assuming RTC uses UTC ...
> rtcwake: wakeup from "mem" using rtc0 at Mon Aug 31 19:58:15 2020
> [  119.297633] PM: suspend entry (deep)
> [  119.297722] Filesystems sync: 0.000 seconds
> [  119.300330] Freezing user space processes ... (elapsed 0.003 seconds) done.
> [  119.306667] OOM killer disabled.
> [  119.309828] Freezing remaining freezable tasks ... (elapsed 0.001 seconds) done.
> [  119.317184] printk: Suspending console(s) (use no_console_suspend to debug)
> bl30 get wakeup sources!
> process command 00000006
> bl30 enter suspend!
> Little core clk suspend rate 1200000000
> Big core clk suspend rate 24000000
> store restore gp0 pll
> suspend_counter: 1
> Enter ddr suspend
> ddr suspend time: 17us
> alarm=0S
> process command 00000001
> cec ver:2018/04/19
> CEC cfg:0x0000
> WAKEUP GPIO cfg:0x00000000
> use vddee new table!
> WAKEUP GPIO FAIL - invalid key
> fffffe71
> use vddee new table!
> exit_reason:0x03
> Enter ddr resume
> ddr resume time: 125us
> store restore gp0 pll
> cfg15 3b00000
> cfg15 33b00000
> Little core clk resume rate 1200000000
> Big core clk resume rate 50000000
>
>

Best Regards
-Anand
