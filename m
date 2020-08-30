Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88A51256E08
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 15:12:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728761AbgH3NMJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 09:12:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726030AbgH3NMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 09:12:06 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA697C061573
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 06:12:06 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id b16so3433628ioj.4
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 06:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ky7RGqnB3nEYZuhDWZg3ymidYnH0V7KhM8TSpX/Q31U=;
        b=lztvxZTKxduMPYlVazEzxIzqqk9pYCp6sBPjtF5OzNRGvi+Wa2MEkJV465M6aACEF3
         ZRs/0mVTPoXzz4Ok6emO0yCasMjWolNviqOHwxK52APFuEZZqv7cAUY0T/JvYQ8lgxZ8
         wpQ7RqXfPC9BV13MJtt/W3RYkE6JhpRM/1XBURRGP3Jl50bmjDXsufUDmj6VeqJRmQbP
         GwVVBUO4cXRSEierZRu/NpdMelia0BYgCiuc0y3paj+1mBhzhBE4irxNt0nF1UIhWwqD
         +5ywRnz+Zj0JZCzJZfiA80kTh3SFdtAIohW0ztGvu/lKOOKthp4ZiQTES8szHml0ORne
         yt5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ky7RGqnB3nEYZuhDWZg3ymidYnH0V7KhM8TSpX/Q31U=;
        b=dVxQhOL5zdOTDuBQPgT2wnnKlg/b7Jezb5UlP/iGN7IlBCnwHNCWW+aKovRBreVAT2
         bB+tA6tjeYPvOFp0m5OcY6KaXOCFQ5mhklLPNXW2H5q8YDkQVQXd5jY6eS3So4RzOCaj
         9QV0oEGFyVJZqvIkYE1HNmP1BbHt7qvwrZZ7fEIyCn1/BDblBQROfkb+sah53Zk29FF2
         nD5IaW5pZHEeghqsXqMVzTlK0/XEbzwCNJ/AF1hSzk/PpDojdkXEQG3N4T6N0uPq9ywS
         iBkbooSxE7nSeBb7asFS13m0qiMD775bgEs3xOhm8ixSqyrH3II7IjiZUyn+9p0pDOQK
         OZuw==
X-Gm-Message-State: AOAM530m9B2t5RaXQbN+tcsy0z3gqYEl54Zvi/MWuKwK7YdHDe1gYEqb
        v1Yp9VdpNDgA6c2L7g1siemTGj9Xo995V6AvOkw=
X-Google-Smtp-Source: ABdhPJw5zO8vATsaTW2UhLmnknjkiNKOkPQUklYrvkX1WUjxsK/y1x2I2nsxtyiBiwFE2jBvuSrz0uwiNN6+CuuBj2A=
X-Received: by 2002:a02:730b:: with SMTP id y11mr8460860jab.126.1598793123756;
 Sun, 30 Aug 2020 06:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200820121323.564-1-linux.amoon@gmail.com> <20200820121323.564-2-linux.amoon@gmail.com>
 <7hlfi9xgch.fsf@baylibre.com> <CANAwSgTZ23jFPAO46vRg1Dx_Bzi=4Bg6KHE0ozLQGky4p_fgKQ@mail.gmail.com>
 <CANAwSgQLnqDnuQvLv4cvaeTPeBW=H_g5F2aaNue_hb4nKLdovg@mail.gmail.com>
 <f7e6ce5f-02b0-065b-ffcf-2826159f926a@baylibre.com> <1j7dto3ylq.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgQ1Miu73hfdK+cgL3howpekn2xj_5qwGasQZwtQpSGj5Q@mail.gmail.com>
 <1j4koq4x38.fsf@starbuckisacylon.baylibre.com> <CANAwSgTWnHXRFRUrbdCph+eBxL2PNXe6Q4aTXxEU32i7dGS=dw@mail.gmail.com>
 <CANAwSgQV7_4VdGRMgJDMjPFvOS3Nabkqbf2ucE5vqo6zrhxPDw@mail.gmail.com> <CAFBinCCEJJT_kfJ4qfTEz0R7Mo3ciCGDSw_MJYi_5PyNJA6x5w@mail.gmail.com>
In-Reply-To: <CAFBinCCEJJT_kfJ4qfTEz0R7Mo3ciCGDSw_MJYi_5PyNJA6x5w@mail.gmail.com>
From:   Anand Moon <linux.amoon@gmail.com>
Date:   Sun, 30 Aug 2020 18:41:52 +0530
Message-ID: <CANAwSgRV8y3Cc72CtppfJMPFKDSfpddzAKLeBGExn8G4OBVJ6g@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Martin,

On Sun, 30 Aug 2020 at 01:26, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Anand
>
> (I haven't re-read all of this discussion, so apologies if something
> in my reply doesn't make sense)
>
> On Sat, Aug 29, 2020 at 6:31 PM Anand Moon <linux.amoon@gmail.com> wrote:
> [...]
> > Just want to clear my confusion on RTC INT gpio setting is not needed.
> > I did not find any other example to support this changes.
> > So I have enable the debug logs on rtc-pcf8563.c with this current
> > patch at my end.
> my understanding is that your testing procedure is to simply use your
> original patch and see if rtc wake-up is working.
> since GPIOAO_7 is not explicitly mentioned in your testing procedure
> I'm assuming that you're not configuring it anywhere.
Yes...
> Kevin's concern is what happens when that GPIO is configured
> incorrectly (for example by some u-boot bug, firmware issue, ...). for
> example: have you tried to configure GPIOAO_7 in u-boot as output low
> pin and see if rtc wake-up is still working?
Yes I will check this later.

Meanwhile I have checked this feature with _mainline u-boot_ and
_odroid-n2 u-boot_
and the result is that rtc wakeup works.

>
> In your previous replies you mentioned various pin mux settings
> related to TSIN_A_DIN0 //  TDMB_FS // TDMB_SLV_FS
> I don't know how those are related to the RTC
> My suggestion is to look at
> arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi - it has a
> eth_phy_irq_pins definition and apply something similar on Odroid-N2
>

Thanks for your suggestion, I have given this a try see below.
But any new pinctrl setting leads to RTC probe failure.

# dmesg | grep rtc
[    5.308536] meson-vrtc ff8000a8.rtc: registered as rtc1
[    5.483978] rtc-pcf8563 0-0051: pcf8563_probe
[    5.487549] rtc-pcf8563 0-0051: pcf8563_write_block_data: err=-6
addr=0e, data=03
[    5.490116] rtc-pcf8563 0-0051: pcf8563_probe: write error
[    5.552763] rtc-pcf8563: probe of 0-0051 failed with error -5

------------------&------------------------------------
$ git diff arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 35a31cf181e2..dad54f8a947f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -206,6 +206,15 @@ vddao_3v3: regulator-vddao_3v3 {
                regulator-always-on;
        };

+       /* Make sure the rtc irq pin is properly configured as input */
+       rtc_irq_pins: rtc-pin-irq {
+               mux {
+                       groups = "GPIOAO_7";
+                       function = "gpio_periphs";
+                       bias-disable;
+               };
+       };
+
        hdmi-connector {
                compatible = "hdmi-connector";
                type = "a";
@@ -481,7 +490,8 @@ hdmi_tx_tmds_out: endpoint {

 &i2c3 {
        pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
-       pinctrl-names = "default";
+       pinctrl-1 = <&rtc_irq_pins>;
+       pinctrl-names = "default", "gpio_periphs";
        status = "okay";

        rtc0: rtc@51 {

-Anand
