Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80D8E2DED1C
	for <lists+devicetree@lfdr.de>; Sat, 19 Dec 2020 06:12:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726272AbgLSFMg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Dec 2020 00:12:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726034AbgLSFMg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Dec 2020 00:12:36 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5080C0617B0
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 21:11:55 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id l11so11022611lfg.0
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 21:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=afa80QgtPdN4Jjvgac+Izd16d6D6uGyqDacL95J8Kgs=;
        b=v96uyUOCgySZ8diQts47e1XwtLAXXWxfDZ4nvwkOSmqBGPu1cHy3urMpli1Sr4Cexp
         n4KX4cHVTs7EUJafB6V4beSO2xcFa1r+oJ4Iryde4juhkPSqUzPaCpH0tA7oQ1Cj3YVL
         IXvRIahVtyXcuEP03XO7JMNs3xG2Bb/J7cvYINGYJiU7c+gpnCgbckc8TXHq+KSAvkSa
         mo82FZQCxr2nUmuf0LYt5gI33ogPnp4c8wi0SKg5juZJvmVH6hQuhyXorKL/jl8ln5NY
         HWmcL/j+K4F/X/eAL2TsGqKQIOdaP0RMZdvefRTlVQNCrfAmzrp6rXPG+ZqGgLtZdMJk
         smNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=afa80QgtPdN4Jjvgac+Izd16d6D6uGyqDacL95J8Kgs=;
        b=QQQW28K4/Z+67QkmgQAJzruv/RjsuS8YNPQLw76glgYLFvbqALZRiVrpreq/ILwjFI
         M6iKtI0biFYZcvyr/nDPlYKApn9y+DdcujsDVZRUHDbgz1vX5oyGmLbGWibWRmM+5L2k
         tG1rKMasks6INAwNfEmpgORKMYO2ygZxq3eJy/qdtXOW/++WhmedIrPBO8tRJeXxC0HB
         +hW0Eqlc4lfMpwwk1IC+mfqUlaleHG10iotpEphpbpxK4u36zi59JuiPJKVPPfoIh68c
         PeqEkoxfSrLPVmXI1muZ1ersh+qaXY09E7GWaFWS+FI27i+FpP5CXh1n+gTQc4j2hCga
         c+Yg==
X-Gm-Message-State: AOAM533JJoZlHsGPlyWfTmfr1oP/HLKCyOxsh/8r0vPkG/FzwYY7VYWO
        Mc1MrOuqsBoYonBYgXExoTyNlZCgp49Rsi/ZhBuewQ==
X-Google-Smtp-Source: ABdhPJwsnxxJaMYLww2D9QJdNd+4q/UnYTnJhT0tzTVHJqG5oycz+3OTASkLqi6ZlnoTvY+pFeJvV7w1QDbuFdN1C6A=
X-Received: by 2002:a19:4a4a:: with SMTP id x71mr2877672lfa.535.1608354714024;
 Fri, 18 Dec 2020 21:11:54 -0800 (PST)
MIME-Version: 1.0
References: <20201111091552.15593-1-Sergey.Semin@baikalelectronics.ru> <20201111091552.15593-17-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20201111091552.15593-17-Sergey.Semin@baikalelectronics.ru>
From:   John Stultz <john.stultz@linaro.org>
Date:   Fri, 18 Dec 2020 21:11:42 -0800
Message-ID: <CALAqxLWGujgR7p8Vb5S_RimRVYxwm5XF-c4NkKgMH-43wEBaWg@mail.gmail.com>
Subject: Re: [PATCH v2 16/18] arm64: dts: hi3660: Harmonize DWC USB3 DT nodes name
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc:     Felipe Balbi <balbi@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wei Xu <xuwei5@hisilicon.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        lkml <linux-kernel@vger.kernel.org>,
        YongQin Liu <yongqin.liu@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 11, 2020 at 1:22 AM Serge Semin
<Sergey.Semin@baikalelectronics.ru> wrote:
>
> In accordance with the DWC USB3 bindings the corresponding node
> name is suppose to comply with the Generic USB HCD DT schema, which
> requires the USB nodes to have the name acceptable by the regexp:
> "^usb(@.*)?" . Make sure the "snps,dwc3"-compatible nodes are correctly
> named.
>
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> index d25aac5e0bf8..aea3800029b5 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> @@ -1166,7 +1166,7 @@ usb_phy: usb-phy {
>                         };
>                 };
>
> -               dwc3: dwc3@ff100000 {
> +               dwc3: usb@ff100000 {
>                         compatible = "snps,dwc3";
>                         reg = <0x0 0xff100000 0x0 0x100000>;


Oof. So this patch is breaking the usb gadget functionality on HiKey960 w/ AOSP.

In order to choose the right controller for gadget mode with AOSP, one
sets the "sys.usb.controller" property, which until now for HiKey960
has been "ff100000.dwc3".
After this patch, the controller isn't found and we would have to
change userland to use "ff100000.usb", which would then break booting
on older kernels (testing various LTS releases on AOSP is one of the
key uses of the HiKey960).

So while I understand the desire to unify the schema, as HiKey960
really isn't likely to be used outside of AOSP, I wonder if reverting
this one change is in the best interest of not breaking existing
userland?

thanks
-john
