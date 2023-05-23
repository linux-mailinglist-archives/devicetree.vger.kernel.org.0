Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C47B570D714
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 10:18:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236132AbjEWIS3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 04:18:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235675AbjEWIRm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 04:17:42 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBCD395
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 01:15:49 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-96fb45a5258so538452466b.2
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 01:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684829748; x=1687421748;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jlLi+ycwQXT/s4WU1mgXfkcIcnCNUrHoMrkamB93Vuw=;
        b=FPVPaqX+oa1fQ9/3LHYJ7y5MLimAJGXy9VyJ/3SKeYxtJ2XIcGNkVTBEoaXgdOyySI
         qdFVXHX/7/wpklLZRFac3Tfa6AiNMbEuEDQ4a3r4Inx451BuIOHtF1ibzTMezB6U1dEa
         /nrwNE6Jnw+HKzzQHgupBPTUH82yHM4O6MNxi4b2cTcQkSBR0uZxzdbS1L89zRqOk/b2
         VK4Ivn7ohQCUIPdLPUjjthTIjLZp7I/hNjmBWQgQUvsdf1ZhllWbpGpda52Ap2R8xMSj
         74qni+Mx0wXW5rfugeYb2cgOQaiMpuJLkp0V3vHx0LAOonvnSFq/doT7LMT1lmxSaJaL
         EuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684829748; x=1687421748;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jlLi+ycwQXT/s4WU1mgXfkcIcnCNUrHoMrkamB93Vuw=;
        b=KnJDkU5FdeRoDyfyvkX/oVpj1oRmLh+IY+w1vlm0J7vuumC/X5Ie7Yj5qMdjgX70Fr
         Fcgvc4+AHBJht9wy7he84L+WiOKUwJCnoXSwsoLCn4Dect/ZjRo97+HmL7eKBuU6n4uB
         z7Oc1tVH8mzE7l8RpvZkuortI3mvYVxqRvWAgs35rLUp61DA2q1Yy43GieE1j1JXa++/
         cfoNM/f3jxpOpZ4DYMGagUMKrD+PbQdIsvmkEiKO8RoP6R1A5LwU5W+r0exLRywxvA9V
         wh846wlmRdPIZ8wOYZ4GfDRiC4QpqrPxWLomdcmxXGu1kS2fndswFivBNlci8Xv5/c8x
         UB/A==
X-Gm-Message-State: AC+VfDyAFfdcpFm/zO83YG/FD/uxLaiRWJIUoV9WXGddHrDH6H+V2s3k
        Uj0b2NN9vIlqSq/TYgtO6OI/sE+VtCFC2crWBF0=
X-Google-Smtp-Source: ACHHUZ5q1rbkyTP3VBE77IeCogBVNMojIQwKmhDiZgShpgGhFEFrKHs6LoV4mjCuEeutALVhZt49Cw==
X-Received: by 2002:ac2:5298:0:b0:4ef:eb50:4d3d with SMTP id q24-20020ac25298000000b004efeb504d3dmr4022870lfm.18.1684829082167;
        Tue, 23 May 2023 01:04:42 -0700 (PDT)
Received: from [192.168.1.101] (abyk138.neoplus.adsl.tpnet.pl. [83.9.30.138])
        by smtp.gmail.com with ESMTPSA id h13-20020ac2596d000000b004f11eb32f20sm1266058lfp.13.2023.05.23.01.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 01:04:41 -0700 (PDT)
Message-ID: <1669ecc5-1845-e671-83f4-19ee14d37ce5@linaro.org>
Date:   Tue, 23 May 2023 10:04:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc8280xp: Enable GPU related
 nodes
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, johan@kernel.org, mani@kernel.org
References: <20230523011522.65351-1-quic_bjorande@quicinc.com>
 <20230523011522.65351-4-quic_bjorande@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230523011522.65351-4-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23.05.2023 03:15, Bjorn Andersson wrote:
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> Add memory reservation for the zap-shader and enable the Adreno SMMU,
> GPU clock controller, GMU and the GPU nodes for the SC8280XP CRD and the
> Lenovo ThinkPad X13s.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
> 
> Changes since v1:
> - None
> 
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts     | 26 +++++++++++++++++++
>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 26 +++++++++++++++++++
>  2 files changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> index 5b25d54b9591..547277924ea3 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> @@ -210,6 +210,11 @@ vreg_wwan: regulator-wwan {
>  	};
>  
>  	reserved-memory {
> +		gpu_mem: gpu-mem@8bf00000 {
The ZAP region is very seldom moved around, and I wouldn't expect it
to be uncommon among the very usecase-specific 8280 machines.

> +			reg = <0 0x8bf00000 0 0x2000>;
> +			no-map;
> +		};
> +
>  		linux,cma {
>  			compatible = "shared-dma-pool";
>  			size = <0x0 0x8000000>;
> @@ -259,6 +264,10 @@ usb1_sbu_mux: endpoint {
>  	};
>  };
>  
> +&adreno_smmu {
> +	status = "okay";
> +};
Ugh. Should definitely be enabled by default.

> +
>  &apps_rsc {
>  	regulators-0 {
>  		compatible = "qcom,pm8350-rpmh-regulators";
> @@ -376,6 +385,23 @@ &dispcc0 {
>  	status = "okay";
>  };
>  
> +&gmu {
> +	status = "okay";
> +};
You can keep the GMU enabled by default as well, it won't "probe" on
its own (the GPU's hw_init calls its registration)

> +
> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {
> +		memory-region = <&gpu_mem>;
> +		firmware-name = "qcom/sc8280xp/qcdxkmsuc8280.mbn";
> +	};
> +};
> +
> +&gpucc {
> +	status = "okay";
> +};
Clock controllers have no reason to be off by default.

Konrad
> +
>  &mdss0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index bdcba719fc38..5ef3f4c07d75 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -264,6 +264,11 @@ vreg_wwan: regulator-wwan {
>  	};
>  
>  	reserved-memory {
> +		gpu_mem: gpu-mem@8bf00000 {
> +			reg = <0 0x8bf00000 0 0x2000>;
> +			no-map;
> +		};
> +
>  		linux,cma {
>  			compatible = "shared-dma-pool";
>  			size = <0x0 0x8000000>;
> @@ -359,6 +364,10 @@ usb1_sbu_mux: endpoint {
>  	};
>  };
>  
> +&adreno_smmu {
> +	status = "okay";
> +};
> +
>  &apps_rsc {
>  	regulators-0 {
>  		compatible = "qcom,pm8350-rpmh-regulators";
> @@ -518,6 +527,23 @@ &dispcc0 {
>  	status = "okay";
>  };
>  
> +&gmu {
> +	status = "okay";
> +};
> +
> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {
> +		memory-region = <&gpu_mem>;
> +		firmware-name = "qcom/sc8280xp/LENOVO/21BX/qcdxkmsuc8280.mbn";
> +	};
> +};
> +
> +&gpucc {
> +	status = "okay";
> +};
> +
>  &mdss0 {
>  	status = "okay";
>  };
