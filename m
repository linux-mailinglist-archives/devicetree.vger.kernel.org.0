Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DA1C542E7D
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 12:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237476AbiFHKz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 06:55:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236867AbiFHKz2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 06:55:28 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 562E334BB8
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 03:55:26 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id kq6so27635372ejb.11
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 03:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Tx1fdSUDP/pC4Eok8lmSr38LqKqS6wXLAExFohKmVw4=;
        b=Nvy53yTqgduzk3wU+K42i9OpUPveaEpMI/kpiazssE4NLLvharnwBHoUX3Ch4UXdF+
         9sQ8XGD1lqXbwRa8rsV0+qtloNosw3/krAllwPwcowHIxpQPLteFdNr1wpLJfOI+u5y2
         v8PxsSQZ14Nk/Pbxvv/Bbw5xfRWeo0Iec9TK2lxVj/8upsFDQvaBWvcyFv7c0qkfh0NE
         qISBIjRcXQPvmE3KjeCmqx7UrpH5joWgX/HM+vPr3gz3w2befhRpscka0/c2HLuXLb0S
         4gdInESuoNyHkrl0EvmbfqPcNCbPu4rOyNxYiBWbfqwI6ie0Bxo5J5a0diRchFSQxEeZ
         fJIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Tx1fdSUDP/pC4Eok8lmSr38LqKqS6wXLAExFohKmVw4=;
        b=iA7WJ4esGucv0makzZ4t3Hj9g6NUm+j71DhuECDfKpIAOOuLFfFVrUGXSTeZ/bAmN/
         hgO1tVBDwBCu1WB044/o9/Mqiavkfkv+hxJjx1n4HKh0B/aLUL+8xDlVoDlFyF2hP2Za
         Pd+0X+YIu/LSwMQ1S2zKt+JA+xOtBUDGXgocum6GB8ppcz6cmv1xLYwnC712EvuuG7R3
         uiV+PpT9elgU6XH95YEC0BFnw0mxRKcWNwS8ou4R911k5sI8IIVaZgRdzCv4ffgXFS9n
         LWsOWYMH13O64vMvsNuq2XOO1YM6H8Jfvsw+IFYAFSegEaG0nL5WJiQEPUUPrwJistVe
         lIMw==
X-Gm-Message-State: AOAM531rlQpz57bKi2cWyOKPU4m9FMF+1i3o3ck5/epvU9unX6VEEHnK
        ZgobTa6kAHp8UUEcWMKFhbGh0w==
X-Google-Smtp-Source: ABdhPJyFoezE9GANGcKacdeyOOY6mgdnZIIflaruNPfFrKyeD51sAFPGlB+AbSdhYKD9FdglBTy1Tg==
X-Received: by 2002:a17:906:7944:b0:6da:b834:2f3e with SMTP id l4-20020a170906794400b006dab8342f3emr31804457ejo.353.1654685724878;
        Wed, 08 Jun 2022 03:55:24 -0700 (PDT)
Received: from [192.168.0.191] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a23-20020aa7cf17000000b0042dc882c823sm12062001edy.70.2022.06.08.03.55.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 03:55:24 -0700 (PDT)
Message-ID: <3930eabd-4ca8-d644-e27a-588b189cf1ae@linaro.org>
Date:   Wed, 8 Jun 2022 12:55:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom: Add sdm845 compatibles
Content-Language: en-US
To:     Stefan Hansson <newbie13xd@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20220603201341.94137-1-newbie13xd@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603201341.94137-1-newbie13xd@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/06/2022 22:13, Stefan Hansson wrote:
> Add compatible for SDM845 and all supported devices that use it.
> ---
>  .../devicetree/bindings/arm/qcom.yaml          | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 129cdd246223..6436b79dc60a 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -235,6 +235,24 @@ properties:
>                - xiaomi,lavender
>            - const: qcom,sdm660
>  
> +      - items:
> +          - enum:
> +              - google,cheza-rev1
> +              - google,cheza-rev2
> +              - google,cheza

All these were already sent:
Google by Doug, other by me:

https://lore.kernel.org/all/20220521164550.91115-7-krzysztof.kozlowski@linaro.org/


Best regards,
Krzysztof
