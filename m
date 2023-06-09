Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2B1A729467
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 11:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241327AbjFIJM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 05:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241459AbjFIJM0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 05:12:26 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D354549FA
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 02:08:06 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f640e48bc3so1841021e87.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 02:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686301639; x=1688893639;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ut+UdOGUYV6ZPCloMfk71xOra+IPou8Ks2zziRmRFEc=;
        b=TzEJ+kHaf++h2o/IQ0+vrufd/PJNz+Qa7g86IoNKbGoAC4CuJs23659mYro50iqqCT
         av3IHNGUR24d984wVv5JQElrSFFB31VgA1LMS21Ku/YKbb55LcDunKrq4Vwf9IN/OX8c
         OqCFXj39eEv9+os5V4M9oLCfkhHZ7WZd++HphIEB5pY8kWGXNdqqGtskrqSAReK1Lw3F
         Et1jOeEHy2OxQaLnhGOKz47gm3BYmnhQkV4LSi5g4Ymu2CQjsWqJCAbj6YAiezPZF9sy
         qa32e3EyTt/8xKCRoUd8DoHGo6dZRz1iybIgja1w1DsLtInXjpQRqUXGxnDsUUjsrdRE
         SXQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686301639; x=1688893639;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ut+UdOGUYV6ZPCloMfk71xOra+IPou8Ks2zziRmRFEc=;
        b=Ej/KLWF2vR3nfpQ/NrS5vergOAvj5fMun6FWf/+g6S3Bcb89mjBK/qzjuG0iZ5Ozkb
         7zgp2Rtd91WDlcpYKuP+6F/0AfIf2RL00Eyp+d+auWFJ1xcAO9Q8kDo6ScvUfgbkviO+
         FnY2pma5gyunWNCgtbmkD0t9HX0mA/Lj9X5GXuUevyA/wZ2Os6xiZn7CBmYSVd6kc7RF
         wsuft/VvuTrVACWfpaPcrmwxe73twigWQidrq3aHs7x3ORXx4Ppk4JEDe4QMg0LWGWRV
         cMJdK88PyZ9s3vrbTnsgnWv3Qgk1NVRju3vU0EmuODACYu3328exqIEGRqs3UO3sFaqV
         qV9w==
X-Gm-Message-State: AC+VfDwryAOMRhVh6sq2k5L53fnfCwMZy9cQ3Pey5P5fGB/Y2L56iKOz
        0ic1aC4g1+LqrMIKrwyn4v6mxw==
X-Google-Smtp-Source: ACHHUZ42fawBuo7RkPecPZhXac5mt8Wx5dZ8Dk95VjNMEK9sH0vBXfC7A1FMt30eCPmgY8SYu9IA5g==
X-Received: by 2002:a19:2d58:0:b0:4f6:2a63:d3fc with SMTP id t24-20020a192d58000000b004f62a63d3fcmr420007lft.32.1686301639605;
        Fri, 09 Jun 2023 02:07:19 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id t12-20020ac2548c000000b004efae490c51sm471679lfk.240.2023.06.09.02.07.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 02:07:19 -0700 (PDT)
Message-ID: <c1c34aa4-ac7d-2c07-bf92-05d887aed3d2@linaro.org>
Date:   Fri, 9 Jun 2023 11:07:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: enable the SPI NOR support in
 RDP433
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230609081508.30982-1-quic_kathirav@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230609081508.30982-1-quic_kathirav@quicinc.com>
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



On 9.06.2023 10:15, Kathiravan T wrote:
> RDP433 has the support for SPI NOR, add the support for it.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---
> Note: This patch was part of initial submission
> https://lore.kernel.org/linux-arm-msm/20230329053726.14860-1-quic_kathirav@quicinc.com/
> however this got missed in between, so sending it across again.
> 
>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> index 2b3ed8d351f7..31ee19112157 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> @@ -48,6 +48,20 @@
>  	};
>  };
>  
> +&blsp1_spi0 {
> +	pinctrl-0 = <&spi_0_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "micron,n25q128a11", "jedec,spi-nor";
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
If you're not adding a partition table, you can drop the address-
and size-cells properties, as they determine what the reg value of
the child looks like.

Konrad
> +		spi-max-frequency = <50000000>;
> +	};
> +};
> +
>  &sdhc_1 {
>  	pinctrl-0 = <&sdc_default_state>;
>  	pinctrl-names = "default";
> @@ -96,6 +110,13 @@
>  			bias-pull-down;
>  		};
>  	};
> +
> +	spi_0_pins: spi-0-state {
> +		pins = "gpio11", "gpio12", "gpio13", "gpio14";
> +		function = "blsp0_spi";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
>  };
>  
>  &xo_board_clk {
