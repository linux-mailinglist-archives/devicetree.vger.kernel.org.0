Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44CD6520ED4
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 09:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232812AbiEJHpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 03:45:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233764AbiEJHph (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 03:45:37 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6129E5A0B9
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 00:36:24 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id m128so29143211ybm.5
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 00:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hY6+591F/MlGVcpiW79HiU9PaxG2TVex+7uSdNAfNwU=;
        b=F+/zbLarFdPEvCfE6RK8zuQPQlwASILc7H/dXEH9raiHrJ5nZnJ9L4ajoixPqPuZL8
         JOXEaN8apqfOE91L84yyAq9K0tB7+/Fgym5m4hJUq4GWhkRx0vDZyPBtN8kvmg3bk8+x
         R3/pPqZxzLUV7WehRlX7ch+gWV7aLhr4+NKCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hY6+591F/MlGVcpiW79HiU9PaxG2TVex+7uSdNAfNwU=;
        b=WnaD5DC5olFNSsnJg6dtn9Toplig5fZbHmxKO+mGmvUzqvHeICFNfigFD/2aV4Z+99
         UjfKGuYMxmpJxr7V2IedGx+zQz9Lrgfxrxxs40twO+mxRwipDieDkmJpeo7CA3xrxyFc
         Vw2M8TFcQMU/FZuRfaAztJAT2KfnxR9WHDmIzaXbZrAJLfKlV3NfFhffa6f3KH0XTcuK
         aPpeiLyX47eXGfAsqdom/yefe80WOd2eiToSY9KZL4t/xlQ5ziXEX9NF4YBVs4BllLvj
         5r5AeePHG9C0AIeVcR+Yl92FHl+k32zpBgroSA39+knyHuPoEJY9vvQBqotnIUUoY5b7
         KjFw==
X-Gm-Message-State: AOAM530sM0BGybhfozeHF/35J+1fx33xhVAzkhuk2fBj0taSBRGLdiAg
        rEEtpSYTSS0kECkySv8ATBSYt1P9k9/EPBylikpA7Q==
X-Google-Smtp-Source: ABdhPJyZ1hqwJRTEoRgqfcQIHd9G1+rLkWX/KBamglxZ36Zz+eyqsXZC6Uao2LgkxJct2f4y9cA68vC0ZT0cCRoyoIM=
X-Received: by 2002:a25:a28f:0:b0:645:db89:4568 with SMTP id
 c15-20020a25a28f000000b00645db894568mr16506227ybi.189.1652168183675; Tue, 10
 May 2022 00:36:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220510152020.1.I6094f0a935212eabc7d9348d6cb5a2517ccc2514@changeid>
In-Reply-To: <20220510152020.1.I6094f0a935212eabc7d9348d6cb5a2517ccc2514@changeid>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 10 May 2022 15:36:12 +0800
Message-ID: <CAGXv+5FBJScU_-YC=vhPVM0KEO5vtP=KOH_gRnpFivQaHziU_Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: add aliases for mt8173 mmc device nodes
To:     Eizan Miyamoto <eizan@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 10, 2022 at 1:21 PM Eizan Miyamoto <eizan@chromium.org> wrote:
>
> Doing this makes them get enumerated in a deterministic order so that
> the assigned name in /dev that the mmc devices get assigned is
> consistent across reboots.

Arnd, one of the soc maintainers asked folks not to do this:

https://lore.kernel.org/all/CAK8P3a3_uO23Y0tyfdh26tmCVcyp6XM+ur0WUd4khGUoBb32Hw@mail.gmail.com/

and subsequently all mmc aliases for Rockchip were moved to the board level.

> See ead9f7d7ea9 ("arm64: dts: qcom: sc7180: Assign numbers to eMMC and
> SD") for similar work.

I don't know why it didn't happen for Qualcomm though.

ChenYu


> Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
> ---
>
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> index 6b02cff605fbe..9f3cd54116de9 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> @@ -55,6 +55,10 @@ aliases {
>                 serial1 = &uart1;
>                 serial2 = &uart2;
>                 serial3 = &uart3;
> +               mmc0 = &mmc0;
> +               mmc1 = &mmc1;
> +               mmc2 = &mmc2;
> +               mmc3 = &mmc3;
>         };
>
>         cluster0_opp: opp_table0 {
> --
> 2.36.0.512.ge40c2bad7a-goog
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
