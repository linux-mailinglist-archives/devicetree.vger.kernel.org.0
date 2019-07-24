Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 845C174187
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 00:38:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387650AbfGXWi0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 18:38:26 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:40091 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387405AbfGXWi0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 18:38:26 -0400
Received: by mail-pg1-f196.google.com with SMTP id w10so21927403pgj.7
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 15:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9Dc2qcjKZtC43VFkg+AkTg9oc60SQQXWdODT+iWj4Ig=;
        b=h7bxbA9onAD2dz2ar/lKtvI8U78LMFyUb0g0d+U6xZe0yA3oMMFnKOzblILDCft4YP
         RH3briYvP964xAXtME0s1rYg4P4VePZNvghmMiscYvXfL7PC8dwSHgZcNgfSwpbjRM4D
         rwM5CprkVXN1T0IA4M1iMetyWKchd7E6etbTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9Dc2qcjKZtC43VFkg+AkTg9oc60SQQXWdODT+iWj4Ig=;
        b=gH5qBiIdl7PBIIBtmD4Ur6fZuUiwz+MjFoITpqxOfZaDS/E+x1UBocUmjvgI7NIX4u
         F9UDtV7WOocsu9IZ4FWGv4E/5eZtaYeQx0JJpNUY5CJcLaXFPdHIDzMTGQ2J9tIBIjaJ
         8ItgIBlu2BVAEt1+Np/u0ZeLW7X5NK27Ll7s3MPdEHc/VuqHT4gg+oYgciN3k8W//wR3
         TVhhKOrviGGwaQvmC73Ae5KE761X9W75MxfZfhNHO46h5N6Dbars0GW/AXXnt2dGoEWj
         SgD+gWNAiJe6o1cc4/Aker69QcrCD8WGDIRUqGvVif0wmoJA2Md16YrxJmY0KL0oWDVB
         PHtA==
X-Gm-Message-State: APjAAAUHhZYnqKaImG+086hr0rxhEUAwecSfCK8LfvPZK6cNYVu6b7qo
        4YPts+K2tMPG+o6/dObhMnMLjw==
X-Google-Smtp-Source: APXvYqwROjs9pfNddDIyH0kjsUo4epMtSE+vqw102VBAtHJmpqhjw64Rmq9Jc/LIZW5Qf9E/JdehJQ==
X-Received: by 2002:a62:874d:: with SMTP id i74mr13211045pfe.94.1564007905394;
        Wed, 24 Jul 2019 15:38:25 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id p7sm51433378pfp.131.2019.07.24.15.38.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 15:38:24 -0700 (PDT)
Date:   Wed, 24 Jul 2019 15:38:23 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] ARM: dts: rockchip: consolidate veyron panel and
 backlight settings
Message-ID: <20190724223823.GC250418@google.com>
References: <20190711223455.12210-1-mka@chromium.org>
 <20190711223455.12210-2-mka@chromium.org>
 <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 24, 2019 at 02:46:30PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> > index 4cc7d3659484..2b0801a539c9 100644
> > --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> > +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> > @@ -15,40 +15,6 @@
> >                      "google,veyron-minnie-rev0", "google,veyron-minnie",
> >                      "google,veyron", "rockchip,rk3288";
> >
> > -       backlight_regulator: backlight-regulator {
> > -               compatible = "regulator-fixed";
> > -               enable-active-high;
> > -               gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&bl_pwr_en>;
> > -               regulator-name = "backlight_regulator";
> > -               vin-supply = <&vcc33_sys>;
> > -               startup-delay-us = <15000>;
> > -       };
> > -
> > -       panel_regulator: panel-regulator {
> > -               compatible = "regulator-fixed";
> > -               enable-active-high;
> > -               gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&lcd_enable_h>;
> > -               regulator-name = "panel_regulator";
> > -               startup-delay-us = <100000>;
> > -               vin-supply = <&vcc33_sys>;
> > -       };
> > -
> > -       vcc18_lcd: vcc18-lcd {
> > -               compatible = "regulator-fixed";
> > -               enable-active-high;
> > -               gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&avdd_1v8_disp_en>;
> > -               regulator-name = "vcc18_lcd";
> > -               regulator-always-on;
> > -               regulator-boot-on;
> > -               vin-supply = <&vcc18_wl>;
> > -       };
> > -
> >         volume_buttons: volume-buttons {
> >                 compatible = "gpio-keys";
> >                 pinctrl-names = "default";
> 
> You forgot to remove the line:
> 
> power-supply = <&backlight_regulator>;
> 
> ...from minnie.

good catch, thanks!

> > diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> > index 9b6f4d9b03b6..06af58e37a4b 100644
> > --- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> > +++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> > @@ -14,7 +14,14 @@
> >         compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
> >                      "google,veyron", "rockchip,rk3288";
> >
> > +       /delete-node/backlight-regulator;
> > +       /delete-node/panel-regulator;
> >         /delete-node/emmc-pwrseq;
> > +       /delete-node/vcc18-lcd;
> > +};
> > +
> > +&backlight {
> > +       /delete-property/power-supply;
> >  };
> >
> >  &emmc {
> > @@ -52,7 +59,17 @@
> >         i2c-scl-rising-time-ns = <300>;
> >  };
> >
> > +&panel {
> > +       power-supply= <&vcc33_lcd>;
> 
> Might as well put a space before the "="?

will do

> >  &pinctrl {
> > +       /delete-node/ lcd;
> > +
> > +       backlight {
> > +               /delete-node/ bl_pwr_en;
> > +       };
> 
> I general as the defender of "pinky", I'll let Heiko confirm he's OK
> with the color of this bikeshed.  Sometimes a bit of repetition is
> preferred over a bunch of confusing /delete-node/ statements since
> those tend to make things harder to reason about in general.  In this
> case I think things are cleaner after your patch but I won't say it's
> 100% clear cut.

I agree that some repetition can be preferrable over /delete-node/
statements. In this case repetition is above my personal threshold,
especially since I'm about to add another device with eDP display and
would have to repeat the mostly redundant config yet another time.

If Heiko prefer's the repetition so be it :)

> Other than nits I have double-checked this patch, so feel free to add
> my Reviewed-by after nits are fixed.

Thanks for the review!

