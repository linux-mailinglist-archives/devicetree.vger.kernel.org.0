Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5EB67C807
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 11:08:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236127AbjAZKIc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 05:08:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235298AbjAZKIb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 05:08:31 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7721B65B1
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:08:30 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id q10so1221282wrm.4
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 02:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OCMpSj2qX/TvzjoL4WBA0wHs1RQU0xmnM0hsa+C5VYk=;
        b=CmBV4M5Cp06VI+Bqc7KdM3VcQ7S5S3Ya4+rhl5CQbTLwdmq8TgJH7H1pjh/lDWlW/k
         IsE4YUY+WWqWDFcQJ1tQcpL+zrUwzmpwFI6vzgIBLHDm7laszZjy+4x+7VqdRl6Y3sLr
         l2B+gd7SXtNOtZ+2eHG6licGhpHzZlBEo4gKiwFQlOJ/s9MwjKdbXaFnEYVC2KnGtweo
         IQfnFSyBoBUt9Zq50b7egWunrtCCKHxjEqeMbXA0TJbMTb3rKuCeHGNLpU7uTNxFAEmz
         CwaxpYnmn+X9T+hHO/q+VNkggupSgIFd97nBfhodCR5mL47OZj8/rP8UnNyKnZ8UeoGP
         XppA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OCMpSj2qX/TvzjoL4WBA0wHs1RQU0xmnM0hsa+C5VYk=;
        b=y/b+4WcnM68DUeJtrUfvfWSDp8ZCRlD4pBN+jUQAxKOctcCCV4kw5KZBB4e4yEuGhk
         ax52My6SnDtH1IRN3IeWHZVboXk0VMhEP4QaRg2Io/dadP6DWiuRGnRA8fgihD8wzWf1
         C8xmJms+7hhdUHoMiHrSINR0P9IHsa3BhOF3pRibtHDJ2UEcnB0lfOZ2u6kBW+36S6w2
         BXVid1YZse6RGuPITugHq6A86AVJGu8WzjkUfeTjZob2raUhTbrc915tBJc501ndg2kJ
         GIke04yhfOtZjS0eQczt1/kBTxWj1QFT2gmQFABGUbuAM4dR7/UNfYyjIzW/1T3LY4Et
         RN5w==
X-Gm-Message-State: AFqh2ko1ud/9pjbkGZxLb9hH2PJSIZSPu2gZXRalufZ7HIJzfoAEiqNg
        E2M0DEkM1kFtTjW7lZjcvK724A==
X-Google-Smtp-Source: AMrXdXvkdqGYnmBaXPcM4k99z+W9QBzHNjb5GVMx2Ejf2Dv7jLU2bRlGzTrG4Cmx6n5GRBCzwMkNfg==
X-Received: by 2002:a5d:5b0e:0:b0:250:22e4:b89e with SMTP id bx14-20020a5d5b0e000000b0025022e4b89emr33781953wrb.65.1674727709017;
        Thu, 26 Jan 2023 02:08:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u14-20020a5d434e000000b002bfbda53b98sm841421wrr.35.2023.01.26.02.08.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 02:08:28 -0800 (PST)
Message-ID: <a7b9d4b9-892d-a131-a223-c286efdc9b9c@linaro.org>
Date:   Thu, 26 Jan 2023 11:08:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH] ASoC: dt-bindings: renesas: add R8A779G0 V4H
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
References: <87zga6t5r4.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87zga6t5r4.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2023 02:59, Kuninori Morimoto wrote:
> 
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

There is stray blank line before your "From".

> 
> Document R-Car V4H (R8A779G0), and R-Car Gen4 SoC bindings.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/renesas,rsnd.yaml          | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index 679a246dd666..5319abdda8a2 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -49,12 +49,21 @@ properties:
>                - renesas,rcar_sound-r8a77995  # R-Car D3
>            - enum:
>                - renesas,rcar_sound-gen3
> +
> +      # for Gen4 SoC
> +      - items:
> +          - enum:
> +              - renesas,rcar_sound-r8a779g0  # R-Car V4H
> +          - enum:
> +              - renesas,rcar_sound-gen4

This is not enum but const. I send a fix for the rest, please rebase on
top of it.

Best regards,
Krzysztof

