Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEE252EC0B9
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:58:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726251AbhAFP52 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:57:28 -0500
Received: from mail-ua1-f53.google.com ([209.85.222.53]:40810 "EHLO
        mail-ua1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726165AbhAFP52 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 10:57:28 -0500
Received: by mail-ua1-f53.google.com with SMTP id y25so1218103uaq.7
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:57:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WqJEA5A9+1HtdFimi36OEIS/xg9B9vogCkxtOJDl7Ik=;
        b=P28TYRFB2T86uwEIq3+7Zl544UaGMPlZn0v6qOkTCglSG1Tm6DHNxiPryOiaygNACc
         oXqM57Y0EQ7/+8ZJU+elIWuAPunMW1bmKWNQwbDTdDosxVHYhw1mR/i3+HEgLz8KgyFu
         cOyGHfLzp7h31nk+m5TLDCBYpbqmRiz+Br9BZFn1FJxXBkXjhw9KFdlckumJA4hjOT9X
         ssHf7SDTIFfWlfcYpyUWqCsDjTMvjd3ni2/E4NGabgE/lzNb0/HhEssz6Zni55HmQp5A
         D35HqjeCEhV3na1Q+w9KVhKNstP39aK4W4lzkuWI4myto1gWOqX7aHKrJSOJ0fOL2mrr
         apvA==
X-Gm-Message-State: AOAM533C62OPTdSLL4/YwufyN9JPJdFniCVhvznrjy/0Wxv5Diloay5g
        Hmqd7eZ9sJtnSL9BGfYGLYXQVtUnWUV83g==
X-Google-Smtp-Source: ABdhPJxp9+v/zlXRPe9V634/e54CdQJJGSy9VaWxWepDin6LHssqqfLIs5ABGfKa9FLYqzVSHuVBHQ==
X-Received: by 2002:ab0:3c8f:: with SMTP id a15mr4094099uax.127.1609948606623;
        Wed, 06 Jan 2021 07:56:46 -0800 (PST)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id x75sm354540vsc.11.2021.01.06.07.56.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 07:56:46 -0800 (PST)
Received: by mail-vk1-f176.google.com with SMTP id a6so879999vkb.8
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:56:45 -0800 (PST)
X-Received: by 2002:a1f:1bcc:: with SMTP id b195mr4153112vkb.5.1609948605755;
 Wed, 06 Jan 2021 07:56:45 -0800 (PST)
MIME-Version: 1.0
References: <20210106150525.15403-1-andre.przywara@arm.com> <20210106150525.15403-2-andre.przywara@arm.com>
In-Reply-To: <20210106150525.15403-2-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Wed, 6 Jan 2021 23:56:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v66V6=jeLuLCvOENhuwXfPAMd1nYcMor3K7FToHT9grTTA@mail.gmail.com>
Message-ID: <CAGb2v66V6=jeLuLCvOENhuwXfPAMd1nYcMor3K7FToHT9grTTA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/7] arm64: dts: allwinner: H6/A64: properly
 connect USB PHY to port 0
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

Hi,

On Wed, Jan 6, 2021 at 11:05 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> In recent Allwinner SoCs the first USB host controller (HCI0) shares
> the first PHY with the MUSB controller. Probably to make this sharing
> work, we were avoiding to declare this in the DT. This has two
> shortcomings:
> - U-Boot (which uses the same .dts) cannot use this port in host mode
>   without a PHY linked, so we were loosing one USB port there.
> - It requires the MUSB driver to be enabled and loaded, although we
>   don't actually use it.
>
> To avoid those issues, let's add this PHY link to the A64 and H6 .dtsi
> files. After all PHY port 0 *is* connected to HCI0, so we should describe
> it as this. Remove the part from the boards which were already doing
> that.
>
> This makes it work in U-Boot, also improves compatiblity when no MUSB
> driver is loaded (for instance in distribution installers).
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 4 ----
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi         | 4 ++++
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi          | 4 ++++

It would be better if the H6 parts were separated out.

Please also add a fixes tag, which helps with backporting.

>  3 files changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> index 896f34fd9fc3..d07cf05549c3 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> @@ -126,8 +126,6 @@
>  };
>
>  &ehci0 {
> -       phys = <&usbphy 0>;
> -       phy-names = "usb";
>         status = "okay";
>  };
>
> @@ -177,8 +175,6 @@
>  };
>
>  &ohci0 {
> -       phys = <&usbphy 0>;
> -       phy-names = "usb";
>         status = "okay";
>  };
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 51cc30e84e26..19e9b8ca8432 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -593,6 +593,8 @@
>                                  <&ccu CLK_USB_OHCI0>;
>                         resets = <&ccu RST_BUS_OHCI0>,
>                                  <&ccu RST_BUS_EHCI0>;
> +                       phys = <&usbphy 0>;
> +                       phy-names = "usb";
>                         status = "disabled";
>                 };
>
> @@ -603,6 +605,8 @@
>                         clocks = <&ccu CLK_BUS_OHCI0>,
>                                  <&ccu CLK_USB_OHCI0>;
>                         resets = <&ccu RST_BUS_OHCI0>;
> +                       phys = <&usbphy 0>;
> +                       phy-names = "usb";
>                         status = "disabled";
>                 };
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index 8a62a9fbe347..f593cfeaecc9 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -680,6 +680,8 @@
>                                  <&ccu CLK_USB_OHCI0>;
>                         resets = <&ccu RST_BUS_OHCI0>,
>                                  <&ccu RST_BUS_EHCI0>;
> +                       phys = <&usb2phy 0>;
> +                       phy-names = "usb";
>                         status = "disabled";
>                 };
>
> @@ -690,6 +692,8 @@
>                         clocks = <&ccu CLK_BUS_OHCI0>,
>                                  <&ccu CLK_USB_OHCI0>;
>                         resets = <&ccu RST_BUS_OHCI0>;
> +                       phys = <&usb2phy 0>;
> +                       phy-names = "usb";
>                         status = "disabled";
>                 };
>
> --
> 2.17.5
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20210106150525.15403-2-andre.przywara%40arm.com.
