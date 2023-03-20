Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B4FE6C112F
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 12:51:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231252AbjCTLvc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 07:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231254AbjCTLva (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 07:51:30 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C489E22DC2
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 04:51:26 -0700 (PDT)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A84813FFF7
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 11:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1679313083;
        bh=GGpWfsM5C1ImSMDFhmoi1LbWjuKbL/WrII+NG9/nakI=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=hM94kEI8J2CWhITw3n83CPVx9YzA536hjQLxYB06Fxl+w8uG0/GUhF93JlycEI8AZ
         dymKrPQWZZAsV/6EfntZ5gkHMMPrFq4ol60FfcOQqq+RBWxe4G4kJntWA0i6Edhofp
         f+vtVJEfeHVPeJea8V9q+C32gk7jABGBITbezAw2GuC1weGYHVcrxta2XEtNcMVFhG
         Ef3uD2YTZ3N0dyFcRlB7W4gtsACVUENNVpNoxJO+qE7ulF0uBcUfZ+tWdZnt/RdcO9
         WYl4GYOgIZ7GpjdbgMQLupexlwgQhMHwbSFXJ3sExIasIIhXs2skMyEJG1X+C9/Kmk
         Mlq+Zc0K7+q/A==
Received: by mail-qk1-f200.google.com with SMTP id a17-20020ae9e811000000b007467742991dso1677876qkg.13
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 04:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679313082;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GGpWfsM5C1ImSMDFhmoi1LbWjuKbL/WrII+NG9/nakI=;
        b=Hn0zfMKX6k39pOxSMtIGfRRL2By6IZivRxbtx85+RTwg4RUoGQh5UqRmF1IqkWKESd
         YEvK7+DqtAeQc1pdEyLlMZkYtPBwqGcxEj+DCpuErqifNOrth2z6Xsgy9jBzPPqbJm21
         2QpWG3uEukMuOmOckaC0ptu6zH5bxX58LloiA5kdgjRgttbA1QjyetLvOXYMDxKDbCn8
         HLH3dhNNilqkabUxnGntLDoX5qivE2LXb2213fxtrukSjzU/4RRudHXumt1OCqv5qrAE
         uJzp+WnLzAgJNTLzY4L6YmLnzXDXzcFoJtkk+ZBlvmoA6eXJRgldJFDfD2rIwZEFrh1u
         Tg9w==
X-Gm-Message-State: AO0yUKUZKLiUJavuImrR4/s/Ivst/0XVrPYdDMAuZjS+DhGeMj9euCUD
        mbSyszcgcOZHmfQkDa1qeyyuQs37DI1EdwoJ2TiTDwBs5y31LjKGIpMGzb2GLAKNPSoZAQrEhQ9
        HJmi2r6DXg3u6vpN2BDWC25eTaYVayKpI7M2MKt0d1sxPKB7MlUfqOhI=
X-Received: by 2002:ad4:59c7:0:b0:56f:3e5:850e with SMTP id el7-20020ad459c7000000b0056f03e5850emr6960040qvb.3.1679313082510;
        Mon, 20 Mar 2023 04:51:22 -0700 (PDT)
X-Google-Smtp-Source: AK7set/l+AwVJZR40S7GPUVKDWevuOOVX4sYPIEehyQctIQv1qL8d4CCuDF//+jeSsWW86R+pXOcTviboByTpW6VUeI=
X-Received: by 2002:ad4:59c7:0:b0:56f:3e5:850e with SMTP id
 el7-20020ad459c7000000b0056f03e5850emr6960029qvb.3.1679313082287; Mon, 20 Mar
 2023 04:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230311090733.56918-1-hal.feng@starfivetech.com> <20230311090733.56918-6-hal.feng@starfivetech.com>
In-Reply-To: <20230311090733.56918-6-hal.feng@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Mon, 20 Mar 2023 12:51:06 +0100
Message-ID: <CAJM55Z-2HB4PCw3fy6n3e0FErV9DXqGazVkq4TN+X+34ozNcbw@mail.gmail.com>
Subject: Re: [PATCH v5 05/21] reset: starfive: Replace SOC_STARFIVE with ARCH_STARFIVE
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Ben Dooks <ben.dooks@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 11 Mar 2023 at 10:07, Hal Feng <hal.feng@starfivetech.com> wrote:
>
> Using ARCH_FOO symbol is preferred than SOC_FOO.
>
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>

Thanks!
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  drivers/reset/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 2a52c990d4fe..6ae5aa46a6b2 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -234,8 +234,8 @@ config RESET_SOCFPGA
>
>  config RESET_STARFIVE_JH7100
>         bool "StarFive JH7100 Reset Driver"
> -       depends on SOC_STARFIVE || COMPILE_TEST
> -       default SOC_STARFIVE
> +       depends on ARCH_STARFIVE || COMPILE_TEST
> +       default ARCH_STARFIVE
>         help
>           This enables the reset controller driver for the StarFive JH7100 SoC.
>
> --
> 2.38.1
>
