Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F16FA665B15
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 13:11:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233772AbjAKMLn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 07:11:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233600AbjAKMLQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 07:11:16 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37E3BB1C7
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 04:11:14 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id bp15so23170824lfb.13
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 04:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LQ3ejIIcNy5wNB2nAKCgYVyxVsxuI4AQbfdxuKZTncs=;
        b=yzSKfAiK6TVY86KqttCyW4EQY4cuqxw12pIH2DKrHqVKzaS6B5W/DDJo19vaO/pFZj
         FlSUFtmlAdG5QdSPQJmT45aW8BAOT7SaygC+XgZEKHOv4JjmlaoIQ8lQDdML8219vYnC
         OGQO40HhaBVKYOVkZTpI0OmU/dzkx6kKQLEutjiolI6lDlnk/dfO/qEyU0IT7zKOUyGu
         2x1/15ULi/MC1sEi2MrfvQb/1IC4ZUMYPZVjuKSrwStWhyk9Qy4zv+Q7zU+4BnNr2A9c
         XPODEUFLvylGpIFeF+QPEZ7xxdOsdJSfZlF3W60pp0ndfwkrSxk7BkWVUtbXl7+tev44
         D4ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LQ3ejIIcNy5wNB2nAKCgYVyxVsxuI4AQbfdxuKZTncs=;
        b=rJeTujsOwDzbJ1EYIglQ4UkwbfdUXKwN5RdKC7ySyYp8t9o7BPx/jkfHrmgXrrIaA1
         EVZkAAUNAPX55mlZq7hASbzt+iF3Ph1ptjRw75+sIEiUqaVjwno/4fBCO19/SkXXr+G/
         fs9/0nRCrUBRHCcLQZY5zcPLnX/S5sJ/rjT0vAQnZ1XZOe+GgNdqMP7Yh+b2kDnYAAEj
         C3/5KZoGWRdxqOUc5XRZ7VRt4RxTAL5s5XsTqdjfhI+NcuMMZ0SJnM9rrpW21is9wkuP
         0oL+JH9+5nItWr0Oy3tRnXgT786heJT2Dh/ApfAcL0nUa1dZ7E/unjvQSZ7Hhy0q56s0
         vhIw==
X-Gm-Message-State: AFqh2kriAv+vhQ0dxvdmr7djmXv+HZY/rBHBmEXpvcHmu8/vGWVtq0Bg
        atsUZ0kZ32FKDauqmaE0T07kcg==
X-Google-Smtp-Source: AMrXdXsh19qIUk8Xn6V/5zPoR81BBWhrcSr8hpmf/IQukJLnkIBiA2tECGl5ikFvVdZLDCE+ErpoBw==
X-Received: by 2002:a05:6512:400d:b0:4b5:936e:69df with SMTP id br13-20020a056512400d00b004b5936e69dfmr23711772lfb.53.1673439072523;
        Wed, 11 Jan 2023 04:11:12 -0800 (PST)
Received: from [192.168.1.101] (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id b4-20020a2e8484000000b00286dbab9a87sm725097ljh.91.2023.01.11.04.11.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 04:11:12 -0800 (PST)
Message-ID: <2bcb3e4e-9a81-73f5-7820-06432ec062c5@linaro.org>
Date:   Wed, 11 Jan 2023 13:11:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v7 2/4] arm64: dts: qcom: sc8280xp-crd: Enable EDP
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Johan Hovold <johan@kernel.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230111035906.2975494-1-quic_bjorande@quicinc.com>
 <20230111035906.2975494-3-quic_bjorande@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230111035906.2975494-3-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11.01.2023 04:59, Bjorn Andersson wrote:
> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> The SC8280XP CRD has a EDP display on MDSS0 DP3, enable relevant nodes
> and link it together with the backlight control.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> 
> Changes since v6:
> - None
> 
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 73 ++++++++++++++++++++++-
>  1 file changed, 72 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> index 551768f97729..db12d8678861 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
> @@ -20,7 +20,7 @@ aliases {
>  		serial0 = &qup2_uart17;
>  	};
>  
> -	backlight {
> +	backlight: backlight {
>  		compatible = "pwm-backlight";
>  		pwms = <&pmc8280c_lpg 3 1000000>;
>  		enable-gpios = <&pmc8280_1_gpios 8 GPIO_ACTIVE_HIGH>;
> @@ -34,6 +34,22 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	vreg_edp_3p3: regulator-edp-3p3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_EDP_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 25 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&edp_reg_en>;
> +
> +		regulator-boot-on;
> +	};
> +
>  	vreg_edp_bl: regulator-edp-bl {
>  		compatible = "regulator-fixed";
>  
> @@ -228,6 +244,55 @@ vreg_l9d: ldo9 {
>  	};
>  };
>  
> +&dispcc0 {
> +	status = "okay";
> +};
> +
> +&mdss0 {
> +	status = "okay";
> +};
> +
> +&mdss0_dp3 {
> +	compatible = "qcom,sc8280xp-edp";
> +
> +	data-lanes = <0 1 2 3>;
> +
> +	status = "okay";
> +
> +	aux-bus {
> +		panel {
> +			compatible = "edp-panel";
> +			power-supply = <&vreg_edp_3p3>;
> +
> +			backlight = <&backlight>;
> +
> +			ports {
> +				port {
> +					edp_panel_in: endpoint {
> +						remote-endpoint = <&mdss0_dp3_out>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +			mdss0_dp3_out: endpoint {
> +				remote-endpoint = <&edp_panel_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&mdss0_dp3_phy {
> +	vdda-phy-supply = <&vreg_l6b>;
> +	vdda-pll-supply = <&vreg_l3b>;
> +
> +	status = "okay";
> +};
> +
>  &pcie2a {
>  	perst-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
>  	wake-gpios = <&tlmm 145 GPIO_ACTIVE_LOW>;
> @@ -494,6 +559,12 @@ hastings_reg_en: hastings-reg-en-state {
>  &tlmm {
>  	gpio-reserved-ranges = <74 6>, <83 4>, <125 2>, <128 2>, <154 7>;
>  
> +	edp_reg_en: edp-reg-en-state {
> +		pins = "gpio25";
> +		function = "gpio";
> +		drive-strength = <16>;
> +	};
> +
>  	kybd_default: kybd-default-state {
>  		disable-pins {
>  			pins = "gpio102";
