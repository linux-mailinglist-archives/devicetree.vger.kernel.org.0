Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AB934F05C7
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 21:27:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240672AbiDBT32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 15:29:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238179AbiDBT31 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 15:29:27 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57EC139807
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 12:27:34 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id c10so12233502ejs.13
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 12:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=B/ThbT3SvZKv7VBFEIOx/aCT3sIWnDNaa+6uy/zfsM4=;
        b=O+DYIcytzcGH8LsniuGvzc2VJVr6cymGR5ki+yc8dKSyiQa4ST2C04SjHaClrr/Dyd
         rPwx4rn/13xt6+XkEfBruUXf5yS5uchOzmxnzQrGFUOYeu0E2s6TrY6SfCCGq/hNNUxh
         OhW2kTsmvPedmVI5zSAuOSzL2jDrWYBQAWB+A7UVkHopWu11T8frRst1Z5gl5pFWhvXY
         FuD0hflgf/PZy17AgOobHb5lHfF+bAzZOUAqVVSanEgl3sIdfPM3i2kGw6Jad5DefrI0
         Dj3aMKYGslQqlRhZLALva5pqXuLeV29r4qobp7ruxuKfLTm6FB4CfR/GUhSuiqk/edBu
         +hYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=B/ThbT3SvZKv7VBFEIOx/aCT3sIWnDNaa+6uy/zfsM4=;
        b=3Cgirk2faXN2bQiZyq4XU61c/vYyGAyPEA6EB3wixwcVDTX97Aa/mt/8v7pJ8GuZxq
         HxsJzijjgyiylWaIykSvmFBMVw6oMS02ZpEeX886IwjYUyClhw+ee17hLeC0pJwRanXO
         ewR9QEgyeTSSprOnK5aeJTrAq4ROvJFe/Sg0v4HudOyGBwW/ImwiZtWY1jpa9Y56hV0f
         BUTe4L8qfPotqLVKEqEFFJQNh+s5Pd84kbwwzMBY3n6ju01P1OouSbkQhcModAR95Rtx
         pqmnIkQmIQmH/MmO69aTevvBP20oblLSOmTNXTPS1IZlHd7OVqeHqbFX19NQLogIz0Ft
         TDMA==
X-Gm-Message-State: AOAM5323aLI+lQwmqgSOPJN3KZVSjTHhAVbyXvz905TNlMxqh8ZFhhcP
        2p/D7in5R2x6qU2mEre2XVWeTg==
X-Google-Smtp-Source: ABdhPJzd9yaY1T32nO+3zxYbCF1eHA+h4DL4En/lqWXtB9SjL9rtunjp4WJcpVorDE8q85caXJ35Ng==
X-Received: by 2002:a17:906:c107:b0:6df:c114:e286 with SMTP id do7-20020a170906c10700b006dfc114e286mr4846182ejc.216.1648927652962;
        Sat, 02 Apr 2022 12:27:32 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id qp27-20020a170907207b00b006e66a4e924bsm972077ejb.201.2022.04.02.12.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 12:27:32 -0700 (PDT)
Message-ID: <bdd2e853-d056-2646-f9c7-f58321134d5d@linaro.org>
Date:   Sat, 2 Apr 2022 21:27:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: crypto: sun8i-ce: remove extra line
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
        herbert@gondor.apana.org.au, jernej.skrabec@gmail.com,
        krzk+dt@kernel.org, robh+dt@kernel.org, samuel@sholland.org,
        wens@csie.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220324144233.1119495-1-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220324144233.1119495-1-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/03/2022 15:42, Corentin Labbe wrote:
> yamllint complains about this extra line.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

Thanks for the patch. It's ok, but this should be rather done for all
files. Otherwise it's a churn.

I sent a global cleanup.

Best regards,
Krzysztof
