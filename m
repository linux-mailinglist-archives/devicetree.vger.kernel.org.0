Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 754F37523AE
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 15:26:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235308AbjGMN0c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 09:26:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235307AbjGMN0U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 09:26:20 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C43BA30F9
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 06:25:47 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A89923F0C3
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 13:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1689254703;
        bh=njPCzRp+gLgGXnuaFscEFk6TNloreb9Z1F7nmpn2GCo=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=QaB1EROEy6wQE8NcVM2RvfUwMiEaSZZsrMErmuGoOm284DQwWRxrg7mFRb2Ygiape
         1G/jD79RdGT0bDPh0gteZxHCdfA/UUG6Kefi+sgnZ23RsSb8aClI1GORH4edNSFXGi
         HyA47bLTO3ilw7RR0lcY4nAfjGbf3cWE/QEMOWa1IfHrzDZmpmr4s//cvC8KtSzwvW
         SNdYrlmwlE9BevyzqUjMDchoJJT5Ui4J6oZ+NXVYvFjsxUvY2tdvanhMPJ+9B/a0r+
         7hpcf8lLh2PVvi+gs2Jw9L0okfyoyoekpnnRQhm2LQsf1tca4/8EsP41jnCf7WpviE
         f18JhwCpgSHCg==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-403b7a5be1dso6706881cf.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 06:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689254703; x=1691846703;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=njPCzRp+gLgGXnuaFscEFk6TNloreb9Z1F7nmpn2GCo=;
        b=XcSKN5n/v6nb40+X3UWBf8Wc3nVfugcHMT6rh3ZFA8AI+qH9Sfsy/p3vkJ1XKNj/Ta
         qf2Mly/qpHRsXSaxh0oOqGTuS6rtp3YL4xF5J5d0t+KOj7PnNV2Zb1MK3Rni20i8drfM
         sHSbz1fTut5E2V2iX+7PFhHlhTub5yWtcqkGw8ImWuRS4ZQCLhfSQl0vCCnJveDxsqPt
         VkRJvSQROitmIfaeF/ccqjIMLFTvf0x/nymKD+Q9ZuCR2dd0HRnLoAWmNxZPj9c+d30W
         7OCJuIOJyc2vmQkiNLNJiQjN9mkCUlaVc9QcTaALuIlexTQMCAGURqctfQSjZVin51x7
         ZXbw==
X-Gm-Message-State: ABy/qLaZ1vkH1yK5XrYaKpFCSBAE3zNdhsQ6ZQK40r0M2Hoxfn8Rety9
        cZbtXSIbApGynNgt71+MmNDRuoANX3CfqBAwJW5ZcqPyRQ+Yo4W+Q7zrZgoIUPCu3gIaWRtipqe
        EJesoSouHU4g3o1gl3nE2M9i8I1nhpoMMTHRaq00zluIwET/weYwgYSY=
X-Received: by 2002:a05:622a:14d4:b0:3f6:aff0:6dec with SMTP id u20-20020a05622a14d400b003f6aff06decmr1750876qtx.32.1689254702773;
        Thu, 13 Jul 2023 06:25:02 -0700 (PDT)
X-Google-Smtp-Source: APBJJlEWYwWyI37hBY/T3E7FV4GEsBkoCOExBvaA0XLzyYLy56YtYThzvj/ApC8dphahHLu8bbys9suJD14jU2FGI2M=
X-Received: by 2002:a05:622a:14d4:b0:3f6:aff0:6dec with SMTP id
 u20-20020a05622a14d400b003f6aff06decmr1750857qtx.32.1689254702551; Thu, 13
 Jul 2023 06:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230704064610.292603-1-xingyu.wu@starfivetech.com> <20230704064610.292603-8-xingyu.wu@starfivetech.com>
In-Reply-To: <20230704064610.292603-8-xingyu.wu@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Thu, 13 Jul 2023 15:24:46 +0200
Message-ID: <CAJM55Z989XRDuzff14pFa+AFnL6xBsswONFfdFxKbwGy55TwoA@mail.gmail.com>
Subject: Re: [RESEND PATCH v6 7/7] riscv: dts: starfive: jh7110: Add PLL
 clocks source in SYSCRG node
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
> Add PLL clocks input from PLL clocks driver in SYSCRG node.
>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index 11dd4c9d64b0..cdfd036a0e6c 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -452,12 +452,16 @@ syscrg: clock-controller@13020000 {
>                                  <&gmac1_rgmii_rxin>,
>                                  <&i2stx_bclk_ext>, <&i2stx_lrck_ext>,
>                                  <&i2srx_bclk_ext>, <&i2srx_lrck_ext>,
> -                                <&tdm_ext>, <&mclk_ext>;
> +                                <&tdm_ext>, <&mclk_ext>,
> +                                <&pllclk JH7110_CLK_PLL0_OUT>,
> +                                <&pllclk JH7110_CLK_PLL1_OUT>,
> +                                <&pllclk JH7110_CLK_PLL2_OUT>;

Once these are updated to <&pll ?> or <&pllclk JH7110_PLLCLK_PLL?_OUT>
if you still want to keep the defines:
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

>                         clock-names = "osc", "gmac1_rmii_refin",
>                                       "gmac1_rgmii_rxin",
>                                       "i2stx_bclk_ext", "i2stx_lrck_ext",
>                                       "i2srx_bclk_ext", "i2srx_lrck_ext",
> -                                     "tdm_ext", "mclk_ext";
> +                                     "tdm_ext", "mclk_ext",
> +                                     "pll0_out", "pll1_out", "pll2_out";
>                         #clock-cells = <1>;
>                         #reset-cells = <1>;
>                 };
> --
> 2.25.1
>
