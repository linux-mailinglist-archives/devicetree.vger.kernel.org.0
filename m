Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 800D5533B82
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 13:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242917AbiEYLPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 07:15:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242733AbiEYLO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 07:14:58 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57476939AB
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 04:14:48 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id rq11so18867197ejc.4
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 04:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8swa35MPUNELty3MCkIwQ2icwZshaqptksBqIqPidY8=;
        b=dKYynXllLtYc3gLE0PYaiWkrttPmq3Cgdv/TmQ4Ueg8HylgrxC1JeCwHZfSus5gCKC
         r/Fs3IlK+v0wXFm4HJyPhATVRoNSUGnJkEgsjtSg3p7VQnUpyV+0iY2YXJdn4RxzfMBo
         7cGVSmOUXaC5GLmWaQ43Ws+O9ZdtOO15v11bY+9dXy3UMQR6UwS7gCgVU9X/V6D2Jrrw
         MzVTEYdSOTBa/NSiMxJKZ7P5rl3qHAk9Ooy0Uo7N27OZpLKnHl9gjXgMNk0vWvFz3G59
         3tPD4iosKeVDa11G2Nw/7c7X2/RS4HGMIjQ1TVD4V7ICvgoWjJTGRcJu6iMn6Mi1KS16
         AypA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8swa35MPUNELty3MCkIwQ2icwZshaqptksBqIqPidY8=;
        b=XZlAA7/GqYlI40VBmsLZSCnpZNLDjVzlBNXOIZPNXkphxZd7AGdBhaEre6stj4NoH3
         Tsr7LGZIDL/X5f3OZ4Qn8sMLgBmXRLJpKpT+KkXkE3BIc5TetjxNC7mHwhv2qTXNwC7Y
         8uMe0DI1+fHkN0/TkEIxQFbx8inO/U7ytHjb3ZJGn25y20arCxI+QW59R8Gn74Q0DCFg
         jW3/Ca7xuw3DEwt3lfP3GOi2JKOYInx7LZ2ahNt5620snYVcbAUgvIffwFhOfvghv7c1
         Ioqby8aV2OPLSvPTI5eqM95FuahIrTt6yvKqoNCdpz/pP7Q7qiqZvZWLVSIbZh+mqNXV
         Y6GQ==
X-Gm-Message-State: AOAM531eQKDbcsiYc823EjTVTcwG/dIqPiRxIbe4gkkv1Shqc9Fw5qtK
        rAV/Kac2vdK2odOv0srG0rB8FA==
X-Google-Smtp-Source: ABdhPJzMEAc82wkyjnUvSjSOB8E5Fvqg3XAZCSa9kB8cKoxi4uu+bSEq7cral2zpUXBr4iRUM+G7Ow==
X-Received: by 2002:a17:907:2cc7:b0:6fa:88cf:c31a with SMTP id hg7-20020a1709072cc700b006fa88cfc31amr28099898ejc.471.1653477286871;
        Wed, 25 May 2022 04:14:46 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gh17-20020a170906e09100b006fec56c57f3sm4092783ejb.178.2022.05.25.04.14.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 04:14:45 -0700 (PDT)
Message-ID: <45ae3d85-d005-f6d3-1229-afc5db303c61@linaro.org>
Date:   Wed, 25 May 2022 13:14:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/3] dt-bindings: arm: add BCM6846 SoC to device tree
 binding document
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     samyon.furman@broadcom.com, philippe.reynes@softathome.com,
        kursad.oney@broadcom.com, florian.fainelli@broadcom.com,
        joel.peshkin@broadcom.com, anand.gore@broadcom.com,
        dan.beygelman@broadcom.com, tomer.yacoby@broadcom.com,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220525003236.2699-1-william.zhang@broadcom.com>
 <20220525003236.2699-2-william.zhang@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220525003236.2699-2-william.zhang@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/05/2022 02:32, William Zhang wrote:
> Add BCM6846 SoC device tree description to bcmbca binding document.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> index 5fb455840417..93eb30422dd6 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
> @@ -27,6 +27,12 @@ properties:
>                - brcm,bcm947622
>            - const: brcm,bcm47622
>            - const: brcm,bcmbca

New line here.

With that:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
