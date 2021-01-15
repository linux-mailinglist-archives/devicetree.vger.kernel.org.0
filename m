Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC2A42F7DF9
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:19:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725910AbhAOOTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:19:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726402AbhAOOTE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:19:04 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0227CC061757
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 06:18:23 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id by27so9662892edb.10
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 06:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OH+rZHzGdNTeRecZmSqrgPziCSuu4f72OhFhoRM4HuU=;
        b=K0qDpynOLuTprVDb33NvmUMReRVLpR9nrJrY+1ihuqXOcO1MEfmKwDiCEdia+8AXdI
         bzpYGv/xyqhXAZWFAOpnjSUXwXKILFKTg2zNhkd2tUNZwgrmQVtMyOIZK3yBma1JRUYs
         VE3buV/Bi1JInu/E609rSiJf6LQ45K2ztPydoL741kkqdIBvFbagpUFGQSFjEi6mWQVK
         Gq650Zj6LHrcziwkfbSqVp9iYxb+lnfyKy1l52LxLUSEvue0h/K2OR/ppEVrbSI2vE5D
         WHJBPIccv/QlcZY+cGlc/tdWv6HFTBvLhID0gi8+xKifsXx3Zk0TkAfovuuHgFi+Ls9O
         mGWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OH+rZHzGdNTeRecZmSqrgPziCSuu4f72OhFhoRM4HuU=;
        b=R2rielgnlELUwRGgmRkax/li9yn1drH/owLG6coaye3B2KI8Sf1ThWpvsh1IuyiepV
         sSbhG5kwsSku6B+hIOTmUcHjJUPdxOL2s+LRfDShdQ42e9cyvBVHFIBTZVkeVtNq7Wx4
         NMB9o2AHw4Pcj4k//kxol7c6lNX4mFyLxtcHmSK/MAIz17qm+ZdYCRpavurtpWZgulvB
         RE2Ko+SeUdlvFfVmUtlXCNYDt6KfXdq+F5AuBO6akS5+FAC5MOsxSN8Nl4T1FB5rbwmy
         SKcxDlGclSw6M1aC53ciyMkQteOVpDHk2BjsoU+SEOZEOU9X1iAcSUaoPCycTBEakEGA
         Dsew==
X-Gm-Message-State: AOAM532Fr8H/zjEV49ZeBtdI6mWABHlH4r/cSBqjIOLL7XqEgu+gNG54
        2PjSmQhR3vwmpuYw20IWHMxI2116s+pXOhjIPF27yw==
X-Google-Smtp-Source: ABdhPJwDHmfSoYGDiypTGdc3guOuQ+vdr1lYhPvGPGUbUz1IbNGaW2nJ+ayiEjiCEG6lNhn76Fm+mocjee9bhGE611Y=
X-Received: by 2002:a50:b742:: with SMTP id g60mr9586445ede.113.1610720301753;
 Fri, 15 Jan 2021 06:18:21 -0800 (PST)
MIME-Version: 1.0
References: <20210113194952.104734-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210113194952.104734-1-u.kleine-koenig@pengutronix.de>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Fri, 15 Jan 2021 15:18:10 +0100
Message-ID: <CAMpxmJWy_1vXPopMRP_-U_jEAUbHJBEHA4x88H98i2JA=dzPHA@mail.gmail.com>
Subject: Re: [PATCH 1/2] gpio: pca953x: Add support for pca9506
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 8:50 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> According to the reference manual "The PCA9505 is identical to the
> PCA9506 except that it includes 100 k=CE=A9 internal pull-up resistors on=
 all
> the I/Os." So the pca9506 device can be considered identical to the
> pca9505 for the gpio driver.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml | 1 +
>  drivers/gpio/gpio-pca953x.c                              | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml b/D=
ocumentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> index f5ee23c2df60..cdd7744b8723 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> @@ -32,6 +32,7 @@ properties:
>        - maxim,max7327
>        - nxp,pca6416
>        - nxp,pca9505
> +      - nxp,pca9506
>        - nxp,pca9534
>        - nxp,pca9535
>        - nxp,pca9536
> diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
> index 825b362eb4b7..5ea09fd01544 100644
> --- a/drivers/gpio/gpio-pca953x.c
> +++ b/drivers/gpio/gpio-pca953x.c
> @@ -73,6 +73,7 @@
>  static const struct i2c_device_id pca953x_id[] =3D {
>         { "pca6416", 16 | PCA953X_TYPE | PCA_INT, },
>         { "pca9505", 40 | PCA953X_TYPE | PCA_INT, },
> +       { "pca9506", 40 | PCA953X_TYPE | PCA_INT, },
>         { "pca9534", 8  | PCA953X_TYPE | PCA_INT, },
>         { "pca9535", 16 | PCA953X_TYPE | PCA_INT, },
>         { "pca9536", 4  | PCA953X_TYPE, },
> @@ -1236,6 +1237,7 @@ static int pca953x_resume(struct device *dev)
>  static const struct of_device_id pca953x_dt_ids[] =3D {
>         { .compatible =3D "nxp,pca6416", .data =3D OF_953X(16, PCA_INT), =
},
>         { .compatible =3D "nxp,pca9505", .data =3D OF_953X(40, PCA_INT), =
},
> +       { .compatible =3D "nxp,pca9506", .data =3D OF_953X(40, PCA_INT), =
},
>         { .compatible =3D "nxp,pca9534", .data =3D OF_953X( 8, PCA_INT), =
},
>         { .compatible =3D "nxp,pca9535", .data =3D OF_953X(16, PCA_INT), =
},
>         { .compatible =3D "nxp,pca9536", .data =3D OF_953X( 4, 0), },
>
> base-commit: 5c8fe583cce542aa0b84adc939ce85293de36e5e
> --
> 2.29.2
>

Hi Uwe,

This looks good but we usually split the DT bindings and code changes
into separate patches. Would you mind resending?

Bart
