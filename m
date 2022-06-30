Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF3A85612FE
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 09:13:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232749AbiF3HNV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 03:13:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232636AbiF3HNU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 03:13:20 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 679091057E
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 00:13:18 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id ay16so37168513ejb.6
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 00:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=diCMWoor2E0dwOuTJQLx2CXhKDg2BH42ErMAKmjvX+g=;
        b=NH+sAlpEBdeJO44W6SORr1DX0UzxzCmRo1A8Fj153kNXlyREfeNr2oCOnovudDClIx
         XIP5UjwCdjFUMQ5vRI8tz04uhM1yb4mikz3ez4qU7zD48m6dRFZF0a3bBIYUdDHjOLLF
         w/9zFQqzdnoh0G9q9XlKodazzgPTRYAK6HT7FanT/Yf8c78PURdKQ2oRtUnPJTCMvT2V
         v4mxBfANGE6t7Hr2MCJ2uicFtYG9bQctFM0LZ7dFFsiGUAzKiI8PFR2b/pycWE9z+MHI
         72MQdcT/1Gb33U6jf5qtxo1owfA6VXS8foNg9PxN0yRyxoK/STUfFgnNdL9QbPR1rAKC
         5XQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=diCMWoor2E0dwOuTJQLx2CXhKDg2BH42ErMAKmjvX+g=;
        b=PtiX5jw0QJFLiYjRHywdN5lrq8nJUPSoNsDdRxYEpG9w7wyMyP48PoBM8RsRqTSl4D
         tnacnFOgQ6eBYKRglyx3x98B2EgTM66MPkOAk3qQ6Ovx6B6t5wANfA7GskVE+n95YXxq
         ZKE2MajPOqAFLgymauVQrqWqkpSgankWJESZSPpbsFV5oXBGQqW5WX0ElvmtjF46YlNi
         iEcnwem8dZRr6+iTFAWaZE5Rec1fHWtXChUXOqMZN5KuPF1rEYl0tHGhdlDAGppCYQC/
         QJD1czYhLK+tVP+brQLvsW+Gu1aD4uaAATZizcfL5KykSVwkIGIQ93w8UKyPm8YJskj2
         a8gQ==
X-Gm-Message-State: AJIora8F5cBdDDeIgW95fl2rWOpTs9PbxkEu+dYERWMMj6jGN1cJsZBl
        DYMprWa7SAjC8svsIF2m2nZFgg==
X-Google-Smtp-Source: AGRyM1t/jV6rWBm4iarTMf+aLPWZN1+6g5ImoCq0TPhEsQ5d5ZfDxmoozlMfl/y2VErNUFMWcYZK1g==
X-Received: by 2002:a17:906:4fcb:b0:722:e916:6bb1 with SMTP id i11-20020a1709064fcb00b00722e9166bb1mr7463592ejw.648.1656573196988;
        Thu, 30 Jun 2022 00:13:16 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i13-20020a1709061e4d00b006fef51aa566sm8654804ejj.2.2022.06.30.00.13.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 00:13:16 -0700 (PDT)
Message-ID: <b5c0f8cd-adcb-a3e8-b088-d8da4c7b7201@linaro.org>
Date:   Thu, 30 Jun 2022 09:13:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: samsung: usi: add
 exynosautov9-usi compatible
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <cover.1656554759.git.chanho61.park@samsung.com>
 <CGME20220630021951epcas2p26cd4a554f01f9cb6e44acd813eee15fd@epcas2p2.samsung.com>
 <8d7029cdf7b2ce0d1c43e6f91b3b9fdadece08ee.1656554759.git.chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8d7029cdf7b2ce0d1c43e6f91b3b9fdadece08ee.1656554759.git.chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/06/2022 04:16, Chanho Park wrote:
> Add samsung,exynosautov9-uart dedicated compatible for representing
> usi of Exynos Auto v9 SoC.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../devicetree/bindings/soc/samsung/exynos-usi.yaml       | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> index fde886a8cf43..6e806e950a36 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> @@ -22,8 +22,12 @@ properties:
>      pattern: "^usi@[0-9a-f]+$"
>  
>    compatible:
> -    enum:
> -      - samsung,exynos850-usi   # for USIv2 (Exynos850, ExynosAutoV9)
> +    oneOf:
> +      - items:
> +          - const: samsung,exynosautov9-usi
> +          - const: samsung,exynos850-usi
> +      - enum:
> +          - samsung,exynos850-usi   # for USIv2 (Exynos850, ExynosAutoV9)

But now the comment is not appropriate. I can remove it while applying.
>  
>    reg: true
>  


Best regards,
Krzysztof
