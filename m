Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62817602D0A
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 15:32:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230399AbiJRNcg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 09:32:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230401AbiJRNcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 09:32:32 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A0DCCAE7C
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:32:31 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id m6so8584698qkm.4
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kaCHs2xS34elvJKmekTcmuQN9rNgKKexethJB2Y5REc=;
        b=ZjLD7F1VbceTQdc2FVYGM7rpP0gstOOB09yNhHNiAVOxHHRSI7rGQKG/pWUAG9tV9u
         xsu9qHuKEEYagg01nvbAohXXIwLdUGr59Bf+RzhYYiPHCII2jlQ5LBcNagarjtuR7QKz
         x49vCaGeYNSKtFDuti8ryyppzuXuaHEsY/ezLvw7QniellFRh24Ql7wd4m6hgzrF1JBF
         d84sYUuyKZlSpbZPk/76KcsOZxmzkzXbooe39RKpshXZEqRVWUhwKjCJHcF/qzXAFMBO
         v4UapfMF9rX5/53ohSH4zefn1KbtUo1MBUIY+TvJoWYx1ua+XHg40ymsrkA/SF8QfoeK
         masg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kaCHs2xS34elvJKmekTcmuQN9rNgKKexethJB2Y5REc=;
        b=a9dECt2qkSBnDur/8yfj1DoVpzck14+apIDm248JyzkEEVtzoVcFlWT/VWe4qApPIx
         yqiMQoZliwLD/Nk6t6u8DOFLMjfDZZmKEmfMT9ktGNJO+Y0DL6qKY9gyPQ0TJRYhn5gy
         pfmTl0EV7Uryc7R1aiyy8KXhDxF+B8Ivy4ctjspJ3iD7EFct4Zcc7ocMwRxYE5780RYD
         sQclMrfL9TntUcQTKX/PGkWdQw03mMkbBxzHXguQBqtYQG+onWgpZQWW+cLRdQB2dVPR
         wWpyb4RbSNrjeFaYdo3QZC8NpiSloiXAiAvWCBX7eX5zK8C5rkmZKb5OyjEkyeeEF9Hv
         gJLw==
X-Gm-Message-State: ACrzQf1kiHV1TLDvGdpoT8gpPjRBkpAh+w7ACNSvWj5/fiygnYiLiGJH
        V2oolOYS3LNnfRlAyQvjU0zBMg==
X-Google-Smtp-Source: AMsMyM6HmKsH2C2pBgFfSroERxT1KE12W4nAI9sADy1phl2YVcta9wYDoZr46YTDutbO0FZuaKq7aA==
X-Received: by 2002:a05:620a:2150:b0:6e0:79d1:3216 with SMTP id m16-20020a05620a215000b006e079d13216mr1799310qkm.406.1666099950341;
        Tue, 18 Oct 2022 06:32:30 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id l12-20020a05620a28cc00b006ecf030ef15sm2427438qkp.65.2022.10.18.06.32.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 06:32:29 -0700 (PDT)
Message-ID: <d681e41f-fd8e-f233-2a25-53c4e0a52c33@linaro.org>
Date:   Tue, 18 Oct 2022 09:32:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] ARM: dts: ast2600-evb: correct compatible (drop -a1)
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>
References: <20220804092727.64742-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220804092727.64742-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/08/2022 05:27, Krzysztof Kozlowski wrote:
> Due to copy-paste, the ast2600-evb and ast2600-evb-a1 got the same
> compatible.  Drop the '-a1' suffix from the first to match what is
> expected by bindings.
> 
> Fixes: aa5e06208500 ("ARM: dts: ast2600-evb: fix board compatible")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/aspeed-ast2600-evb.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed-ast2600-evb.dts b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
> index c698e6538269..2010e3cb6158 100644
> --- a/arch/arm/boot/dts/aspeed-ast2600-evb.dts
> +++ b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
> @@ -8,7 +8,7 @@
>  
>  / {
>  	model = "AST2600 EVB";
> -	compatible = "aspeed,ast2600-evb-a1", "aspeed,ast2600";
> +	compatible = "aspeed,ast2600-evb", "aspeed,ast2600";

This is weird. I sent this patch on 4th August but it was never
applied... yet instead I see a commit in mainline from end of September:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d916109169159f9319f45ce7e1339e41eccf22c4
which was never sent to mailing list.

So instead of picking up existing commit from mailing list waiting there
for 1.5 months, Joel just committed something without sharing in public way.

Best regards,
Krzysztof

