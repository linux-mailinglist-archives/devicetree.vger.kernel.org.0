Return-Path: <devicetree+bounces-585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF117A2079
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:06:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69E8A282A0E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F128F10A2F;
	Fri, 15 Sep 2023 14:06:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D2210963
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:06:40 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2644B2119
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:06:29 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-31c5cac3ae2so1894143f8f.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1694786787; x=1695391587; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JPevAndR5O5sCcx9pba9haiqxJsLFJCPMkDHTjt52FA=;
        b=d7EmdtcCJZJyLWB2bpOoXrMme4pPeOmWr8T7flrEqgvAD9OFn6hH7RqjijMH2jFnja
         hC1OxaTrOOQ+0FScoHgLYAhyZCz2oZ8dXd26azjmPPLxOXaThs94qfPYMZ/OGvKcfsO4
         2C0x46sE8/yZeEjPO6q1fMw8rfVHS8q6+oJAOAp8v+kafpx4CGI3LLvYrSQmVrkMcbOX
         t2Aia1zEWLjfaGhnHNnzDXDPEY02aL/A+TpW8078sC/cE4XwviiqO09WOfd3JhpcPM7s
         aXdEDCEqPk2NmoJ6ALXfbNIFGEck//O0KqCm5JHUbrZmSGr5JzgYNglYVy8ZEXpbys6a
         2YGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694786787; x=1695391587;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JPevAndR5O5sCcx9pba9haiqxJsLFJCPMkDHTjt52FA=;
        b=YLWGQNf7d5ezWhoB3/PAfkoPQs760811ucThvFJVoSUxx5jFAV8bw3xjLZApwnMn8R
         IOK6jFbBUzsr2zJWCwZDAt+0If/GMWelyUIlhgtCJDeIdZ8STkdP7Cgu+RnDqbmjEqn1
         dal+AQBYvULtvoimJ2HLYnDayEh8Y5Rufo2BWAPHGoJEWgMBiYVLVfZL4TGxQJGLbLtI
         HY7eJaaOX4ERIGDfRd8wwd4npzSU3sjqO+jP03CLYU12NV7Nyjeru5P74hhIS3369RlN
         hlPQo8tTfs7I80w6pb0+DmGwrFWW+oLD0rfNu4Q2cfKFtBJvPHjpGSu8RvdOyRaEgbPZ
         tfDg==
X-Gm-Message-State: AOJu0Yxyp1yrss8iP4bU0AkdCBNRS4rh6szlnyU2hXR6P2H0k52EN5q8
	GgIe3g/n8XGzf2f5PWgdfUuIhA==
X-Google-Smtp-Source: AGHT+IE3Y60M6BMBEYiLzY3nM0JE0QTdwH9vEXe7+QkZgpY6vw67h9HdUCejeQHspU4fiIHRLlzWTA==
X-Received: by 2002:a5d:5745:0:b0:319:6caa:ada2 with SMTP id q5-20020a5d5745000000b003196caaada2mr1387654wrw.47.1694786787382;
        Fri, 15 Sep 2023 07:06:27 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id z8-20020a056000110800b0031f3ad17b2csm4521042wrw.52.2023.09.15.07.06.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 07:06:26 -0700 (PDT)
Message-ID: <845b7356-98e7-4d12-9a09-969930c6f9ef@nexus-software.ie>
Date: Fri, 15 Sep 2023 15:06:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8916: Fix iommu local address range
Content-Language: en-US
To: Gaurav Kohli <quic_gkohli@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: linux-arm-msm@vger.kernel.org, kernel@quicinc.com,
 devicetree@vger.kernel.org
References: <20230915050611.30451-1-quic_gkohli@quicinc.com>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20230915050611.30451-1-quic_gkohli@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 06:06, Gaurav Kohli wrote:
> Fix the apps iommu local address space range as per data sheet.
> 
> Fixes: 327c0f5f2510 ("arm64: dts: qcom: msm8916: Sort nodes")
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 33fb65d73104..3c934363368c 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -1813,7 +1813,7 @@
>   			#size-cells = <1>;
>   			#iommu-cells = <1>;
>   			compatible = "qcom,msm8916-iommu", "qcom,msm-iommu-v1";
> -			ranges = <0 0x01e20000 0x40000>;
> +			ranges = <0 0x01e20000 0x20000>;
>   			reg = <0x01ef0000 0x3000>;
>   			clocks = <&gcc GCC_SMMU_CFG_CLK>,
>   				 <&gcc GCC_APSS_TCU_CLK>;

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

