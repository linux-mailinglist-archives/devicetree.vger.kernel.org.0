Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C43C405908
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 16:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344821AbhIIOaH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 10:30:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232395AbhIIOaC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Sep 2021 10:30:02 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D52BDC00F63B
        for <devicetree@vger.kernel.org>; Thu,  9 Sep 2021 06:19:11 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id h16so3651776lfk.10
        for <devicetree@vger.kernel.org>; Thu, 09 Sep 2021 06:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zjCm2kqLmEkD1fYMpLfynjls4LWjCF1R/HM+9Gqf848=;
        b=OE15DtuTMThkONQn2QaW9vAJKJ4c5pWnECM8dh6t2F5lxkzOQeepKE0K4HmtgqZgjV
         MRkwgGmGmxUriL00OMiESoz55OF7Kg50LWHvTG1px0UFyDmtKcbVmx4Uoah1/qoJWO2i
         5p3ySfY5SwOR9I8JDePdifMsBy7MlP3+CHy2wNlJBPmtx9ai9DWrRxh430t8NpR+qkbV
         yJOIbzETKc40EIGF15R4XdOy/OgEfFhXtuJ/0bmufBPBzcG62lorQlBtuzSLqOVhO/bC
         loAS8P5S/d02dnIN04YJ10gffnzt8rv9c7Ey+vvL5DYUHVSyEqPETkva74sSJ0Pjk1j1
         /7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zjCm2kqLmEkD1fYMpLfynjls4LWjCF1R/HM+9Gqf848=;
        b=vXH99spAm9BOw5JPpuCMjKsaa/JkKdlC+mVC90L37r2R2bm/PvDF1nqyr1qS4URoog
         NQDqaMHPOLNLbohK7PNnN8L/KoYBUMytPfGRJDWNsLSeYgrezKhB69nMqFac7MPKsq0G
         2c13f+JtoslK14SPIaIwSSaNlm6XUrDSHA09GvHPmP+i5sYkRoxSCVNbgWgbHl2Cpg8E
         ysCRhXz4gm/+Zki2RTR1fEYE0xW5IVpJPi5jA7z2VJ9kZrGn491Gu7okoS4WFiTcYY9P
         QodvWTtSqQNADHR4hJ0tvgtKjV+gIQQ/rHCX7YD73cMDz4Gjxm5rpduJNXb1OMWGgl/i
         UjKA==
X-Gm-Message-State: AOAM5337//Pw+jICHy6cNYR6/rs7UeKC95tiWQYjI0Nzsuy4Lr7Nt17A
        ygV8D9GLolbJbByljh2QElRMYg==
X-Google-Smtp-Source: ABdhPJw92+bv1tpDoZqXpouY2qicTHxeTcDi4tXjJ1yAhPRIT8shcSy3idYOKvLB9LMdigSvIPI8Hw==
X-Received: by 2002:a05:6512:b27:: with SMTP id w39mr2412730lfu.129.1631193549547;
        Thu, 09 Sep 2021 06:19:09 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d1sm200065lfl.5.2021.09.09.06.19.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Sep 2021 06:19:09 -0700 (PDT)
Subject: Re: [PATCH 3/7] arm64: dts: qcom: msm8998-xperia: Add support for
 wcn3990 Bluetooth
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        bjorn.andersson@linaro.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, konrad.dybcio@somainline.org,
        marijn.suijten@somainline.org, martin.botka@somainline.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        paul.bouchara@somainline.org
References: <20210903180924.1006044-1-angelogioacchino.delregno@somainline.org>
 <20210903180924.1006044-3-angelogioacchino.delregno@somainline.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <7032cf3a-2469-3d66-bfde-9754dbac58b9@linaro.org>
Date:   Thu, 9 Sep 2021 16:19:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210903180924.1006044-3-angelogioacchino.delregno@somainline.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/09/2021 21:09, AngeloGioacchino Del Regno wrote:
> This platform uses the WCN3990 Bluetooth chip, reachable on UART-3.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>   .../dts/qcom/msm8998-sony-xperia-yoshino.dtsi   | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi b/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
> index 2fe53e4675d5..66b009ba72fe 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
> @@ -179,6 +179,23 @@ &blsp1_i2c5_sleep {
>   	bias-disable;
>   };
>   
> +&blsp1_uart3 {
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "qcom,wcn3990-bt";
> +
> +		vddio-supply = <&vreg_s4a_1p8>;
> +		vddxo-supply = <&vreg_l7a_1p8>;
> +		vddrf-supply = <&vreg_l17a_1p3>;
> +		vddch0-supply = <&vreg_l25a_3p3>;
> +		max-speed = <3200000>;
> +
> +		clocks = <&rpmcc RPM_SMD_RF_CLK2_PIN>;
> +	};
> +};

There is an ongoing proposal to rework wcn3990 (bt and wifi) bindings, 
so we might want to delay this a bit. Not a strict requirement, since 
the changes would be backwards-compatible.


-- 
With best wishes
Dmitry
