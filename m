Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FE2C53713B
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 16:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230321AbiE2OAH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 10:00:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbiE2OAF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 10:00:05 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D0AD532C1
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 07:00:04 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id fd25so10547307edb.3
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 07:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4KZuh4f2icwoh3O4gMo5vXFPOQm8jy2EVytkcseFrzc=;
        b=a136ywBxJ3Wx3YNdc2QWYXSRhtR4xyT7t1EMPBM1gQRjcEvLwk6mHbEMuexfh/5lrp
         fxbier61dxLxLcf5JCgDbXbQzn5yxubJ4YuzqLx2k4To/tnev+fRQd5dpIjIh4bdQ2WL
         jbZ/452Y0Q5oaNEmVDmb+bfXExsFwG/oXjYVxJh2dE4BwzeIy4dOEINx4JiGnHoLJ4PI
         /JHnsxy1Dsb2VyN1b/OOT+d7ptoTy+ydfzoThYlKOVLG/AQDPwfo/WIK+L2/7jvIQOuT
         +TVPng0k9+a0HdyhZ12hyJMi6cAsgkacFlaYdJrOWHWQ9pVIAt/sMCEuNe3rhl8UkLy5
         iOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4KZuh4f2icwoh3O4gMo5vXFPOQm8jy2EVytkcseFrzc=;
        b=z/nLdLo88eVtrk99fL5jHGdQJGLhQRvc2rI75l5F//NmoWGef77ByoqWX+6ImkB2oF
         0eweBmxM4jJnobL+yYDIqxIpHRNq0Ugw6R5Jd/J/ppC8LTkDk0mUVTN0yenam/qNMbiO
         hdl+ayfvDpm/6KLNAHrvclXJcchykX/Z2gsra/IL8Q5VZnj8M3Nd7IPZ7+cUHlyjBasg
         NxinCdvEszoDgYczJuaAXGKdRepulPc2ScutnSVANlFVXrW6tZtdU0PfySb9BpFGBT7Z
         rzO4fQTYKnXuT304sedT4TNfDeb3j58PWgXEWk14a4Th2IyhNssTKrqfpuLXBxp7Xblh
         DYxA==
X-Gm-Message-State: AOAM530R/p5QtLjrEY93U0ZGbUuqSbHjV8a1LRaivDkbPSHfsfNI1UIP
        0mbB3jmDizYMd2Oi+RzBuE0OXt0aLwFwY+PU
X-Google-Smtp-Source: ABdhPJw+VyfksYhlU7nHKUPXpGM6GmiN6VLL+vPIpGLjG0261QBoqDJlf2cW3+TcYO9NlGIXkYiyqA==
X-Received: by 2002:a05:6402:11d2:b0:42b:700e:a37 with SMTP id j18-20020a05640211d200b0042b700e0a37mr34461242edw.336.1653832802936;
        Sun, 29 May 2022 07:00:02 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a9-20020a170906368900b006febca5a604sm3137685ejc.58.2022.05.29.07.00.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 07:00:02 -0700 (PDT)
Message-ID: <169e0f68-d352-6be3-516b-82c22d6fd743@linaro.org>
Date:   Sun, 29 May 2022 16:00:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/3] [PATCH] dt-bindings: arm: add BCM6878 soc to binding
 document
Content-Language: en-US
To:     Anand Gore <anand.gore@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     joel.peshkin@broadcom.com, kursad.oney@broadcom.com,
        samyon.furman@broadcom.com,
        William Zhang <william.zhang@broadcom.com>,
        dan.beygelman@broadcom.com, tomer.yacoby@broadcom.com,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        florian.fainelli@broadcom.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220527170910.2461134-1-anand.gore@broadcom.com>
 <20220527100904.2.I383a14e417ffde9d8180ee578abbafdf09141c29@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220527100904.2.I383a14e417ffde9d8180ee578abbafdf09141c29@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/05/2022 19:09, Anand Gore wrote:
> Add BCM6878 SOC device tree description to bcmbca binding document.
> 
> Signed-off-by: Anand Gore <anand.gore@broadcom.com>

Your subject is corrupted. Anyway you made it a bit over-complicated. No
need to say "to binding document" as the prefix explains it. So this
should be (don't forget the actual subarch prefix):

	dt-bindings: arm: brcm: add BCM6878 soc

Same applies to your other patches.

> ---
> 
>  .../devicetree/bindings/arm/bcm/brcm,bcmbca.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> index a63e355ba8f9..4b4af2b1f277 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> @@ -43,6 +43,14 @@ properties:
>            - const: brcm,bcmbca
>  
>  
> +      - description: BCM6878 based boards
> +        items:
> +          - enum:
> +              - brcm,bcm96878
> +          - const: brcm,bcm6878
> +          - const: brcm,bcmbca
> +
> +

Same as before - no need for two blank lines.

>  additionalProperties: true
>  
>  ...


Best regards,
Krzysztof
