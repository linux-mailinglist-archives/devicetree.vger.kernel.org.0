Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 775D61CCA1
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 18:12:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726098AbfENQMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 12:12:39 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:35634 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726325AbfENQMj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 12:12:39 -0400
Received: by mail-lf1-f65.google.com with SMTP id c17so5012935lfi.2
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 09:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0QxQLniEtG81+kyArEQM4sajonuLI/d4dsOlin13g+k=;
        b=eenmdHUSIm3Tz7X70d847Bpnla+2zhuJtXMT/tmzVk2AvrfI2No6UPc8DYYj2ZMaVt
         INXyC+MAH0BCNBy9W+jK1WWLPyLbKQkmY9O2xdenMkk8sVzmYpy0m6A9QiO7+yIULATg
         qQMqSa42+mQn5/eCYdtsdhrLjfBY9YpkDnwULLmqupWSnbwuz1uj7BWh9Ew13En70x5G
         4LuYK+jxQ/0TQuj0xH8eSZIPlDXLyK7js7ve469VUwrx+MDmmNHxT+PTR/hvEEHE00KZ
         fwRaGiRa5cboHR48kbERBTIg6+jXKlOd8euphr53VklwV9N/wtoghNeIuwAtwbMx3TEm
         tPwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0QxQLniEtG81+kyArEQM4sajonuLI/d4dsOlin13g+k=;
        b=GQCmEOaH3d1l5WZLAIHxQMcqlDwqGkczopwBxbs6TBSIRpBufajoFD5LnTqd4C2Ro4
         bRnlmrjevdUZ4ZjbLQ1F8/wmAHDidfV27FYE4BPNZPW/i7x+CEu4127TIMTztru2a8WY
         lW79ciOeKkPTheAIC973Rcw7UioRosB5MOvD2RXvxOJDmxzVepHzuBjatGn36GKmietr
         deDXo4XcvU0qaa7NG3tYQ0V25CvWnHauumtIW6q/7uiXRUCxxCofB4kt98b4IvnFtS5k
         h9eMyWT3I2leKe5+Yvzh4UWw1eVWjuKwy6zfda0iO5BVfq0sFPfQ96XnfSF8kRks+hHL
         LROg==
X-Gm-Message-State: APjAAAVSCz5BIzn1+yUID7tLHhKZ1I7SMSvvvyBma0e02IQ8m2/T0BZc
        2lpSmwWdvnen7N+jSACL0hUUtA==
X-Google-Smtp-Source: APXvYqylM726m0SsDubH8owhcqjWTD03ejTAgx+NHERKamKAdhR1TTE56/rLFxqgbMYgwe0FS0g8Bw==
X-Received: by 2002:a19:81d4:: with SMTP id c203mr17305334lfd.160.1557850357833;
        Tue, 14 May 2019 09:12:37 -0700 (PDT)
Received: from centauri.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id x2sm3699922ljx.13.2019.05.14.09.12.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 14 May 2019 09:12:37 -0700 (PDT)
Date:   Tue, 14 May 2019 18:12:35 +0200
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Amit Kucheria <amit.kucheria@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, andy.gross@linaro.org,
        David Brown <david.brown@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCHv1 5/8] arm64: dts: qcom: qcs404: Add PSCI cpuidle low
 power states
Message-ID: <20190514161235.GD1824@centauri.ideon.se>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
 <d3a517b90620fe167eb9fd27bcc88a43dce514b2.1557486950.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d3a517b90620fe167eb9fd27bcc88a43dce514b2.1557486950.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 10, 2019 at 04:59:43PM +0530, Amit Kucheria wrote:
> From: Niklas Cassel <niklas.cassel@linaro.org>
> 
> Add device bindings for cpuidle states for cpu devices.
> 
> [amit: rename the idle-states to more generic names and fixups]
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Reviewed-by: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index e8fd26633d57..369c59c35bc7 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -30,6 +30,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x100>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -38,6 +39,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x101>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -46,6 +48,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x102>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -54,6 +57,7 @@
>  			compatible = "arm,cortex-a53";
>  			reg = <0x103>;
>  			enable-method = "psci";
> +			cpu-idle-states = <&CPU_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
>  		};
>  
> @@ -61,6 +65,20 @@
>  			compatible = "cache";
>  			cache-level = <2>;
>  		};
> +
> +		idle-states {
> +			entry-method="psci";

Please add a space before and after "=".

> +
> +			CPU_SLEEP_0: cpu-sleep-0 {

Regarding CPU_SLEEP_0 vs CPU_PC, see my comment on patch 4/8.

> +				compatible = "arm,idle-state";
> +				idle-state-name = "standalone-power-collapse";
> +				arm,psci-suspend-param = <0x40000003>;
> +				entry-latency-us = <125>;
> +				exit-latency-us = <180>;
> +				min-residency-us = <595>;
> +				local-timer-stop;
> +			};
> +		};
>  	};
>  
>  	firmware {
> -- 
> 2.17.1
> 
