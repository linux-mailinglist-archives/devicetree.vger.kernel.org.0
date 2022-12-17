Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5179E64F98D
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 16:01:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbiLQPBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Dec 2022 10:01:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbiLQPBn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Dec 2022 10:01:43 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6327B11A25
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 07:01:42 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id b3so7746675lfv.2
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 07:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D3h3onfk/w75vYssXLX8rbrcDV/vqWhlZbg0paogVXE=;
        b=nJ4MxFtd0Kg23YKBoyRO22cEcryuRW4jBivs/VcYCz7SKMv2C1OCVUdZp7eoru0RNM
         cAKbgnpk/uOuTmWjtvUE+XODCVFJTADnf3NN05hVYhRIBUWPez86AYKfi/gHXAPYMafR
         7UxTkOHfVotkxOS9lM3j4vh3y2flNhLcTJ2kdzl9eUGPWR6EHInUIXLp+V1a70YhbCJS
         IpybyJ+YU8bT9F4M0IDhPZXC+mik11beQeHxh/Rt185tbErCfwgHBVXT2McYNanvZl/J
         NRHkTGpuKv+KUBmpbmskTnXsQpU8uenTOeCesioyvI/FLmT1EIVz3YZejDIutENVpLk6
         i6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D3h3onfk/w75vYssXLX8rbrcDV/vqWhlZbg0paogVXE=;
        b=Sg8Ewk/gP9P2Juq4rTQNCL7Rvp4/I5+36gSczq4qBLn51h214scfH0lwZdl3PPUQA2
         sHCSVA5AU1oiAq3QtgSP1hhPdLIdf4OmGxL/IWigHeHrn5Ob4WGaWzfvAuOwIUimCVSM
         /ivNp9KeJ9FHtgUGoxMETyI0ytoYONHE3mLEmgTiV95gVJaSHiCy4RtxnysEIWTOXvzB
         mZ7DT3YFTpXmDveG+xuuxwjEdfvjSHuwDleuMbLlgdgv7h+3wOU3UryCUV0KHRTEMOE2
         EiGUEIaias68DYF319HaJy29C94bZCZkxVC0S4zTq1QPGihkztqyByOwtDhS4jHH8tAy
         2OYg==
X-Gm-Message-State: ANoB5pmgrVXGW/sI2jL3Jm61w3eAiUQPNiLl7+Os3+JhTEBCi5vVgy3b
        lF3lYqm240vJkzlIw+fETQkokw==
X-Google-Smtp-Source: AA0mqf7uSma3aMecf1CJ3CyLaa9GcTXho/Ckya7MKPBcNJZLX4lAUMSmoG77OD2kqt0sYQIutF0sKQ==
X-Received: by 2002:a19:6a0f:0:b0:4b5:6db0:d598 with SMTP id u15-20020a196a0f000000b004b56db0d598mr10190403lfu.20.1671289300746;
        Sat, 17 Dec 2022 07:01:40 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id s16-20020a056512215000b004c316ae669fsm262618lfr.68.2022.12.17.07.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 07:01:40 -0800 (PST)
Message-ID: <98e95f3c-d64a-410d-8f56-845d55675e87@linaro.org>
Date:   Sat, 17 Dec 2022 16:01:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a
 clock provider
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
 <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 17.12.2022 00:40, Dmitry Baryshkov wrote:
> Add #clock-cells to the pcie_phy node. It provides a PCIe PIPE clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index a5324eecb50a..ffffaa7507cf 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -810,6 +810,7 @@ pcie_phy: phy@7786000 {
>  			reset-names = "phy", "pipe";
>  
>  			clock-output-names = "pcie_0_pipe_clk";
> +			#clock-cells = <0>;
>  			#phy-cells = <0>;
>  
>  			status = "disabled";
