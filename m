Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 35EFE95E72
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 14:27:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729808AbfHTM1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 08:27:24 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:44254 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729829AbfHTM1Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 08:27:24 -0400
Received: by mail-lf1-f65.google.com with SMTP id v16so3956354lfg.11
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 05:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oFYWPiXBUOb/sC1wwY5JRuf2wUfPbobnczpKUw8Sc8c=;
        b=mKEMcZakXnXb4taM7LMv1XX9ZM1CHwWaDc0ccK8YdIsvy1Uwq4p7l1z+b/9rb5pddm
         AMHd268/LPeS5wR1NHQsSihJpHaxxpp8saF3F0gso5p7YTbTbPXacFpQj8UzO1FQCEDs
         sOSYSR2Bsje7/AS4J4uDlXpqVRsOpfFJc2EuzLYv6yhiDEwwHtiGUfUEuYSguGjm/3XY
         TqzhX4EQQZHoDnRNj7r6SE+RngO4qZX6NGNVLxTnYAItS4uP/Nzens7JTy91n4H5ctCj
         OIchNHq8dWadZHGiFnSCM2Ocow5DVp2/xVnicEJtj5lB9PFhemPMJM4nA2jLGYDRCgjA
         8s/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oFYWPiXBUOb/sC1wwY5JRuf2wUfPbobnczpKUw8Sc8c=;
        b=iB40MEHwepOO3MfwCoWN76ctW1tCpOoIF5SFl3xkvSfJ3r3E40aA7zkqjAsa8G3PIE
         U5NY1Rw73tA2BNr5wALHQHfpNvjPvHTJR2ylygXtNOs9Spli8bZ2sGnAtaP992UrGr+n
         K5/Hj+d4y0/dftq8HtuCbOAR3EvTW4f6pLVa5+j7Y2e1q8nd+wLp9USkCjUhwBoDj0hi
         etz2UarpVfk4QeJO9+Qsnmwt0LckOVauRnA9ju6HR93rWoBoX5SzExzICLUn1hcdxS3/
         Acjv9ufJd2l29zaeVJehaWepdSk0x44uB97I1L6SybZZaSIPi0JC3VrCNBCjxesFrsdH
         +Opw==
X-Gm-Message-State: APjAAAW30PsFcyafemgFvVYC9C5e/rVxPyA4hNF4jX0lqPXcec5gGaYF
        fep8IlkQrw86RBOxXQLQx0ngcA==
X-Google-Smtp-Source: APXvYqyIlfGYkY/66ZjtQvi3ymjfHIpC4jiu+ueeKtlqnzmqYaKnCz1t6UNFl9RprdzP/XMzf+ZEMw==
X-Received: by 2002:ac2:50c9:: with SMTP id h9mr9417673lfm.51.1566304041805;
        Tue, 20 Aug 2019 05:27:21 -0700 (PDT)
Received: from centauri (ua-84-219-138-247.bbcust.telenor.se. [84.219.138.247])
        by smtp.gmail.com with ESMTPSA id a15sm2838901lfl.44.2019.08.20.05.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 05:27:21 -0700 (PDT)
Date:   Tue, 20 Aug 2019 14:27:19 +0200
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/8] arm64: dts: qcom: pm8150: Add Base DTS file
Message-ID: <20190820122719.GD31261@centauri>
References: <20190820064216.8629-1-vkoul@kernel.org>
 <20190820064216.8629-3-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190820064216.8629-3-vkoul@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 20, 2019 at 12:12:10PM +0530, Vinod Koul wrote:
> Add base DTS file for pm8150 along with GPIOs, power-on, rtc and vadc
> nodes
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/pm8150.dtsi | 95 ++++++++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8150.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8150.dtsi b/arch/arm64/boot/dts/qcom/pm8150.dtsi
> new file mode 100644
> index 000000000000..4a678be46d37
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/pm8150.dtsi
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +// Copyright (c) 2017-2019, The Linux Foundation. All rights reserved.
> +// Copyright (c) 2019, Linaro Limited
> +
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/spmi/spmi.h>
> +#include <dt-bindings/iio/qcom,spmi-vadc.h>
> +
> +&spmi_bus {
> +	pm8150_0: pmic@0 {
> +		compatible = "qcom,pm8150", "qcom,spmi-pmic";
> +		reg = <0x0 SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		pon: power-on@800 {
> +			compatible = "qcom,pm8916-pon";
> +			reg = <0x0800>;
> +			pwrkey {
> +				compatible = "qcom,pm8941-pwrkey";
> +				interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;

Here you use 0 for 3rd cell

> +				debounce = <15625>;
> +				bias-pull-up;
> +				linux,code = <KEY_POWER>;
> +
> +				status = "disabled";
> +			};
> +		};
> +
> +		pm8150_adc: adc@3100 {
> +			compatible = "qcom,spmi-adc5";
> +			reg = <0x3100>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#io-channel-cells = <1>;
> +			interrupts = <0x0 0x31 0x0 IRQ_TYPE_EDGE_RISING>;

Here you use 0x0 for 3rd cell, be consistent.

> +
> +			status = "disabled";
> +
> +			ref-gnd@0 {
> +				reg = <ADC5_REF_GND>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "ref_gnd";
> +			};
> +
> +			vref-1p25@1 {
> +				reg = <ADC5_1P25VREF>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "vref_1p25";
> +			};
> +
> +			die-temp@6 {
> +				reg = <ADC5_DIE_TEMP>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "die_temp";
> +			};
> +		};
> +
> +		rtc@6000 {
> +			compatible = "qcom,pm8941-rtc";
> +			reg = <0x6000>;
> +			reg-names = "rtc", "alarm";
> +			interrupts = <0x0 0x61 0x1 IRQ_TYPE_NONE>;
> +
> +			status = "disabled";
> +		};
> +
> +		pm8150_gpios: gpio@c000 {
> +			compatible = "qcom,pm8150-gpio";
> +			reg = <0xc000>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupts = <0 0xc0 0 IRQ_TYPE_NONE>,
> +				     <0 0xc1 0 IRQ_TYPE_NONE>,
> +				     <0 0xc2 0 IRQ_TYPE_NONE>,
> +				     <0 0xc3 0 IRQ_TYPE_NONE>,
> +				     <0 0xc4 0 IRQ_TYPE_NONE>,
> +				     <0 0xc5 0 IRQ_TYPE_NONE>,
> +				     <0 0xc6 0 IRQ_TYPE_NONE>,
> +				     <0 0xc7 0 IRQ_TYPE_NONE>,
> +				     <0 0xc8 0 IRQ_TYPE_NONE>,
> +				     <0 0xc9 0 IRQ_TYPE_NONE>,
> +				     <0 0xca 0 IRQ_TYPE_NONE>,
> +				     <0 0xcb 0 IRQ_TYPE_NONE>;
> +		};
> +	};
> +
> +	pmic@1 {
> +		compatible = "qcom,pm8150", "qcom,spmi-pmic";
> +		reg = <0x1 SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +	};
> +};
> -- 
> 2.20.1
> 
