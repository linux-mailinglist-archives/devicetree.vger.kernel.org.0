Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C6F455319F
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 14:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348758AbiFUMFh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 08:05:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbiFUMFf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 08:05:35 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCA992B19A
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:05:33 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id o10so19059244edi.1
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Gg0RvHiFNrDfGIJW8Fr2n4Nc3yuuRyadriq/REJxjvs=;
        b=FyuzVou+E5Fpb+qmilQqXBhU2RV48ugWQhOqPpUt+3mVxqrYecQH8XalFd19KBs4T3
         XRtVD2RVj3AxD8HtWYLK9fd+jd0rze3pzCNWNsjJYB60Iwm4zufMcrbHRvhuN1wCZD2u
         DSfS7JM/EiapgfOsMK3cyNHLNuD5vpFmk7D/mAp9UD2u0mWI3YyJEWcNdTV89bnuPhL2
         jKRSjutkCtXYrq3b/c8ti/wOAj59zQxp9/Z2zyA8HqS7nXeUwis4WZsYeabyu1HJegPG
         OCiBuvEgttzjkLb2vWhqn3NHzn0NSkUEEaBnenddbfmMxAyCexnwTmukHGtjtai8Yl4q
         pEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Gg0RvHiFNrDfGIJW8Fr2n4Nc3yuuRyadriq/REJxjvs=;
        b=V/Gup7k/ePuNj3pQ1KKufMwrJAq9dznzYoPhDedF1qE3vWKVlaDHkBTjtYztG9vUoG
         6KJJS3AHb6fanqNbwpVAyO+uqfq4qOlnXfPhlZ/WxsfcgLRRn1+3GsdZ3LHxTRF8hXO6
         Ud6UWCYH/c1bZDB0uivGDMLuNhO/M3jTxx9baXqVn4Q48CBV0+m3D7wPEHaaAghSKrOj
         cirnQlGl9irqVgE/on7T6THNu0O+hCVe3qWX+pVtnGNPiJvwZ1PwEpWW7M3rflqPb6Ah
         qmweD9ssijAGewUcOglulDqBKIwhacTYovliCSvfWS6ul7IYlmyukI4C3sZl8knaRwAq
         cVmA==
X-Gm-Message-State: AJIora8hFhl527SZyvCeeasb19KQU4NzQnR95kePGvQyfdzWoRrIAOZS
        I4tp0YMLK7LK4uRVfNKMKfezWg==
X-Google-Smtp-Source: AGRyM1vZgrHk6IfMuXVCzD/k0L0+6qUUZLAkkj6Fwhg5AO2EVJ9Wr+faNLG6PZJdtYBWQzdDqYPt+g==
X-Received: by 2002:a05:6402:414c:b0:435:1e2a:2c7f with SMTP id x12-20020a056402414c00b004351e2a2c7fmr34443889eda.132.1655813132374;
        Tue, 21 Jun 2022 05:05:32 -0700 (PDT)
Received: from [192.168.0.220] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e7-20020a50ec87000000b0043561e0c9adsm9941388edr.52.2022.06.21.05.05.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 05:05:31 -0700 (PDT)
Message-ID: <cd2ae9a8-7d7a-e3e3-a9dd-6c254461bfbb@linaro.org>
Date:   Tue, 21 Jun 2022 14:05:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 3/3] dt-bindings: arm: stm32: Add Phytec STM32MP1 board
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        kernel@pengutronix.de
References: <20220621101538.481143-1-s.trumtrar@pengutronix.de>
 <20220621101538.481143-3-s.trumtrar@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220621101538.481143-3-s.trumtrar@pengutronix.de>
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

On 21/06/2022 12:15, Steffen Trumtrar wrote:
> The Phytec STM32MP1 based SoMs feature up to 1 GB DDR3LP RAM, up to 1 GB eMMC,
> up to 16 MB QSPI and up to 128 GB NAND flash.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 8b31565fee59..4bae21769ca1 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -143,6 +143,12 @@ properties:
>            - const: seeed,stm32mp157c-odyssey-som
>            - const: st,stm32mp157
>  
> +      - description: Phytec STM32MP1 SoM based Boards

No, this should be part of the first enum for all stm32mp157 boards.


Best regards,
Krzysztof
