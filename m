Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9073B45FC67
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 04:41:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352097AbhK0DoZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 22:44:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351826AbhK0DmY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 22:42:24 -0500
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com [IPv6:2607:f8b0:4864:20::936])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB949C08ECAA
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 18:34:18 -0800 (PST)
Received: by mail-ua1-x936.google.com with SMTP id p2so22012864uad.11
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 18:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dpQGXJhVIwX0gwIpTzFahdNafoYQEESgJnvmgOoG9fg=;
        b=kAlKlfDrql3rvtriijNM6bBE/407Nc+wmCu55KsL1ISPV2OXzkPLNV35VyfCCmCfZ1
         N/6fA42FPZwSyv4MV4G1/mMjs+3djIL2Eswbc56uYcKIGgycamvS4PKzQ3Q0kHS17bG9
         GZQtqIcumi6UhFMzpp+7UOgogJVh1CYL1N0Uc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dpQGXJhVIwX0gwIpTzFahdNafoYQEESgJnvmgOoG9fg=;
        b=4tdzXXfV++o14f7Y4H0raeUgjISiZfAswi4TFnpm/mw3BRewwsFE7ct33lAT/Yvpk7
         5hkQWyyi3r+jk0dmD7zTuRiVemK7TqgvNcE2lzUfGn+4v2pPhWZO/As3Khk/EFmRrNKh
         2weSQAHrtYCNBaAA3yiOC7BLKYcWiWuUGrbjfQfULXlWUdtwfdhMDMNFJXcCZQwlDCPz
         dAJZEVz3bRUnSfmKX6O7/e9macvVveq9v5UsQKwlVM18XS0++Nbv0IMcK1qmRA3KeuJI
         a6ZVEgjyzMnmMS0Taev+CBBJxiqf0ADXYlUl526twpioc1wW3Qf1NAc03IY7WVjZNxIt
         fwIg==
X-Gm-Message-State: AOAM533lMAqPV0JfmHWB1UUAZdGyT5XS2aV0I3er9g5bGY2B8PWvvQD5
        sUVJEvKdfnG3ezyK7gYUmHapDYgcauQ+aFDw75CUEw==
X-Google-Smtp-Source: ABdhPJxOk7lokQuNKrZuS0620+Eh3b5Ej+MJYQIMJJQybsdScOLDP6Y+hsCCAZyRQwEV/6ymjzeyyPb0lrUsYy55Jeo=
X-Received: by 2002:a05:6102:389:: with SMTP id m9mr22018476vsq.43.1637980457972;
 Fri, 26 Nov 2021 18:34:17 -0800 (PST)
MIME-Version: 1.0
References: <20211126202144.72936-1-romain.perier@gmail.com> <20211126202144.72936-7-romain.perier@gmail.com>
In-Reply-To: <20211126202144.72936-7-romain.perier@gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sat, 27 Nov 2021 11:34:07 +0900
Message-ID: <CAFr9PXmVkcxFUAg-Z11hu5vqXJm7b8=DGJ_hnwkONhnEW_GdGw@mail.gmail.com>
Subject: Re: [PATCH 5/5] ARM: dts: mstar: Switch to compatible
 "mstar,ssd20xd-timer" on ssd20xd
To:     Romain Perier <romain.perier@gmail.com>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Romain,

On Sat, 27 Nov 2021 at 05:22, Romain Perier <romain.perier@gmail.com> wrote:
>
> This defines the real oscillators as input of timer1 and timer2 and
> switch to "mstar,ssd20xd-timer".
>
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> ---
>  .../arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi b/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
> index 6f067da61ba3..6ff1f02e00a0 100644
> --- a/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
> +++ b/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
> @@ -6,6 +6,14 @@
>
>  #include "mstar-infinity2m.dtsi"
>
> +/ {
> +       xtal_timer: timer_xtal {
> +               #clock-cells = <0>;
> +               compatible = "fixed-clock";
> +               clock-frequency = <432000000>;
> +       };
> +};

mm I think xtal is a bit confusing here. This isn't an external
crystal but a fixed clock because we can't find where the clock is
coming from yet.
So maybe this should be s/xtal/clk/ or something?
Maybe a comment about why we need this like "A header in the vendor
kernel says the timers clk comes from XIU clock but we don't know
what/where XIU clock is yet".

>  &gpio {
>         compatible = "sstar,ssd20xd-gpio";
>         status = "okay";
> @@ -15,3 +23,13 @@ &smpctrl {
>         compatible = "sstar,ssd201-smpctrl", "mstar,smpctrl";
>         status = "okay";
>  };
> +
> +&timer1 {
> +       compatible = "mstar,ssd20xd-timer";
> +       clocks = <&xtal_timer>;
> +};

I think we should do this for timer0 too. As the below hunk in the
driver will change the clock divider (For others reading this: The
boot ROM in the chip sets a divider for timer0 to get something ~12MHz
to stay compatible with their u-boot that expects 12MHz)) and timer0
will have the right clock rate instead of the roughly 12MHz but not
really 12MHz frequency it has from boot and we don't need to rely on
the divider value for timer0 being correct on boot.

+       if (of_device_is_compatible(np, "mstar,ssd20xd-timer")) {
+               to->of_clk.rate = clk_get_rate(to->of_clk.clk) /
MSC313E_CLK_DIVIDER;
+               to->of_clk.period = DIV_ROUND_UP(to->of_clk.rate, HZ);
+               writew(MSC313E_CLK_DIVIDER - 1, timer_of_base(to) +
MSC313E_REG_TIMER_DIVIDE);
+       }
+

Cheers,

Daniel
