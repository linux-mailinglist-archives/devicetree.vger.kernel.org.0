Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43A3767E01F
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 10:30:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232882AbjA0J37 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 04:29:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232450AbjA0J37 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 04:29:59 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC99A1F5C3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 01:29:56 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id bk15so12033135ejb.9
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 01:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ueXviCovK+QZZYE7FrfJuFn3pk3O7fimKTZOGUVq37I=;
        b=ucIZPdauUKLlnppZeXT1jihQhRqrUpJHBV2l3a578ADOQ9+vNUzQbX8aWNZrKeoP+N
         4raynxXAvVdvJX2jBkBqdqyOx7rvn5i45GbtbcUa/A8OIrvuNbXGR/7x9AupBYb3jabz
         +xxnSvQRJJQDoPQ9MfvBmuA3d3PI7Sxfvn+HSaEDsEZzCiD8NwNHvfEsxwwNdpgH8iLw
         ghM5LG5jTVgsmHwcjfxSbVxrDZ1tz+hqG7vzYQf1CTey4hWC6pDCK3S7yYKHFTAU8nGw
         pp4pzPghxxHpu7YN93ch2Beau4xakWFu25wO1B00ltgWD11UtHPwU4LMem6fQ4ZvabXK
         gMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ueXviCovK+QZZYE7FrfJuFn3pk3O7fimKTZOGUVq37I=;
        b=FKgoD1mjN0mtIS7+Qj7+8OXm/yOGp4BMq+uMLz2/WQIrBja1PJFwJr663nMW8Zd5j4
         oOZ/EaWd2xSQQ61Ih2jbwBxXxEd5AogzSpbXYmtvz3FwMDCCOoUJ3pQlNzKBXfPVgF0c
         Ie4fp9whxx/ddFAoNSNAGy7qPULV8oxN05EQUBRSWE1K8CD43hMSTdNjT+qLFtJwvZxc
         +1M5bEAG6f+h9uzn0sdUEqBvLkVuqrsaMCuR9Q76nqyjtVcmUJ768ffri3rbUDffd/uE
         Iat+GhZLFqM8KhccxjXN3TaFjC7zC4ZE0VSh01qSjME4WKF7Le6PEQsaFqgggIcFOdWm
         ymRw==
X-Gm-Message-State: AO0yUKUeCHZDuAr7SbpYJp+gtKF9lmiG6Wuj2MoDheZ5fqjwsQJCY5vP
        Zdldif+So6Vy3b+5uGXgvWjPCA==
X-Google-Smtp-Source: AK7set/9XOC0DAhGi2F4o+eYoAA684wb10hT9tRNzpE3bfPiNvmdonwMdm8UYqyo2aPRnV8unhvl0Q==
X-Received: by 2002:a17:906:fc08:b0:87b:1be:a8c2 with SMTP id ov8-20020a170906fc0800b0087b01bea8c2mr2048919ejb.73.1674811795473;
        Fri, 27 Jan 2023 01:29:55 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id v9-20020a170906380900b008786619684csm1899691ejc.125.2023.01.27.01.29.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 01:29:54 -0800 (PST)
Message-ID: <028b739f-f354-b11c-3e0c-971f1e9c70a2@linaro.org>
Date:   Fri, 27 Jan 2023 09:29:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/2] dt-bindings: nvmem: qfprom: add IPQ8074 compatible
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_kathirav@quicinc.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230123101631.475712-1-robimarko@gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230123101631.475712-1-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23/01/2023 10:16, Robert Marko wrote:
> Document IPQ8074 compatible for QFPROM, its compatible with the generic
> QFPROM fallback.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied thanks,

--srin
> Changes in v2:
> * Add ACK tag from Krzysztof
> ---
>   Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> index 9ddf3cef9e84..2173fe82317d 100644
> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> @@ -19,6 +19,7 @@ properties:
>             - qcom,apq8064-qfprom
>             - qcom,apq8084-qfprom
>             - qcom,ipq8064-qfprom
> +          - qcom,ipq8074-qfprom
>             - qcom,msm8916-qfprom
>             - qcom,msm8974-qfprom
>             - qcom,msm8976-qfprom
