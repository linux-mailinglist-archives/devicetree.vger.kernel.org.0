Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1BC93A43AA
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 16:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231419AbhFKOCD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 10:02:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231391AbhFKOCC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 10:02:02 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E902C061574
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:59:51 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id a26so5878434oie.11
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SmuOqUkZ7JsXCNlTdZ/8l4N1KGOMrTdBCmcwZ6aglT4=;
        b=aZJfQgGDJYnurbfXGXX4LgXmHJS1iNSHZhsEk8EjAO2t5PiiiIV7Nv7tx8Cbr4DvCj
         chJDLqhW614KzcJEVTEY4vaOtzGEbE71hPKf04mV+wnBh+5P5trU3lkEMLNlD2TneAyo
         HjHSPVf38adCLPSA1V5CWYRorA9H8SUqOuluLuzDRAloOTG33OembtwgjIGtXjJq4fuK
         bn8VJYwGYe2R0F7RaOdjfvDD7AKVEmc9ePByPK2HL9qwoyyXQu0uGa2yM3n3BozyZrjY
         cFa1ZZ++LeKurXsxBUNgLV0qdny6VOOoz+WOXYidaYN/Tpat9/sdrDH5TVlOcYNq5Cju
         G1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SmuOqUkZ7JsXCNlTdZ/8l4N1KGOMrTdBCmcwZ6aglT4=;
        b=QbMEK8EkEILMmtBUa9rK1o7wYc3bSSwtYtUp4lwjWh3gSlMDlTeFveiDPpWxbHhVLH
         H1U3F1jw8stO/CMmpmC1GyUf7NgpoYUnxn7j5keGOvV5No/SV1SUSzTQ/Jo1qDR24TNy
         jHPm0IPy5cBPydWKdSc5kl6vdBth6OYOxdI43PmG95lQmqq/59aeaQCI10LIlxYquU9W
         BfegVRTYdV1CcWwCN2hRNoeXcMaAh53RqyK2Sd8m5nLSjWXZsuiqzz2x9ZAXBSxFISTE
         2wjcZ/GWW+wyDa08CGQDl2cJgLcMTQl0eG9SnmYHKIFe1GhGkeaO3YL8+oz5d2mGeXM2
         X+lg==
X-Gm-Message-State: AOAM532hJkCeLjpIAwfqlU0zpeSf+Hw0Aj3esxSaMgw/4bucOKs1NsmG
        d1l4WPkowQpfFEufidUx4GPW5kWKPTYwW85T8ik=
X-Google-Smtp-Source: ABdhPJznjNSE0CtKebpX0rYEhrFfX0JT0SQNaHiOKz1iWTu+x98iV9VkLOuweWYoiD+bkWkBMNyYWmScmsG59C6kKsg=
X-Received: by 2002:aca:3385:: with SMTP id z127mr2499198oiz.142.1623419990925;
 Fri, 11 Jun 2021 06:59:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-8-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-8-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 21:58:34 +0800
Message-ID: <CAA+hA=Re8LuyP47K6OuuPMAfXSTYzN3uL3=qU7FWSGLcGx4xtg@mail.gmail.com>
Subject: Re: [PATCH 07/11] dt-bindings: watchdog: imx7ulp-wdt: Add imx8ulp
 compatible string
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

On Mon, Jun 7, 2021 at 4:35 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> For i.MX8ULP, it uses two compatible strings, so Add the compatible
> string for i.MX8ULP.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

As previously mentioned, pls improve commit message,
otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  .../devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml      | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> index 51d6d482bbc2..fb603a20e396 100644
> --- a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> @@ -14,8 +14,11 @@ allOf:
>
>  properties:
>    compatible:
> -    enum:
> -      - fsl,imx7ulp-wdt
> +    oneOf:
> +      - const: fsl,imx7ulp-wdt
> +      - items:
> +          - const: fsl,imx8ulp-wdt
> +          - const: fsl,imx7ulp-wdt
>
>    reg:
>      maxItems: 1
> --
> 2.26.2
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
