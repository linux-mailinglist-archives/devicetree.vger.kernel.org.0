Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A3BC548414
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 12:15:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240006AbiFMKEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 06:04:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241412AbiFMKEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 06:04:05 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 346902DD4
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 03:03:46 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id x5so6412559edi.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 03:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7op1f5wlpAZi0Hk0xX+UhlY3juEQ52n6kB1nCF/IPqA=;
        b=OZ2QCByWoTcjEPduqfE4ETZpOdhm2BVVrQ1y2JvmL70/6hUhhXhHzap/9uYs/H+M6s
         IZ443lsk+1Tz5Ua2p6yyW7V0kC6Z3TWhgTQp6Xg++ESnmmo2FqRxXZ0EOlHrxW7zdcFn
         ErwpBxYxpycfP6Pdfk0c5pbNil/NA/5wRsQzBCmDm/Y8+StXvONND/rLyiyqEjzvKFSN
         Sa+8BAvhDz/d/5nrYYiTvK7CZSc4iHQjQoHhLZUrQf/4jOVZkBcPTAkgiyq4DvkNP29f
         Vb4c7wPWy8C2mdkEaEPY4wg0XExXrPXxFYdp+zy3H9TdTjp0KtSbrwdBjYaGVjYKuWGO
         Xohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7op1f5wlpAZi0Hk0xX+UhlY3juEQ52n6kB1nCF/IPqA=;
        b=olQWcW4aF6bEIE+b1lEhqoEzo0yTSCMDas9AxPdIr993/ddtQAeRVqdylD9Q3/0Dhv
         wafuBp5RDSdVosKCyKB/fwORDCJofgIIkeKd1Scsso2sG1fpa4JgEFmQ+A/PQMRuH23x
         7vYJ7dVsu6+zEBddB8ioS2zAFQZrlIPyOi9MVSTnEeicpSkWimPy6b3rwN49NXgM3k2U
         HxY0iSo6uVElcZrOxAnRctjuaTcLSnRO3MaQ0p+OfbqzGH0ZlVCzIQ6eifHtzaCMflkd
         MWH2RPGUDoLNG2Fo0hRVC/HUt2K7kNdNNbxzbAkUAaul9rV52TCPdEeAvEj4AY9cR3pF
         Nn8A==
X-Gm-Message-State: AOAM532m+QzJg47Vd/+SWjDtfZrEyiFZtiYDoD7zCH1xOo8hYV2Jl2S0
        dMbblO6QlW6dm4jhxlTbqSsDOKL7KlsyOS0Gant47Q==
X-Google-Smtp-Source: ABdhPJwbMYJx7GQtIWi6i1WyzoaT7vRVEP9bdUJ9Ivyl5VpP5htoL6Qw8nc7sxpOCl5AFaVs2otmmtn52KOK5OukKlE=
X-Received: by 2002:a05:6402:5008:b0:42d:c421:48c8 with SMTP id
 p8-20020a056402500800b0042dc42148c8mr64948158eda.422.1655114624746; Mon, 13
 Jun 2022 03:03:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220610164855.242563-1-l.stach@pengutronix.de>
In-Reply-To: <20220610164855.242563-1-l.stach@pengutronix.de>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 13 Jun 2022 12:03:34 +0200
Message-ID: <CAMRc=Mebt0xDXGP3X=1HpGe8YhdzhyzyYMtjZtXubMjD2y7xsw@mail.gmail.com>
Subject: Re: [PATCH] gpio: pca9570: add pca9571 support
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sungbo Eo <mans0n@gorani.run>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 10, 2022 at 6:48 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> The PCA9571 very similar to the PCA9570, it only differs in the
> number of GPIOs.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml | 1 +
>  drivers/gpio/gpio-pca9570.c                              | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml b/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> index 338c5312a106..1acaa0a3d35a 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> @@ -13,6 +13,7 @@ properties:
>    compatible:
>      enum:
>        - nxp,pca9570
> +      - nxp,pca9571
>
>    reg:
>      maxItems: 1
> diff --git a/drivers/gpio/gpio-pca9570.c b/drivers/gpio/gpio-pca9570.c
> index cb2b2f735c15..ab2a652964ec 100644
> --- a/drivers/gpio/gpio-pca9570.c
> +++ b/drivers/gpio/gpio-pca9570.c
> @@ -121,12 +121,14 @@ static int pca9570_probe(struct i2c_client *client)
>
>  static const struct i2c_device_id pca9570_id_table[] = {
>         { "pca9570", 4 },
> +       { "pca9571", 8 },
>         { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(i2c, pca9570_id_table);
>
>  static const struct of_device_id pca9570_of_match_table[] = {
>         { .compatible = "nxp,pca9570", .data = (void *)4 },
> +       { .compatible = "nxp,pca9571", .data = (void *)8 },
>         { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, pca9570_of_match_table);
> --
> 2.30.2
>

Looks good, just please split it into two separate patches, one for DT
bindings and one for the driver.

Thanks,
Bart
