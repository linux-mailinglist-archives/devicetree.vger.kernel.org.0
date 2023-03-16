Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1988D6BC741
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 08:32:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229874AbjCPHcn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 03:32:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230273AbjCPHci (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 03:32:38 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 880A687D87
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:32:02 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id cy23so3775264edb.12
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678951918;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GnScg0d+XUCiCIAUOYj6NtmRf8jyxKbyqx95uNvhbUU=;
        b=C8NY87SkEYUArxDsUsCL2+2x4wbKNGgk8J2KjTCHYJX2tGfBfGyaUaA+yR6G2k3GPi
         ntQR5iRQGJQJfNsTxPCPAHzxCOtgDpw1XlvSZMw5b5E6Cyc1SIi93jWsNH1WurMlxH+Q
         nQBRV4QfNn+BvvLym+/qM0BxHCCkGxr0brEb2kKGGskrMaa3cqZQsbAwiUE57zCaMf5G
         j2yim5dDqLzLK7NtLzPPLsxP3AI+jCIvtOb4xliA9ywIgPtQT4CU4/vMGydtzFFto0kd
         dZ3RkmGd9VQWxJWeTZBciOQ+T+N6c9IPvmOqI6vD9SGpEx2ZhUWpT4kxwC1tzAj2wROa
         XoAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678951918;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GnScg0d+XUCiCIAUOYj6NtmRf8jyxKbyqx95uNvhbUU=;
        b=J8PktsvZTyEuK8jMXtcWfTnSQpBu9vLKCIgYBqGfmKPi5FNYQ4h40fJ1Rm0oFmWv8o
         IEOthhIsK220JUbqtL6gEt5Ndob3JfRFQ4jpZ8H+0dnDdI+QXWxP5n/3ogxQ7eAQPE8Q
         OaXiOVEIVRSLjN54MhLsAHp5qn7/cgkTe9i8wPAauyDlUmJsP0BvE02No9tBpde2YnEH
         4gcD6go7yxaYNj1HsJGvmsrhdLSxCi0SyuOv6BDk7cDXfYkA3Nx3d+blY6w/K0cYwx/R
         KMpjHtqM2iBvOj7FECg49N8Zhu6S//zrK+8I5jdv4O0nUA429umhCESzEyr0xn4JiTHo
         zmDQ==
X-Gm-Message-State: AO0yUKXTJSPnxsq5uveYidIw5FXxZviA9sqStPIJej8EVC3Hl5A2Eaae
        zpi0w7W9x+BA/80pIYCx8DIAXw==
X-Google-Smtp-Source: AK7set+7hxtHDmQV+OKIM/3ytJUsWaADhOhEP6f9Q7wl66uIR0rSLRCYBTN7JKldf1W6259Si4MQPg==
X-Received: by 2002:a17:907:6297:b0:930:7324:2766 with SMTP id nd23-20020a170907629700b0093073242766mr1186457ejc.35.1678951918362;
        Thu, 16 Mar 2023 00:31:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id jz26-20020a17090775fa00b008e309da3253sm3462074ejc.202.2023.03.16.00.31.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:31:58 -0700 (PDT)
Message-ID: <84805483-b20a-8dd7-6efe-904f59e063dc@linaro.org>
Date:   Thu, 16 Mar 2023 08:31:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 06/15] dt-bindings: mfd: syscon: Add nuvoton,ma35d1-sys
 compatible
Content-Language: en-US
To:     Jacky Huang <ychuang570808@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
        gregkh@linuxfoundation.org, jirislaby@kernel.org
Cc:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
        schung@nuvoton.com, Jacky Huang <ychuang3@nuvoton.com>
References: <20230315072902.9298-1-ychuang570808@gmail.com>
 <20230315072902.9298-7-ychuang570808@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315072902.9298-7-ychuang570808@gmail.com>
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

On 15/03/2023 08:28, Jacky Huang wrote:
> From: Jacky Huang <ychuang3@nuvoton.com>
> 
> Add Nuvoton ma35d1 system registers compatible

Missing full stop.

> 
> Signed-off-by: Jacky Huang <ychuang3@nuvoton.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index c828c4f5e4a7..e7a3c6e1e77f 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -57,6 +57,7 @@ properties:
>                - microchip,sparx5-cpu-syscon
>                - mstar,msc313-pmsleep
>                - nuvoton,wpcm450-shm
> +              - nuvoton,ma35d1-sys

Wrong order

Best regards,
Krzysztof

