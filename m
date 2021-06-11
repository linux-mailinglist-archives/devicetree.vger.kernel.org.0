Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3B733A43AD
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 16:01:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230385AbhFKODV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 10:03:21 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:36478 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229985AbhFKODU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 10:03:20 -0400
Received: by mail-ot1-f51.google.com with SMTP id h24-20020a9d64180000b029036edcf8f9a6so3233411otl.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 07:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nsSRSFyV83hkLXTCvmCrGzqooNSzTUP2AhqDwAZrokw=;
        b=k7P8dYkbikP0PauL5LxBmNdjnWikKgFhHxs7xPSR6fneGSPhThbr2oCNE+2HtrnZ4j
         Ogmj3As3ww9dhMZ9VhYTbIk+cvE01nfuIA6uLP5ATKwd3JsQqBfZ/Bx2LJIN4PbW3Pk4
         1twJfGxDhB/1+NM03BDOhBLFrY5s4KAjKx9Kiabl2ZPRKAhYALcIO2vGP1qkrxg9/hN/
         8DKd+3t+urFx9YDZGldD0ka31VYXdkrmPI7ZNUGQ98K7UDY040mZX6aue4rIUlGFYLJ9
         o7TeOFXe5P7mL9LMZc+9M71mf15u3+faBLrnVLJvtPRadJ6+6iyCuvSqUQIizQOkZV1y
         zwdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nsSRSFyV83hkLXTCvmCrGzqooNSzTUP2AhqDwAZrokw=;
        b=U6e9SkF5GhMCeQGBqWDdjx+c7pX3TulZRQaGSlpFscBYuKOjcd+mxoR1f65HOI+pXC
         Z4byA3kFxdSdDCR4Ttvs2j/TeIR1oT/rPqEeeAXyH/My66pdJHcwpGMGDInBV1SToWW9
         E2c2dJMVnX0jW9TiXhCPG1B8IWgtgbj9minuUf7DwLOWX9i8OO/lkrvphwbc0O8L06NF
         qRTb4rR50Hl4sbpDM+S28HRfTTbRnKAGCTC/nGhQcF8ZVnmZP0PEebnnDx44U5mi6Kfr
         QLCZeptIbqPsEmA38CKMUqmIy8ntzig9EqtDJOdEcokwcKAnssxpAoYWAQlScNDPUL+6
         nI4g==
X-Gm-Message-State: AOAM5316siLNqWIn9q/6ggxJCU2XU/LfvURhOWerM6mYRQiyiTxWzLP9
        RZgRpD4X0L9QXhIW3dn6LU+DLJzfo20gePNvx0E=
X-Google-Smtp-Source: ABdhPJzyPun9/rlXy1w5MKrhZd7o6egXhuCqfSEexhi7RiqjjJwLuBgxfZB00QAz+FaQ/z2IbkNfXfHj22LtKUcYyV0=
X-Received: by 2002:a05:6830:1c3d:: with SMTP id f29mr3318629ote.248.1623420022943;
 Fri, 11 Jun 2021 07:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-9-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-9-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 21:59:06 +0800
Message-ID: <CAA+hA=TfL7CKT=BLi9HwNE-v+OTTmcBJdJE1EkwJtiRv0o_8LQ@mail.gmail.com>
Subject: Re: [PATCH 08/11] dt-bindings: arm: fsl: Add binding for imx8ulp evk
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 4:36 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> Add the dt binding for i.MX8ULP EVK board.
>
> i.MX 8ULP is part of the ULP family with emphasis on extreme
> low-power techniques using the 28 nm fully depleted silicon on
> insulator process. Like i.MX 7ULP, i.MX 8ULP continues to be
> based on asymmetric architecture, however will add a third DSP
> domain for advanced voice/audio capability and a Graphics domain
> where it is possible to access graphics resources from the
> application side or the realtime side.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index fce2a8670b49..e68a1b43b144 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -788,6 +788,12 @@ properties:
>            - const: toradex,colibri-imx8x
>            - const: fsl,imx8qxp
>
> +      - description: i.MX8ULP based Boards
> +        items:
> +          - enum:
> +              - fsl,imx8ulp-evk           # i.MX8ULP EVK Board
> +          - const: fsl,imx8ulp
> +
>        - description:
>            Freescale Vybrid Platform Device Tree Bindings
>
> --
> 2.26.2
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
