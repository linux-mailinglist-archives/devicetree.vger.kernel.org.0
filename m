Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA03D70C3D3
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 19:01:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbjEVRBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 13:01:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229830AbjEVRBC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 13:01:02 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76541CD
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 10:01:01 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2af177f12a5so56222311fa.2
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 10:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774860; x=1687366860;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=37qgKs5gQFq2AJSflT4layunA4PdEI+aCKFOkctJJf0=;
        b=b695qJuDkuqT10SpY8k2cQMmXDmIU0RjTiRWJLG3RulCbvY6Bx4ymqsv4tPJmaH+oB
         ZpY+GKQBvb6TNYn/eFgFsXOL+rj1YwlTbX06JhcqGO403bvKlgNLCSZB7iSjVGA0yX4T
         tjUfwt3wF/NB1HTMpXWGM+sNQHfn53vfVvDmUPegWcN+ob7tORuy8T8SzV5E6UWbCPDK
         ZHWazhZd+8GWpSUTWnOrdx1YNEG/zIJAs6dlqFju7DdrjleYL5WDINelhH/iyG9p9Wf1
         wFvmBlRBnQBBn5A9DhIHwEOpEobjPdmGtBZhx6FyZSS+GdFpuW3IlpfOECSAUBtF9faV
         /Wdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774860; x=1687366860;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=37qgKs5gQFq2AJSflT4layunA4PdEI+aCKFOkctJJf0=;
        b=Bs9/okRasdLEREyK3rX38KyJ/MtAVQrBtqj/cuk0mbWD9A7IGRy4JWNGhH84qjK/ct
         wfysH779i6jhrrrmuiwPNG+bmk70yQQGWVS53wlvjxsDKjP296VqKYC4ltUCElBmO2l/
         TJRgX4iM3PDnFlMHDUNC4gyu0SqBOSzXlBNqAsNu3NBnWG78S15F8SCnm2/2CaCg7h0C
         vSS3xDAt2ZZnBtfzMeiw+IpCckPFyEvP47nkYjHWN+Wfx4gNPvccAglM8OAzda979/KU
         XSAwXIZETd8/ViO1TYDLYZaYUNMWfzsIZiGk9a3ov7n3E6sBRx/GVGsPS1SH6YOplxGF
         hL8g==
X-Gm-Message-State: AC+VfDx+D0FcY8g2JO3VSSpOSjiUtbNOvTjJ4twX/z4QLi7qRlMg5cNq
        18/KocTrQlcfrmnbA1RxNCbyXw==
X-Google-Smtp-Source: ACHHUZ5sCATOdJ2uo5dtzDQR7nJqK6Iwp6fSdPqjS58XEgTMivTDnYgnMhKxceFX3k0gUhP2LyQaJw==
X-Received: by 2002:a2e:3c0d:0:b0:2ac:826e:c5a with SMTP id j13-20020a2e3c0d000000b002ac826e0c5amr4621285lja.1.1684774859760;
        Mon, 22 May 2023 10:00:59 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id j2-20020a19f502000000b004eff530efe7sm1046114lfb.93.2023.05.22.10.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:00:59 -0700 (PDT)
Message-ID: <e7403637-dfca-667a-3603-7ad9c393fa94@linaro.org>
Date:   Mon, 22 May 2023 19:00:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 07/11] arm64: dts: qcom: sm6350: switch UFS QMP PHY to
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
 <20230521203834.22566-8-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-8-dmitry.baryshkov@linaro.org>
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
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> index 18c4616848ce..a816bb212174 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -943,7 +943,7 @@ ufs_mem_hc: ufs@1d84000 {
>  			      <0 0x01d90000 0 0x8000>;
>  			reg-names = "std", "ice";
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufs_mem_phy_lanes>;
> +			phys = <&ufs_mem_phy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			#reset-cells = <1>;
> @@ -988,10 +988,7 @@ ufs_mem_hc: ufs@1d84000 {
>  
>  		ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sm6350-qmp-ufs-phy";
> -			reg = <0 0x01d87000 0 0x18c>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> +			reg = <0 0x01d87000 0 0x1000>;
>  
>  			clock-names = "ref",
>  				      "ref_aux";
> @@ -1001,16 +998,9 @@ ufs_mem_phy: phy@1d87000 {
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
>  
> -			status = "disabled";
> +			#phy-cells = <0>;
>  
> -			ufs_mem_phy_lanes: phy@1d87400 {
> -				reg = <0 0x01d87400 0 0x128>,
> -				      <0 0x01d87600 0 0x1fc>,
> -				      <0 0x01d87c00 0 0x1dc>,
> -				      <0 0x01d87800 0 0x128>,
> -				      <0 0x01d87a00 0 0x1fc>;
> -				#phy-cells = <0>;
> -			};
> +			status = "disabled";
>  		};
>  
>  		ipa: ipa@1e40000 {
