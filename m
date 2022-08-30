Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F2EB5A5FD9
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 11:52:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbiH3Jw5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 05:52:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbiH3Jw4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 05:52:56 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ADCFC04DB
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:52:55 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id q16so10755319ljp.8
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 02:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=X4ivbhRWgyxT7Llsm52Y29ov7cWVmlpwCa1zS7A+iTI=;
        b=BrUHgkIAA7hxrxeShkvcVe7ewUG8TegLxze05ZQy3NiTQchhEioyqbpdqvq0SS9bms
         jpuhGh57J4IZFFXC1hTkrC4Lh1KbUXB2kl2n/5EsGznZrkv4vLGe9lrr+LgZA3M3CsFV
         Lz7stAVUvk92hP4gKo9qNZjJ4NHmY7wY3U+mQeaR8QDoBlCn4qZIs2wVycl61eg3HZza
         /o33ugK9TrsTlMXu9TOFEjFB1JqvleLD5CGkfX7/k2dYTx9NUPQM3b90lW3sOYaJgMzU
         uhKpon6risOpRbEC9KewJ98+e3LNVIIntRmNo5WuL3CNPK0K2AOL5T1Cm4gVUbP/F+BT
         FnNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=X4ivbhRWgyxT7Llsm52Y29ov7cWVmlpwCa1zS7A+iTI=;
        b=j0WQhFL2bVulLEBrQDaV+qQS4V29868g9WSJpb3Q0WlXp7pl+/VSeVkmTy+klB9+PD
         uqSIeeI3I3L7b4Z9dYNPMOPlWSQZPDxij+VUU1cMDxw/fAXvLBH0JSf+yagd1wHJ9HTz
         8kdTUAcRVkIFmfQNLeu2YunOPy5Q0AI/xG7aDbPd9GuyVuxRu/TNG1yMInvNfiFVxgCl
         2DYfwfAUQZIOpUdq4cYEBppCP2EUw1br7gjcG12WdVnkiMwsUUYGt/cqrKu86oEai3R7
         9aiY6/SXrXsBX+Cu0uQLC/zVdaKTjoeyu3mwdn0o5dkATR8pZd8lQIHoXZfzypLmMXvl
         pkNQ==
X-Gm-Message-State: ACgBeo2FJpjHpcuw81C18mqEeWnGuly630IvHHwfY9Im6bUF2eXOAUzv
        qETSVP0ztoSLiCLaq+Q6tQdlqg==
X-Google-Smtp-Source: AA6agR6bxNa/mrr4BFpFfg6fe90+ux9IdJyCtMlNr9+Sq8EPuTBGmx2+ozMF88ZqYDXhKJyE1Xoh7g==
X-Received: by 2002:a2e:8508:0:b0:265:a8f8:4f7b with SMTP id j8-20020a2e8508000000b00265a8f84f7bmr2325043lji.157.1661853173971;
        Tue, 30 Aug 2022 02:52:53 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id z22-20020a2e8e96000000b00261cf066d1csm809518ljk.130.2022.08.30.02.52.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:52:53 -0700 (PDT)
Message-ID: <d7303503-70ef-7307-8cc0-1bc334c9e6af@linaro.org>
Date:   Tue, 30 Aug 2022 12:52:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/4] dt-bindings: arm: ti: Add bindings for AM62A7 SoC
Content-Language: en-US
To:     Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bryan Brattlof <bb@ti.com>
References: <20220829082200.241653-1-vigneshr@ti.com>
 <20220829082200.241653-2-vigneshr@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220829082200.241653-2-vigneshr@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/08/2022 11:21, Vignesh Raghavendra wrote:
> This adds bindings for TI's AM62A7 family of devices.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> index 61c6ab4f52e2..28f6ea4c007e 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -65,6 +65,12 @@ properties:
>                - ti,j721s2-evm
>            - const: ti,j721s2
>  
> +      - description: K3 AM62A7 SoC
> +        items:
> +          - enum:
> +              - ti,am62a7-sk
> +          - const: ti,am62a7

Is it possible to have some order in the file?

Best regards,
Krzysztof
