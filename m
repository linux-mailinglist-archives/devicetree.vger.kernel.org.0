Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 573F760CCBA
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 14:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232704AbiJYMxp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 08:53:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232603AbiJYMx0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 08:53:26 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC2BD7549E
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 05:50:19 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id h10so8448485qvq.7
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 05:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SBCXnAnHL6F4dp6w4Mejpv6yUpWlOok5FV7h2VIQjoc=;
        b=qexyGKWC3zrEZepTMXP7HQYqElYwaWrKDVaQjmCTbTUgenM/41JJ2qhNiF3e7dxuRQ
         osJPdU8vowzRJ1/gDtiGp/hXre38toLalrh4dfU9chqfFqbVkq4xtA8zTEzb7J1GPQqS
         mNzdVKyT1tgO2qVS03vBmhY4qmX54yEBf7GEF6gwbvD/3+q8lk2Rwi1mOXYMUeFjweYf
         RM3QcytHTILLm1dvKUuChjY/VIxfjMzvWYOBZPWRjISc/TyijOSGJy7FU9GgO2iXy8Tp
         ahUEv2N37VCyuDwK0YB9wDRS/kmmg4oi95vb3dGUhwTBtvH+oKhZRuijlAlabtQUBmsN
         hTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SBCXnAnHL6F4dp6w4Mejpv6yUpWlOok5FV7h2VIQjoc=;
        b=ightzgCMm8UUtngeZAvLWC4765LQgtbQ9gvS1FBhpGEnw7P+urqDCHDAiwCpYvea35
         CDJ3a+hKk7XSEKiyBHFEOdjKbIkCGsmcQIpeKRfWy+sjWegsP9W+giyLR60X3s3dqGIM
         t1Vms7hozitaUGySSU+GztpQr9heVupVA4eGB3/SXA0L7kuBQ+7obEdHkwlG0kcOzsbE
         +pODKM6F1EBKEcgCh5ki5ulS2Emme/xDJp6oqna9lDhSJ8+7HJm2qVGk0MPzvnWUvJqF
         UlLPcjELPSS3o8sBn7YTk/jtCn9oUZouUnKrIkP99/Uh/3dJa6G19mzZRqXwJMVPKwNR
         tSHg==
X-Gm-Message-State: ACrzQf2Kjb0I6Nw7Oy53EKV9afADNvKslG660aGoQZZr8/X4EjRTZilq
        nV8pf5813YjAntBKfLZAzaZusQ==
X-Google-Smtp-Source: AMsMyM4ikDn2FWy33TpkmSm/yW4ga8o7WaGVaInvO3XxJJNMVBwm+zpsFSKujTM4gmXmqwqOviCTfg==
X-Received: by 2002:a05:6214:23c9:b0:4b4:9f27:9ebd with SMTP id hr9-20020a05621423c900b004b49f279ebdmr32506840qvb.95.1666702218198;
        Tue, 25 Oct 2022 05:50:18 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bi30-20020a05620a319e00b006b929a56a2bsm2034417qkb.3.2022.10.25.05.50.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 05:50:17 -0700 (PDT)
Message-ID: <1b3dd1e8-8a09-7a2b-ff29-ed5f0ebfb117@linaro.org>
Date:   Tue, 25 Oct 2022 08:50:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] dt-bindings: mfd: ti,am3359-tscadc: add missing
 power-domains property
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, lee@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        miquel.raynal@bootlin.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20221025080014.403457-1-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221025080014.403457-1-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/10/2022 04:00, Matt Ranostay wrote:
> Add optional power-domains property to avoid the following dt-schema
> failures:
> 
> tscadc@40200000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> index 34bf6a01436f..23a63265be3c 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> @@ -52,6 +52,9 @@ properties:
>      type: object
>      description: Magnetic reader
>  
> +  power-domains:
> +    maxItems: 1
> +

Just do not keep adding items at the end of the list, but in some
logical place.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

