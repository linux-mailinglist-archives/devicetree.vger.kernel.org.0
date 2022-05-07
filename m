Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46E3051E8E6
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 19:22:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386531AbiEGR0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 May 2022 13:26:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353028AbiEGR0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 May 2022 13:26:14 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C79F3340FE
        for <devicetree@vger.kernel.org>; Sat,  7 May 2022 10:22:26 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id i27so19662777ejd.9
        for <devicetree@vger.kernel.org>; Sat, 07 May 2022 10:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zjNtbhJZkCD7x/ngN33A8mLoiActa9teuEHp5A3WQlI=;
        b=PUJm3rcrmpeRZzIZJJsMojTvU8Sg+/mOTgkl3T+44NGBwBXWjK9VPMMQy8p7BNFHGJ
         KJE8XQCLrCi9TnjqvCmmveQZQkpATdz5cUX3K3HYxItJCgpZ4PVAhUkRGiiVk9x8ZeCc
         jiUcPys7YkdAgyDZAf7PKtf31D69QpWHZLFpGamEboDYiIQqoiXNcwoxF0XYAq/UVJOL
         H06hRxj0tfTeTAvDspSz3Kf0l/eu+8LuabUKHjbBoCmKkyiu0TCj415TvcDOBdDBl61e
         VNHzdo1GCh+2DkRyvVUj6izcSN4GKKwWwm3jnoJapEJbH/X+4fkXv5b/1ifVhkuofmWN
         zq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zjNtbhJZkCD7x/ngN33A8mLoiActa9teuEHp5A3WQlI=;
        b=yRvcgz5TdQoHRjgMFp7psUeEfVXP3SpohJB5GrZCNvnxWQSRNays/YE3o8e85h6TYH
         SluPBP+dkEmkgXNWIn/W0GDYKDQerZ554mI+3Rkn+l4U6zJdF5OJwVQ8fcavd0ZOru2q
         VzBOuQXocTBe+alTSxYk36BanL/PeyTYOKXoKkpIVTIdoJKYmGa2EGdIhofZykRAj+mV
         6Yn9YxtEIaKscSQPA4ZCvVmAuZViE2NsqYmtZriU/HXCesTCbC2mXuinrc8rcm584F7C
         80czyclH+NCUU0nsQPtO+3DJUWiJf0fOR5alylclUC082fxL5LhyXB4SbAmkotnGUNKs
         U4/A==
X-Gm-Message-State: AOAM530be3MlIxHMTFxo2wgk4YP/7XZDGGS8jkZNllXcxNL4/p8g36hZ
        2raoIycpjh0l7YYqHpEN8zqsuw==
X-Google-Smtp-Source: ABdhPJwGYRwQnDVRNO9isAjt5BT0cMvMCkDJOfr1Wfy9Egw4c8XZ1rQxI/fKnZvDZ1EDz2Ls3i8z9Q==
X-Received: by 2002:a17:907:3e92:b0:6f4:7ab4:20a5 with SMTP id hs18-20020a1709073e9200b006f47ab420a5mr8346124ejc.620.1651944145395;
        Sat, 07 May 2022 10:22:25 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i24-20020a05640200d800b0042617ba63a8sm3904995edu.50.2022.05.07.10.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 10:22:24 -0700 (PDT)
Message-ID: <9bcdec7e-2b09-56ac-f798-1c3971a87f46@linaro.org>
Date:   Sat, 7 May 2022 19:22:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2] dt-bindings: watchdog: improve QCOM compatible parsing
 for modern chips
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc:     ~okias/devicetree@lists.sr.ht, Rob Herring <robh@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220111212310.97566-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220111212310.97566-1-david@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2022 22:23, David Heidelberg wrote:
> Parse compatible as expected for modern QCOMs.
> 
> Fixes warnings as:
> arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dt.yaml: watchdog@17980000: compatible: ['qcom,apss-wdt-sdm845', 'qcom,kpss-wdt'] is too long
>         From schema: Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dt.yaml: watchdog@17980000: compatible: Additional items are not allowed ('qcom,kpss-wdt' was unexpected)
>         From schema: Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> v2:
>  - updated compatible list as two compatibles has been added upstream
>  -> resolve merge conflict
> ---
>  .../bindings/watchdog/qcom-wdt.yaml           | 37 +++++++++++--------
>  1 file changed, 21 insertions(+), 16 deletions(-)

It seems this patch received three reviews but was not picked up. David,
do you plan to work on this?

> 
> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> index 16c6f82a13ca..4ff8c59c59ab 100644
> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -14,22 +14,27 @@ allOf:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,apss-wdt-qcs404
> -      - qcom,apss-wdt-sc7180
> -      - qcom,apss-wdt-sc7280
> -      - qcom,apss-wdt-sdm845
> -      - qcom,apss-wdt-sdx55
> -      - qcom,apss-wdt-sm6350
> -      - qcom,apss-wdt-sm8150
> -      - qcom,apss-wdt-sm8250
> -      - qcom,kpss-timer
> -      - qcom,kpss-wdt
> -      - qcom,kpss-wdt-apq8064
> -      - qcom,kpss-wdt-ipq4019
> -      - qcom,kpss-wdt-ipq8064
> -      - qcom,kpss-wdt-msm8960
> -      - qcom,scss-timer
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,apss-wdt-qcs404
> +              - qcom,apss-wdt-sc7180
> +              - qcom,apss-wdt-sc7280
> +              - qcom,apss-wdt-sdm845
> +              - qcom,apss-wdt-sdx55
> +              - qcom,apss-wdt-sm6350
> +              - qcom,apss-wdt-sm8150
> +              - qcom,apss-wdt-sm8250
> +          - const: qcom,kpss-wdt
> +      - items:
> +          - enum:
> +              - qcom,kpss-wdt
> +              - qcom,kpss-timer
> +              - qcom,kpss-wdt-apq8064
> +              - qcom,kpss-wdt-ipq4019
> +              - qcom,kpss-wdt-ipq8064
> +              - qcom,kpss-wdt-msm8960

These do not look correct without appropriate fallback.

> +              - qcom,scss-timer
>  
>    reg:
>      maxItems: 1


Best regards,
Krzysztof
