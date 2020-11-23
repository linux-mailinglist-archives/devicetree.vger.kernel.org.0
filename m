Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB5882BFEBA
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 04:30:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726736AbgKWD3y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Nov 2020 22:29:54 -0500
Received: from mail-vk1-f194.google.com ([209.85.221.194]:42082 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725831AbgKWD3y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Nov 2020 22:29:54 -0500
Received: by mail-vk1-f194.google.com with SMTP id m184so3664645vkb.9;
        Sun, 22 Nov 2020 19:29:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7T2HYgVH3ouZttZmgDKuE4sKyWmEZpHuwuD0BSApWfs=;
        b=pImjDhzI7PZS7PjPj6uXJQqD3WHdMbcpJFDeoBThCOdGkzHd961oG3Q8wiP1KFBlFT
         umyQgoPe0b/r3q/i9zHcUFVHiWumyVw0x9YPuh4rCBryrlVqE5a2A4/xGr5VOnu1jknP
         F5B4yx+xXXZUQNQx27Rasa8J18aslMLNeWrgpnZCcLNadv4wyZ3pYYjHLuA0LgFdby2W
         d4aw/8gG4O03sRUyUaOeCEsj336478sBVSsm8jrKyAIMsPKjzsDcVYZyU/TDwDfSWY2T
         AM+EZzuVSx9emoSnyxgkYmRUBAGRJ4ou86ZzzeC8G7+8X+uRe0zP0YYRdGfvx0fF1pcv
         xpAQ==
X-Gm-Message-State: AOAM533Fie6F4j7itZ9XYqseBlvumNpvyCv3HCPFPXCmvjveWPW9Yd/Q
        TG0gMZGGs+pwFXAVK4QFoLsj0um4pxTUKQ==
X-Google-Smtp-Source: ABdhPJz6B56hs3eiKcWdaj0lZa1eZZrWUtmQ58IUxhK8DBZwmWBn9Vcs+fVwiiQy0WkfeLfsGYIM+A==
X-Received: by 2002:ac5:c55c:: with SMTP id d28mr18757617vkl.19.1606102192701;
        Sun, 22 Nov 2020 19:29:52 -0800 (PST)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id d5sm56937vkf.14.2020.11.22.19.29.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 19:29:52 -0800 (PST)
Received: by mail-vk1-f169.google.com with SMTP id i62so3653534vkb.7;
        Sun, 22 Nov 2020 19:29:50 -0800 (PST)
X-Received: by 2002:a1f:288a:: with SMTP id o132mr17160728vko.2.1606102190747;
 Sun, 22 Nov 2020 19:29:50 -0800 (PST)
MIME-Version: 1.0
References: <20201122003841.1957034-1-icenowy@aosc.io> <20201122004011.1957325-2-icenowy@aosc.io>
In-Reply-To: <20201122004011.1957325-2-icenowy@aosc.io>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Mon, 23 Nov 2020 11:29:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v64SW7fh0ManX59c1Vbq+Etf8QVorwSfxZx4fjDPgcqeOg@mail.gmail.com>
Message-ID: <CAGb2v64SW7fh0ManX59c1Vbq+Etf8QVorwSfxZx4fjDPgcqeOg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 3/3] ARM: dts: sun8i: s3: switch PineCube to
 use OHCI/EHCI only
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        inux-kernel@vger.kernel.org,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 22, 2020 at 8:40 AM Icenowy Zheng <icenowy@aosc.io> wrote:
>
> The PineCube board features a USB Type-A connector connected to the
> SoC's USB pins.
>
> As this is not designed for being used as a USB device, disable OTG
> controller and route USB to OHCI/EHCI fixedly.

"Fixedly" does not mean what you likely intended here. "Permanently"
is probably closer.

However since the changes don't actually deal with the routing,
which IIRC is done in the PHY driver, I suggest just dropping
that part.


ChenYu

>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  arch/arm/boot/dts/sun8i-s3-pinecube.dts | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun8i-s3-pinecube.dts b/arch/arm/boot/dts/sun8i-s3-pinecube.dts
> index 4aa0ee897a0a..c4177c54ef29 100644
> --- a/arch/arm/boot/dts/sun8i-s3-pinecube.dts
> +++ b/arch/arm/boot/dts/sun8i-s3-pinecube.dts
> @@ -78,6 +78,12 @@ csi1_ep: endpoint {
>         };
>  };
>
> +&ehci0 {
> +       phys = <&usbphy 0>;
> +       phy-names = "usb";
> +       status = "okay";
> +};
> +
>  &emac {
>         phy-handle = <&int_mii_phy>;
>         phy-mode = "mii";
> @@ -158,6 +164,12 @@ &mmc1 {
>         status = "okay";
>  };
>
> +&ohci0 {
> +       phys = <&usbphy 0>;
> +       phy-names = "usb";
> +       status = "okay";
> +};
> +
>  &pio {
>         vcc-pd-supply = <&reg_dcdc3>;
>         vcc-pe-supply = <&reg_ldo3>;
> @@ -224,11 +236,6 @@ &uart2 {
>         status = "okay";
>  };
>
> -&usb_otg {
> -       dr_mode = "host";
> -       status = "okay";
> -};
> -
>  &usbphy {
>         usb0_vbus-supply = <&reg_vcc5v0>;
>         status = "okay";
> --
> 2.28.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20201122004011.1957325-2-icenowy%40aosc.io.
