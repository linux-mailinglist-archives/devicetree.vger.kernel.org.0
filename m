Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91F186E912E
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 12:56:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234968AbjDTK4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 06:56:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235157AbjDTK4W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 06:56:22 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5167ABBB5
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:53:49 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id h2so2211373ljh.13
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681988029; x=1684580029;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/KWtiOadKm31udPtrGqFq8660qOr84LPtnmKc14NtBA=;
        b=mtOATLjKbDerd9lr/WUPQ05n1/eLFjSDoV8UHqzoNp/WZKF4p9p0tgu1G2XfvUo+yl
         k2pde1U63/6hcwchd/rbFzLzoRP1tEb5NGRdDIj5G+GdLMfPOMENKDRwxCYJFaPDkqlX
         sZPGBlYLvDgaZGyNQpZ3G1HvTnmD4b7cpFoBnjGttRPHtbPvBWmqaoo4h70szu4uWn+1
         eYzIpWjLNdp1ztE71QU/e8EZa8vHCNxIr2/kV+aMyFG1+PxhCmrzAIzcIlXiyMaLIq1x
         JMCo/XlOKcg7mCrVToIsaapCSbypeiY7dALz+Qbl1Eug413EYzgcxg9WQbfXNMuazV5c
         bFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681988029; x=1684580029;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/KWtiOadKm31udPtrGqFq8660qOr84LPtnmKc14NtBA=;
        b=kx3481mSOpTs16C0I1arhoDQLUFX7jfwRauaTu2cV0elwJcYOt89VKcTdrBjIv+lEl
         VGJGVbse16OJY+N0mHpuqO4wIWDD/bKSUHcJh1fRD+aEGmRtIJKuFHm1BwjSIue9bvva
         1SrMbAWUOBpHBci1pR72IwT0MY+m4R7rWmrPNYerfSofobJoxc4213odRe0xavGwNtg9
         QvHKy4yw/9JbpWSkigzaugkdBHRelSu+7IoJ3JFx/uK0o0poNUieGGu8Yvppt71fkSR2
         Px9lA/I1QKG9wasWCoEB2duGtWpcHMFneQUZ6tzqYYpKexRFjnbD7L8UseBHuWe9+onW
         DQCQ==
X-Gm-Message-State: AAQBX9f+P7hsXGf65eyq5nfSSEnXkG28EB9AabYCUhHFQvjGlRDRhwXJ
        /hHKM+nGIl1mem2GelbzkuNauw==
X-Google-Smtp-Source: AKy350bNfrhhECRZJdQ+hKuLJ3ObTNr5cC8NpBQ8Zk8aM7ZzqRUHBhcBm8XXL/AkNIaIQk5Jy3tGIg==
X-Received: by 2002:a2e:9698:0:b0:2a8:c4d0:b135 with SMTP id q24-20020a2e9698000000b002a8c4d0b135mr374241lji.49.1681988028756;
        Thu, 20 Apr 2023 03:53:48 -0700 (PDT)
Received: from [192.168.1.101] (abyj144.neoplus.adsl.tpnet.pl. [83.9.29.144])
        by smtp.gmail.com with ESMTPSA id u17-20020a056512095100b004ec88128dc4sm179139lft.68.2023.04.20.03.53.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 03:53:48 -0700 (PDT)
Message-ID: <ad92241e-e517-0220-b506-a907a3fbcc8d@linaro.org>
Date:   Thu, 20 Apr 2023 12:53:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 07/18] arm64: dts: qcom: msm8976: correct MMC unit address
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Todor Tomov <todor.too@gmail.com>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Luca Weiss <luca@z3ntu.xyz>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Adam Skladowski <a39.skl@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Robert Foss <rfoss@kernel.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Molly Sophia <mollysophia379@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
 <20230419211856.79332-7-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230419211856.79332-7-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 19.04.2023 23:18, Krzysztof Kozlowski wrote:
> Match unit-address to reg entry to fix dtbs W=1 warnings:
> 
>   Warning (simple_bus_reg): /soc@0/mmc@7824000: simple-bus unit address format error, expected "7824900"
>   Warning (simple_bus_reg): /soc@0/mmc@7864000: simple-bus unit address format error, expected "7864900"
>   Warning (simple_bus_reg): /soc@0/mmc@7a24000: simple-bus unit address format error, expected "7a24900"
> 
> Fixes: 0484d3ce0902 ("arm64: dts: qcom: Add DTS for MSM8976 and MSM8956 SoCs")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8976.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8976.dtsi b/arch/arm64/boot/dts/qcom/msm8976.dtsi
> index f47fb8ea71e2..753b9a2105ed 100644
> --- a/arch/arm64/boot/dts/qcom/msm8976.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8976.dtsi
> @@ -822,7 +822,7 @@ spmi_bus: spmi@200f000 {
>  			#interrupt-cells = <4>;
>  		};
>  
> -		sdhc_1: mmc@7824000 {
> +		sdhc_1: mmc@7824900 {
>  			compatible = "qcom,msm8976-sdhci", "qcom,sdhci-msm-v4";
>  			reg = <0x07824900 0x500>, <0x07824000 0x800>;
>  			reg-names = "hc", "core";
> @@ -838,7 +838,7 @@ sdhc_1: mmc@7824000 {
>  			status = "disabled";
>  		};
>  
> -		sdhc_2: mmc@7864000 {
> +		sdhc_2: mmc@7864900 {
>  			compatible = "qcom,msm8976-sdhci", "qcom,sdhci-msm-v4";
>  			reg = <0x07864900 0x11c>, <0x07864000 0x800>;
>  			reg-names = "hc", "core";
> @@ -957,7 +957,7 @@ otg: usb@78db000 {
>  			#reset-cells = <1>;
>  		};
>  
> -		sdhc_3: mmc@7a24000 {
> +		sdhc_3: mmc@7a24900 {
>  			compatible = "qcom,msm8976-sdhci", "qcom,sdhci-msm-v4";
>  			reg = <0x07a24900 0x11c>, <0x07a24000 0x800>;
>  			reg-names = "hc", "core";
