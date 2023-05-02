Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 248DF6F41E7
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 12:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbjEBKlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 06:41:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232094AbjEBKlL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 06:41:11 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2658E5257
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 03:40:44 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f127b10140so903310e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 03:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683024042; x=1685616042;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yxitG6sUcYo57hAIgIo6PDkuzwNrSAcbt8Y9v1/szAI=;
        b=OvoP0+4XqEDlUiCjcOXKLIDCxRaPbECJTI1vnE6rQ1gUr+KbewTdfuds4cct9UNWme
         g3CdR9gxAg0vaNgPO4A4kspbU/G+iw9hJuYqEU1xoxOSWtKdUJQYFNmLOGpZ5ufzStck
         I1HVd8m1mQZ3zsaxhYII29/zmDiLh819GQalML+Mn9kVMWhr3sQUcc/U04jHkOIQ0xrB
         GJyQikSm5Hu3+YNTSeX9QJ6pXsAQZudN++Pi57cOqehvzToksKiVRsigM5ReU91zSfmP
         xJuCsiTEsDHbwEjlruxj1NmHIo5PLP3Ie953tUmSetlO2DefzEC9lX0AHcg9HKOqWSzl
         yGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683024042; x=1685616042;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yxitG6sUcYo57hAIgIo6PDkuzwNrSAcbt8Y9v1/szAI=;
        b=k63eqVEOzeW1RyJCh6qm82Fj9QxV/4EP4w0k/0WUW0PSASSteYQa74ZtJag6HZ4Fz/
         GonLhxkSYLmUrPdYwtpRg4pppyFI0mgNeD7NS/8kD05vt2mkvirlfWOtGDHMz/mMr9hm
         5ndqz72KXqumJKmZmVcDeGeqJtVU+aYRA9LNyyLewulyuPISCKPnT9gujprkwmi9XMe+
         zxLmrjDIw36fJJudEkW1DaDWIq5i0PtiWrWuYXRuM2H1c9299q4IUehSMXQRd/ZhfAvt
         0k21PKbQT+bNKpe65fEBuSO4wtKskI9pMlRNU9swllXQYq3W5ihBtkohm9Zn7Hr378T2
         i3sA==
X-Gm-Message-State: AC+VfDwM75RC0lfqDDlJ8XH1PD8H8d/5WeDjuRwmXyrIOIEMKYEn19VZ
        lgUKg7CwV55VvcmSjHUiUGyCJw==
X-Google-Smtp-Source: ACHHUZ5gttAN6CiSzZ3fLU8pRdscs7YpH0bVP1jwDdHpAkH6e0Gn0OqD7XIezoGnS2rlS/ZNDp0cBQ==
X-Received: by 2002:ac2:515e:0:b0:4ef:f6c9:b977 with SMTP id q30-20020ac2515e000000b004eff6c9b977mr4218718lfd.49.1683024042122;
        Tue, 02 May 2023 03:40:42 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id q28-20020ac2529c000000b004eff70e321bsm3640070lfm.237.2023.05.02.03.40.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 03:40:41 -0700 (PDT)
Message-ID: <fc22fd34-6cce-c175-d845-cf4435b4b0be@linaro.org>
Date:   Tue, 2 May 2023 12:40:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8974-hammerhead: Add vibrator
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Brian Masney <masneyb@onstation.org>
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20230427-hammerhead-vibra-v1-0-e87eeb94da51@z3ntu.xyz>
 <20230427-hammerhead-vibra-v1-4-e87eeb94da51@z3ntu.xyz>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230427-hammerhead-vibra-v1-4-e87eeb94da51@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27.04.2023 22:34, Luca Weiss wrote:
> The Nexus 5 has a vibrator connected to the clock output of GP1_CLK
> which we can use with the clk-pwm driver, then we can use that pwm with
> pwm-vibrator to get haptics functionality.
> 
> This patch is based on Brian Masney's previous patch with clk-vibrator.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  .../dts/qcom-msm8974-lge-nexus5-hammerhead.dts     | 35 ++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
> index ab35f2d644c0..fea8a6be9021 100644
> --- a/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
> +++ b/arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
> @@ -41,6 +41,25 @@ key-volume-down {
>  		};
>  	};
>  
> +	clk_pwm: pwm {
> +		compatible = "clk-pwm";
> +		clocks = <&mmcc CAMSS_GP1_CLK>;
Are you sure it's <&mmcc CAMSS_GP1_CLK> and not <&gcc GCC_GP1_CLK>?

Konrad
> +
> +		pinctrl-0 = <&vibrator_pin>;
> +		pinctrl-names = "default";
> +
> +		#pwm-cells = <2>;
> +	};
> +
> +	vibrator {
> +		compatible = "pwm-vibrator";
> +		pwms = <&clk_pwm 0 100000>;
> +		pwm-names = "enable";
> +
> +		vcc-supply = <&pm8941_l19>;
> +		enable-gpios = <&tlmm 60 GPIO_ACTIVE_HIGH>;
> +	};
> +
>  	vreg_wlan: wlan-regulator {
>  		compatible = "regulator-fixed";
>  
> @@ -637,6 +656,22 @@ shutdown-pins {
>  			function = "gpio";
>  		};
>  	};
> +
> +	vibrator_pin: vibrator-state {
> +		core-pins {
> +			pins = "gpio27";
> +			function = "gp1_clk";
> +			drive-strength = <6>;
> +			bias-disable;
> +		};
> +
> +		enable-pins {
> +			pins = "gpio60";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +	};
>  };
>  
>  &usb {
> 
