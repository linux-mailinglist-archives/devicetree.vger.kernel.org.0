Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A59D774103
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 23:46:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726636AbfGXVqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 17:46:46 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:46241 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725851AbfGXVqq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 17:46:46 -0400
Received: by mail-io1-f66.google.com with SMTP id i10so92758526iol.13
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 14:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eOzpntW4jYuzCuRORz9nWSGQo3322zBOXDNxUCNWQVo=;
        b=N49uHsHU+zcaMFDqNV4M15/FPHDeWl0BFf+uvUz6Ah/f9VZ3iGgGU7udezJpszRZrl
         OuaZ+b0F8RqK82CQm9avLSxoSp0LcZU237Tk1WiIDqICFMob+o2PoxWNVNtFnmSMARna
         DzJTZ6PwcljRvItJBPksdvEKkg7zDpVhXGLzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eOzpntW4jYuzCuRORz9nWSGQo3322zBOXDNxUCNWQVo=;
        b=Hc7Z6jdnxBUugQ7nFOZnqqARpQ6i8zXeRavBiYWEvhJghsNwkCPoK8Mb38AVqLf4CS
         PcMzhZmPeUw9G5/Tz5pcPKg0eDCNQtlZ/cS1+Zv5AvDIo6ogVDsiB6bgIOdM4SBpJOdF
         MXM9vwCMULJ0zWxuRWmlaxEXHxPfJvzxlPUtkLzrCSCxRKogd/MYlbrFUZO/YwaNOOcN
         4/am7Gk66gFTwykuIZ6rUxvJao7PqNRqKSaDkZfKpafRw+/6HIP9QajDxRatKpwl3SW3
         QLezB7+DzSk0GBxSxsiUhlCXE8PZpiuM1zjdqjk1ZcShigOEE5TbCVcAceI1g0wpklgX
         UGXA==
X-Gm-Message-State: APjAAAWoj731PY5iKXdsqLnvcq5Gwo3ZvaM9pP5ZjRB9N43pN+RfJph6
        jgIFeHunpayWl7flFokJbTIspCLRjK0=
X-Google-Smtp-Source: APXvYqxB8TZcJ9wiP2NIyVlb8GpwstpKIUWoOZuSRUp2HyEztXVx3g5FkBkukj5+dbPAWXHyvopFbQ==
X-Received: by 2002:a6b:da1a:: with SMTP id x26mr53987248iob.285.1564004804381;
        Wed, 24 Jul 2019 14:46:44 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com. [209.85.166.50])
        by smtp.gmail.com with ESMTPSA id f20sm36927284ioh.17.2019.07.24.14.46.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 14:46:44 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id j5so88669515ioj.8
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 14:46:43 -0700 (PDT)
X-Received: by 2002:a6b:5103:: with SMTP id f3mr74359598iob.142.1564004803178;
 Wed, 24 Jul 2019 14:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190711223455.12210-1-mka@chromium.org> <20190711223455.12210-2-mka@chromium.org>
In-Reply-To: <20190711223455.12210-2-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 24 Jul 2019 14:46:30 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
Message-ID: <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: rockchip: consolidate veyron panel and
 backlight settings
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> index 4cc7d3659484..2b0801a539c9 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -15,40 +15,6 @@
>                      "google,veyron-minnie-rev0", "google,veyron-minnie",
>                      "google,veyron", "rockchip,rk3288";
>
> -       backlight_regulator: backlight-regulator {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&bl_pwr_en>;
> -               regulator-name = "backlight_regulator";
> -               vin-supply = <&vcc33_sys>;
> -               startup-delay-us = <15000>;
> -       };
> -
> -       panel_regulator: panel-regulator {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&lcd_enable_h>;
> -               regulator-name = "panel_regulator";
> -               startup-delay-us = <100000>;
> -               vin-supply = <&vcc33_sys>;
> -       };
> -
> -       vcc18_lcd: vcc18-lcd {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&avdd_1v8_disp_en>;
> -               regulator-name = "vcc18_lcd";
> -               regulator-always-on;
> -               regulator-boot-on;
> -               vin-supply = <&vcc18_wl>;
> -       };
> -
>         volume_buttons: volume-buttons {
>                 compatible = "gpio-keys";
>                 pinctrl-names = "default";

You forgot to remove the line:

power-supply = <&backlight_regulator>;

...from minnie.


> diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> index 9b6f4d9b03b6..06af58e37a4b 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> @@ -14,7 +14,14 @@
>         compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
>                      "google,veyron", "rockchip,rk3288";
>
> +       /delete-node/backlight-regulator;
> +       /delete-node/panel-regulator;
>         /delete-node/emmc-pwrseq;
> +       /delete-node/vcc18-lcd;
> +};
> +
> +&backlight {
> +       /delete-property/power-supply;
>  };
>
>  &emmc {
> @@ -52,7 +59,17 @@
>         i2c-scl-rising-time-ns = <300>;
>  };
>
> +&panel {
> +       power-supply= <&vcc33_lcd>;

Might as well put a space before the "="?


>  &pinctrl {
> +       /delete-node/ lcd;
> +
> +       backlight {
> +               /delete-node/ bl_pwr_en;
> +       };

I general as the defender of "pinky", I'll let Heiko confirm he's OK
with the color of this bikeshed.  Sometimes a bit of repetition is
preferred over a bunch of confusing /delete-node/ statements since
those tend to make things harder to reason about in general.  In this
case I think things are cleaner after your patch but I won't say it's
100% clear cut.

Other than nits I have double-checked this patch, so feel free to add
my Reviewed-by after nits are fixed.

-Doug
