Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 298BF381D6
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 01:33:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727711AbfFFXc7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 19:32:59 -0400
Received: from mail-it1-f195.google.com ([209.85.166.195]:36901 "EHLO
        mail-it1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726305AbfFFXc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 19:32:58 -0400
Received: by mail-it1-f195.google.com with SMTP id x22so80012itl.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 16:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k0A3A4PZm4/qsXsHFur2v9UHOlrbEBQyk4vcKPIBFw0=;
        b=fkbxgUrEv8PfhTy3wvjiFFp1EImbq7M90vH3PXzj1KqC9QVgYow75jLTgKOq3FfxOL
         ZUcYMofKM9SzoTgEA4dphTznhi2DKKtXgfDNcaq0CjU9oVG3wuL1B/toPbhiZNpICNSa
         po1KErA7hXKSYO31giKbUpqEV3GmbqFoGEnmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k0A3A4PZm4/qsXsHFur2v9UHOlrbEBQyk4vcKPIBFw0=;
        b=FT+9Hvh4RM2mC+LB+81266U4vjO+VyqcXSbcJg5HdMcGpD1HT2HCLHF57vyK6ylvRK
         x3p5AjKswYfyrbXxv6NLkIGUqXRaroysuthdZfIx/zx5jaUC39ONzQAGwYscbwka+fWt
         gRJ47kgHGU7wcTowbkjGsCpp/kL7DWQaqz7mwOuUb2V8O4Y1SBZGKGWdK80TVcG5qhxs
         GVopp/Erk7fx3kBr9O4PNyHyJbjHJckRBDK+eeSaglGoZxKrNI73Bq5eH3aK9gA4L0K1
         eEic+lJdZ8bHmkSVXnHiCOKAUxDfC48PBqSku8y0zTdsyJhzPEOQ8z1F6l+p2TlKdvBj
         +I+A==
X-Gm-Message-State: APjAAAUA2FuHFBS4CVQ7UXClqYRkYKheU8/DNKJAj6PJvVEKm19PgHcq
        dUVsuuEFFY6hwC1lCtmkVp2aub0qdDA=
X-Google-Smtp-Source: APXvYqxQReL8/j5Fh2u8FlK3n/FGSTxvGs4fzvnAk1UIkosZYhHwbyY3way0jB10qi7o4yuYBE7ILw==
X-Received: by 2002:a24:6191:: with SMTP id s139mr2017833itc.81.1559863977909;
        Thu, 06 Jun 2019 16:32:57 -0700 (PDT)
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com. [209.85.166.181])
        by smtp.gmail.com with ESMTPSA id d75sm137659itd.10.2019.06.06.16.32.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 16:32:56 -0700 (PDT)
Received: by mail-it1-f181.google.com with SMTP id w190so62225itc.5
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 16:32:55 -0700 (PDT)
X-Received: by 2002:a02:9143:: with SMTP id b3mr9665780jag.12.1559863975142;
 Thu, 06 Jun 2019 16:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190605204320.22343-1-mka@chromium.org> <20190605204320.22343-2-mka@chromium.org>
In-Reply-To: <20190605204320.22343-2-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 6 Jun 2019 16:32:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VnjRPokOp+DH5H04Ej=TSxKDeDWhbbJt46b6cVFnOosQ@mail.gmail.com>
Message-ID: <CAD=FV=VnjRPokOp+DH5H04Ej=TSxKDeDWhbbJt46b6cVFnOosQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        Brian Norris <briannorris@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 5, 2019 at 1:43 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> This enables wake up on Bluetooth activity when the device is
> suspended. The BT_HOST_WAKE signal is only connected on devices
> with BT module that are connected through UART.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 29 ++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index cc4c3595f145..145cac7c0847 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -23,6 +23,31 @@
>                 reg = <0x0 0x0 0x0 0x80000000>;
>         };
>
> +       bt_activity: bt-activity {
> +               compatible = "gpio-keys";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&bt_host_wake>;
> +
> +               /*
> +                * HACK: until we have an LPM driver, we'll use an
> +                * ugly GPIO key to allow Bluetooth to wake from S3.
> +                * This is expected to only be used by BT modules that
> +                * use UART for comms.  For BT modules that talk over
> +                * SDIO we should use a wakeup mechanism related to SDIO.
> +                *
> +                * Use KEY_RESERVED here since that will work as a wakeup but
> +                * doesn't get reported to higher levels (so doesn't confuse
> +                * Chrome).
> +                */
> +               bt-wake {
> +                       label = "BT Wakeup";
> +                       gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> +                       linux,code = <KEY_RESERVED>;
> +                       wakeup-source;
> +               };
> +
> +       };
> +
>         power_button: power-button {
>                 compatible = "gpio-keys";
>                 pinctrl-names = "default";
> @@ -555,6 +580,10 @@
>                         rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
>
> +               bt_host_wake: bt-host-wake {
> +                       rockchip,pins = <4 31 RK_FUNC_GPIO &pcfg_pull_down>;

nit: s/31/RK_PD7

Other than that, feel free to add my Reviewed-by assuming that this
isn't too hacky for mainline to accept while we wait for someone to
come up with a better solution.

-Doug
