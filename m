Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 096A5268968
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 12:41:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726478AbgINKk7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 06:40:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726437AbgINKkp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 06:40:45 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26F77C06174A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 03:40:44 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id t7so5316718pjd.3
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 03:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tv4oV7dSUEt37JZrUleD0/9Qx7JqwI1EpXcxpLdFBqk=;
        b=kNHysigBWX65nVLt36yVbc+zFvGX0H8djJ0uWwNH2yQw9Rn4gRk5HDrFNnT+5tmiaU
         vhvTJlVtuOhCt+Op6lM7z7BIWPE3fInZTxTHkCZjsoxFcFqMjZx6l0GvKk6aRWCIZ5KI
         iwHAsnXR1ZD42mydc7c+RmbeDYvh711AFulqF+HZi7RSqT+3ACZIV8m+T4A0v+buaOVI
         HiqNo5yk5QkdPPwmA9lr26NpBbU4b3ZOgXqBaSsF0o9y0RIp18MLGtm5ewgkHjhyM/V6
         UFFZ8Qdi6PnB2/r7uUHD1yV6PAbVTjppWd4Y86cCRkk6gbsGRoMZ2lNIuhdo8kxEWA1b
         nV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tv4oV7dSUEt37JZrUleD0/9Qx7JqwI1EpXcxpLdFBqk=;
        b=GWfpuZYgve54USu33Ml7D5lo2bUfixV+ezci2KAYzA0gc4qz8TfFJdaEDZXKbOjEo2
         3qDh/6kdk0vbz9cnMXEzDVjd1evAMKWrINfHlPmdOSQWNS5zjv+I/SQExLL5TrKE+U7i
         AmJVAP0WbjaqJwbKf+9PNs7B7wDaX8PzRQh5GWaWdAVKCH5r6BBh75s9c3l4h+4EAcZn
         TKO2Xl0DcVWVPPAQCI5p8kIHPwixVUTK3Kc+XAXdXomCkPNAmmSHs082zqCfGpawsp0D
         5sQI1aIij5l4X/U2v4KI3rOmB7LF+uLRamqBJ0FrAkUtc5YjoyfW/k9Yvshir5gNXXEV
         6Xow==
X-Gm-Message-State: AOAM531RfGNrWxzRsDGjxVsG7lD2v8Uon9lEl+iNSxUkSmUOihj+wvpR
        KfaAnHBhrA7DzqUit1Y0grZp
X-Google-Smtp-Source: ABdhPJxIHSb79HSc2eQdqoZpcYDzwhMObsBcpg95bsOzd8EvE94/VCWdzXleZDKTdEQ3eeTc7c8hWw==
X-Received: by 2002:a17:90a:eb06:: with SMTP id j6mr13397563pjz.46.1600080043538;
        Mon, 14 Sep 2020 03:40:43 -0700 (PDT)
Received: from mani-NUC7i5DNKE ([2409:4072:6d84:8e8a:d537:f870:596d:5afa])
        by smtp.gmail.com with ESMTPSA id e14sm8060518pgu.47.2020.09.14.03.40.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Sep 2020 03:40:43 -0700 (PDT)
Date:   Mon, 14 Sep 2020 16:10:35 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH v4 09/10] arm64: dts: qcom: pm8150x: add definitions for
 adc-tm5 part
Message-ID: <20200914104035.GC19867@mani-NUC7i5DNKE>
References: <20200910140000.324091-1-dmitry.baryshkov@linaro.org>
 <20200910140000.324091-10-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200910140000.324091-10-dmitry.baryshkov@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 10, 2020 at 04:59:59PM +0300, Dmitry Baryshkov wrote:
> Define adc-tm5 thermal monitoring part. Individual channes and thermal
> zones are to be configured in per-device dts files.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm64/boot/dts/qcom/pm8150.dtsi  | 10 ++++++++++
>  arch/arm64/boot/dts/qcom/pm8150b.dtsi | 10 ++++++++++
>  arch/arm64/boot/dts/qcom/pm8150l.dtsi | 10 ++++++++++
>  3 files changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8150.dtsi b/arch/arm64/boot/dts/qcom/pm8150.dtsi
> index 1b6406927509..b1b518c6a2c9 100644
> --- a/arch/arm64/boot/dts/qcom/pm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8150.dtsi
> @@ -97,6 +97,16 @@ die-temp@6 {
>  			};
>  		};
>  
> +		pm8150_adc_tm: adc-tm@3500 {
> +			compatible = "qcom,spmi-adc-tm5";
> +			reg = <0x3500>;
> +			interrupts = <0x0 0x35 0x0 IRQ_TYPE_EDGE_RISING>;
> +			#thermal-sensor-cells = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		rtc@6000 {
>  			compatible = "qcom,pm8941-rtc";
>  			reg = <0x6000>;
> diff --git a/arch/arm64/boot/dts/qcom/pm8150b.dtsi b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> index e112e8876db6..8e2f3250c914 100644
> --- a/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> @@ -95,6 +95,16 @@ chg-temp@9 {
>  			};
>  		};
>  
> +		pm8150b_adc_tm: adc-tm@3500 {
> +			compatible = "qcom,spmi-adc-tm5";
> +			reg = <0x3500>;
> +			interrupts = <0x2 0x35 0x0 IRQ_TYPE_EDGE_RISING>;
> +			#thermal-sensor-cells = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		pm8150b_gpios: gpio@c000 {
>  			compatible = "qcom,pm8150b-gpio";
>  			reg = <0xc000>;
> diff --git a/arch/arm64/boot/dts/qcom/pm8150l.dtsi b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
> index 62139538b7d9..9f214ceec2b7 100644
> --- a/arch/arm64/boot/dts/qcom/pm8150l.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
> @@ -89,6 +89,16 @@ die-temp@6 {
>  			};
>  		};
>  
> +		pm8150l_adc_tm: adc-tm@3500 {
> +			compatible = "qcom,spmi-adc-tm5";
> +			reg = <0x3500>;
> +			interrupts = <0x4 0x35 0x0 IRQ_TYPE_EDGE_RISING>;
> +			#thermal-sensor-cells = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		pm8150l_gpios: gpio@c000 {
>  			compatible = "qcom,pm8150l-gpio";
>  			reg = <0xc000>;
> -- 
> 2.28.0
> 
