Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3BAC624B66
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 11:25:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726741AbfEUJZt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 05:25:49 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:41997 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726525AbfEUJZt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 05:25:49 -0400
Received: by mail-lj1-f196.google.com with SMTP id 188so1001996ljf.9
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 02:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CkcirGX3QvjLhz9moY6Imqk+qItJBJo6soSbUqVfWnQ=;
        b=KPVsE6tbmoozmtanxFIcLRZ6t1QsqfMa3iEgemxmZvJCVg3YSyfhz+CWOYIPn0z+kY
         524LHkx3uTbLNW0a9Bl8sjLjp9ktTb+7R7bqyH+QgCptPcvc9ZophZDDPdlNs/xeSF7U
         j4J9EGZ/mU8uv6wsxOsnY4zzJWe9mp04gIuNNcH1qSt4Oq2aMb3yMVsub/9Swq8bqmLm
         VEJP0jlpCLr3ns9M+fimlkhyx5MkOdIJs6LEhZGXU30FJFAzQ+7BRQAWIiNZ3w0edpuu
         C8//mxCK9vsrcJ5Y/NGIoVB7X1R1mOdaHqMoNLZTXcVPxj6gEyDC5uUnC5Os6oKuWGrl
         XGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CkcirGX3QvjLhz9moY6Imqk+qItJBJo6soSbUqVfWnQ=;
        b=Q/f9UQOdetOYyhp1rpFL8SEQrLrpnZSN0eGFx8d7IfUaZIBD1ZxpImB8ORbc9oIj++
         ts7IQAzi/LyGRHoI5qzDd/w816zl0/7y46TeRzvRMp6qT4k8fzYvvgIwU03hJKOILsGc
         HsXikEb8KNA2UTpZzYvFGc71vzHaAXw7SjMhKWD1SOeQfCy7ZC4q7IF/FaCY0X5bRnpk
         O/T/7x5gALyxscMzizZy5q21z31r7QEVmJGI9WpNXS8PDNu9C8JLSL9p4dD5Z8Ik32h3
         MmEM9fAtlgQ4O0+nscQkYn3uU2Qru+B8e2xlBNNPSwWKMAA5XGYuIWYWWOudPKtIMtX7
         4GtA==
X-Gm-Message-State: APjAAAViipC1HXeMuqeHqdW1NB1+2pHzqiHOGgvLoAm+KaV9r0vVVgd8
        0x4DaSPAzC19uAhVniFkEjgih65ftWU=
X-Google-Smtp-Source: APXvYqyREgv4vGHN0qpoxZgnvPbSHQF4hl4/zB2vk3nwAFQr5ASD4uiHBCK/ox3Af/hHK+UEStkOEA==
X-Received: by 2002:a2e:731a:: with SMTP id o26mr543653ljc.105.1558430747246;
        Tue, 21 May 2019 02:25:47 -0700 (PDT)
Received: from centauri (m83-185-80-163.cust.tele2.se. [83.185.80.163])
        by smtp.gmail.com with ESMTPSA id i1sm38409lfc.86.2019.05.21.02.25.46
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 21 May 2019 02:25:46 -0700 (PDT)
Date:   Tue, 21 May 2019 11:25:44 +0200
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: msm8996: Stop using legacy clock names
Message-ID: <20190521092544.GB22910@centauri>
References: <20190503232442.1530-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190503232442.1530-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 03, 2019 at 04:24:42PM -0700, Bjorn Andersson wrote:
> MDSS and its friends complain about the DTS is using legacy clock names,
> update these to silence the warnings.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index a988edabe474..3d861f1d836c 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -1678,7 +1678,7 @@
>  			#interrupt-cells = <1>;
>  
>  			clocks = <&mmcc MDSS_AHB_CLK>;
> -			clock-names = "iface_clk";
> +			clock-names = "iface";
>  
>  			#address-cells = <1>;
>  			#size-cells = <1>;
> @@ -1697,11 +1697,11 @@
>  					 <&mmcc MDSS_MDP_CLK>,
>  					 <&mmcc SMMU_MDP_AXI_CLK>,
>  					 <&mmcc MDSS_VSYNC_CLK>;
> -				clock-names = "iface_clk",
> -					      "bus_clk",
> -					      "core_clk",
> -					      "iommu_clk",
> -					      "vsync_clk";
> +				clock-names = "iface",
> +					      "bus",
> +					      "core",
> +					      "iommu",
> +					      "vsync";
>  
>  				iommus = <&mdp_smmu 0>;
>  
> @@ -1736,11 +1736,11 @@
>  					 <&mmcc MDSS_HDMI_AHB_CLK>,
>  					 <&mmcc MDSS_EXTPCLK_CLK>;
>  				clock-names =
> -					"mdp_core_clk",
> -					"iface_clk",
> -					"core_clk",
> -					"alt_iface_clk",
> -					"extp_clk";
> +					"mdp_core",
> +					"iface",
> +					"core",
> +					"alt_iface",
> +					"extp";
>  
>  				phys = <&hdmi_phy>;
>  				phy-names = "hdmi_phy";
> @@ -1777,8 +1777,8 @@
>  
>  				clocks = <&mmcc MDSS_AHB_CLK>,
>  					 <&gcc GCC_HDMI_CLKREF_CLK>;
> -				clock-names = "iface_clk",
> -					      "ref_clk";
> +				clock-names = "iface",
> +					      "ref";
>  			};
>  		};
>  	};
> -- 
> 2.18.0
> 

Reviewed-by: Niklas Cassel <niklas.cassel@linaro.org>
