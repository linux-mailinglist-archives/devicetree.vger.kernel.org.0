Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E421A5E8A9F
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:18:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229573AbiIXJSC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:18:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbiIXJSB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:18:01 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BFA3127C8B
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:17:59 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id u18so3652946lfo.8
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wlpLWUbxpkS6HjqbeTkxFY/XT4Y1rcPglg3C3aPLxwA=;
        b=BQayDKxJsj/8gfjc7/7qatRpucdmxjXlv3P4pnLZds+eb2tF6M+S6rAk2Yjk1KBFtC
         E+zN64MeDyFP0QjFWE5r3+taCm5h+taWwikGk2Hl8viZVpQtcRmjJM4aFitE9doUuMuT
         gDODVwUUPhRr4XGpLzAJCVuwfp3yPDIo1jGBsYJT3/HJURJtt0URq8wepIal/J6btBIk
         Ohihd/mL2wiJo7MRUoa+qJQaITPoGl9FhrXuB3WmemdWHCHGlUoaESbZ83PlMC03N0LG
         v9/3qnaJjrR7wkWazJS5xVNUoL4irh0so2tggwi7vRfCP/PrzwMTZ2aws3AiSa2Fb5V1
         WPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wlpLWUbxpkS6HjqbeTkxFY/XT4Y1rcPglg3C3aPLxwA=;
        b=TxZZYPZTV14FPTvLg/JgF1QNZfGxY3rJjmjAgfIrLbzKPop2KYOInULjrEJelwNaTQ
         M4weFJl1ZVEKacidW0c0tmAISiqRmUsHnWNwtCYIhBRCi1xerpOrXTipMKABHmYwQldo
         FtAgptEXt2p3cy4zThSIUfZQ8+qdMZeelU5yiGNwcd5lltzkMx1Z59qqES/7MDEqvdGE
         SnRRJyx7iOAjccEYXKr4l5XK0ZSOqkV1dw8lIdLH0MLuzdmm/Ct/P7lQVs6T0EpeKxdQ
         j7adpzL63PZTqOVSnQSArsjj2mAacB3uJRF/F5w/xCcVEhV6i3ifEzMNjue0ShPEa1FM
         t9Kg==
X-Gm-Message-State: ACrzQf2ToL1vA3aBzv7vpbpeyEXdL+c2X5jDG/02ITe7kSQbBefuNqfd
        rf0UsOhuL4YrP7GSWR2I5XK5R9RltIcxYg==
X-Google-Smtp-Source: AMsMyM52LccXA0tTh4zrwmNzC5QOa9PjYhnPojkrlpr9vpQmojQNyoNUwY22aKBfkrautR6o9Y+wQg==
X-Received: by 2002:a05:6512:a89:b0:49d:b866:6330 with SMTP id m9-20020a0565120a8900b0049db8666330mr4637064lfu.346.1664011077856;
        Sat, 24 Sep 2022 02:17:57 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id cf30-20020a056512281e00b004a05622a852sm607358lfb.241.2022.09.24.02.17.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 02:17:57 -0700 (PDT)
Message-ID: <b7e44e61-4beb-7b94-01e5-d217c546114d@linaro.org>
Date:   Sat, 24 Sep 2022 11:17:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH net-next v3 2/6] dt-bindings: net: tsnep: Allow additional
 interrupts
Content-Language: en-US
To:     Gerhard Engleder <gerhard@engleder-embedded.com>,
        netdev@vger.kernel.org
Cc:     davem@davemloft.net, kuba@kernel.org, edumazet@google.com,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20220923202911.119729-1-gerhard@engleder-embedded.com>
 <20220923202911.119729-3-gerhard@engleder-embedded.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220923202911.119729-3-gerhard@engleder-embedded.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 22:29, Gerhard Engleder wrote:
> Additional TX/RX queue pairs require dedicated interrupts. Extend
> binding with additional interrupts.
> 
> Signed-off-by: Gerhard Engleder <gerhard@engleder-embedded.com>
> ---
>  .../bindings/net/engleder,tsnep.yaml          | 37 ++++++++++++++++++-
>  1 file changed, 36 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/engleder,tsnep.yaml b/Documentation/devicetree/bindings/net/engleder,tsnep.yaml
> index 37e08ee744a8..ce1f1bd413c2 100644
> --- a/Documentation/devicetree/bindings/net/engleder,tsnep.yaml
> +++ b/Documentation/devicetree/bindings/net/engleder,tsnep.yaml
> @@ -20,7 +20,23 @@ properties:
>      maxItems: 1
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 8
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 8
> +    items:
> +      pattern: '^mac|txrx-[1-7]$'

No. The order of items must be fixed. Now you allow any combination,
which is exactly what we do not want.

> +    description:
> +      If more than one interrupt is available, then interrupts are
> +      identified by their names.

Not really. Interrupts are fixed, unless explicitly mentioned otherwise.

> +      "mac" is the main interrupt for basic MAC features and the first
> +      TX/RX queue pair. If only a single interrupt is available, then
> +      it is assumed that this interrupt is the "mac" interrupt.
> +      "txrx-[1-7]" are the interrupts for additional TX/RX queue pairs.
> +      These interrupt names shall start with index 1 and increment the
> +      index by 1 with every further TX/RX queue pair.

Skip last three sentences - they will become redundant after
implementing proper items.
>  
>    dma-coherent: true
>  
> @@ -78,4 +94,23 @@ examples:
>                  };
>              };
>          };

Missing line break.


Best regards,
Krzysztof

