Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B4AB562FBC
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 11:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232328AbiGAJUV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 05:20:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbiGAJUT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 05:20:19 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4AEF5726D
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 02:20:17 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id n8so2226362eda.0
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 02:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pfKYT8Jc1FgDc3r1JIflZV77YweLo1R+EqwQmp3TQuk=;
        b=ch9J5WbROG+jFYrJopCRfju4DrXngt+3FL4iUbLI5xy2A2uxWhyz0d2sZe0ciworIt
         Y+W0HNSRUW3C2v9jOosbXtU97scLz/mZJYuff7rkoQbjUvzoAK1b19V43MiwZ2ABOmpp
         y+lE7/GDO3uyzkuPgaXeLChgWkIoqKN6A9wrB2nbqd1ifLeYnLehAsomrnoRbmxMOOHV
         xX0kTd4uqvnW33YGaOrU+WWAJ8EimtEVWWzZTaY4c42VdOGFUbwd5Adepb+roAcyieuZ
         05OqCxuBlRansgNqWbLq+fnL3c3bRXWLnL/nzfTsn4g33JBBmRNt3yFbjHUL4HZ8ZwlO
         O9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pfKYT8Jc1FgDc3r1JIflZV77YweLo1R+EqwQmp3TQuk=;
        b=Tdop6S3afhfO4Sv1PXSW1N55szZzACVptQ9SVXPZhW4tTzQzzNz0/ngHAcG7aMvxuC
         GkbRH0583q+onKAjdiLncx0fNEermA61wARbPKgCL7BQ/OrmgKn6lgH1e2phgl6MXIau
         Q0iZJyQJySpMztfvl6t+p7NYWXvjPRW8k9BkncuUhVVrN4312FIxvgZNfsdWCZTUorYb
         aYpvAgXxeHllCdJh/xwcq39XUBctFSoFSrVXsWvUB+uvPAfr5FdsciJNz8AAiLMQVvru
         3pglwZwnF2lTWMgf1UwNTNO3MjatBaCxPVjt43F0z8jMbe0M6fRrZhMLiekV3eVQXWMH
         yN+g==
X-Gm-Message-State: AJIora+3RQBbTYv+MuzZkEegWSrQP0+TvD9lsqYLeU+SkrST85qYoVWg
        GwYvYAZSLNYck3+sHbiA00Bjkkt59U6g9hasoOHmAw==
X-Google-Smtp-Source: AGRyM1tAfFM4zxkGfwOTJkzWnl2exmPlKQgrm30eNhARBnWFfa/vm+SDMnOKQLWQIcWGJSdB8mTjO58N3bFdzE4Nlps=
X-Received: by 2002:a05:6402:150:b0:437:b93c:3a9 with SMTP id
 s16-20020a056402015000b00437b93c03a9mr16897407edu.82.1656667216308; Fri, 01
 Jul 2022 02:20:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220629170420.2712077-1-l.stach@pengutronix.de> <20220629170420.2712077-2-l.stach@pengutronix.de>
In-Reply-To: <20220629170420.2712077-2-l.stach@pengutronix.de>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Fri, 1 Jul 2022 11:20:05 +0200
Message-ID: <CAMRc=MeN6JxtSJ8kNrvrMZJGcnv9SYzH0JO6RQUc6PQzqYMp-g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: pca9570: add pca9571 support
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 29, 2022 at 7:04 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> The PCA9571 very similar to the PCA9570, it only differs in the
> number of GPIOs.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/gpio/gpio-pca9570.c | 2 ++
>  1 file changed, 2 insertions(+)
>
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

Applied, thanks!

Bart
