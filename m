Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA92C28689C
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 21:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726719AbgJGTww (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 15:52:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726348AbgJGTww (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 15:52:52 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82087C061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 12:52:52 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id b2so3517398ilr.1
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 12:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/rNNAy+f+v2YU8afIuyxuuwlDaTagTuSJsOPjSwtxzs=;
        b=OyHtWcFKhKwwKq/9JtGvgW+4UXbu7jbyht/Lf2cnNGBQ2mn4+rHhTUm/1UwkWsd5Q7
         jbmbOVInPQXCtJmh1EbN24gQzeGxkIDZwt5pRiZUyE/dIA7srqFCqkyrwgg5WXQi8jQA
         wvnvKi4tYYovKQu7YS+UuWnjq0KhG1MBolOzyeSJ8sSdEtxIc8JXBnVBgenhsPyJcH4u
         p3r16Y82qgNKw3dcxpC1TC7LKePzLVhnNEsxfkfdO0cN2Ow82zfmNJJT2JXevO7cxy0r
         856ZT+LC8zR3RisuBFRh+yh8XEIuTUU1Xg+BDqJuY65NP3PICyWtefbc4Bp7r3tqp6LN
         wSdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/rNNAy+f+v2YU8afIuyxuuwlDaTagTuSJsOPjSwtxzs=;
        b=rqR7TF26Zwit+4pnzuZ7rvl52LO+gTjuxtxvuuD0iGis/FlgmTHT5vvKPeI9tA5gnm
         AsW5Y+DjHeDPx/pQUS74LikzF1/2EDQ4DeHfcF1sRkk6JHKwnRTGkeObqQX01HvWC8Vh
         pRxBwhN57T/wmrqRYYCE+XVHYgtEAS1V5K/GJ4ZkCHy2BoXIDDWNQ0y0p/tVUItp/S1v
         BISURHL7Nztxm5AbvYlISN91Beldax82P7MTCZYRclIxgKt1PnaUi039TRecp8VAIq4W
         h95thDhqoZdXYfEyFg+Bz4Wmm51UP9ErodEC1fhH6loARY5peGR2Xy25jbA5SUwNRpsr
         f2Zw==
X-Gm-Message-State: AOAM531rotLhl2yviJCH3Rdt3QbepBcdy9u9m7/AEuzgfvUkrrtmnnpp
        NUyQkmEse6Y/MGIm3AxSEHkaLzxXcAnBJfCBKSM=
X-Google-Smtp-Source: ABdhPJyqmpwikJD1g4mbqgsg+9F3kIdZm8GEnnIm1aTSqOIOwPBBkzw/dkncKb4cfhFkIK9b8fUIKDHXRyZe1HOf3F4=
X-Received: by 2002:a92:4891:: with SMTP id j17mr3712264ilg.65.1602100371506;
 Wed, 07 Oct 2020 12:52:51 -0700 (PDT)
MIME-Version: 1.0
References: <20201003224555.163780-1-marex@denx.de>
In-Reply-To: <20201003224555.163780-1-marex@denx.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Wed, 7 Oct 2020 14:52:40 -0500
Message-ID: <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Marek Vasut <marex@denx.de>
Cc:     arm-soc <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Abel Vesa <abel.vesa@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
>
> Add the i.MX8MM BLK_CTL compatible string to the list.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Abel Vesa <abel.vesa@nxp.com>
> Cc: Dong Aisheng <aisheng.dong@nxp.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Guido G=C3=BCnther <agx@sigxcpu.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>

Is there a DTSI change part of this patch?  I was going to try to test
it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
sure where to put the node.

adam

> diff --git a/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml=
 b/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
> index 5e9eb402b9b6..346429f49093 100644
> --- a/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
> +++ b/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
> @@ -20,6 +20,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +         - fsl,imx8mm-dispmix-blk-ctl
>           - fsl,imx8mp-audio-blk-ctl
>           - fsl,imx8mp-hdmi-blk-ctl
>           - fsl,imx8mp-media-blk-ctl
> --
> 2.28.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
