Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 584AC76475A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 08:57:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232606AbjG0G5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 02:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232525AbjG0G5W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 02:57:22 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DAD3271F
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 23:57:20 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9922d6f003cso77806466b.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 23:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690441038; x=1691045838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jAeVQ28PXkHSh2tAWU5bKlXcrSxz+k0v8kyyk0Fn0Dc=;
        b=qbHs20VePYbBff68oI4biuFgv7vcRKAcuvMEpoBwTW/rINMfRW0uirDYqfpPqerhxs
         46fxOn3tryRiz9GXsK6vPqwKP6HTXXo1u1Yh7gDEHwhzqqlY5+MTc6kTo0SkTzVoEnma
         SYBDwxpGt7+pp+TjsAS15Ot0PUNtmXLOazHR1FDoJ7XhHXhw2e/qwbYVm2Vbll5sTeH7
         cWR5JSKcHiAzpN7TseXLOF6QbgXXYuyUOnL+LSa3q72poKKxzzT5/rVlu88mogTcsg9m
         q3RQKpsoPwcUewKQnIveOARr5w+O1dleVgwFrrtXwu/VdjHq+Q6cNULBy9wE/RbmmcqS
         n5vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690441038; x=1691045838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jAeVQ28PXkHSh2tAWU5bKlXcrSxz+k0v8kyyk0Fn0Dc=;
        b=HoPJAXr8OwEJX/Pt2rJWYzpTYuXKDGJWpUSPwyentV8/CfFkIi+zEOp7qa06uyY2wA
         7iemQJPrYtKmyZR1cfW67kwCyIg3RLBYQolFccSa+9ytZjz2fTYEzbMUOUiMH+lq5k6o
         8l0QpfSFWGi0R7mSACtjm7hKX7b/0QtCT7sW59sZ6IEAFOiNSsH9SBANN4LLkXi04TgE
         mwZFbV8kt0qQ4pyjedqAjcDtJIfG137PmmC722FM4WV27YvQYnwJjq9v4+9mJRw+zm2o
         jxTQa63dJ3/dx9Z2UUpRIrXG3jHFCRHSzGTKSLUuLC41lOw/FMfxdrxGLZYJ2Kq2hK2w
         1uPQ==
X-Gm-Message-State: ABy/qLa8ovwgrRVcahIgbv6cfiq4TaJ5dFbG9b22SurSv35P81jCaG6o
        5LdbibbKOL8Huwa/aHACn0J30Q==
X-Google-Smtp-Source: APBJJlHluHYVOxS5F6nFrnyTNcIyTbzgpeBHm4chpUzf3jICxRq54G4yf3Dl0VUf0wSn6oX9xV7Srw==
X-Received: by 2002:a17:906:8a7c:b0:991:f427:2fd8 with SMTP id hy28-20020a1709068a7c00b00991f4272fd8mr1116299ejc.74.1690441038753;
        Wed, 26 Jul 2023 23:57:18 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id b14-20020a1709062b4e00b00992acab8c45sm414068ejg.12.2023.07.26.23.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 23:57:18 -0700 (PDT)
Message-ID: <bd0a6b77-96ef-f9c3-8f51-ee57699294cd@linaro.org>
Date:   Thu, 27 Jul 2023 08:57:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: qcom,ids: add SoC ID for SM4450
Content-Language: en-US
To:     Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
        kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230727023508.18002-1-quic_tengfan@quicinc.com>
 <20230727023508.18002-6-quic_tengfan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230727023508.18002-6-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2023 04:35, Tengfei Fan wrote:
> Add the ID for the Qualcomm SM4450 SoC.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  include/dt-bindings/arm/qcom,ids.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
> index bcbe9ee2cdaf..72dccbc7a777 100644
> --- a/include/dt-bindings/arm/qcom,ids.h
> +++ b/include/dt-bindings/arm/qcom,ids.h
> @@ -250,6 +250,7 @@
>  #define QCOM_ID_QRU1000			539
>  #define QCOM_ID_QDU1000			545
>  #define QCOM_ID_QDU1010			587
> +#define QCOM_ID_SM4450			568

Does not look correctly placed.

Best regards,
Krzysztof

