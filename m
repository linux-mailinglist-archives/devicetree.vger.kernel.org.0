Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C853C62FCDC
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 19:36:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235084AbiKRSge (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 13:36:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242396AbiKRSgd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 13:36:33 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E38382BD0
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 10:36:32 -0800 (PST)
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AA9333F1C4
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 18:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1668796590;
        bh=6VxHStuRLDpPBr5lVOouI+tg17w8c3EutmridvLwKhQ=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=W3Sud56OF5hQO/uDBWwqNR7cfyhhN6W66+WgT/8w9pHvuolRZ271yRm1DRhWw1fzI
         hYiYMK/GX5lEOFMXDyAWzI/Wy+tp1R1c7bp1yrbIy3l15nCg7HgshMPWihqYMgb+ul
         yBV7I6BSld8GfGmQjZNjOiNOABPnfs86lLRyQkDymY80KPH7RLQwpxqDvFFicSc9Um
         IWy388BPB6dMGS12+TFUHeWAn2w0rzwIo07IP8joxPSFw09FgWnlq7QsF56xgAq6ws
         0cIbqwv+eauRqKGDsBDGUNSPF0Sl4W4v90IETHEal1rul5hVEXXLJcieP2LyMAyRLj
         Kc0xQ54wjsWMQ==
Received: by mail-yb1-f198.google.com with SMTP id f71-20020a25384a000000b006dd7876e98eso5122490yba.15
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 10:36:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6VxHStuRLDpPBr5lVOouI+tg17w8c3EutmridvLwKhQ=;
        b=MytqYnakpdnQ8Hk2h4GgPEttkK1JOAzaylIzS5PVnDC5ATMq9U50yj1B8VEpEcQYnK
         7Da8evlzQ6KYXr9YVI95Vh8AQzbKAm50v5GsZZpdODKqgwOX9L8sphN3hV8nxoNWdto/
         /bIkPXEFbFcv1U4NpP99KF2yiGJiRJGtDYxOqC3bmBrHHpTk0GJGneZ7D3k15iElZH0w
         h2cc1p2N1WmkAU/48ZwTcQk+u0d8Pm13azbveeeYbAofpR/FRRuR7lwm/5R9YAe/HARw
         TRDMBqtG7HRSf+aeYSemnY/4sRqbd1KHGgXRGPbyISxgzxgC1T3sth4u8jKeUQWqleJk
         0PVA==
X-Gm-Message-State: ANoB5pmLVW/kRehE7ig+AslJ+cTzSmcmjQREKRMbc70LgOnCw72kpKgq
        sRRd9Vpjmv0H6jwFiZXkmyTvBPDF+QcJcbqLHo6tRCjXmGF4WHoHYnu7k0YSlR92LuB4ItrSqJR
        rHrH1l1I8abEdhIPWVUAAAIk5dJ+FmHoZMJVtiy3phvV8d8+orKxFhfM=
X-Received: by 2002:a25:84cc:0:b0:6e6:b5f0:3ae0 with SMTP id x12-20020a2584cc000000b006e6b5f03ae0mr7925728ybm.439.1668796587881;
        Fri, 18 Nov 2022 10:36:27 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5AiJeG5bIDPDjlRtwy/G+Yx3JIXOe1PHL7qEJarm5y87m06pZNBGulWELgbXrdeg6aHO/0uOTWrX9x1+Xs82o=
X-Received: by 2002:a25:84cc:0:b0:6e6:b5f0:3ae0 with SMTP id
 x12-20020a2584cc000000b006e6b5f03ae0mr7925710ybm.439.1668796587659; Fri, 18
 Nov 2022 10:36:27 -0800 (PST)
MIME-Version: 1.0
References: <20221118133216.17037-1-walker.chen@starfivetech.com> <20221118133216.17037-5-walker.chen@starfivetech.com>
In-Reply-To: <20221118133216.17037-5-walker.chen@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Fri, 18 Nov 2022 19:36:11 +0100
Message-ID: <CAJM55Z9bJqpEGbbx1=EBXhmhigxuHw=ObBdTJ7xy+QY=pTJyoQ@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] riscv: dts: starfive: add power controller node
To:     Walker Chen <walker.chen@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Nov 2022 at 14:35, Walker Chen <walker.chen@starfivetech.com> wrote:
>
> This adds the power controller node for the Starfive JH7110 SoC.
> The pmu needs to be used by other modules such as ISP, VPU, etc.
>
> Signed-off-by: Walker Chen <walker.chen@starfivetech.com>

Hi Walker,

You called the driver jh71xx which suggests it also applies to the
jh7100. Are you missing a node in the jh7100 device tree?

> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index c22e8f1d2640..fa7b60b82d71 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -356,6 +356,13 @@
>                         #gpio-cells = <2>;
>                 };
>
> +               pwrc: power-controller@17030000 {
> +                       compatible = "starfive,jh7110-pmu";
> +                       reg = <0x0 0x17030000 0x0 0x10000>;
> +                       interrupts = <111>;
> +                       #power-domain-cells = <1>;
> +               };
> +
>                 uart0: serial@10000000 {
>                         compatible = "snps,dw-apb-uart";
>                         reg = <0x0 0x10000000 0x0 0x10000>;
> --
> 2.17.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
