Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34EA36295AC
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 11:22:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232786AbiKOKWp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 05:22:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232523AbiKOKWo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 05:22:44 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F89A1F620
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:22:42 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id d6so23675070lfs.10
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3ZbREAzKGWsIEWUQJpy4XElK+ime7W53jXwcpw2dqzo=;
        b=URWmS52KU77TWjmjG6UB4lH6yXLsHtFdFoDjqDZDTqW8s8fgbpukZVncpNKzxXkXiK
         Ig37LGNmjMnu1U2f/1pomq95OJLikyGVyB+4ABQ0POWetHCFlHhL94EXdNn5+7UpOX4Q
         ZhKHee8n+38c/rLKiVvjJQ8SSexQrhnSFzsNoRNLejRYqPK/7mdYwYG5stAufYWtyK+O
         7jp0YZoE+rK/1zIWDtCV4jMq6ttRkqDgjFxIo/+bG5zNIpxmTe73E5QIux/rYqHA+M0n
         +w4RiGEYZ599h0aPvRTuCJ4evleTgjqQ/pZsMEpOn1E4kCr2nM6UkMljIEeQgqCv7ecL
         Mx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZbREAzKGWsIEWUQJpy4XElK+ime7W53jXwcpw2dqzo=;
        b=VuF2LcwScsryzxHhdCR1csLRSVoTpFGF6eA0M+/kC3jW0w/lfDQxpuzL2ZLHqAZITr
         VusQ7pn1TtiYAzHxtkE/NjrWyHunNo9tILzIR1MQNVevNqkFjpDdnLgYMWplXjNV/zxw
         c3szkv2zXbsi6xpu2J0wP0tAcTBb0FJrt6nspb5pQe1Z7iuyesOpsS0A3Yq/NnEq/5MZ
         2NfqC60NcFC4e3xQoeeMvhl48PLqQOObkCZMhBseGuiRyql8NZ5ThM5O3B2Tu3ut402y
         wVRsqJCXEvnwvhnQCw/vAuOZm4+3n/b9uAwILOgU+B57SlOrUnyYJUhZkrLSHIvQaWOy
         FQHA==
X-Gm-Message-State: ANoB5pm3EKybWfa8yQ2m2JJK14jPqfN0/0gfi/chw7qS5jY/IEd9upRI
        RwigApfbE1T9vmnVgEmR8A6sRQ==
X-Google-Smtp-Source: AA0mqf7Eoob8tu5VvSML0bCXRs+5OlrwB4RhRTonYV8TvWwQfLAeC7eqY+781izx5/9lW5imSf++mA==
X-Received: by 2002:a05:6512:258f:b0:4af:ad16:8a08 with SMTP id bf15-20020a056512258f00b004afad168a08mr5231106lfb.664.1668507761001;
        Tue, 15 Nov 2022 02:22:41 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c18-20020ac25f72000000b00492dc29be7bsm2148197lfc.227.2022.11.15.02.22.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 02:22:40 -0800 (PST)
Message-ID: <5dae76ba-bd48-233d-4d4a-14111ff1b2ec@linaro.org>
Date:   Tue, 15 Nov 2022 11:22:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 02/10] ASoC: dt-bindings: qcom,apr: Split services to
 shared schema
Content-Language: en-US
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Patrick Lai <plai@qti.qualcomm.com>,
        Srinivasa Rao Mandadapu <srivasam@qti.qualcomm.com>
References: <20221111113547.100442-1-krzysztof.kozlowski@linaro.org>
 <20221111113547.100442-3-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221111113547.100442-3-krzysztof.kozlowski@linaro.org>
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

On 11/11/2022 12:35, Krzysztof Kozlowski wrote:
> The APR/GPR nodes are organized like:
> 
>   apr-or-gpr-device-node <- qcom,apr.yaml
>     apr-gpr-service@[0-9] <- qcom,apr.yaml
>       service-specific-components <- /schemas/sound/qcom,q6*.yaml
> 

(...)

> +additionalProperties: true
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> index 0a7a34cb2497..9302ffe567d6 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> @@ -80,115 +80,13 @@ properties:
>    '#size-cells':
>      const: 0
>  
> -#APR/GPR Services
>  patternProperties:
>    "^service@[1-9a-d]$":
>      type: object
> +    $ref: /schemas/soc/qcom/qcom,apr-services.yaml
> +    additionalProperties: true
>      description:
> -      APR/GPR node's client devices use subnodes for desired static port services.
> -
> -    properties:
> -      compatible:
> -        enum:
> -          - qcom,q6core
> -          - qcom,q6asm
> -          - qcom,q6afe
> -          - qcom,q6adm
> -          - qcom,q6apm
> -          - qcom,q6prm

I think that this piece could stay here. Otherwise we allow any
compatible which matches the qcom,apr-services.yaml binding, but that's
easy to achieve.

Best regards,
Krzysztof

