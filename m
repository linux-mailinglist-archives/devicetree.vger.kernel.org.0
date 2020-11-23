Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50CA82BFEC1
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 04:37:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727389AbgKWDhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Nov 2020 22:37:55 -0500
Received: from mail-vk1-f194.google.com ([209.85.221.194]:42167 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726885AbgKWDhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Nov 2020 22:37:55 -0500
Received: by mail-vk1-f194.google.com with SMTP id m184so3667017vkb.9;
        Sun, 22 Nov 2020 19:37:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TpCl0AHPXqvb+bYBrbLWHuQYiIdRgxs0amhLihMjzVE=;
        b=s9LcsGgpOIbUkqKPHkdoYk+PHqsx9nd0zd2AGXeVzkSBzo6IG2Pkf7hlO2MltO7Rx7
         GBekil07DqswkbNlnEvNv2Hl2I+I0K7oCetgz+9OMX7EHfVATOZyLIppl9ecNyo+qqpD
         m3HtniSe6UKfyPTCSlP0X5J5HJCXot9Dg3R/ILve6/AvWRWzhGiiGKE2UjGp5N8s//3P
         f1hfxPQVjYLvu/uLnB6kh4Bm29HBkHMwBT/7Aj4sSF/CZY8KcP8dWDjlSk0xyqr8FCMV
         e9edq8+LAoCRenc9O5vt+/yoLlGKHmqunZXDCP4ji9mZHLfUmgqWlSxDnl2nHZpkGPfZ
         eC9g==
X-Gm-Message-State: AOAM5313D2Agjio1IC3zUb3sUrTE2zi3Hiucy1hfgpkjmIAl0v0ZyIz1
        ACaTiJgGrrWhLcvT93iuXS5n9URTS9RmF0b0
X-Google-Smtp-Source: ABdhPJyjRArppIwC+XRRAzDZDCWVkxoNEEnt92FwJj5Wy3PABmgFDAtd3BpuC92/jKDyYnUi+q8FgA==
X-Received: by 2002:a1f:2757:: with SMTP id n84mr18785334vkn.4.1606102674350;
        Sun, 22 Nov 2020 19:37:54 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id e22sm1208586vsa.10.2020.11.22.19.37.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 19:37:54 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id q4so5239212ual.8;
        Sun, 22 Nov 2020 19:37:53 -0800 (PST)
X-Received: by 2002:ab0:3881:: with SMTP id z1mr17757829uav.132.1606102673473;
 Sun, 22 Nov 2020 19:37:53 -0800 (PST)
MIME-Version: 1.0
References: <20201122003841.1957034-1-icenowy@aosc.io> <20201122004011.1957325-1-icenowy@aosc.io>
In-Reply-To: <20201122004011.1957325-1-icenowy@aosc.io>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Mon, 23 Nov 2020 11:37:43 +0800
X-Gmail-Original-Message-ID: <CAGb2v64f71Dv6cp4ObhMTyMELRNP6h524-cg4h07MNRhsz_MSA@mail.gmail.com>
Message-ID: <CAGb2v64f71Dv6cp4ObhMTyMELRNP6h524-cg4h07MNRhsz_MSA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/3] ARM: dts: sun8i: v3s: enable EHCI/OHCI
 for Lichee Pi Zero
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
> As the USB port on Lichee Pi Zero works in the OTG mode, enable the
> EHCI/OHCI controllers for it.

You should probably mention that the host controllers work better
than the OTG controller in host mode. Otherwise this change lacks
justification for enabling two extra hardware blocks.

ChenYu

> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
> index 2e4587d26ce5..0cd969194acb 100644
> --- a/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
> +++ b/arch/arm/boot/dts/sun8i-v3s-licheepi-zero.dts
> @@ -77,6 +77,10 @@ red_led {
>         };
>  };
>
> +&ehci0 {
> +       status = "okay";
> +};
> +
>  &mmc0 {
>         broken-cd;
>         bus-width = <4>;
> @@ -84,6 +88,10 @@ &mmc0 {
>         status = "okay";
>  };
>
> +&ohci0 {
> +       status = "okay";
> +};
> +
>  &uart0 {
>         pinctrl-0 = <&uart0_pb_pins>;
>         pinctrl-names = "default";
> --
> 2.28.0
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20201122004011.1957325-1-icenowy%40aosc.io.
