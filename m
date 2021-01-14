Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BA842F5B60
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 08:34:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726806AbhANHdr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 02:33:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726162AbhANHdq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 02:33:46 -0500
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42A3BC061795
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 23:33:06 -0800 (PST)
Received: by mail-io1-xd31.google.com with SMTP id y19so9418588iov.2
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 23:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gzqGVG/xVbXBY0Dcmb2ISGP5g5vH35TeAFBOy1myEJ4=;
        b=euZ6sUHI8GlsIIp589ixvB23mbfJr6r0VlF2IPuFdp1SN3KJqy+8Ipl24EwgX5mKLV
         7hmz6JZ9r8P0p8j+fzbkJb1yJhhK/5yemBh9OA+iVRi1snK/SAHlG+HxLl8yIkhhlCXs
         A2K2TDIMyAlwHMl1tHI6oD0nJ8H0GzXUgqYZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gzqGVG/xVbXBY0Dcmb2ISGP5g5vH35TeAFBOy1myEJ4=;
        b=A0+swY7+JjBFKukZR15KqAzplyeXM3keXwH7hlP3ACWZz+sJycsUbilIOIcAiP7sP3
         AqU2r6GB4U/Jw7VlkYweqC1YZW43Ky/zpXXc3bQfMhYwjPEI9ZcehdM9gOgjKEXPrFaY
         2ul1FLnwNf32QQtpcJ6qQ93Ftg27MmUy//xQs/lDb+Z2rSTTGWd/2/1ajlnsXJzCeYhV
         KX/hjgT0pk2thALsCBtXpdce3OVqBgFJiCoxtMpCDOUNIMllpTb9Ftr3JJ5kx5eei8f3
         2Cyxn+qF31LfnNNeOPpqWZcEHrdG/eZwlqW+uiGnVI0/rpedVBqfPGUjNaD51xHufCv6
         vVeg==
X-Gm-Message-State: AOAM533j69CcuZwh4JEd0jjENG4TFPyxKgK5c5YhDTwJO7Z5ijE3+94d
        MqhGtCr/HLVfHEu+PG6lJ8AX2kNWPBflzUMuxZ0RiA==
X-Google-Smtp-Source: ABdhPJxtpN5VhI7BK+eYcCJv9/seQtxVUNAs/Jxyu4+eQoVpf4nu9K1fxZUvqeMB3Li/PaQ1U51RbfFm1L/2r7uVQNE=
X-Received: by 2002:a92:c7d2:: with SMTP id g18mr5551980ilk.106.1610609585595;
 Wed, 13 Jan 2021 23:33:05 -0800 (PST)
MIME-Version: 1.0
References: <20210113215723.71966-1-enric.balletbo@collabora.com>
In-Reply-To: <20210113215723.71966-1-enric.balletbo@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 14 Jan 2021 15:32:39 +0800
Message-ID: <CAJMQK-hDHaKxy9pu6BMqx37=xyzcXPPpU4JAr5rghnpMxp5WxQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: Add missing power-domain for pwm0 node
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     lkml <linux-kernel@vger.kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 14, 2021 at 5:57 AM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> The MT8183 display PWM device will not work until the associated
> power-domain is enabled. Add the power-domain reference to the node
> allows the display PWM driver to operate and the backlight turn on.
>
> Fixes: f15722c0fef0 ("arm64: dts: mt8183: Add pwm and backlight node")
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Reviewed-by: Hsin-Yi Wang <hsinyi@chromium.org>

> ---
>
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index bda283fa9245..8471c973dfd5 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -661,6 +661,7 @@ pwm0: pwm@1100e000 {
>                         compatible = "mediatek,mt8183-disp-pwm";
>                         reg = <0 0x1100e000 0 0x1000>;
>                         interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_LOW>;
> +                       power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
>                         #pwm-cells = <2>;
>                         clocks = <&topckgen CLK_TOP_MUX_DISP_PWM>,
>                                         <&infracfg CLK_INFRA_DISP_PWM>;
> --
> 2.29.2
>
