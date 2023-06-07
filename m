Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 317C5726932
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 20:50:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233033AbjFGSut (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 14:50:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233006AbjFGSus (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 14:50:48 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE871BD2
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 11:50:46 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-978863fb00fso161234166b.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 11:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686163844; x=1688755844;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3UBP5e7Zrw6Ywbv8wWhYRjjWOzU9tnh0VqdDEyQr7w0=;
        b=x60i9+Tw1eE9EJaMGqV4Ja7FCOjjWYWBnahUBThvR4wWxcWPelvhUCHLVuFdZbX0Ib
         z9Kz9SiiqbU8Dq30DzSgAbjdaqQShUzlwnCYSozwi0rs9sfnx/2UF7DWbrnZtuKjyDZg
         jivCmSF9aYu+x8KCuhITvvl0yoBKOtQ5ubVCTEkpdn5Tlb8HA++tMjTbauaMNrypXOfv
         rtDof3hqr+wGMhxprF5GGqKuoQGP+xe8+HbNOuadAaurv2cK7XPDuBvugWN27xmbfMsZ
         C92gRF9o7jLL/6bdluS+K+/ptw3tWwdR/hZ1WtAuKgcbv0P+c/5ibRyEgmy4b0/NNDe2
         Txew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686163844; x=1688755844;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3UBP5e7Zrw6Ywbv8wWhYRjjWOzU9tnh0VqdDEyQr7w0=;
        b=dGuGX1pZLvOMRPFoSMg6AEi3FXSF8Qer8jlq2xLjC2ZOPLTFF88cbMNLqWLkVDiPoL
         ThYWxBZNOKWyiuIvzPqQBO/NPgTq21B4HrRTBC8r3dQJjh+yS4Stk2KesWyRlZuWcl9O
         979gZCUjYFw47jxzXmPfWYYm526l0ivUHsFTcg0JSU0S4UEt7c/LpmgwBkUM+f/kRY8q
         yd6x0mibrDvxAXF1H9gcC0yVXysiW92U81u8mRzRmnN6MtMVt7jVYSWJ4t5TEnRxd/f1
         OEunRzsH0h5abnSHG8PcVumF7dbHdqrp8b3ykM4C3dhdjVsGtJOmNQDepg3UCQtJEvp1
         t2jQ==
X-Gm-Message-State: AC+VfDwBAaXbYrKZBp6Rq2V6VzSAJAiqdGZvWrslRvXS6j+QdkgtpZnE
        AyVup8FBQjNsvxX6Ua7c7iMcmA==
X-Google-Smtp-Source: ACHHUZ6OFvtQqQUHJVAteoQilgDcIn/hsW33VOrXqFjH0EZZj46axqKcmRK0siTQea5V7mbtrowTlw==
X-Received: by 2002:a17:906:6a20:b0:94e:48ac:9a51 with SMTP id qw32-20020a1709066a2000b0094e48ac9a51mr7348993ejc.4.1686163844616;
        Wed, 07 Jun 2023 11:50:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id be21-20020a0564021a3500b00514b0f6a75esm6347887edb.97.2023.06.07.11.50.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:50:44 -0700 (PDT)
Message-ID: <307409f2-a516-4aea-45bb-137ffc2bc725@linaro.org>
Date:   Wed, 7 Jun 2023 20:50:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v12 3/5] arm64: dts: qcom: ipq9574: Add USB related nodes
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <cover.1686045347.git.quic_varada@quicinc.com>
 <5a14d113e90c85777d1c01af38a85f40d35519e0.1686045347.git.quic_varada@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5a14d113e90c85777d1c01af38a85f40d35519e0.1686045347.git.quic_varada@quicinc.com>
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

On 07/06/2023 12:48, Varadarajan Narayanan wrote:
> Add USB phy and controller related nodes
> 
> SS PHY need two supplies and HS PHY needs three supplies. 0.925V
> and 3.3V are from fixed regulators and 1.8V is generated from
> PMIC's LDO
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v12:
> 	- Rebase
>  Changes in v11:
> 	- Rename dwc_0 -> usb_0_dwc3
>  Changes in v10:
> 	- Fix regulator definitions
>  Changes in v8:
> 	- Change clocks order to match the bindings
>  Changes in v7:
> 	- Change com_aux -> cfg_ahb
>  Changes in v6:
> 	- Introduce fixed regulators for the phy
> 	- Resolved all 'make dtbs_check' messages
> 
>  Changes in v5:
> 	- Fix additional comments
> 	- Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> 	- 'make dtbs_check' giving the following messages since
> 	  ipq9574 doesn't have power domains. Hope this is ok
> 
> 		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
>         	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> 		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
>         	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> 
>  Changes in v4:
> 	- Use newer bindings without subnodes
> 	- Fix coding style issues
> 
>  Changes in v3:
> 	- Insert the nodes at proper location
> 
>  Changes in v2:
> 	- Fixed issues flagged by Krzysztof
> 	- Fix issues reported by make dtbs_check
> 	- Remove NOC related clocks (to be added with proper
> 	  interconnect support)
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 104 ++++++++++++++++++++++++++++++++++
>  1 file changed, 104 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 0baeb10..8f7c59e 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -94,6 +94,24 @@
>  		};
>  	};
>  
> +	fixed_3p3: s3300 {

Use regulator- prefix for node name.

> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "fixed_3p3";
> +	};
> +
> +	fixed_0p925: s0925 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <925000>;
> +		regulator-max-microvolt = <925000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-name = "fixed_0p925";
> +	};
> +
>  	memory@40000000 {
>  		device_type = "memory";
>  		/* We expect the bootloader to fill in the size */
> @@ -465,6 +483,92 @@
>  			status = "disabled";
>  		};
>  
> +		usb_0_qusbphy: phy@7b000 {
> +			compatible = "qcom,ipq9574-qusb2-phy";
> +			reg = <0x0007b000 0x180>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +				 <&xo_board_clk>;
> +			clock-names = "cfg_ahb",
> +				      "ref";
> +
> +			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +			status = "disabled";
> +		};
> +
> +		usb_0_qmpphy: phy@7d000 {
> +			compatible = "qcom,ipq9574-qmp-usb3-phy";
> +			reg = <0x0007d000 0xa00>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&gcc GCC_USB0_AUX_CLK>,
> +				 <&xo_board_clk>,
> +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +				 <&gcc GCC_USB0_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			resets = <&gcc GCC_USB0_PHY_BCR>,
> +				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
> +			reset-names = "phy",
> +				      "phy_phy";
> +
> +			status = "disabled";

status is always the last property.

> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb0_pipe_clk";
> +		};
> +
> +		usb3: usb@8af8800 {
> +			compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
> +			reg = <0x08af8800 0x400>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_SNOC_USB_CLK>,
> +				 <&gcc GCC_USB0_MASTER_CLK>,
> +				 <&gcc GCC_ANOC_USB_AXI_CLK>,
> +				 <&gcc GCC_USB0_SLEEP_CLK>,
> +				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi";
> +
> +			assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +					  <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +			assigned-clock-rates = <200000000>,
> +					       <24000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pwr_event";
> +
> +			resets = <&gcc GCC_USB_BCR>;
> +			status = "disabled";
> +
> +			usb_0_dwc3: usb@8a00000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x8a00000 0xcd00>;
> +				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +				clock-names = "ref";
> +				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +				phys = <&usb_0_qusbphy>, <&usb_0_qmpphy>;
> +				phy-names = "usb2-phy", "usb3-phy";
> +				tx-fifo-resize;
> +				snps,is-utmi-l1-suspend;
> +				snps,hird-threshold = /bits/ 8 <0x0>;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_u3_susphy_quirk;
> +				dr_mode = "host";

Why is this property of the SoC?

Best regards,
Krzysztof

