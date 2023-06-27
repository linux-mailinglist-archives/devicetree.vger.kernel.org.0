Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97B2973FAF3
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 13:20:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230298AbjF0LUK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 07:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230159AbjF0LUG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 07:20:06 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B38C1FD7
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 04:20:04 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fb5bcb9a28so3430374e87.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 04:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687864802; x=1690456802;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pZMLsB7q1f2d2JosKfdum4dYuCU5eFXGY+ZVZTy4bi0=;
        b=n2VxU+l27h70Sx3UPcZZPF4DEj1gNC+MiEee8uw99T9V17olIZsdTS3hMH5mEoJ9kp
         WNW9JJ0OlwtW6Gp6OTzSJjcUqDMHYAF++eMxyAu3E7B/cs+pmxNUIIkEmSJ8EdXU8gDG
         qK8gSjhe5zgQi8yoIjsQm4dFy3o7ADUULkO0e80Zljf9yvuAIJAcule7Ybsm4JvIc9pU
         8pJBlf0oUKXEG5urWvejpTH2WWwM/RM4YBkm5FjOo/QmezfJlVPYSc+ZNw39974MRVUg
         iPpmOUp4vNdyeqhsTU/t1q8ZStYx/uicM49T0BTIWH17o/rOV0QiB/nifCbLzoeukv0e
         gfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687864802; x=1690456802;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pZMLsB7q1f2d2JosKfdum4dYuCU5eFXGY+ZVZTy4bi0=;
        b=JGvMlRNQWmm/XQndcaZY4GkFltrSvsZ1kHo7NAfde6Hl5rXfcYPPiWnt9SyKGhXSL2
         H6df9LxQItIAf2++G2j6KEoGehE8DuTgkywkGOMX2DW9isrywqDu1Oxpse594LYVI8JD
         plul6Ub2HOWehUSI8quNNWtIiCaLZOHIzDAOH1nuEfoH63leB2Cf2p52wb+zwUg7MyEh
         ix26wqIu0iOG/lSjx7+zEQs63nm/cF4j+Gqp0ZSuWK5zEzSPJbCIoNFgs0l4tj+qBnlb
         0omZNihbuCbXjWa16rf3urxuJF5T6rjfCr3MTQFBH8bfkh7ghpKkG1LLv2NzbnQiPurl
         0NXg==
X-Gm-Message-State: AC+VfDw2RK2FYBfywZzitACqRA8aKT8qF3Y2I/XdMBjkga1hZ+vxhW9Y
        BXfLHNGCx6JqWq7gnTmrHhIv5Q==
X-Google-Smtp-Source: ACHHUZ4xQ/2MSGg3TNExQGEU4FnLdiFCMqilmcZ/57klpnDXB4IyLFHq527UqNo8Ua63lFv56ksk/A==
X-Received: by 2002:a05:6512:3b95:b0:4f9:5d2a:e0f5 with SMTP id g21-20020a0565123b9500b004f95d2ae0f5mr14542702lfv.19.1687864802273;
        Tue, 27 Jun 2023 04:20:02 -0700 (PDT)
Received: from [192.168.1.101] (abxj103.neoplus.adsl.tpnet.pl. [83.9.3.103])
        by smtp.gmail.com with ESMTPSA id d30-20020ac25ede000000b004f3b4d17114sm1478198lfq.144.2023.06.27.04.20.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 04:20:01 -0700 (PDT)
Message-ID: <244afd55-7990-3aa8-2148-5d61185bbb76@linaro.org>
Date:   Tue, 27 Jun 2023 13:20:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 13/15] ARM: dts: qcom: mdm9615: move RPM regulators to
 board files
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
 <20230627012422.206077-14-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230627012422.206077-14-dmitry.baryshkov@linaro.org>
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

