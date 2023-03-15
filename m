Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5F336BB037
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 13:16:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231863AbjCOMQc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 08:16:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231838AbjCOMQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 08:16:26 -0400
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com [IPv6:2607:f8b0:4864:20::92e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A318E8F721
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 05:16:11 -0700 (PDT)
Received: by mail-ua1-x92e.google.com with SMTP id r7so8486024uaj.2
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 05:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678882570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PzgtuMSfYssFcR6AaTEq8LEPYe/fsdaQKwPpEYrgic4=;
        b=k3Rp96Q41gIHkxWl46EzvcWsbg9XDbuPnEwhG1PjwX6Xr1s+nIM7LYjeM9B2UORuSW
         VI+IpGXP8JadT0gZJHx6i86d+SVB/6zvk8f12f6vLgeXgooy/yAT5jecP3GtLuBXepJ0
         ExKTOOQ4Ai6fyKLRkB8MirMRjkAWnQaD0Z+QTiigFQcd4pOX4F8wHUeRbscZJovG9PAp
         pn/x4i30NMz802/Qe6pVcWg011WMldRe8NUQTDslX0drhhMrTJsjh+tKyf4+uqLGxKIt
         OHakhlV/CKY+yb0Ypg2Q+pY9l9SC9/yXJjR8+8PWP678oiPOlKCtiLcVCNegFGmAeKnN
         xe3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678882570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PzgtuMSfYssFcR6AaTEq8LEPYe/fsdaQKwPpEYrgic4=;
        b=o5cctAQADYckqcuR+T8SFhPB09miePk4ssf/x+zUSTHo1f7s7Tvoe4qqJAJgxHalVu
         5ixJDLOQUimQdAz+yL+WDv00hZjuHcHaxVJpPvaUXXch92uZekdWVKxfJ2OgzcByf8o1
         5mxb7i91hqc+F7idfetLlvSQe9gIlzL+G+p8ny0c2LEI7US83mxBHLcqW3QHvepy8u4a
         FekB/7lYH/m9f8WhnM6nwJX7+wbloGDItbcb6kOGM1/Q3yM53OIKF4i3wU2ke/ey3d4V
         zi0BpIoZTKKvfrFONJACG6i3GxSCkZEE9sf3DUNX5hiugxpBsgSvG3DtltQJLPxMHsjo
         f7OA==
X-Gm-Message-State: AO0yUKUsRh28T483F9CQYk+84mBOpxsQtf6q/S4FZmh9zulKgpIjR6l4
        eOR8wCAdBS5BAlmWE4UyFuU7pSlA2AqvUuLUvxQyRQ==
X-Google-Smtp-Source: AK7set/aG+bFALcuRIRUQTR6qqfdF0rarM40hOIYBqY24ynLEqKWSLA6YkzVNlk2cI4HcNeuGu1jAfrbV+hUwnjZZqo=
X-Received: by 2002:ab0:5402:0:b0:68a:6c1e:1aab with SMTP id
 n2-20020ab05402000000b0068a6c1e1aabmr25631831uaa.2.1678882570399; Wed, 15 Mar
 2023 05:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230310190634.5053-1-dipenp@nvidia.com> <20230310190634.5053-6-dipenp@nvidia.com>
In-Reply-To: <20230310190634.5053-6-dipenp@nvidia.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 15 Mar 2023 13:15:59 +0100
Message-ID: <CAMRc=MfG0de07p7nJMya5RfK6a_wQhrKSDZxGMk2L=vhw=_oUQ@mail.gmail.com>
Subject: Re: [PATCH V3 5/6] gpio: tegra186: Add Tegra234 hte support
To:     Dipen Patel <dipenp@nvidia.com>
Cc:     thierry.reding@gmail.com, jonathanh@nvidia.com,
        linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
        devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
        robh+dt@kernel.org, timestamp@lists.linux.dev,
        krzysztof.kozlowski+dt@linaro.org, corbet@lwn.net,
        gregkh@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 10, 2023 at 8:06=E2=80=AFPM Dipen Patel <dipenp@nvidia.com> wro=
te:
>
> To enable timestamp support for the Tegra234, has_gte variable needs
> to be set true.
>
> Signed-off-by: Dipen Patel <dipenp@nvidia.com>
> Acked-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/gpio/gpio-tegra186.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpio/gpio-tegra186.c b/drivers/gpio/gpio-tegra186.c
> index 14c872b6ad05..b904de0b1784 100644
> --- a/drivers/gpio/gpio-tegra186.c
> +++ b/drivers/gpio/gpio-tegra186.c
> @@ -1134,6 +1134,7 @@ static const struct tegra_gpio_soc tegra234_aon_soc=
 =3D {
>         .name =3D "tegra234-gpio-aon",
>         .instance =3D 1,
>         .num_irqs_per_bank =3D 8,
> +       .has_gte =3D true,
>  };
>
>  #define TEGRA241_MAIN_GPIO_PORT(_name, _bank, _port, _pins)    \
> --
> 2.17.1
>

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
