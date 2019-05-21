Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90DC324C76
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 12:13:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727560AbfEUKNm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 06:13:42 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:40732 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727428AbfEUKNm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 06:13:42 -0400
Received: by mail-wr1-f65.google.com with SMTP id f10so2497662wre.7
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 03:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ExhtHOYixmQ3q1DaWe84tRAbBCksXA4j7ETOHrXNd7Q=;
        b=dkbaEWk2jBQbR2GXBgbKgYnKBf4wzflpQsQOwwuKmqRzR1jvkdKuv2V+0nBXcugw+R
         qXUJerGUfUdd5U6RpUHhd80mWpaIQNZtNG1EF94VpiH3RouLOtgwk8FPGjevHWQqUQiv
         P1GLowr79+uCtGnhfosMrt0RDOEKIqxydGMHIgVZiqu3UcNua3uuzzC9wDELw02RQDA/
         kRU9OCqDZixLi1R/iqMkpbCGpUC1rkuG03reORC/GqPQEV2zw0q7dxAn5/XbXuK9OEUt
         M0VlbIi4UDk2nGgfaxvIvYgYtPcxWyFJuQpV265MkTnTC0mYWol6BAAWZyDXqcS2ptae
         5VJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ExhtHOYixmQ3q1DaWe84tRAbBCksXA4j7ETOHrXNd7Q=;
        b=p7GTl1eV9VYSOsPABTMuA2aRJdDNaV9xmC3StinhTz+9bNACm7duujFbHToB7Zx6nr
         qJ5uHaGKYbVcmnuhCAtejfvfX2PTYrk/ADq4h9D2vbWMgVl8n0cmpv85eZP6UkGp4JRO
         E4CX0P2NKa1nFCvXrMBpDCUm9fevD2Yq/OgOYpL2Uv+uUi0tKkz3NQX4B0Zcbhl6CQp8
         82j+sFA55eUSBSAC0X0sC2r7bC3lgO0+iN8GsqhTDpgNBGEFqDYRjZCZcdL4QY0pBT9J
         htNHM8vIAJoydGVkIglyvhXMK0ABBBLF2n7bjlRkIiW2Nn+gaaWlF0wAF+RRbh+fguAa
         /dTQ==
X-Gm-Message-State: APjAAAUeD3id9z4gTdbia45DJsRzu+7k5+6UIeNcEPLHjiyXXPr+7DlN
        BdZ4d25zi/ga62ekiEsDys2/9VnE5zGFrg==
X-Google-Smtp-Source: APXvYqx6nGhjKpD8X1e8RNKlkcPEHA0wu1fWgProf887xpQF5o3CDXBEqtzPwSaBYOyhclFuYvUG+w==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr13521746wrj.230.1558433620515;
        Tue, 21 May 2019 03:13:40 -0700 (PDT)
Received: from [10.1.203.87] (nat-wifi.sssup.it. [193.205.81.22])
        by smtp.googlemail.com with ESMTPSA id y8sm2751112wmi.8.2019.05.21.03.13.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 May 2019 03:13:39 -0700 (PDT)
Subject: Re: [PATCH v2 6/9] arm64: dts: qcom: msm8996: Add PSCI cpuidle low
 power states
To:     Amit Kucheria <amit.kucheria@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        niklas.cassel@linaro.org, marc.w.gonzalez@free.fr,
        sibis@codeaurora.org, Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org
References: <cover.1558430617.git.amit.kucheria@linaro.org>
 <2ffbb3f32484c03360ff7d6fa4668581ef298c9e.1558430617.git.amit.kucheria@linaro.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <10d95552-0a0c-3e8a-62c3-80a307fed0c9@linaro.org>
Date:   Tue, 21 May 2019 12:13:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2ffbb3f32484c03360ff7d6fa4668581ef298c9e.1558430617.git.amit.kucheria@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/05/2019 11:35, Amit Kucheria wrote:
> Add device bindings for cpuidle states for cpu devices.
> 
> msm8996 features 4 cpus - 2 in each cluster. However, all cpus implement
> the same microarchitecture and the two clusters only differ in the
> maximum frequency attainable by the CPUs.
> 
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>



> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index c761269caf80..4f2fb7885f39 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -95,6 +95,7 @@
>  			compatible = "qcom,kryo";
>  			reg = <0x0 0x0>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  			L2_0: l2-cache {
>  			      compatible = "cache";
> @@ -107,6 +108,7 @@
>  			compatible = "qcom,kryo";
>  			reg = <0x0 0x1>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -115,6 +117,7 @@
>  			compatible = "qcom,kryo";
>  			reg = <0x0 0x100>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_1>;
>  			L2_1: l2-cache {
>  			      compatible = "cache";
> @@ -127,6 +130,7 @@
>  			compatible = "qcom,kryo";
>  			reg = <0x0 0x101>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_1>;
>  		};
>  
> @@ -151,6 +155,19 @@
>  				};
>  			};
>  		};
> +
> +		idle-states {
> +			entry-method = "psci";
> +
> +			CPU_SLEEP_0: cpu-sleep-0 {
> +				compatible = "arm,idle-state";
> +				idle-state-name = "standalone-power-collapse";
> +				arm,psci-suspend-param = <0x00000004>;
> +				entry-latency-us = <40>;
> +				exit-latency-us = <80>;
> +				min-residency-us = <300>;
> +			};
> +		};
>  	};
>  
>  	thermal-zones {
> 


-- 
 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

