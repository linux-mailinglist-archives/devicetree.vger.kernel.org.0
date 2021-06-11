Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF143A43A3
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 15:58:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbhFKOAp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 10:00:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbhFKOAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 10:00:44 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6BCBC061574
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:58:46 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 36-20020a9d0ba70000b02902e0a0a8fe36so3202026oth.8
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 06:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5u8/d/FAVA1SMvxlhwuLiLBxLoYWCAefYpC5EQqSZV8=;
        b=OLEaPzb0ImhCRJP99xrnRxX+AyB/xwg3DLsHK4pokpZ/i+NXNJmYFugoLwIBDngFH1
         BcCsGBhFgll7R0DdOky/24vc7A2zoVsL/8Dw/7fmCBBXPrxGqDm8u2+abfXIhEGuljji
         8tTKRQholSB9KbJjgoASXIB6lyyfBOj3je44bfQ0d9oDuGziuCMVVhztYPfaMlNlTW8D
         gJF16Epwr9w3IrgKTTfU5VTI5Kh/tqG2QpM8ndnqrOVbI/dC7qcI1cZymq5XV4TmsSgH
         mYuul/CsIu8LV0o81OsOl83/ouvB7hlcbkcjGkarwLIMsaXXAY4Np9TMYYBg4CjUbjt6
         IUBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5u8/d/FAVA1SMvxlhwuLiLBxLoYWCAefYpC5EQqSZV8=;
        b=jRthx36Pqgy5SyViPQukLNXcsJDeUcOEQ+NRO8INfkfEDFR+aOfdyn2eLkGbHL00rX
         Bc1C+rmok3+DFpaX/kgNun5X1yTsy3QbKOK/q6040sBTtbkvdiuDdgLZcR/mQmx2mjHy
         cwiilPwXqCMQvl/6U3rZmGV5I5QzcRgB1TZVWfqVt4T053+ALkjvkxCS3IxRpiD8j2k4
         aNuvU5MqdPE/w1KMiHsiXT8I1Rt8RC5LeQaP7E7VB7HPkarmxdnUZ8BQQoHhd1mCv2F2
         flndxyODUZ0EkT53m4qJa6veJgfhM5e43phKwmlAsvxaG+4RciOWx2bTGMRE0Us8amHd
         7C8A==
X-Gm-Message-State: AOAM532aEuiZlJTAp1Eulx51GshSK9nT2tCKUu+qp0p9Np9QgKCC6oPj
        MlNmzbJJxQIVzKV8p8ckUN3cc+6cjIeeCCk3gl4=
X-Google-Smtp-Source: ABdhPJy+hnRWXXLCim3XX8VR8NttDQdoTiRqRmk15ZU3zey1uUDav8/x3CYGdR2Rhq0blwpAH6F2plDBmFbPpF26jzI=
X-Received: by 2002:a05:6830:308c:: with SMTP id f12mr3281848ots.52.1623419926189;
 Fri, 11 Jun 2021 06:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210607083921.2668568-1-ping.bai@nxp.com> <20210607083921.2668568-6-ping.bai@nxp.com>
In-Reply-To: <20210607083921.2668568-6-ping.bai@nxp.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Fri, 11 Jun 2021 21:57:29 +0800
Message-ID: <CAA+hA=R=pAVA0u1VRrW_tYcN5qwqrxYYY+aVTxk4+euB-Atvbg@mail.gmail.com>
Subject: Re: [PATCH 05/11] dt-bindings: spi: fsl-lpspi: Add imx8ulp compatible string
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

On Mon, Jun 7, 2021 at 4:33 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> For i.MX8ULP, it uses two compatible strings, so update the
> comaptible strings.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

As previously mentioned, pls improve commit message,
otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  .../devicetree/bindings/spi/spi-fsl-lpspi.yaml        | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
> index 312d8fee9dbb..1d46877fe46a 100644
> --- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
> @@ -14,10 +14,13 @@ allOf:
>
>  properties:
>    compatible:
> -    enum:
> -      - fsl,imx7ulp-spi
> -      - fsl,imx8qxp-spi
> -
> +    oneOf:
> +      - enum:
> +          - fsl,imx7ulp-spi
> +          - fsl,imx8qxp-spi
> +      - items:
> +          - const: fsl,imx8ulp-spi
> +          - const: fsl,imx7ulp-spi
>    reg:
>      maxItems: 1
>
> --
> 2.26.2
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
