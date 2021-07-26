Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B80CE3D574F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 12:21:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232182AbhGZJks (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 05:40:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231935AbhGZJks (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 05:40:48 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9E5FC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:21:15 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id m9so10666328ljp.7
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=70X+o4gxoqVmOcvp7WeXhrzKKX6eGZ5QMDEYtNs6KMA=;
        b=B/vovlhWPxahAXgxBeGB7sRBwdK9X/gPTel9zf2v93GlvKIc/3xPxEBu1pAUg4Ht+y
         htvG8VA7My/I7sobqOofsQkt1nm+2ZKfDI0Pgr7jwLU9txHrfC4NbazSlCGZmB0LvkpA
         eoLYsmPTyHq7PMUGCRp52/P2mQSHA+FzSYG2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=70X+o4gxoqVmOcvp7WeXhrzKKX6eGZ5QMDEYtNs6KMA=;
        b=BJXYperevK78hbVumbQBlCWqZeF8PBt2WcgYJJkXq9rDfD/q16U3YsNxvxj0+qaB3N
         Rx5WmtFpGyrblG3TAaOlYp1VZNnRZOUOQ6ZQAlJMO/8kgbRTGXR0oNz6gY+iU8UmBz0J
         Fp7RnYZjaALdF41qNi8QbimUyItZ8PbkJn0UbPldDsY+kw04EqUmlp73PD/gsqXIt+Eu
         0lmu0ZQO5sK1CUPaKucCGlGg3JRDqKpNJfWzrMATdDB2vW6YaTopw6Wca/McH/fZNSPd
         XtRl4a+NntUkSeKC4SlnBdIvoSpYU1ZqbhCicz5NLYljqjrshLRWhDCLY8JSZzXeUpj9
         lPaw==
X-Gm-Message-State: AOAM532aheyIcRX+aP1fGKDWr+8V3p78RRqymjYklR/9Yy9Th6flagVm
        +mUX+4qwUw4uRKycN2rSZJCB1Wbe1OOomU1DLaRJgg==
X-Google-Smtp-Source: ABdhPJxkenPZbBydwKHClv/1HF5JInmSLFW/smf/ijGDtLgwcs2N1oTLO8pBBQNVgoPO0r6jmzMPSV9WgKG+X60d9nI=
X-Received: by 2002:a2e:9215:: with SMTP id k21mr12364515ljg.91.1627294874239;
 Mon, 26 Jul 2021 03:21:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210726101451.2118076-1-hsinyi@chromium.org>
In-Reply-To: <20210726101451.2118076-1-hsinyi@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Jul 2021 18:21:02 +0800
Message-ID: <CAGXv+5E+NATyk+QHwi2d_+QAM0ByHB_id9_xOpwHw9kc01hm=w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: elm: Use aliases to mmc nodes
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Eizan Miyamoto <eizan@chromium.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 6:15 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Use aliases to mmc nodes so the partition name for eMMC and SD card will
> be consistent across boots.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> index 21452c51a20a8..be21740d682d0 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> @@ -10,6 +10,13 @@
>  #include "mt8173.dtsi"
>
>  / {
> +       aliases {
> +               mmc0 = &mmc0;
> +               mmc1 = &mmc1;
> +               mmc2 = &mmc2;

mmc2 is not used or enabled anywhere. Just skip it.
You can have

        mmc2 = &mmc3;

so that the numbers are consecutive.


ChenYu

> +               mmc3 = &mmc3;
> +       };
> +
>         memory@40000000 {
>                 device_type = "memory";
>                 reg = <0 0x40000000 0 0x80000000>;
> --
> 2.32.0.432.gabb21c7263-goog
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
