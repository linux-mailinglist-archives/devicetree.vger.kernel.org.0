Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56711429C6D
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 06:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232281AbhJLEbY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 00:31:24 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:48026
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232254AbhJLEbY (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 Oct 2021 00:31:24 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A51583F2FF
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634012962;
        bh=j5GNvlDgAlpbmrfI4AhEJkka1LKpKihb4cfJWgaespQ=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=o2d/EIT9pjX/s8yapFXXI2flCqLaI3JaWWEzA4Xt1+VjSgNq8pjCEaN5O9vEzK6QI
         412ZdWBViwJ/1CBnV5BSA2WmjshqlmvwKHkGy1ls1DgfvtUddsNLo6/r0qoV0ou77i
         wlypT6mQTNlpCYPMQa8SATFoTS7tjK1z2dL3X7kOtOG2T0M/GDX+Djfi/KayuPh14U
         ZVrNRzDTXtNQCRRI2YrqYXCZ8HLBmsTfdds3oJ13XyQM7BeeDbKjKxuV/WAO+f/fxD
         5zUcs2fhj9cy/z1+FNYHocsxOv+YlYA70iVPh9iGQZn5sFnJkMyqS8TvFkXpAI2Qlf
         qDdjJkmylPl8g==
Received: by mail-ed1-f70.google.com with SMTP id v9-20020a50d849000000b003db459aa3f5so15146658edj.15
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 21:29:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j5GNvlDgAlpbmrfI4AhEJkka1LKpKihb4cfJWgaespQ=;
        b=UrilY6cO7iXAu0j9Eokp+XeEzInWsDgAudyaDP2Kud2K5VdPoFBoQt+ANSnjaGonlI
         3xQlZhAABxxLcqM85d4XEPzQXv8YW5/lPYRZMcYYBnyZQCmVrpO9hHjfHSBJstNXUmbR
         rEDMeP6AaP6zQPa92KjBQ3EaM3dAORAseeOVV+3VSvn8o+HKVqiKWdBy3GSm+wtqdKfR
         dHz42/RvSMrZR0mvBCqOCmvBQBvUlnXjJBUqJZ7Y59+3beZGQOaKf6pqKxlRHU3HcE/t
         oLdMpjARMxhY5f6u/THjJxJY+VYhtg+jPoQOOGRAx7F3ZZEcVrT7bBvi5tU9CmI1G0Lx
         z8Nw==
X-Gm-Message-State: AOAM532d5a33Z5e5T0NXTqwluLsQk3gYVaqtNFvLQMi2rHxGD0JibPR2
        Q6hw6ZiM/xs7XM3wqoidcvRtps+BDmPdMcN0tZxfgUaye8DPYFXMcQMHvylBi80OCKHnjKWQ6x0
        d4/WBnPGCEGBC5C+XAtuDKh3VUszDYtECmPfZyEYG4cUCVzNPkseITP0=
X-Received: by 2002:a17:906:ed1:: with SMTP id u17mr30550102eji.304.1634012962264;
        Mon, 11 Oct 2021 21:29:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1ksJYjK/aiihSiZEfvwLRPik2LJg90bitpHrZfMyTVNB23tXG2VJI1i1iMS2CddkouS6IqXMkzMJJbVhtgTw=
X-Received: by 2002:a17:906:ed1:: with SMTP id u17mr30550085eji.304.1634012962057;
 Mon, 11 Oct 2021 21:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
From:   Alexandre Ghiti <alexandre.ghiti@canonical.com>
Date:   Tue, 12 Oct 2021 06:29:10 +0200
Message-ID: <CA+zEjCtTbJnvmrM1g-CR8ZUtT375Wd-4dt0YR1zLG5nOvtDyGg@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 1/5] riscv: dts: sifive: use only generic JEDEC
 SPI NOR flash compatible
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

hi Krzysztof,

On Mon, Sep 20, 2021 at 3:05 PM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> The compatible "issi,is25wp256" is undocumented and instead only a
> generic jedec,spi-nor should be used (if appropriate).

Why not do it the other way around? I mean adding this compatible to
the expected list: don't we lose information using the generic
compatible?

Thanks,

Alex

>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>
> ---
>
> Changes since v1:
> 1. New patch
> ---
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 2 +-
>  arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 60846e88ae4b..633b31b6e25c 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -63,7 +63,7 @@ &i2c0 {
>  &qspi0 {
>         status = "okay";
>         flash@0 {
> -               compatible = "issi,is25wp256", "jedec,spi-nor";
> +               compatible = "jedec,spi-nor";
>                 reg = <0>;
>                 spi-max-frequency = <50000000>;
>                 m25p,fast-read;
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> index 2e4ea84f27e7..9b0b9b85040e 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> @@ -211,7 +211,7 @@ vdd_ldo11: ldo11 {
>  &qspi0 {
>         status = "okay";
>         flash@0 {
> -               compatible = "issi,is25wp256", "jedec,spi-nor";
> +               compatible = "jedec,spi-nor";
>                 reg = <0>;
>                 spi-max-frequency = <50000000>;
>                 m25p,fast-read;
> --
> 2.30.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
