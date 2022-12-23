Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AA3E654D20
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 09:01:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229937AbiLWIBm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 03:01:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbiLWIBk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 03:01:40 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9C9531DCB
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:01:38 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id bf43so6133315lfb.6
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y0SKEwCyHfX0yFKW2qHUZ9Zbc8M71iXHGI6rK3mbnnQ=;
        b=fhndfpnhRpc2Dpf55KMB2KDbdgRTyjg5exBII7NgXgsuEz7yGIVhvlWanVQZYRFZmn
         /uIgbZAhnGkw+hPCBVmxzjpAIak+WYwCpyW6pmZnALGtO0qpB7elmsg3odCLxTQdOQHL
         +SRAo1qNUSSMyub+fhz41fri+OMRShDW9zFUnaRuV82ixOHoY/jcG5vRfnRHtJ9CQb2U
         pT+OdsRIfgu8DQLbRdihU0nAKxH2lU2xHMMn6XadX9ZIbc/SObAwwvuAXrcOCw2Ednxb
         YsAX9HobAU1tlvRKVyFW2zYSUpnWbAzQgd7JN6Zc+8/bYA/viURjYJsTiij2cYddQijH
         w1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0SKEwCyHfX0yFKW2qHUZ9Zbc8M71iXHGI6rK3mbnnQ=;
        b=y+DcpHwX0oRC96n4hbUR5oGmdYFnJ/4AmtjekbcDoDMXj0P8dQB8AZ2krHO5EkwEKL
         28Cx+Oez/jftUzBZLLLNaABOwGDmE6OYLM5E2mDzbYgnEoQlKeGrg0nr5f2ybhb3jkx/
         OEe4zAgbP53VCYpBFSWfBgf1FY9hK3wIsb39BwP9l1f3BsTbyqAx3LPLXTBXuzmstdYx
         Lmbkyt0Et4s7CRH34Wr6Ok23MHRGYV9yan91EIA5FR6svkt1K1XMcJYNqoqrkxwPpMv2
         BBXrmFDd92t6d85RFPpbI2Dy7GHknwK23X5vEt2SB8CaVfMf68/d367lW3op8Qo8Bt2N
         R7Sw==
X-Gm-Message-State: AFqh2koJvy1HDMvvpRcLaALhwJFnrKW9Ti3XRkmWsLS3oT+2v3coVftN
        s2kkZ9tA4QnW75vVfVUXZyNb4A==
X-Google-Smtp-Source: AMrXdXt56ZsGzGO2qHXpQ3Bw3Ra1zTT+0LKkRdE3Jyeq21f+T1SN0Q6qfterQiy36FN1NbrUwIF5LQ==
X-Received: by 2002:ac2:514f:0:b0:4b1:862b:5e71 with SMTP id q15-20020ac2514f000000b004b1862b5e71mr2026659lfd.33.1671782497249;
        Fri, 23 Dec 2022 00:01:37 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v14-20020a2ea44e000000b0027fb4086834sm13907ljn.15.2022.12.23.00.01.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:01:36 -0800 (PST)
Message-ID: <9a73d8fb-8a73-f8db-2ca7-51bf67cbf659@linaro.org>
Date:   Fri, 23 Dec 2022 09:01:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v9 2/3] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To:     Yuteng Zhong <zonyitoo@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Wenhao Cui <lasstp5011@gmail.com>
References: <Y6UdvrhLjS0/8Oic@VM-66-53-centos>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6UdvrhLjS0/8Oic@VM-66-53-centos>
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

On 23/12/2022 04:17, Yuteng Zhong wrote:
> From: Wenhao Cui <lasstp5011@gmail.com>
> 
> Add devicetree binding documentation for the EmbedFire LubanCat 1.
> 
> Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> ---

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Best regards,
Krzysztof

