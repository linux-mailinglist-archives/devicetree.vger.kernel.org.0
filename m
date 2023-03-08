Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2E86B0E39
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 17:10:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232466AbjCHQK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 11:10:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232637AbjCHQKG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 11:10:06 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CD565D468
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 08:09:29 -0800 (PST)
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4D5E7445B8
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 16:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1678291766;
        bh=jxEkW8OFX3baFTB/CKLudkQuvhDNrRf95y5rQkRLsGE=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=eyW/8nofgUFcTirYPvjZNN5tzG13OiiHcNT/UjW3PibbRfEvyY0MQZpTKJBByca4C
         7p6XHBEkoElNIrx+I1nh3Cno3KMWj9CQZ6H2BECi9cFb8H76avmUjRwfhhcVNYb4ri
         J2TU0198xJsSzandzB0CsmzRmZCEXfkx7yT3s6b1+al61mE8gHYwamff2YAnJI/h0r
         OOpDfcawt6xSstGWc2vYYEzxsbX55ES7FDcppikHnW/70RdiscCNPcRiH+KP6Rthd+
         00sOGBWhyHcJjb1Bh9UFpzoPMVPxZ2AfnUYi8VVJ3UfiHrsJTcd23x8Lp+iPLrVdg8
         1bXaphw6d8vJQ==
Received: by mail-qv1-f70.google.com with SMTP id x10-20020ad440ca000000b005800220da38so8340809qvp.14
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 08:09:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678291765;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jxEkW8OFX3baFTB/CKLudkQuvhDNrRf95y5rQkRLsGE=;
        b=TbSZfTPgVihzkRB8SXxlqRaETDpmp3nDKVB+3wHGGVml3M3m1VOqt+9PXDwUXZDYEA
         Dhgp6M0RfUJZrA/Lc+kPReH3WXtwVO7R8fagtgGGWacH4enaDPOgISvaBPhdhOACH2QG
         CVs3S7kg/5q7vyxXKMU/tupB2nDVpoaBgziOLChhA2gXSWzaeosIMph5hVqvwLF8iH3x
         8MY9kr4vXILRU8aP1jI/aBTWbJbjbjaJGnJKn3h3evFGkbboQpEgQrROlaTE1AVV0+ro
         fs7W/TCr2R7xJQKKm0fzlbapccGH88zjef3IKNsnt2JKSskX/F2vJZmPbYIWjiR1wqTn
         l81g==
X-Gm-Message-State: AO0yUKX460uz89Mk9wXymj7XfZOFpxhU+tq13dbgWpEyzWwPfaR1g31K
        2e7z/21Kuu5BAnLYKVXkBl++XFE/JejKbj+1oaF+jCeaoJsW3FdAA/tOlBLZnMC4BbTGor1NnA5
        dy8LeTN3/+HcOu8qN3IZ8CCvUJjDUBEVIy1ejsjCqbqEkkAN1Ds/ymg8=
X-Received: by 2002:a05:620a:8416:b0:742:9899:98fb with SMTP id pc22-20020a05620a841600b00742989998fbmr4036584qkn.7.1678291765342;
        Wed, 08 Mar 2023 08:09:25 -0800 (PST)
X-Google-Smtp-Source: AK7set9rDdUme+19ci4Y+eeQIQ1S8Pps6PmhEkfVr/t2a1f+TOq5hvLfQHCft/Xi0WgN485LzYzwIKfwYQUqflfbMR8=
X-Received: by 2002:a05:620a:8416:b0:742:9899:98fb with SMTP id
 pc22-20020a05620a841600b00742989998fbmr4036581qkn.7.1678291765113; Wed, 08
 Mar 2023 08:09:25 -0800 (PST)
MIME-Version: 1.0
References: <20230308034036.99213-1-xingyu.wu@starfivetech.com> <20230308034036.99213-4-xingyu.wu@starfivetech.com>
In-Reply-To: <20230308034036.99213-4-xingyu.wu@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 8 Mar 2023 17:09:09 +0100
Message-ID: <CAJM55Z9-BK1zPop_C9JX8qGLpzGXPzizUSyEtaevwbQ4NT2xaQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] riscv: dts: starfive: jh7100: Add watchdog node
To:     Xingyu Wu <xingyu.wu@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-watchdog@vger.kernel.org,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Conor Dooley <conor@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Samin Guo <samin.guo@starfivetech.com>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 8 Mar 2023 at 04:42, Xingyu Wu <xingyu.wu@starfivetech.com> wrote:
>
> Add watchdog node for the StarFive JH7100 RISC-V SoC.
>
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7100.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> index 000447482aca..1eb7c21a94fd 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> @@ -238,5 +238,15 @@ i2c3: i2c@12460000 {
>                         #size-cells = <0>;
>                         status = "disabled";
>                 };
> +
> +               wdog: watchdog@12480000 {

I don't see anything referencing this node, so the label can be dropped.
With that fixed:
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> +                       compatible = "starfive,jh7100-wdt";
> +                       reg = <0x0 0x12480000 0x0 0x10000>;
> +                       clocks = <&clkgen JH7100_CLK_WDTIMER_APB>,
> +                                <&clkgen JH7100_CLK_WDT_CORE>;
> +                       clock-names = "apb", "core";
> +                       resets = <&rstgen JH7100_RSTN_WDTIMER_APB>,
> +                                <&rstgen JH7100_RSTN_WDT>;
> +               };
>         };
>  };
> --
> 2.25.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
