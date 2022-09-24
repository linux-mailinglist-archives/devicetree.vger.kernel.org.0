Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C3785E88D4
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 08:45:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233444AbiIXGpT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 02:45:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233336AbiIXGom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 02:44:42 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9ED317E13
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 23:44:39 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id g130so2284433oia.13
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 23:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=RCkEsVbeznfy3hGllYd4J9hMBx6L/Y7BiAwihKpP1pk=;
        b=OUgcN9vb3eut5Guh4bfVyMwNyJ6f8mIzLeChl1dsz/iQWRw/SXnluaVQbuc8jBI6cj
         uh13zPYuJE+w4tDMjaXolg7JTSGxl28rgglvKfKdcgwmimhPw2bC/9La5JBxYKFUfVyP
         rqU4i6S7stsB5NUV7ffvBl0bzo2HBFioqEoFpdOTlc0Q8Mpgd7F3kAcxMIPlCF4/1dLj
         cdrK/0CqeAQgPdLH/U0ubIEZB95qXnjrxnS4GavcYGk9Dyss4u9LAJKqLbjcxish13Qr
         uy6CnMfZMm5chgwuAq0fAFig0p64EjCc3gLuBgLszCCPfGVCGTXvN5Wty5+pANXzHsIe
         y/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=RCkEsVbeznfy3hGllYd4J9hMBx6L/Y7BiAwihKpP1pk=;
        b=721LZbSi3OdPhX4alSG0CeGPvn4yv9ANee58LF/fNeEP+34FkRBiyD7MmSJa+J87Sp
         T/ySdSv0+5pq51kXYPKwixy1Yi2XjdzO7K7UglmQpPLZdCqw3riRj0vJdqC6Mzw9tcqi
         R/Vrn0x9K7ps+yKQCwlLiUai8YTm/KlAOA7RvtyU+Zy5OSdcep60wwECWP1UPOqvQlOX
         RfdZ7kWNxUgzIPs56X5HL/Jr85iOHlheeMp9LzPHM4yo4smqOP17sYslwo76BiyAFP0H
         saGm/ibJzz4sP4Ij3lknM2uMGhNpaTdxXpP1fHVG8fSqLmvQYPkpQRzrueipT4EEgG4u
         GG5g==
X-Gm-Message-State: ACrzQf1gEzyriJ79igWNGyI+jXYdOi0kp9P34/drSvFDqFQqUNAFzyAZ
        f1wUGE+TYCBjShT8i456VQMxRXl/IZPgaknv508D0oo1cOaCMQ==
X-Google-Smtp-Source: AMsMyM6SohY0/noulPxN0RnC/n0u7h1UZCCdXoeObMuI4vV7W6pt1PB8Hci5zbZr4EPtbkjIlxU1/pVk1EyZFC+3So0=
X-Received: by 2002:a05:6808:2012:b0:34f:c816:cdf5 with SMTP id
 q18-20020a056808201200b0034fc816cdf5mr10546397oiw.45.1664001879213; Fri, 23
 Sep 2022 23:44:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220922211026.34462-1-mig@semihalf.com>
In-Reply-To: <20220922211026.34462-1-mig@semihalf.com>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Sat, 24 Sep 2022 08:44:28 +0200
Message-ID: <CAPv3WKeX0xNPS-+C8iMc8WU66735JuR0PiMkc9JeDdb0sR9ckg@mail.gmail.com>
Subject: Re: [net-next PATCH] dt-bindings: net: marvell,pp2: convert to json-schema
To:     =?UTF-8?Q?Micha=C5=82_Grzelak?= <mig@semihalf.com>
Cc:     devicetree@vger.kernel.org, linux@armlinux.org.uk,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, upstream@semihalf.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Thank you for the patch.


> +
> +properties:
> +
> +  dma-coherent: true
> +
> +  compatible:
> +    enum:
> +      - marvell,armada-375-pp2
> +      - marvell,armada-7k-pp2

I double checked with armada-cp11x.dtsi and the driver. Please
s/marvell,armada-7k-pp2/marvell,armada-7k-pp22/ in all occurrences.


> +
> +  reg:
> +    minItems: 3
> +    maxItems: 4
> +
> +examples:
> +  - |
> +    // For Armada 375 variant
> +    #include <dt-bindings/interrupt-controller/mvebu-icu.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    ethernet@f0000 {
> +      interrupt-controller;
> +      #interrupt-cells = <3>;

interrupt-controller and #interrupt-cells are not valid properties for
this controller.

> +      compatible = "marvell,armada-375-pp2";
> +      reg = <0xf0000 0xa000>,
> +            <0xc0000 0x3060>,
> +            <0xc4000 0x100>,
> +            <0xc5000 0x100>;
> +      clocks = <&gateclk 3>, <&gateclk 19>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      clock-names = "pp_clk", "gop_clk";
> +
> +      eth0: eth0@c4000 {
> +        reg = <0xc4000>;
> +        interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
> +        port-id = <0>;
> +        phy = <&phy0>;
> +        phy-mode = "gmii";
> +      };
> +
> +      eth1: eth1@c5000 {
> +        reg = <0xc5000>;
> +        interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> +        port-id = <1>;
> +        phy = <&phy3>;
> +        phy-mode = "gmii";
> +      };
> +    };
> +
> +  - |
> +    // For Armada 7k/8k and Cn913x variants
> +    #include <dt-bindings/interrupt-controller/mvebu-icu.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    cpm_ethernet: ethernet@0 {
> +      interrupt-controller;
> +      #interrupt-cells = <3>;

interrupt-controller and #interrupt-cells are not valid properties for
this controller.

Best regards,
Marcin
