Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CA13752153
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 14:34:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233931AbjGMMe5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 08:34:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232457AbjGMMe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 08:34:56 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B13D19B4
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 05:34:52 -0700 (PDT)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1F3C63F722
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 12:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1689251687;
        bh=0x7/BB02h/Vjaz89nOjegAfaWNL3HV1UN7FsNnRRs5Y=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=JNh0jw3ksOx4BHL1gArGc6w31vuVLzRBGRc0BYXkVqOgZg8NXpTTbwCRj3QOsJ49Y
         P+wpTEZq138Qh7GumyBTk1uPEIpOO7nf7yzEPN4dIPDj8YsP2WQgTgV6gCggR3+6DH
         YF4ZZ9oCojpz4WB7dJmkNZdR61Xmb+I/Er9r44y/GcXYUW2rrdAVPXPDwSeTGbLRE/
         KZuTmQXHfe6uV/l5sXoBPm+htzGqIH7Oubt/v9qx5yJdyqxDaXdrf2uS3OkAxdDx1a
         fsOyKqfopWg7qTKi1xJHmJ58Eog5cBMpIOOxU/EzyTbrhrtvOulL7kwoR8msGtm7O1
         +/MJlQW+SAUfw==
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-767b778582eso88986385a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 05:34:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689251684; x=1691843684;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0x7/BB02h/Vjaz89nOjegAfaWNL3HV1UN7FsNnRRs5Y=;
        b=VobsXkDDV6xHeqlOPp5u1LiL5lokpI+27KF/01nXuquY8/sxoA/yqRzya5x872OhIS
         sQJUdZ5uma7WLHvk7Bx4yYl+ChVPo99K0XtLAZEgD//RA7qoaTUB/EVtBqRKqzLbiHGr
         0gPxgJT0zm1P2nGgVlqJ8OiJ7Kv8H9WzNJKMayIUQbTKkMgXcZAGzwXogeTXXggyNf+a
         UiZmV4JKkwI8qbE7wwU7fjP613p48fuagJ4oWsIgrPWTFndXOIRNVnfXTkFvmNLYjGF4
         u/B8Und9SkKuITWoWHf7mwNW8hyXOtz8RSnjbpJ3oXexrKEatDasPPf/UOpu+YsQnwRh
         U37w==
X-Gm-Message-State: ABy/qLYolz+o/mhoXF8Njl6WRLRCEgOok5cPxORtFWMOtX8Y8EM2SVq9
        tZErIG0aTNcF6sUuXPTKp4UQl+n2NGJwux/kfAKWhGTGI44MJ82EkGh2/C5/QeVs5F20DCTsTtb
        J6XlB7GmzYoHRPXgyTwnuPGpPycBI2ptNsm3fSP+d91V3D0F6XFVB6BA=
X-Received: by 2002:ac8:58cb:0:b0:403:a9ba:d595 with SMTP id u11-20020ac858cb000000b00403a9bad595mr2189547qta.32.1689251684213;
        Thu, 13 Jul 2023 05:34:44 -0700 (PDT)
X-Google-Smtp-Source: APBJJlG3uRO1DJxIMzsFBp7ZXZT9kVzajztPoJnaw8GSN7V/IFWeOTElpBFxOiBbpxw9/yVM5LzSpzhxS7VtF7gIEK4=
X-Received: by 2002:ac8:58cb:0:b0:403:a9ba:d595 with SMTP id
 u11-20020ac858cb000000b00403a9bad595mr2189533qta.32.1689251683990; Thu, 13
 Jul 2023 05:34:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230704064610.292603-1-xingyu.wu@starfivetech.com> <20230704064610.292603-4-xingyu.wu@starfivetech.com>
In-Reply-To: <20230704064610.292603-4-xingyu.wu@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Thu, 13 Jul 2023 14:34:27 +0200
Message-ID: <CAJM55Z-3YPgFOTVbz=hdL-wbWCvYTb=KMiqFbU812zF06Lqx9w@mail.gmail.com>
Subject: Re: [RESEND PATCH v6 3/7] dt-bindings: clock: jh7110-syscrg: Add PLL
 clock inputs
To:     Xingyu Wu <xingyu.wu@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        William Qiu <william.qiu@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 4 Jul 2023 at 08:49, Xingyu Wu <xingyu.wu@starfivetech.com> wrote:
>
> Add PLL clock inputs from PLL clock generator.
>
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  .../bindings/clock/starfive,jh7110-syscrg.yaml | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/starfive,jh7110-syscrg.yaml b/Documentation/devicetree/bindings/clock/starfive,jh7110-syscrg.yaml
> index 84373ae31644..5ba0a885aa80 100644
> --- a/Documentation/devicetree/bindings/clock/starfive,jh7110-syscrg.yaml
> +++ b/Documentation/devicetree/bindings/clock/starfive,jh7110-syscrg.yaml
> @@ -27,6 +27,9 @@ properties:
>            - description: External I2S RX left/right channel clock
>            - description: External TDM clock
>            - description: External audio master clock
> +          - description: PLL0
> +          - description: PLL1
> +          - description: PLL2
>
>        - items:
>            - description: Main Oscillator (24 MHz)
> @@ -38,6 +41,9 @@ properties:
>            - description: External I2S RX left/right channel clock
>            - description: External TDM clock
>            - description: External audio master clock
> +          - description: PLL0
> +          - description: PLL1
> +          - description: PLL2
>
>    clock-names:
>      oneOf:
> @@ -52,6 +58,9 @@ properties:
>            - const: i2srx_lrck_ext
>            - const: tdm_ext
>            - const: mclk_ext
> +          - const: pll0_out
> +          - const: pll1_out
> +          - const: pll2_out
>
>        - items:
>            - const: osc
> @@ -63,6 +72,9 @@ properties:
>            - const: i2srx_lrck_ext
>            - const: tdm_ext
>            - const: mclk_ext
> +          - const: pll0_out
> +          - const: pll1_out
> +          - const: pll2_out
>
>    '#clock-cells':
>      const: 1
> @@ -93,12 +105,14 @@ examples:
>                   <&gmac1_rgmii_rxin>,
>                   <&i2stx_bclk_ext>, <&i2stx_lrck_ext>,
>                   <&i2srx_bclk_ext>, <&i2srx_lrck_ext>,
> -                 <&tdm_ext>, <&mclk_ext>;
> +                 <&tdm_ext>, <&mclk_ext>,
> +                 <&pllclk 0>, <&pllclk 1>, <&pllclk 2>;
>          clock-names = "osc", "gmac1_rmii_refin",
>                        "gmac1_rgmii_rxin",
>                        "i2stx_bclk_ext", "i2stx_lrck_ext",
>                        "i2srx_bclk_ext", "i2srx_lrck_ext",
> -                      "tdm_ext", "mclk_ext";
> +                      "tdm_ext", "mclk_ext",
> +                      "pll0_out", "pll1_out", "pll2_out";
>          #clock-cells = <1>;
>          #reset-cells = <1>;
>      };
> --
> 2.25.1
>
