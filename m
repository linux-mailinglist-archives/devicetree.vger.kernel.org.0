Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 545A04C65F0
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 10:46:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232867AbiB1Jq6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 04:46:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232801AbiB1Jq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 04:46:56 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2371369CFA
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:46:18 -0800 (PST)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0CE573F1F3
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646041576;
        bh=kx3KwflhSQCgPfG7GHkNt9DIyHPaoaEcSwFWIFUDpTI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=L7KDiWG+fmcYXCR8Egh0BnzyLXHIJxADNLSVhh75i8b8zgcFo2n2oZkLOT6C09tGo
         nSb1O1qYmcAdzgQpYG6ry9bjSIg632LZiz9NIMYMV3BK4q1c7RkxxoWmlDDHuD+mGQ
         b7eWN5a9gGlI0fGYChczq1dCBWz/RI+FGsfdaU3kdLELUS35ByM4bzctGMbMuIc3ES
         nMoyYDHlKGHf3Z4keb1GMiZ0sb5seDzQbuNvC5VgI/jp4XNlM0f/u0Lkw/aGTV7RRd
         8P78LG4GjTWwGGd1H7vk6vgxAUl7lf5d/5YJoiFZ/q5TYzkJ+y5aq7egZaDJ8kTPp4
         l6kbzzDV6m1cA==
Received: by mail-wm1-f72.google.com with SMTP id f189-20020a1c38c6000000b0037d1bee4847so6161740wma.9
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:46:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kx3KwflhSQCgPfG7GHkNt9DIyHPaoaEcSwFWIFUDpTI=;
        b=ky9cYrrt+UgLBTSKzt9kxIc0vdzAQ+yiH4SMJLBDXYJDico3i2v/B6neJeJeZHVaYb
         nZl4y8RbTz1s2dhvaJNhRKKBU6uzrV6Y0TqOdTEYlLr3JSPcjs0bV8PyByZRCI9wk+bf
         lZAwplplAbjbAdQ/fsFVvTsEjI5HeZVqdt4sRk41XHJLQ9UgV/AO5LFd22K/JhyocHUF
         WmflPPmogYKlV6ixRvZSoB/lR9zYDe30pytBy9OaJ4E5Zn51KkgOymvL4oe2cWbd9pjq
         0kiD8Kz2WaoGUAudai3BcQI2/t1KlCqoldeliMvyItW7WrsSL09kJS0fbYRhduRRSs+z
         cBjw==
X-Gm-Message-State: AOAM5315VuG0Mv1kfrb+qn5rlDtM1iimRRIIsrFcYuFsnJQvAN6iIk1Y
        Vj4HQHM0df4HQ8gd5ttwvPne1G1kcfIoaZcuuel1bchincfz/VcHF+9qj1EN7tQILUrBf/aO+gF
        9OztMW6k2207oVXIOztid0g3KsGeQbRxx3hAciHE=
X-Received: by 2002:adf:f00e:0:b0:1ed:e1d2:f10c with SMTP id j14-20020adff00e000000b001ede1d2f10cmr15225305wro.181.1646041575515;
        Mon, 28 Feb 2022 01:46:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwL0JBj8yLIAMajpevQP4oIWnehXfhmFqdOAerH2yff2r6ZgTyrXSY7IhRRUp4jT3ezbYRq9w==
X-Received: by 2002:adf:f00e:0:b0:1ed:e1d2:f10c with SMTP id j14-20020adff00e000000b001ede1d2f10cmr15225292wro.181.1646041575355;
        Mon, 28 Feb 2022 01:46:15 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id n5-20020adffe05000000b001edf8fc0cc3sm9924559wrr.41.2022.02.28.01.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 01:46:14 -0800 (PST)
Message-ID: <269c748f-e418-8fda-7c50-f15c3e6c604f@canonical.com>
Date:   Mon, 28 Feb 2022 10:46:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: mmc: renesas,sdhi: Document RZ/V2L SoC
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220227212330.22262-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227212330.22262-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/02/2022 22:23, Lad Prabhakar wrote:
> Document RZ/V2L SDHI bindings. RZ/V2L SDHI is almost identical to one
> found on the R-Car Gen3. No driver changes are required as generic
> compatible string "renesas,rcar-gen3-sdhi" will be used as a fallback.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> DTSi changes have been posted [0].
> 
> [0] https://patchwork.kernel.org/project/linux-renesas-soc/patch/
> 20220227203744.18355-2-prabhakar.mahadev-lad.rj@bp.renesas.com/
> ---
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
