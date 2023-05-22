Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6868470C3D1
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 19:00:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232779AbjEVRAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 13:00:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbjEVRA3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 13:00:29 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A901CD
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 10:00:28 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4effb818c37so7046867e87.3
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 10:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774827; x=1687366827;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dlUNb0hPQzUYISfHb4EUlMG6b83cZ0qedXnGzzVBM3I=;
        b=F4aJdb8dtdTeepxLkPBvTHXhNf30JZM7aRTeJL4D8zrJdYWGotG+RrgZQmR653WSmV
         FMmBgCHOc9typKK5eSzzmWPzZuISTOCPmUO8PtzxeDjVgO9uwzWniNEkYErOMyQ8DkUI
         V42SGPnZhA7WkwlY7Cu1TURAAxPP5fqriKB3/fU89zR5jSbwTKfPvzo7YxwZTReON11W
         gzcfMNVtPAPNKy3agbZWOxhsu5GpFKEK8ZBlh33hNFCCsaSjobkGfHX+jplO3ymfRzDM
         nccUiYjo9Z0KtxGM8+4xr2WZD5XZKwwXwQ2G3FK2XhgfyMhMuhrUtVLdUPEhkEJ1PhiX
         VZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774827; x=1687366827;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dlUNb0hPQzUYISfHb4EUlMG6b83cZ0qedXnGzzVBM3I=;
        b=UQwCCO0sdhdekMgh534P1MEs0Fghn2EY6m28omcMmyKsv9NE4iWlfUXYJr3LqHftf/
         1N4ym4JdSrDdSvfr4PrFvCJ71gJIUnLQP7ftLhr3eNcBpsl8ja9QWIA7DkuoK/CsDYvM
         LjHTRo1WeAyLpDYe8WBhbHh2SS19pdw1+2oCO6ecr4uHajIbqaVAOnTfFkFyOBm+brMj
         JhcbFfM1ID4V4lSePr2H4xqTB0bEjZ4/5RU5IlC+odo8GwcAtVYwY0sExFC271N9BE3M
         iPVC08xXrY5chPd6RHciBlLghdoI02W7JS/iiqRbZ8X8ZuuHm/LGr9tDHwIl0O//LlCt
         PFHg==
X-Gm-Message-State: AC+VfDxY1z7+4y3kq73WytWKHbiObavQdChL3iIxpJ/5Gk/btRxfLNjQ
        6sz6LJWTGGSRg60LnLGhdRIgaw==
X-Google-Smtp-Source: ACHHUZ54dXFQqhMx5DWRg7ykMPj9ps973ssspCJJD3XTTpSQH1+uUGif8Pd/b6BKTH6Ch6a3IjlMdg==
X-Received: by 2002:a05:6512:3765:b0:4f3:8244:95dc with SMTP id z5-20020a056512376500b004f3824495dcmr3321784lft.15.1684774826820;
        Mon, 22 May 2023 10:00:26 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id q26-20020a2e875a000000b002ad92c2ff54sm1218892ljj.15.2023.05.22.10.00.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:00:26 -0700 (PDT)
Message-ID: <9bbf64fa-3ab7-9171-5d2d-d6f523f71862@linaro.org>
Date:   Mon, 22 May 2023 19:00:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 06/11] arm64: dts: qcom: sm6115: switch UFS QMP PHY to
 new style of bindings
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
        devicetree@vger.kernel.org, Johan Hovold <johan@kernel.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
 <20230521203834.22566-7-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-7-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21.05.2023 22:38, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 631ca327e064..289b96d31414 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -784,7 +784,7 @@ ufs_mem_hc: ufs@4804000 {
>  			reg = <0x0 0x04804000 0x0 0x3000>, <0x0 0x04810000 0x0 0x8000>;
>  			reg-names = "std", "ice";
>  			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <1>;
>  			#reset-cells = <1>;
> @@ -825,24 +825,17 @@ ufs_mem_hc: ufs@4804000 {
>  
>  		ufs_mem_phy: phy@4807000 {
>  			compatible = "qcom,sm6115-qmp-ufs-phy";
> -			reg = <0x0 0x04807000 0x0 0x1c4>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0x0 0x04807000 0x0 0x1000>;
>  
>  			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
>  			clock-names = "ref", "ref_aux";
>  
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
> -			status = "disabled";
>  
> -			ufs_mem_phy_lanes: phy@4807400 {
> -				reg = <0x0 0x04807400 0x0 0x098>,
> -				      <0x0 0x04807600 0x0 0x130>,
> -				      <0x0 0x04807c00 0x0 0x16c>;
> -				#phy-cells = <0>;
> -			};
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
>  		};
>  
>  		gpi_dma0: dma-controller@4a00000 {
