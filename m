Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A8D56E40FD
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 09:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231168AbjDQHa7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 03:30:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231172AbjDQHab (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 03:30:31 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35EF049ED
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:30:13 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4ec81436975so1188795e87.0
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681716611; x=1684308611;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hJGSEGyAxLVNBMh89b1AYon9jCfD8byXBW9p5ZuA3DE=;
        b=lvKIcQJ3fDq45vKThmcwBygiJg/Wg8v6mb+fbuMs/rFtAr6JNedhMYHISA1Ge9Dggq
         2WtcWH5HjxD/fV8Lht3LYBSGiQzIBlYJafSvT+ditI9i9vHKhQ2YBDGY/mHBpaBgd8N2
         DXWC/mS+h7l12mdaJcPMitP99CtSKydznWyid5Hx/txFBi+2oqp7w5zWwMb8DTkX6KD0
         fKMTtLhcQyu9mew77tyPbgEnFqNxCXKD5xvoEwyJvgl1ao21xPHQr2CQItfjsekoDUGb
         /8vR8KV1pamc7/3ZbCTVIlTscv8DFnc5hITWSl8OLhvpLk+yTFu4QGrd2eg2RdIqUlCz
         kyGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681716611; x=1684308611;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hJGSEGyAxLVNBMh89b1AYon9jCfD8byXBW9p5ZuA3DE=;
        b=lDTsR57zvdNFCu79Se/Vlw67OK/Et4rlQgbYXlBe0pWC51iw+kgXK5GM7ashx/cVFy
         G0uBA9X7ZnimwNLTPOXUuqFjPJ5cX5mL/n2goQcqdmWFKuwAepgc1wh6PUOrdIckTp2w
         42JW8i2iUnyu9pmDeMQSu0xyDbBZMxg7LtvuNKOKGiUNEpZkOI+/WzgZC7FfBKOAGUCf
         tHuoxmN6gMbCUSdMbRf89LmCfzadNHeXmuS+EFK878OYfhDBTW5LTQ0Eay85v0NpLapU
         SAz98frQWeLXtcQhFdtTzF575acAI9Wj/J4VetrOB2kSiw5qHp4jju/r4d0kGbCZz6DC
         +bTw==
X-Gm-Message-State: AAQBX9e3pSc/QijtGZZT/z6K6FJFDUVij4gQXKNruKnb37dmk0NF0hTk
        kkPJGrVbJ7KmOhiVG4qlHwFxKA==
X-Google-Smtp-Source: AKy350Yw3WN/7EnvWfYyzc9vMy/bpGmN20O1vEyall5Woa6tofcjfeqA7RzKUpuoW/wr0p6Pd34VHw==
X-Received: by 2002:ac2:4d06:0:b0:4ec:a9c1:27de with SMTP id r6-20020ac24d06000000b004eca9c127demr1716220lfi.18.1681716611566;
        Mon, 17 Apr 2023 00:30:11 -0700 (PDT)
Received: from [192.168.1.101] (abyk99.neoplus.adsl.tpnet.pl. [83.9.30.99])
        by smtp.gmail.com with ESMTPSA id v12-20020ac2560c000000b004ddaea30ba6sm1944499lfd.235.2023.04.17.00.30.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 00:30:11 -0700 (PDT)
Message-ID: <9b26cfd1-977c-e7cd-2e9c-31b865bb1303@linaro.org>
Date:   Mon, 17 Apr 2023 09:30:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 3/6] arm64: dts: qcom: qdu1000: add missing qcom,smmu-500
 fallback
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230416123730.300863-1-krzysztof.kozlowski@linaro.org>
 <20230416123730.300863-3-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230416123730.300863-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16.04.2023 14:37, Krzysztof Kozlowski wrote:
> Since commit 6c84bbd103d8 ("dt-bindings: arm-smmu: Add generic
> qcom,smmu-500 bindings") the SMMU is supposed to use qcom,smmu-500
> compatible fallback:
> 
>   ['qcom,qdu1000-smmu-500', 'arm,mmu-500'] is too short
>   ['qcom,qdu1000-smmu-500', 'arm,mmu-500'] is too long
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/qdu1000.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qdu1000.dtsi b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
> index fb553f0bb17a..ddc3239478ae 100644
> --- a/arch/arm64/boot/dts/qcom/qdu1000.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
> @@ -1113,7 +1113,7 @@ qup_spi15_cs: qup-spi15-cs-state {
>  		};
>  
>  		apps_smmu: iommu@15000000 {
> -			compatible = "qcom,qdu1000-smmu-500", "arm,mmu-500";
> +			compatible = "qcom,qdu1000-smmu-500", "qcom,smmu-500", "arm,mmu-500";
>  			reg = <0x0 0x15000000 0x0 0x100000>;
>  			#iommu-cells = <2>;
>  			#global-interrupts = <2>;
