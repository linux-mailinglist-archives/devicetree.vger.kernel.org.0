Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDAEC25690E
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 18:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728350AbgH2Qbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 12:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728310AbgH2Qbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 12:31:44 -0400
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com [IPv6:2607:f8b0:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66014C061236
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 09:31:43 -0700 (PDT)
Received: by mail-il1-x141.google.com with SMTP id 16so1004270ill.6
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 09:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AOIgbXYhFqh+LPpGm+XLLRjfV0Rb6uHXwqnkzMA+His=;
        b=LXsZx1v3CRuC0wctQVJMADqLdVHkquZq19f84W0LUL5qiFx7WYDIZ93glwv0hDZNra
         hP+DLXCylDj5PZO9+zFzsqcB7/vh5kUnqcLgNKJCTjf+OReG0RhBp0dD4GTau/YikwIk
         aTkvbcKzUmgKRvbSHqa5z+ccU4WMDgbk9C5TWTOc000Z5koZfYRYv2VCi1pYpSNAluhh
         h2Tf44VFmW0dL3m+qZ/5iFRH+pm/dyErPOHg/QbOKVrPe6CC1RwUPLNXbMW/aBv6y70f
         +bUTrI0KqmljI5bx0iuzyVnxOLkDLbdySZ6rF3Pv4gAAhvdJ05IITiMQQHMWj9pTiuB9
         NNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AOIgbXYhFqh+LPpGm+XLLRjfV0Rb6uHXwqnkzMA+His=;
        b=B+9GtRLjDO+euvj+m587O9Tbz4NmpR9qPMJIVb3zBKwX/B5RWhb7uumDWK9CKC2NM3
         ZxjlHDk2KHpKP7/guaMjvYo8YGPRqiwfMKSA3T9r20L69MsCCPQ91i2zAFEf7et+HUYl
         fMmT9cfWekPL8F14Zy60/uMNXXLkiCStdTyJYYwgdccrASAg0eiQAq/JLFv07L9V0tN/
         MTvrtRfDX8cUmeyQgmwvuzNsJtQlQwDxiiYDdHQfFEjzq2fH8Z+qEejZalN1UPzyk7T2
         1K6avaRm/94hjA777l8/OR6gYQG+jAABMvJj2+0AWC2HG8f3RmYZ21cWnx3/xgcihXPw
         X6qA==
X-Gm-Message-State: AOAM530Bda25jgHMJRa1lP9jEOUTb5qnzFHEAL5VX/k6ps5RZ7e9i2NZ
        srgIM6Kop2CBjkqY5hx2lfOX9pv1Ooh7vi1DDvc=
X-Google-Smtp-Source: ABdhPJw9j6ezLGJLeEbcjU8uodUQSarNQodUMHNLN1l+Np/0GoLfqLqg8PEaWIDoL7vF0hLRv+k4/XtMtu+k9isQIjQ=
X-Received: by 2002:a92:498a:: with SMTP id k10mr3017896ilg.246.1598718701594;
 Sat, 29 Aug 2020 09:31:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200820121323.564-1-linux.amoon@gmail.com> <20200820121323.564-2-linux.amoon@gmail.com>
 <7hlfi9xgch.fsf@baylibre.com> <CANAwSgTZ23jFPAO46vRg1Dx_Bzi=4Bg6KHE0ozLQGky4p_fgKQ@mail.gmail.com>
 <CANAwSgQLnqDnuQvLv4cvaeTPeBW=H_g5F2aaNue_hb4nKLdovg@mail.gmail.com>
 <f7e6ce5f-02b0-065b-ffcf-2826159f926a@baylibre.com> <1j7dto3ylq.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgQ1Miu73hfdK+cgL3howpekn2xj_5qwGasQZwtQpSGj5Q@mail.gmail.com>
 <1j4koq4x38.fsf@starbuckisacylon.baylibre.com> <CANAwSgTWnHXRFRUrbdCph+eBxL2PNXe6Q4aTXxEU32i7dGS=dw@mail.gmail.com>
In-Reply-To: <CANAwSgTWnHXRFRUrbdCph+eBxL2PNXe6Q4aTXxEU32i7dGS=dw@mail.gmail.com>
From:   Anand Moon <linux.amoon@gmail.com>
Date:   Sat, 29 Aug 2020 22:01:29 +0530
Message-ID: <CANAwSgQV7_4VdGRMgJDMjPFvOS3Nabkqbf2ucE5vqo6zrhxPDw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi All,

On Wed, 26 Aug 2020 at 12:29, Anand Moon <linux.amoon@gmail.com> wrote:
>
> hi Jerome
>
> On Tue, 25 Aug 2020 at 20:00, Jerome Brunet <jbrunet@baylibre.com> wrote:
> >
> >
> > On Tue 25 Aug 2020 at 11:01, Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > > Hi Jerome
> > >
> > > On Mon, 24 Aug 2020 at 20:00, Jerome Brunet <jbrunet@baylibre.com> wrote:
> > >>
> > >>
> > >> On Mon 24 Aug 2020 at 15:50, Neil Armstrong <narmstrong@baylibre.com> wrote:
> > >>
> > >> > On 24/08/2020 15:41, Anand Moon wrote:
> > >> >> hi All,
> > >> >>
> > >> >> On Fri, 21 Aug 2020 at 10:13, Anand Moon <linux.amoon@gmail.com> wrote:
> > >> >>>
> > >> >>> Hi Kevin,
> > >> >>>
> > >> >>> Thanks for your review comments.
> > >> >>>
> > >> >>> On Fri, 21 Aug 2020 at 01:03, Kevin Hilman <khilman@baylibre.com> wrote:
> > >> >>>>
> > >> >>>> Anand Moon <linux.amoon@gmail.com> writes:
> > >> >>>>
> > >> >>>>> Enable RTC PCF8563 node on Odroid-N2 SBC, In order to
> > >> >>>>> support the RTC wakealarm feature for suspend and resume.
> > >> >>>>> Also assign an alias to the pcf8563 to rtc0 and meson-vrtc to rtc1
> > >> >>>>> timer device to prevent it being assigned to /dev/rtc0
> > >> >>>>> which disto userspace tools assume is a clock device.
> > >> >>>>>
> > >> >>>>> Cc: Neil Armstrong <narmstrong@baylibre.com>
> > >> >>>>> Cc: Kevin Hilman <khilman@baylibre.com>
> > >> >>>>> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> > >> >>>>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > >> >>>>> ---
> > >> >>>>> Changes V3
> > >> >>>>> --Drop the INI GPIOAO.BIT7 pinctrl.
> > >> >>>>
> > >> >>>> Why did you drop this GPIO?  Isn't this the GPIO that the RTC uses to
> > >> >>>> wakeup the system?  If so, this should be included as part of this
> > >> >>>> patch.
> > >> >>>>
> > >> >>>> It probably still works because the bootloader configures this GPIO as
> > >> >>>> input, but the kernel should not rely on the booloader for that, so
> > >> >>>> please include as part of this patch.
> > >> >>>>
> > >> >>>
> > >> >>> Ok I will figure out the correct pinctrl need for this settings.
> > >> >>> looking into the Odroid N2 schematics.
> > >> >>>
> > >> >>
> > >> >> I am trying to map the RTC INT pinctrl, ie RTC INT GPIOAO.BIT7.
> > >> >
> > >> >
> > >> > Simply add:
> > >> >
> > >> > interrupt-parent = <&gpio_intc>;
> > >> > interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> > >> >
> > >> > to reflect the interrupt connection.
> > >
> > > I have tried this setting, but it is not working.
> > >
> > > [alarm@archl-on2e ~]$ dmesg| grep rtc
> > > [    5.378002] meson-vrtc ff8000a8.rtc: registered as rtc1
> > > [    5.942307] rtc-pcf8563 0-0051: pcf8563_write_block_data: err=-110
> > > addr=0e, data=03
> > > [    5.942316] rtc-pcf8563 0-0051: pcf8563_probe: write error
> > > [    5.945983] rtc-pcf8563: probe of 0-0051 failed with error -5
> > >
> >
> > -110 is timeout ... either you i2c bus is broken and you device is not
> > at 0x51. In both case, it has nothing to do with the interrupt configuration
> >
> I have check the I2C bus on the device for rtc and it return correctly.
>
> $ sudo i2cdetect -l
> i2c-1   i2c             DesignWare HDMI                         I2C adapter
> i2c-0   i2c             Meson I2C adapter                       I2C adapter
> $
> $ sudo i2cdetect -y -r 0
>      0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> 00:          -- -- -- -- -- -- -- -- -- -- -- -- --
> 10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 50: -- UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 70: -- -- -- -- -- -- -- --
>
> > >
> > >> >
> > >> > No need to setup pinctrl here since the GPIO input is always connected
> > >> > to the gpio irq generator whatever pinctrl mode is set.
> > >>
> > >> It is actually better to setup pinctrl. Yes the irq controller can work
> > >> whatever the pin setup but if an output function is active it can mess with
> > >> what the irq controller gets.
> > >>
> > >> Think about applying/removing bias if necessary too.
> > >>
> > >
> > > Ok, I am trying to add a new pinctrl configuration for
> > > TSIN_A_DIN0 //  TDMB_FS // TDMB_SLV_FS
> > > But it's still not working at my end.
> >
> > Either you are quite confused when it comes to pinctrl or I am.
>
> Basically I dont want to keep repeating silly mistakes.
>
> > TSIN and TDM have nothing to do with an i2c RTC.
>
> Yes I understand this clearly, that's why I have dropped the
> RTC INT gpio pinctrl settings.Without this setting RTC driver
> works fine and their is no issue rtcwakeup during suspend
> and resume in my testing.
>

Just want to clear my confusion on RTC INT gpio setting is not needed.
I did not find any other example to support this changes.
So I have enable the debug logs on rtc-pcf8563.c with this current
patch at my end.

[0] https://pastebin.com/F2UA665H

-Best Regards
Anand
