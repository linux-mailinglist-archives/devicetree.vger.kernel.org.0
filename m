Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45088645BA3
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 14:58:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229863AbiLGN6h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 08:58:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbiLGN6Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 08:58:25 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FD6E5C0D7
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 05:58:23 -0800 (PST)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6758541531
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1670421502;
        bh=9GCL3W6v/AmfhZbVCu5utEsH4vGz3v+tufp1/dYemRM=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=dKUvmoqIGuOxHNNKEtH6Ri+Tj3dSZVfYeYVSgDiUN6H61FwQWPWJqUqi/e4Fn2xuu
         cFFpbwz27G0cH6IvLJ9wk6uLw6/Ow4k3UNfLuHX976tCwLL8XzugxeKaFI6WAjjwCD
         r6YjAgtYcE4OPdfkKhayYEYRrmzAcRTeViS01iqxhbNpV5X5rVxhSLpHF6Pin6tx5m
         CCDm32bdgv/mRZnnZbR6BQ7pMATmx3j8ckrdtGTzDv8s5ePMbVvjv39CcD6tCAFH2J
         /DPUK9zV3PpQsFoI78UI62t60cGEMqIy4bbVoNDTNKjGyKKiDSdg7yHEYqSm31N70d
         JlkdjN8VAbp8g==
Received: by mail-il1-f200.google.com with SMTP id 7-20020a056e0220c700b0030386f0d0e6so284221ilq.3
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 05:58:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9GCL3W6v/AmfhZbVCu5utEsH4vGz3v+tufp1/dYemRM=;
        b=S+ZOHlmFdF6wzJQfN/hHUVvBvrxqoOCD/VTg3CNEZcoiJIDyRv/+IvSg6PncwrZK80
         XAdiQ6uRwyKiawYiAbSqZ2aDkmE1jplHG5k+zadWQIsPMd0T6RGG5UUWskaXCj0gf7U2
         tpB9RbL9tkCdtrVAMhJMCvvXf2jMi9hL6dM7RQ9YXYx9P6L7bmNbrUiVRyn0Ts0UTdQG
         dvtePmoYOeDpW3wn3ph68urcMnR0tW/UovyMTkVy9TCjPLgcwEeDQj5OI1j5PVID+5DZ
         ht4y2q+RwjUar968yfjId69L/MIQeB/PFUDem2NLa1Gt90ashA6MrFzsL8WOvYfnOHXn
         bXOg==
X-Gm-Message-State: ANoB5pkRQSp7P0rxVxz0YWvyZxV077IcjtsHAJYhDcyTgcq1f1gNC8IQ
        t51AL1pUF0AhwmLEN7nATMDqCVosq438eqwXAxdOSl9S6LyGTlyVzCTj8gFGEeaCvzuYc8WuF+V
        nIm6SmfJAwxOx3Oy88/WaDzbdZuc4vFEaCqFFkmpOC7CUe/iXNuwxGvI=
X-Received: by 2002:a05:6638:15cb:b0:38a:a2c:5c1e with SMTP id i11-20020a05663815cb00b0038a0a2c5c1emr14812167jat.35.1670421501101;
        Wed, 07 Dec 2022 05:58:21 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6oS4WtB4AY/x9xEAWaZszCLUNeiIhVzCL4QBdnRGkNjsZUkTVArtcl3+u1LcaAO1HHytY7Lk4DCTgXk2m0eYo=
X-Received: by 2002:a05:6638:15cb:b0:38a:a2c:5c1e with SMTP id
 i11-20020a05663815cb00b0038a0a2c5c1emr14812154jat.35.1670421500857; Wed, 07
 Dec 2022 05:58:20 -0800 (PST)
MIME-Version: 1.0
References: <20221201090242.2381-1-yanhong.wang@starfivetech.com> <20221201090242.2381-3-yanhong.wang@starfivetech.com>
In-Reply-To: <20221201090242.2381-3-yanhong.wang@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 7 Dec 2022 14:58:04 +0100
Message-ID: <CAJM55Z8ZDKWEkdWuRZfcMQDrySMh4vdB1UvkAC+q1GRKMbGuEw@mail.gmail.com>
Subject: Re: [PATCH v1 2/7] net: stmmac: platform: Add snps,dwmac-5.20 IP
 compatible string
To:     Yanhong Wang <yanhong.wang@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 1 Dec 2022 at 10:05, Yanhong Wang <yanhong.wang@starfivetech.com> wrote:
>
> Add "snps,dwmac-5.20" compatible string for 5.20 version that can avoid
> to define some platform data in the glue layer.
>
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> Signed-off-by: Yanhong Wang <yanhong.wang@starfivetech.com>

Hi Yanhong.

Thanks for submitting this.
But just as a reminder. Please don't change the author of the commits
you cherry-picked from my tree.

/Emil

> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> index 50f6b4a14be4..cc3b701af802 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
> @@ -519,7 +519,8 @@ stmmac_probe_config_dt(struct platform_device *pdev, u8 *mac)
>         if (of_device_is_compatible(np, "snps,dwmac-4.00") ||
>             of_device_is_compatible(np, "snps,dwmac-4.10a") ||
>             of_device_is_compatible(np, "snps,dwmac-4.20a") ||
> -           of_device_is_compatible(np, "snps,dwmac-5.10a")) {
> +           of_device_is_compatible(np, "snps,dwmac-5.10a") ||
> +           of_device_is_compatible(np, "snps,dwmac-5.20")) {
>                 plat->has_gmac4 = 1;
>                 plat->has_gmac = 0;
>                 plat->pmt = 1;
> --
> 2.17.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
