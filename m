Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A69C2EC0BB
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:59:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725925AbhAFP7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:59:42 -0500
Received: from mail-vs1-f54.google.com ([209.85.217.54]:37901 "EHLO
        mail-vs1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725800AbhAFP7m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 10:59:42 -0500
Received: by mail-vs1-f54.google.com with SMTP id z16so1999854vsp.5
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:59:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UDi9h3jUJFoBOSek0+ZgSVBkOmTylZB/4yEbgUcvH3g=;
        b=YvFiECRY3uS6bMIYDJiDThqt8HQgl1yvk9WbIZ774k3dvgTi0TWtRUoEeoyKzVyqA6
         YoM964wrmb1GiROBoBnH0taw4cR41mEeeCv2UGnSicMpqKR0mq59ZK/y2tWE6T8OFW7C
         BGGKHG44olK50bS/5bFR9Ln4DzBsTd3UV7xq5CRkuJLVW1Q7SR0Gf6HsxQEHgDwLN9L9
         swToiEQ66kYbBUXoTarDW3Yt/kM1jAYv0z2ft50GJjKKpvxvu4NW6SmIGmXtbgZdbsxO
         kKRsprsDYaBh6mWC67NIlp4FGaXFexk/ndc3frDTY+DjMvjfw2q2jCC05S5GcQT+c9ak
         LsaQ==
X-Gm-Message-State: AOAM5318dprcINqVPVqMRceF5v0B2XWh1UQefeA6aYRdT3pWfMpNj0DY
        RP6auWusO/ACT4DkZdviRrHe7FZ19pKD+w==
X-Google-Smtp-Source: ABdhPJz88BE9NBBM+iNOKC9Gkg49UEi6CVbKOGofPRHT09+CBTesIwM/wc27libJTKQ4tjzWvJFo8w==
X-Received: by 2002:a05:6102:216:: with SMTP id z22mr3455205vsp.6.1609948740420;
        Wed, 06 Jan 2021 07:59:00 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id x10sm400310vsp.31.2021.01.06.07.58.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 07:59:00 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id q10so1980427vsr.13
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:58:59 -0800 (PST)
X-Received: by 2002:a05:6102:215c:: with SMTP id h28mr3550430vsg.58.1609948739710;
 Wed, 06 Jan 2021 07:58:59 -0800 (PST)
MIME-Version: 1.0
References: <20210106150525.15403-1-andre.przywara@arm.com> <20210106150525.15403-6-andre.przywara@arm.com>
In-Reply-To: <20210106150525.15403-6-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Wed, 6 Jan 2021 23:58:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v672dJS78Mv5BNZ175qMUWSxN6OMq0V-ROYZuP79E66zbw@mail.gmail.com>
Message-ID: <CAGb2v672dJS78Mv5BNZ175qMUWSxN6OMq0V-ROYZuP79E66zbw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 5/7] arm64: dts: allwinner: A64: Limit MMC2
 bus frequency to 150 MHz
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 6, 2021 at 11:06 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> In contrast to the H6 (and later) manuals, the A64 datasheet does not
> specify any limitations in the maximum possible frequency for eMMC
> controllers.
> However experimentation has found that a 150 MHz limit similar to other
> SoCs and also the MMC0 and MMC1 controllers on the A64 seems to exist
> for the MMC2 controller.
>
> Limit the frequency for the MMC2 controller to 150 MHz in the SoC .dtsi.
> The Pinebook seems to be the an odd exception, since it apparently seems
> to work with 200 MHz as well, so overwrite this in its board .dts file.
>
> Tested on a Pine64-LTS: 200 MHz HS-200 fails, 150 MHz HS-200 works.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Please add a fixes tag. This helps with finding the original commit
that introduced the issue and backporting.

This would benefit SoPine / Pine64-LTS users that are using eMMC.

ChenYu

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 1 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi         | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> index d07cf05549c3..7ae16541d14f 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> @@ -167,6 +167,7 @@
>         pinctrl-0 = <&mmc2_pins>, <&mmc2_ds_pin>;
>         vmmc-supply = <&reg_dcdc1>;
>         vqmmc-supply = <&reg_eldo1>;
> +       max-frequency = <200000000>;
>         bus-width = <8>;
>         non-removable;
>         cap-mmc-hw-reset;
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 19e9b8ca8432..57786fc120c3 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -514,7 +514,7 @@
>                         resets = <&ccu RST_BUS_MMC2>;
>                         reset-names = "ahb";
>                         interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> -                       max-frequency = <200000000>;
> +                       max-frequency = <150000000>;
>                         status = "disabled";
>                         #address-cells = <1>;
>                         #size-cells = <0>;
> --
> 2.17.5
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20210106150525.15403-6-andre.przywara%40arm.com.