On 27.06.2023 03:24, Dmitry Baryshkov wrote:
> The set of regulators available over the RPM requests is not a property
> of the SoC. Move them to board files.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../boot/dts/qcom/qcom-mdm9615-wp8548.dtsi    | 136 ++++++++++++++++++
>  arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi      | 134 -----------------
>  2 files changed, 136 insertions(+), 134 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
> index cc264861afe5..1e1c66c7f9d2 100644
> --- a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
> @@ -130,6 +130,142 @@ &gsbi5_serial {
>  	pinctrl-names = "default";
>  };
>  
> +&rpm {
> +	regulators {
> +		compatible = "qcom,rpm-pm8018-regulators";
> +
> +		vin_lvs1-supply = <&pm8018_s3>;
> +
> +		vdd_l7-supply = <&pm8018_s4>;
> +		vdd_l8-supply = <&pm8018_s3>;
> +		vdd_l9_l10_l11_l12-supply = <&pm8018_s5>;
> +
> +		/* Buck SMPS */
> +		pm8018_s1: s1 {
> +			regulator-min-microvolt = <500000>;
> +			regulator-max-microvolt = <1150000>;
> +			qcom,switch-mode-frequency = <1600000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_s2: s2 {
> +			regulator-min-microvolt = <1225000>;
> +			regulator-max-microvolt = <1300000>;
> +			qcom,switch-mode-frequency = <1600000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_s3: s3 {
> +			regulator-always-on;
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			qcom,switch-mode-frequency = <1600000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_s4: s4 {
> +			regulator-min-microvolt = <2100000>;
> +			regulator-max-microvolt = <2200000>;
> +			qcom,switch-mode-frequency = <1600000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_s5: s5 {
> +			regulator-always-on;
> +			regulator-min-microvolt = <1350000>;
> +			regulator-max-microvolt = <1350000>;
> +			qcom,switch-mode-frequency = <1600000>;
> +			bias-pull-down;
> +		};
> +
> +		/* PMOS LDO */
> +		pm8018_l2: l2 {
> +			regulator-always-on;
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l3: l3 {
> +			regulator-always-on;
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l4: l4 {
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l5: l5 {
> +			regulator-min-microvolt = <2850000>;
> +			regulator-max-microvolt = <2850000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l6: l6 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <2850000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l7: l7 {
> +			regulator-min-microvolt = <1850000>;
> +			regulator-max-microvolt = <1900000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l8: l8 {
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l9: l9 {
> +			regulator-min-microvolt = <750000>;
> +			regulator-max-microvolt = <1150000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l10: l10 {
> +			regulator-min-microvolt = <1050000>;
> +			regulator-max-microvolt = <1050000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l11: l11 {
> +			regulator-min-microvolt = <1050000>;
> +			regulator-max-microvolt = <1050000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l12: l12 {
> +			regulator-min-microvolt = <1050000>;
> +			regulator-max-microvolt = <1050000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l13: l13 {
> +			regulator-min-microvolt = <1850000>;
> +			regulator-max-microvolt = <2950000>;
> +			bias-pull-down;
> +		};
> +
> +		pm8018_l14: l14 {
> +			regulator-min-microvolt = <2850000>;
> +			regulator-max-microvolt = <2850000>;
> +			bias-pull-down;
> +		};
> +
> +		/* Low Voltage Switch */
> +		pm8018_lvs1: lvs1 {
> +			bias-pull-down;
> +		};
> +	};
> +};
> +
>  &sdcc1 {
>  	status = "okay";
>  };
> diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
> index ac2327bc4ec5..0a8240f72daa 100644
> --- a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
> @@ -326,140 +326,6 @@ rpm: rpm@108000 {
>  				     <GIC_SPI 21 IRQ_TYPE_EDGE_RISING>,
>  				     <GIC_SPI 22 IRQ_TYPE_EDGE_RISING>;
>  			interrupt-names = "ack", "err", "wakeup";
> -
> -			regulators {
> -				compatible = "qcom,rpm-pm8018-regulators";
> -
> -				vin_lvs1-supply = <&pm8018_s3>;
> -
> -				vdd_l7-supply = <&pm8018_s4>;
> -				vdd_l8-supply = <&pm8018_s3>;
> -				vdd_l9_l10_l11_l12-supply = <&pm8018_s5>;
> -
> -				/* Buck SMPS */
> -				pm8018_s1: s1 {
> -					regulator-min-microvolt = <500000>;
> -					regulator-max-microvolt = <1150000>;
> -					qcom,switch-mode-frequency = <1600000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_s2: s2 {
> -					regulator-min-microvolt = <1225000>;
> -					regulator-max-microvolt = <1300000>;
> -					qcom,switch-mode-frequency = <1600000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_s3: s3 {
> -					regulator-always-on;
> -					regulator-min-microvolt = <1800000>;
> -					regulator-max-microvolt = <1800000>;
> -					qcom,switch-mode-frequency = <1600000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_s4: s4 {
> -					regulator-min-microvolt = <2100000>;
> -					regulator-max-microvolt = <2200000>;
> -					qcom,switch-mode-frequency = <1600000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_s5: s5 {
> -					regulator-always-on;
> -					regulator-min-microvolt = <1350000>;
> -					regulator-max-microvolt = <1350000>;
> -					qcom,switch-mode-frequency = <1600000>;
> -					bias-pull-down;
> -				};
> -
> -				/* PMOS LDO */
> -				pm8018_l2: l2 {
> -					regulator-always-on;
> -					regulator-min-microvolt = <1800000>;
> -					regulator-max-microvolt = <1800000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l3: l3 {
> -					regulator-always-on;
> -					regulator-min-microvolt = <1800000>;
> -					regulator-max-microvolt = <1800000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l4: l4 {
> -					regulator-min-microvolt = <3300000>;
> -					regulator-max-microvolt = <3300000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l5: l5 {
> -					regulator-min-microvolt = <2850000>;
> -					regulator-max-microvolt = <2850000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l6: l6 {
> -					regulator-min-microvolt = <1800000>;
> -					regulator-max-microvolt = <2850000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l7: l7 {
> -					regulator-min-microvolt = <1850000>;
> -					regulator-max-microvolt = <1900000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l8: l8 {
> -					regulator-min-microvolt = <1200000>;
> -					regulator-max-microvolt = <1200000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l9: l9 {
> -					regulator-min-microvolt = <750000>;
> -					regulator-max-microvolt = <1150000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l10: l10 {
> -					regulator-min-microvolt = <1050000>;
> -					regulator-max-microvolt = <1050000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l11: l11 {
> -					regulator-min-microvolt = <1050000>;
> -					regulator-max-microvolt = <1050000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l12: l12 {
> -					regulator-min-microvolt = <1050000>;
> -					regulator-max-microvolt = <1050000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l13: l13 {
> -					regulator-min-microvolt = <1850000>;
> -					regulator-max-microvolt = <2950000>;
> -					bias-pull-down;
> -				};
> -
> -				pm8018_l14: l14 {
> -					regulator-min-microvolt = <2850000>;
> -					regulator-max-microvolt = <2850000>;
> -					bias-pull-down;
> -				};
> -
> -				/* Low Voltage Switch */
> -				pm8018_lvs1: lvs1 {
> -					bias-pull-down;
> -				};
> -			};
>  		};
>  	};
>  };
