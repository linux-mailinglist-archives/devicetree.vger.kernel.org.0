Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D28FC712E71
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 22:50:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242952AbjEZUt7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 16:49:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243599AbjEZUtv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 16:49:51 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0B6E10C0
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 13:49:23 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f3b337e842so1250610e87.3
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 13:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685134160; x=1687726160;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CtQXLv6RM2qyU/OUCk91P8cjkfCSH2NoumWpYu1Uxzs=;
        b=oe2jEZLsRQkMOwyU2pOSrR3av/jnRiWrDVBPjq0ZAipX3zb81BhNCpeUmHmrBApxUT
         FDHFmm3lsPDKsPF27GHx3K4v/xpE59q2rNeKPnRXJJIEgFWCZDFTfm9nObc+QT8a3guF
         bDrhlKiJukcmp42/7POTgX2qR335EmlOHGrGNahR/tCQwFj1u5OJJRFr6qUqsivcHD7q
         Fhuct9bt86uTOv3cC4cSwAmoAsLK02AmLNaKolnjFOxxHRBYUW5mhs957RRszzk54RQJ
         xS0izSKbFmMZhnZgcbw9/mMBXm3C63FmJsP+Gg06+2uB0obD4lw3RSnci5u2IWAUNPuB
         Bd/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685134160; x=1687726160;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CtQXLv6RM2qyU/OUCk91P8cjkfCSH2NoumWpYu1Uxzs=;
        b=fbsQr0/lbF0ql+vBwsKLuMt2xwB5+HXnaAroj/8htn65myGo67972VRqd0C0aAwi/K
         Fm+Sa0ou7fNw1o/LNrij3UgBwSqsf1c6xVdWs9si5Mmi0w9wN93R38HaNjKu/1Vq2P5a
         Q27znUj1SKvtnsPS6M+wsKafo8vkCDbSKfpLfsoHZm4I/WEytEhoacl7RzCudo+gK694
         9mzTZqCsintIfn8vgSsqvp+iM3ZFZ7QSlPQaVseYAjC8o0PHoy5I0f8dHOud4DXvwTN7
         pged1Pq3eIayHXd9mLFnnTpEvadGTUbZ8BTBhZQ/lNATRU2Uybn8gYiNQdYRXoBsPITg
         2KFQ==
X-Gm-Message-State: AC+VfDxo/iv1XdZG2skEP/Q4q4+X+ECpBDEw/MigUH+CmoDXefFPHbf4
        eFUhxEM8+CadnsxE29pgaUxxyA==
X-Google-Smtp-Source: ACHHUZ7EK86n+2aoUVAUalgpJ72zlP2Vj+7PioVmhvTQX5TDsrB0m07KPd073r7TS4EVyTb1KSuBDg==
X-Received: by 2002:a19:551a:0:b0:4ed:b329:5d85 with SMTP id n26-20020a19551a000000b004edb3295d85mr854898lfe.15.1685134160564;
        Fri, 26 May 2023 13:49:20 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id e18-20020ac25472000000b004f4589808cfsm775616lfn.300.2023.05.26.13.49.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 13:49:20 -0700 (PDT)
Message-ID: <7db82f55-72a5-bdd6-ff87-34aefa624602@linaro.org>
Date:   Fri, 26 May 2023 22:49:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v8 07/11] arm64: dts: qcom: sm6115: Add Crypto Engine
 support
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org,
        stephan@gerhold.net, Anders Roxell <anders.roxell@linaro.org>,
        Linux Kernel Functional Testing <lkft@linaro.org>
References: <20230526192210.3146896-1-bhupesh.sharma@linaro.org>
 <20230526192210.3146896-8-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230526192210.3146896-8-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 26.05.2023 21:22, Bhupesh Sharma wrote:
> Add crypto engine (CE) and CE BAM related nodes and definitions to
> 'sm6115.dtsi'.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Tested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Tested-by: Anders Roxell <anders.roxell@linaro.org>
> Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 31 ++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 43f31c1b9d5a..2aa148340277 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -663,6 +663,37 @@ usb_hsphy: phy@1613000 {
>  			status = "disabled";
>  		};
>  
> +		cryptobam: dma-controller@1b04000 {
> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
> +			reg = <0x0 0x01b04000 0x0 0x24000>;
> +			interrupts = <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
> +			clock-names = "bam_clk";
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +			qcom,controlled-remotely;
> +			iommus = <&apps_smmu 0x92 0>,
> +				 <&apps_smmu 0x94 0x11>,
> +				 <&apps_smmu 0x96 0x11>,
> +				 <&apps_smmu 0x98 0x1>,
> +				 <&apps_smmu 0x9F 0>;
> +		};
> +
> +		crypto: crypto@1b3a000 {
> +			compatible = "qcom,sm6115-qce", "qcom,ipq4019-qce", "qcom,qce";
> +			reg = <0x0 0x01b3a000 0x0 0x6000>;
> +			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
> +			clock-names = "core";
> +
> +			dmas = <&cryptobam 6>, <&cryptobam 7>;
> +			dma-names = "rx", "tx";
> +			iommus = <&apps_smmu 0x92 0>,
> +				 <&apps_smmu 0x94 0x11>,
> +				 <&apps_smmu 0x96 0x11>,
> +				 <&apps_smmu 0x98 0x1>,
> +				 <&apps_smmu 0x9F 0>;
Nit: masks should be hex (0 -> 0x0) and the 0x9F could be lowercase

Konrad
> +		};
> +
>  		qfprom@1b40000 {
>  			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
>  			reg = <0x0 0x01b40000 0x0 0x7000>;
