Return-Path: <devicetree+bounces-391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E55977A172E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:21:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0E5428295A
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95103D279;
	Fri, 15 Sep 2023 07:21:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163B2D272
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:21:23 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BEFE10F7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:21:21 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-31f853f2f3aso1908464f8f.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694762480; x=1695367280; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B3QV/Vyen7SEvE+//J651UR0v2eTH0jtZ18uF80YocM=;
        b=TfQpoKur7h/s82G/SEz9E0Cz+ac/9MMJphZ/8tJ8LVkZ1qX2aDMWP6NNUEJQNdc58L
         RAuGVNQOrfMK+RoVDRjrLrcPAXESrGO02HUrZA7AJJlSIYSLNe03odfouIuDwk/0QAGu
         5d0y0bnSW9VMqH3fCvg68v1cy+A6UtGoc6r+sXD2XX7JVkY6M25f7xr3LqsF0LmjBtnA
         fsauN3Wi5bexNUL08Owoso5ZqCArS3iD4CpHnoWcLdiDYxlG1W5HuwyQ0y6GOZZsP9RL
         lPds7DFJeA8361QE80oRPOHvNeG62HMqXV/gWoU21y1LmYkbVzT8VR10M1zx+2SMrpv5
         oQ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694762480; x=1695367280;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B3QV/Vyen7SEvE+//J651UR0v2eTH0jtZ18uF80YocM=;
        b=ZKEFRG5wRgUxfywEniFIQVBDNfjLLL6atpD1VxcYRPDjPD2xgODQ2rj3IIBnj4YNZa
         RzDIW8hKixolW/nHtljFxzMZxZmkWf0LnkHRh+FPJxrHorI/KvfxUHmso7zHsIXZFkEs
         jgJ9SlbmaXcz9jP8DmPx8QohzB8aFkOyGd1a8DtzD0yujIdzuOxZFTN83zgWfxsxC7OR
         nulf+rxlvlprVrCcA7DscayxFSNjMdn2GgtiiDLT+z7sxGRSCu4nHh0+qUyJBHjbVoEy
         ZxbeyLIO7uUQ9ZyWcMT6O1fOC6ii0jxr58A6UnZDIjeMYBjEeZnvrVgxzsU8xFt9wy1C
         sEIg==
X-Gm-Message-State: AOJu0YwSG/bD5khvR+daxHUDWtTRjvgoZT4KO2R/W7Y1XmAiXHCae9t1
	l9gZVO3M0ZtO15jGEqBWAgh8EQ==
X-Google-Smtp-Source: AGHT+IGwsfAoWHYZgMObPQe5FAVomWG3Jgt+kImTmSbJN5ZZlvJUpMzf6w/uRD/CjOgHJcf56mYb4Q==
X-Received: by 2002:a5d:5591:0:b0:314:1096:6437 with SMTP id i17-20020a5d5591000000b0031410966437mr602765wrv.19.1694762480099;
        Fri, 15 Sep 2023 00:21:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id k8-20020a5d4288000000b0031431fb40fasm3671314wrq.89.2023.09.15.00.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:21:19 -0700 (PDT)
Message-ID: <8f2c9664-a2c8-50dc-8a1c-e50a071ebeb2@linaro.org>
Date: Fri, 15 Sep 2023 09:21:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 8/8] arm64: defconfig: enable interconnect and pinctrl
 for SM4450
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
 <20230915021509.25773-10-quic_tengfan@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915021509.25773-10-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 04:15, Tengfei Fan wrote:
> Add the SM4450 interconnect and pinctrl drivers as built-in for
> support the Qualcomm SM4450 platform to boot to uart shell.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index ec59174b14db..e91993de865e 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -598,6 +598,7 @@ CONFIG_PINCTRL_SC8280XP=y
>  CONFIG_PINCTRL_SDM660=y
>  CONFIG_PINCTRL_SDM670=y
>  CONFIG_PINCTRL_SDM845=y
> +CONFIG_PINCTRL_SM4450=y
>  CONFIG_PINCTRL_SM6115=y
>  CONFIG_PINCTRL_SM6125=y
>  CONFIG_PINCTRL_SM6350=y
> @@ -1500,6 +1501,7 @@ CONFIG_INTERCONNECT_QCOM_SC7280=y
>  CONFIG_INTERCONNECT_QCOM_SC8180X=y
>  CONFIG_INTERCONNECT_QCOM_SC8280XP=y
>  CONFIG_INTERCONNECT_QCOM_SDM845=y
> +CONFIG_INTERCONNECT_QCOM_SM4450=y

Why it cannot be =m?

Best regards,
Krzysztof


