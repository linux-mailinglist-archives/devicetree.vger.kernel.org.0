Return-Path: <devicetree+bounces-383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D1F7A1703
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:12:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 446A01C213EF
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AE3D26B;
	Fri, 15 Sep 2023 07:12:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CE76AB7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:12:17 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADC351BD3
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:12:07 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-502f3a06dc0so606170e87.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694761926; x=1695366726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L+1MAm8CUnGgXuX6co+0aREskJOB2spO/R6IQZ493/g=;
        b=nb4hkNhVBpz55nuhBksYMxXVm4INb4aJVBwb/pyC+/SslEwkCzD4QhqbokQYD8C9st
         tmKDIpY22+hdp54GKae3z0f2Jj+FbDCqYu6u0LmZpWC3hRy5kwdRqi/K+FZf8UYaaxlX
         BaKS5MnUK0/l4lcyHHrDbRdCynctBkFNcJN3qlRJvSid7ugX1lkmiX0GmvtxsEWLes7h
         i/zSRuOcQCEe76zbRDv8vrwLEEw0PD4BAPDY1Gi3rUQ7JodaZ+3cKNEy2xwTmA/Q/voV
         THw/fNS5XOl3vNeSObTFT5/OaBC9kMq73RCaQUjYwasvDrk9ZdHQ0hZKlE0nkfGGeYPI
         KsRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694761926; x=1695366726;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L+1MAm8CUnGgXuX6co+0aREskJOB2spO/R6IQZ493/g=;
        b=JDnvOPxIkMwfintsYsoxm3JXNXC5aSXncYkGRtiT6zD0hIZLDd+G/NKA1gWioUbKmF
         RdmlA6ZxQUGyUypdw47EMEcdF6WvcD8CiZCYNr7Bo4DG2sDzRJiceoLbJ5iFg5kQDVzR
         +EMRyaboMnUa4diiYGIkwGijHEEYzD3eFiBQQVJvD4ysUBo8vhgEADH8hSB/dcKdtQQU
         kP2sCDdrToVwwO30v6Lj0H8y2ppNgpGez6uanpTuGb5yv+k+qfPbnRHxIw4aSLb9CIVB
         mHxMxbYvmWTd9EnoMSYm+dVnZ9LCJ6X19glXkrPq4/v8rPpCPPs8gTycNXguNioFH1QL
         LWFw==
X-Gm-Message-State: AOJu0Ywqk/gRregK2y05Zys5g06Fzuh+UPqLthRA06PTf9swrttJ1kqq
	Wm8FUu4WXYR/YX39VT8VOVBAng==
X-Google-Smtp-Source: AGHT+IHECa1brdHbyZ+RRYmTLFGKg3RSF3pozRwZjz4PFeKi2aM/YBgZ+azN8FxCn8uEPW/fu+Melw==
X-Received: by 2002:a19:f507:0:b0:502:acf2:88df with SMTP id j7-20020a19f507000000b00502acf288dfmr632313lfb.35.1694761925299;
        Fri, 15 Sep 2023 00:12:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id e6-20020a056402088600b00528dc95ad4bsm1829422edy.95.2023.09.15.00.12.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:12:04 -0700 (PDT)
Message-ID: <bab9dd29-9509-f724-bcba-040501851e5e@linaro.org>
Date: Fri, 15 Sep 2023 09:12:00 +0200
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
 <20230915021509.25773-6-quic_tengfan@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915021509.25773-6-quic_tengfan@quicinc.com>
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

Duplicated patch. Same problem.

Best regards,
Krzysztof


