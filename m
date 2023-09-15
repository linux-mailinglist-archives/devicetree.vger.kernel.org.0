Return-Path: <devicetree+bounces-382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3C27A1700
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:11:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB5962829CC
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3432D26A;
	Fri, 15 Sep 2023 07:11:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8876646AD
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:11:42 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7791D1BD4
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:11:28 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-52e828ad46bso2105661a12.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694761887; x=1695366687; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=duNzL30y57/ySAf7C7Vscwm8B7UTpG6sGWYT0D1JL74=;
        b=jc8PGvYKXoBm8/dmMCktI/8F0QPXtGaVHJlvW0UbMvpXx0Fyd+N9sQ5WqfDg1lqOij
         As9N0DHiZz27AknsqdEmKtAqLEPe+phyBieCyRKbTjmy6dApKO4Nn5FQNW+aRyLc/e+X
         4w6PNIcfof0uWL3qExcenWgujdzYFS8Cmw0xphg8dkXbcdhdLhgxHJpvwOcm2qUW93+C
         F8pkF3zCdv+qCf1GjAOwhOPiJmlcHEQ9MiM1EfLxCkY3AOjAQeHbyneTAdM2jKUuPKcu
         IiJ/kXWlet/oobOeISeALmtxN6sipKkB/cofZp/Lavmi5FO5AZBrIkK5K2CcbSDNUmNd
         q+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694761887; x=1695366687;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=duNzL30y57/ySAf7C7Vscwm8B7UTpG6sGWYT0D1JL74=;
        b=Y/ZyrnK9kPrEZGY9mxyxdFqS1k8IwG0r7HhRPjabuyvojUElKhQLwFsVFYJ+BI18cj
         NW7C65mf8ihuPcgYfB4SyCxFLIBFRL1LD/rgp03Baa64w/ekLRKFbgAfdtFk4UYKwOwB
         2CdBytBP4S0XBpzDfWb3+7GawZwVjiAii6jIjOoSj27Au+9m7e35+td6b6SeZKC7zg6y
         l+ygfauBy7fGe5e+BdrqxxiSprRtrXh+DjuUQyRY0+493IMg8kzlIF46bcQg/MLLI7F6
         g2rWNaAjJCi26dY92CcFhzMnZ8WOMAgG3Ry2Xh9qUKpTYFOAwGJiiXvFQPuMgWgcmYwd
         r85Q==
X-Gm-Message-State: AOJu0Yzn/+jFvyn+7WEE4XzoJ1oT33rUMkQ82SR3j8o2zVjHgeGjQtlX
	S8RghMjS8LajrZxGLKQ2+ZP65Q==
X-Google-Smtp-Source: AGHT+IG80X1Vd9VVje2GNT+zD8duHxXIpA9OlMLUywM3CGAi4AX7C8Ef0fS8yntKTDXyicbSekDESw==
X-Received: by 2002:aa7:d3cb:0:b0:52b:d187:61c2 with SMTP id o11-20020aa7d3cb000000b0052bd18761c2mr680552edr.29.1694761886864;
        Fri, 15 Sep 2023 00:11:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id y2-20020aa7c242000000b0052a404e5929sm1836816edo.66.2023.09.15.00.11.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:11:26 -0700 (PDT)
Message-ID: <5a386be4-facc-8aef-aad7-da6508aa0505@linaro.org>
Date: Fri, 15 Sep 2023 09:11:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 4/8] dt-bindings: arm-smmu: Add compatible for SM4450
 SoC
Content-Language: en-US
To: Tengfei Fan <quic_tengfan@quicinc.com>, will@kernel.org,
 robin.murphy@arm.com, joro@8bytes.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, catalin.marinas@arm.com
Cc: geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, quic_tsoni@quicinc.com,
 quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
 quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com
References: <20230915021509.25773-1-quic_tengfan@quicinc.com>
 <20230915021509.25773-3-quic_tengfan@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915021509.25773-3-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 04:15, Tengfei Fan wrote:
> Add the SoC specific compatible for SM4450 implementing arm,mmu-500.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> index cf29ab10501c..b57751c8ad90 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
> @@ -47,6 +47,7 @@ properties:
>                - qcom,sdx55-smmu-500
>                - qcom,sdx65-smmu-500
>                - qcom,sdx75-smmu-500
> +              - qcom,sm4450-smmu-500
>                - qcom,sm6115-smmu-500
>                - qcom,sm6125-smmu-500
>                - qcom,sm6350-smmu-500
> @@ -70,6 +71,7 @@ properties:
>                - qcom,sc8180x-smmu-500
>                - qcom,sc8280xp-smmu-500
>                - qcom,sdm845-smmu-500
> +              - qcom,sm4450-smmu-500

Isn't there comment just few lines above your edit? Comment saying DON'T?


Best regards,
Krzysztof


